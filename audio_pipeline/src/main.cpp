#include <iostream>
#include <chrono>
#include <fstream>

#include "config.h"
#include <cstdlib>
#include <cmath>
#include <algorithm>

#define fSqrt32 sqrt(3.f)/2.f
#define fSqrt58 sqrt(5.f/8.f)
#define fSqrt152 sqrt(15.f)/2.f
#define fSqrt38 sqrt(3.f/8.f)


#include "mit_hrtf_lib.h"
// #include "normal/mit_hrtf_normal_44100.h"
// #include "normal/mit_hrtf_normal_48000.h"
// #include "normal/mit_hrtf_normal_88200.h"
// #include "normal/mit_hrtf_normal_96000.h"

#include "mit_hrtf_normal_44100.h"
#include "mit_hrtf_normal_48000.h"
#include "mit_hrtf_normal_88200.h"
#include "mit_hrtf_normal_96000.h"

#include "_kiss_fft_guts.h"
#include "kiss_fft.h"
#include "kiss_fftr.h"

#include "AmbisonicCommons.h"
#include "mit_hrtf.h"
#include "AmbisonicBase.h"
#include "BFormat.h"
#include "AmbisonicSource.h"
#include "AmbisonicEncoder.h"
#include "AmbisonicEncoderDist.h"
#include "AmbisonicSpeaker.h"
#include "AmbisonicDecoder.h"
#include "AmbisonicZoomer.h"
#include "AmbisonicBinauralizer.h"
#include "AmbisonicProcessor.h"
#include "sound.h"
#include <audio.h>



// KISS_FFT
/* The guts header contains all the multiplication and addition macros that are defined for
 fixed or floating point complex numbers.  It also delares the kf_ internal functions.
 */

extern "C" {
static void kf_bfly2(
        kiss_fft_cpx * Fout,
        const size_t fstride,
        const kiss_fft_cfg st,
        int m
        )
{
    kiss_fft_cpx * Fout2;
    kiss_fft_cpx * tw1 = st->twiddles;
    kiss_fft_cpx t;
    Fout2 = Fout + m;
    do{
        C_FIXDIV(*Fout,2); C_FIXDIV(*Fout2,2);

        C_MUL (t,  *Fout2 , *tw1);
        tw1 += fstride;
        C_SUB( *Fout2 ,  *Fout , t );
        C_ADDTO( *Fout ,  t );
        ++Fout2;
        ++Fout;
    }while (--m);
}

static void kf_bfly4(
        kiss_fft_cpx * Fout,
        const size_t fstride,
        const kiss_fft_cfg st,
        const size_t m
        )
{
    kiss_fft_cpx *tw1,*tw2,*tw3;
    kiss_fft_cpx scratch[6];
    size_t k=m;
    const size_t m2=2*m;
    const size_t m3=3*m;


    tw3 = tw2 = tw1 = st->twiddles;

    do {
        C_FIXDIV(*Fout,4); C_FIXDIV(Fout[m],4); C_FIXDIV(Fout[m2],4); C_FIXDIV(Fout[m3],4);

        C_MUL(scratch[0],Fout[m] , *tw1 );
        C_MUL(scratch[1],Fout[m2] , *tw2 );
        C_MUL(scratch[2],Fout[m3] , *tw3 );

        C_SUB( scratch[5] , *Fout, scratch[1] );
        C_ADDTO(*Fout, scratch[1]);
        C_ADD( scratch[3] , scratch[0] , scratch[2] );
        C_SUB( scratch[4] , scratch[0] , scratch[2] );
        C_SUB( Fout[m2], *Fout, scratch[3] );
        tw1 += fstride;
        tw2 += fstride*2;
        tw3 += fstride*3;
        C_ADDTO( *Fout , scratch[3] );

        if(st->inverse) {
            Fout[m].r = scratch[5].r - scratch[4].i;
            Fout[m].i = scratch[5].i + scratch[4].r;
            Fout[m3].r = scratch[5].r + scratch[4].i;
            Fout[m3].i = scratch[5].i - scratch[4].r;
        }else{
            Fout[m].r = scratch[5].r + scratch[4].i;
            Fout[m].i = scratch[5].i - scratch[4].r;
            Fout[m3].r = scratch[5].r - scratch[4].i;
            Fout[m3].i = scratch[5].i + scratch[4].r;
        }
        ++Fout;
    }while(--k);
}

static void kf_bfly3(
         kiss_fft_cpx * Fout,
         const size_t fstride,
         const kiss_fft_cfg st,
         size_t m
         )
{
     size_t k=m;
     const size_t m2 = 2*m;
     kiss_fft_cpx *tw1,*tw2;
     kiss_fft_cpx scratch[5];
     kiss_fft_cpx epi3;
     epi3 = st->twiddles[fstride*m];

     tw1=tw2=st->twiddles;

     do{
         C_FIXDIV(*Fout,3); C_FIXDIV(Fout[m],3); C_FIXDIV(Fout[m2],3);

         C_MUL(scratch[1],Fout[m] , *tw1);
         C_MUL(scratch[2],Fout[m2] , *tw2);

         C_ADD(scratch[3],scratch[1],scratch[2]);
         C_SUB(scratch[0],scratch[1],scratch[2]);
         tw1 += fstride;
         tw2 += fstride*2;

         Fout[m].r = Fout->r - HALF_OF(scratch[3].r);
         Fout[m].i = Fout->i - HALF_OF(scratch[3].i);

         C_MULBYSCALAR( scratch[0] , epi3.i );

         C_ADDTO(*Fout,scratch[3]);

         Fout[m2].r = Fout[m].r + scratch[0].i;
         Fout[m2].i = Fout[m].i - scratch[0].r;

         Fout[m].r -= scratch[0].i;
         Fout[m].i += scratch[0].r;

         ++Fout;
     }while(--k);
}

static void kf_bfly5(
        kiss_fft_cpx * Fout,
        const size_t fstride,
        const kiss_fft_cfg st,
        int m
        )
{
    kiss_fft_cpx *Fout0,*Fout1,*Fout2,*Fout3,*Fout4;
    int u;
    kiss_fft_cpx scratch[13];
    kiss_fft_cpx * twiddles = st->twiddles;
    kiss_fft_cpx *tw;
    kiss_fft_cpx ya,yb;
    ya = twiddles[fstride*m];
    yb = twiddles[fstride*2*m];

    Fout0=Fout;
    Fout1=Fout0+m;
    Fout2=Fout0+2*m;
    Fout3=Fout0+3*m;
    Fout4=Fout0+4*m;

    tw=st->twiddles;
    for ( u=0; u<m; ++u ) {
        C_FIXDIV( *Fout0,5); C_FIXDIV( *Fout1,5); C_FIXDIV( *Fout2,5); C_FIXDIV( *Fout3,5); C_FIXDIV( *Fout4,5);
        scratch[0] = *Fout0;

        C_MUL(scratch[1] ,*Fout1, tw[u*fstride]);
        C_MUL(scratch[2] ,*Fout2, tw[2*u*fstride]);
        C_MUL(scratch[3] ,*Fout3, tw[3*u*fstride]);
        C_MUL(scratch[4] ,*Fout4, tw[4*u*fstride]);

        C_ADD( scratch[7],scratch[1],scratch[4]);
        C_SUB( scratch[10],scratch[1],scratch[4]);
        C_ADD( scratch[8],scratch[2],scratch[3]);
        C_SUB( scratch[9],scratch[2],scratch[3]);

        Fout0->r += scratch[7].r + scratch[8].r;
        Fout0->i += scratch[7].i + scratch[8].i;

        scratch[5].r = scratch[0].r + S_MUL(scratch[7].r,ya.r) + S_MUL(scratch[8].r,yb.r);
        scratch[5].i = scratch[0].i + S_MUL(scratch[7].i,ya.r) + S_MUL(scratch[8].i,yb.r);

        scratch[6].r =  S_MUL(scratch[10].i,ya.i) + S_MUL(scratch[9].i,yb.i);
        scratch[6].i = -S_MUL(scratch[10].r,ya.i) - S_MUL(scratch[9].r,yb.i);

        C_SUB(*Fout1,scratch[5],scratch[6]);
        C_ADD(*Fout4,scratch[5],scratch[6]);

        scratch[11].r = scratch[0].r + S_MUL(scratch[7].r,yb.r) + S_MUL(scratch[8].r,ya.r);
        scratch[11].i = scratch[0].i + S_MUL(scratch[7].i,yb.r) + S_MUL(scratch[8].i,ya.r);
        scratch[12].r = - S_MUL(scratch[10].i,yb.i) + S_MUL(scratch[9].i,ya.i);
        scratch[12].i = S_MUL(scratch[10].r,yb.i) - S_MUL(scratch[9].r,ya.i);

        C_ADD(*Fout2,scratch[11],scratch[12]);
        C_SUB(*Fout3,scratch[11],scratch[12]);

        ++Fout0;++Fout1;++Fout2;++Fout3;++Fout4;
    }
}

/* perform the butterfly for one stage of a mixed radix FFT */
static void kf_bfly_generic(
        kiss_fft_cpx * Fout,
        const size_t fstride,
        const kiss_fft_cfg st,
        int m,
        int p
        )
{
    int u,k,q1,q;
    kiss_fft_cpx * twiddles = st->twiddles;
    kiss_fft_cpx t;
    int Norig = st->nfft;

    kiss_fft_cpx * scratch = (kiss_fft_cpx*)KISS_FFT_TMP_ALLOC(sizeof(kiss_fft_cpx)*p);

    for ( u=0; u<m; ++u ) {
        k=u;
        for ( q1=0 ; q1<p ; ++q1 ) {
            scratch[q1] = Fout[ k  ];
            C_FIXDIV(scratch[q1],p);
            k += m;
        }

        k=u;
        for ( q1=0 ; q1<p ; ++q1 ) {
            int twidx=0;
            Fout[ k ] = scratch[0];
            for (q=1;q<p;++q ) {
                twidx += fstride * k;
                if (twidx>=Norig) twidx-=Norig;
                C_MUL(t,scratch[q] , twiddles[twidx] );
                C_ADDTO( Fout[ k ] ,t);
            }
            k += m;
        }
    }
    KISS_FFT_TMP_FREE(scratch);
}

static
void kf_work(
        kiss_fft_cpx * Fout,
        const kiss_fft_cpx * f,
        const size_t fstride,
        int in_stride,
        int * factors,
        const kiss_fft_cfg st
        )
{
    kiss_fft_cpx * Fout_beg=Fout;
    const int p=*factors++; /* the radix  */
    const int m=*factors++; /* stage's fft length/p */
    const kiss_fft_cpx * Fout_end = Fout + p*m;

#ifdef _OPENMP
    // use openmp extensions at the 
    // top-level (not recursive)
    if (fstride==1 && p<=5)
    {
        int k;

        // execute the p different work units in different threads
#       pragma omp parallel for
        for (k=0;k<p;++k) 
            kf_work( Fout +k*m, f+ fstride*in_stride*k,fstride*p,in_stride,factors,st);
        // all threads have joined by this point

        switch (p) {
            case 2: kf_bfly2(Fout,fstride,st,m); break;
            case 3: kf_bfly3(Fout,fstride,st,m); break; 
            case 4: kf_bfly4(Fout,fstride,st,m); break;
            case 5: kf_bfly5(Fout,fstride,st,m); break; 
            default: kf_bfly_generic(Fout,fstride,st,m,p); break;
        }
        return;
    }
#endif

    if (m==1) {
        do{
            *Fout = *f;
            f += fstride*in_stride;
        }while(++Fout != Fout_end );
    }else{
        do{
            // recursive call:
            // DFT of size m*p performed by doing
            // p instances of smaller DFTs of size m, 
            // each one takes a decimated version of the input
            kf_work( Fout , f, fstride*p, in_stride, factors,st);
            f += fstride*in_stride;
        }while( (Fout += m) != Fout_end );
    }

    Fout=Fout_beg;

    // recombine the p smaller DFTs 
    switch (p) {
        case 2: kf_bfly2(Fout,fstride,st,m); break;
        case 3: kf_bfly3(Fout,fstride,st,m); break; 
        case 4: kf_bfly4(Fout,fstride,st,m); break;
        case 5: kf_bfly5(Fout,fstride,st,m); break; 
        default: kf_bfly_generic(Fout,fstride,st,m,p); break;
    }
}

/*  facbuf is populated by p1,m1,p2,m2, ...
    where 
    p[i] * m[i] = m[i-1]
    m0 = n                  */
static 
void kf_factor(int n,int * facbuf)
{
    int p=4;
    double floor_sqrt;
    floor_sqrt = floor( sqrt((double)n) );

    /*factor out powers of 4, powers of 2, then any remaining primes */
    do {
        while (n % p) {
            switch (p) {
                case 4: p = 2; break;
                case 2: p = 3; break;
                default: p += 2; break;
            }
            if (p > floor_sqrt)
                p = n;          /* no more factors, skip to end */
        }
        n /= p;
        *facbuf++ = p;
        *facbuf++ = n;
    } while (n > 1);
}

/*
 *
 * User-callable function to allocate all necessary storage space for the fft.
 *
 * The return value is a contiguous block of memory, allocated with malloc.  As such,
 * It can be freed with free(), rather than a kiss_fft-specific function.
 * */
kiss_fft_cfg kiss_fft_alloc(int nfft,int inverse_fft,void * mem,size_t * lenmem )
{
    kiss_fft_cfg st=NULL;
    size_t memneeded = sizeof(struct kiss_fft_state)
        + sizeof(kiss_fft_cpx)*(nfft-1); /* twiddle factors*/

    if ( lenmem==NULL ) {
        st = ( kiss_fft_cfg)KISS_FFT_MALLOC( memneeded );
    }else{
        if (mem != NULL && *lenmem >= memneeded)
            st = (kiss_fft_cfg)mem;
        *lenmem = memneeded;
    }
    if (st) {
        int i;
        st->nfft=nfft;
        st->inverse = inverse_fft;

        for (i=0;i<nfft;++i) {
            const double pi=3.141592653589793238462643383279502884197169399375105820974944;
            double phase = -2*pi*i / nfft;
            if (st->inverse)
                phase *= -1;
            kf_cexp(st->twiddles+i, phase );
        }

        kf_factor(nfft,st->factors);
    }
    return st;
}


void kiss_fft_stride(kiss_fft_cfg st,const kiss_fft_cpx *fin,kiss_fft_cpx *fout,int in_stride)
{
    if (fin == fout) {
        //NOTE: this is not really an in-place FFT algorithm.
        //It just performs an out-of-place FFT into a temp buffer
        kiss_fft_cpx * tmpbuf = (kiss_fft_cpx*)KISS_FFT_TMP_ALLOC( sizeof(kiss_fft_cpx)*st->nfft);
        kf_work(tmpbuf,fin,1,in_stride, st->factors,st);
        memcpy(fout,tmpbuf,sizeof(kiss_fft_cpx)*st->nfft);
        KISS_FFT_TMP_FREE(tmpbuf);
    }else{
        kf_work( fout, fin, 1,in_stride, st->factors,st );
    }
}

void kiss_fft(kiss_fft_cfg cfg,const kiss_fft_cpx *fin,kiss_fft_cpx *fout)
{
    kiss_fft_stride(cfg,fin,fout,1);
}


void kiss_fft_cleanup(void)
{
    // nothing needed any more
}

int kiss_fft_next_fast_size(int n)
{
    while(1) {
        int m=n;
        while ( (m%2) == 0 ) m/=2;
        while ( (m%3) == 0 ) m/=3;
        while ( (m%5) == 0 ) m/=5;
        if (m<=1)
            break; /* n is completely factorable by twos, threes, and fives */
        n++;
    }
    return n;
}

// KISS_FFTR
struct kiss_fftr_state{
    kiss_fft_cfg substate;
    kiss_fft_cpx * tmpbuf;
    kiss_fft_cpx * super_twiddles;
#ifdef USE_SIMD
    void * pad;
#endif
};

kiss_fftr_cfg kiss_fftr_alloc(int nfft,int inverse_fft,void * mem,size_t * lenmem)
{
    int i;
    kiss_fftr_cfg st = NULL;
    size_t subsize, memneeded;

    if (nfft & 1) {
        fprintf(stderr,"Real FFT optimization must be even.\n");
        return NULL;
    }
    nfft >>= 1;

    kiss_fft_alloc (nfft, inverse_fft, NULL, &subsize);
    memneeded = sizeof(struct kiss_fftr_state) + subsize + sizeof(kiss_fft_cpx) * ( nfft * 3 / 2);

    if (lenmem == NULL) {
        st = (kiss_fftr_cfg) KISS_FFT_MALLOC (memneeded);
    } else {
        if (*lenmem >= memneeded)
            st = (kiss_fftr_cfg) mem;
        *lenmem = memneeded;
    }
    if (!st)
        return NULL;

    st->substate = (kiss_fft_cfg) (st + 1); /*just beyond kiss_fftr_state struct */
    st->tmpbuf = (kiss_fft_cpx *) (((char *) st->substate) + subsize);
    st->super_twiddles = st->tmpbuf + nfft;
    kiss_fft_alloc(nfft, inverse_fft, st->substate, &subsize);

    for (i = 0; i < nfft/2; ++i) {
        double phase =
            -3.14159265358979323846264338327 * ((double) (i+1) / nfft + .5);
        if (inverse_fft)
            phase *= -1;
        kf_cexp (st->super_twiddles+i,phase);
    }
    return st;
}

void kiss_fftr(kiss_fftr_cfg st,const kiss_fft_scalar *timedata,kiss_fft_cpx *freqdata)
{
    /* input buffer timedata is stored row-wise */
    int k,ncfft;
    kiss_fft_cpx fpnk,fpk,f1k,f2k,tw,tdc;

    if ( st->substate->inverse) {
        fprintf(stderr,"kiss fft usage error: improper alloc\n");
        exit(1);
    }

    ncfft = st->substate->nfft;

    /*perform the parallel fft of two real signals packed in real,imag*/
    kiss_fft( st->substate , (const kiss_fft_cpx*)timedata, st->tmpbuf );
    /* The real part of the DC element of the frequency spectrum in st->tmpbuf
     * contains the sum of the even-numbered elements of the input time sequence
     * The imag part is the sum of the odd-numbered elements
     *
     * The sum of tdc.r and tdc.i is the sum of the input time sequence. 
     *      yielding DC of input time sequence
     * The difference of tdc.r - tdc.i is the sum of the input (dot product) [1,-1,1,-1... 
     *      yielding Nyquist bin of input time sequence
     */
 
    tdc.r = st->tmpbuf[0].r;
    tdc.i = st->tmpbuf[0].i;
    C_FIXDIV(tdc,2);
    CHECK_OVERFLOW_OP(tdc.r ,+, tdc.i);
    CHECK_OVERFLOW_OP(tdc.r ,-, tdc.i);
    freqdata[0].r = tdc.r + tdc.i;
    freqdata[ncfft].r = tdc.r - tdc.i;
#ifdef USE_SIMD    
    freqdata[ncfft].i = freqdata[0].i = _mm_set1_ps(0);
#else
    freqdata[ncfft].i = freqdata[0].i = 0;
#endif

    for ( k=1;k <= ncfft/2 ; ++k ) {
        fpk    = st->tmpbuf[k]; 
        fpnk.r =   st->tmpbuf[ncfft-k].r;
        fpnk.i = - st->tmpbuf[ncfft-k].i;
        C_FIXDIV(fpk,2);
        C_FIXDIV(fpnk,2);

        C_ADD( f1k, fpk , fpnk );
        C_SUB( f2k, fpk , fpnk );
        C_MUL( tw , f2k , st->super_twiddles[k-1]);

        freqdata[k].r = HALF_OF(f1k.r + tw.r);
        freqdata[k].i = HALF_OF(f1k.i + tw.i);
        freqdata[ncfft-k].r = HALF_OF(f1k.r - tw.r);
        freqdata[ncfft-k].i = HALF_OF(tw.i - f1k.i);
    }
}

void kiss_fftri(kiss_fftr_cfg st,const kiss_fft_cpx *freqdata,kiss_fft_scalar *timedata)
{
    /* input buffer timedata is stored row-wise */
    int k, ncfft;

    if (st->substate->inverse == 0) {
        fprintf (stderr, "kiss fft usage error: improper alloc\n");
        exit (1);
    }

    ncfft = st->substate->nfft;

    st->tmpbuf[0].r = freqdata[0].r + freqdata[ncfft].r;
    st->tmpbuf[0].i = freqdata[0].r - freqdata[ncfft].r;
    C_FIXDIV(st->tmpbuf[0],2);

    for (k = 1; k <= ncfft / 2; ++k) {
        kiss_fft_cpx fk, fnkc, fek, fok, tmp;
        fk = freqdata[k];
        fnkc.r = freqdata[ncfft - k].r;
        fnkc.i = -freqdata[ncfft - k].i;
        C_FIXDIV( fk , 2 );
        C_FIXDIV( fnkc , 2 );

        C_ADD (fek, fk, fnkc);
        C_SUB (tmp, fk, fnkc);
        C_MUL (fok, tmp, st->super_twiddles[k-1]);
        C_ADD (st->tmpbuf[k],     fek, fok);
        C_SUB (st->tmpbuf[ncfft - k], fek, fok);
#ifdef USE_SIMD        
        st->tmpbuf[ncfft - k].i *= _mm_set1_ps(-1.0);
#else
        st->tmpbuf[ncfft - k].i *= -1;
#endif
    }
    kiss_fft (st->substate, st->tmpbuf, (kiss_fft_cpx *) timedata);
}

// MIT_HRTF_LIB
/*    Internal functions for handling the indexing of the -/+40 degree elevation
    data which has irregular azimuth positions. */
int mit_hrtf_findAzimuthFor40Elev(int azimuth);
int mit_hrtf_findIndexFor40Elev(int azimuth);



unsigned int mit_hrtf_availability(int azimuth, int elevation, unsigned int samplerate)
{
    if(elevation > 90 || elevation < -40)
        return 0;

    if(azimuth > 180 || azimuth < -180)
        return 0;

    if(samplerate == 44100)
        return MIT_HRTF_44_TAPS;
    else if(samplerate == 48000)
        return MIT_HRTF_48_TAPS;
    else if(samplerate == 88200)
        return MIT_HRTF_88_TAPS;
    else if(samplerate == 96000)
        return MIT_HRTF_96_TAPS;

    return 0;
}



unsigned int mit_hrtf_get(int* pAzimuth, int* pElevation, unsigned int samplerate, short* psLeft, short* psRight)
{
    int nInternalElevation = 0;
    float fAzimuthIncrement = 0;
    int nInternalAzimuth = 0;
    int nSwitchLeftRight = 0;
    int nAzimuthIndex = 0;
    const mit_hrtf_filter_set_44* pFilter44 = 0;
    const mit_hrtf_filter_set_48* pFilter48 = 0;
    const mit_hrtf_filter_set_88* pFilter88 = 0;
    const mit_hrtf_filter_set_96* pFilter96 = 0;
    const short* psLeftTaps = 0;
    const short* psRightTaps = 0;
    const short* psTempTaps = 0;
    unsigned int nTotalTaps = 0;
    unsigned int niTap = 0;

    /*
    Silly correction for kAmblib_Dodecahedron
    */
    if (*pElevation < -40.f)
        *pElevation = -40.f;

    //Check if the requested HRTF exists
    if(!mit_hrtf_availability(*pAzimuth, *pElevation, samplerate))
        return 0;

    //Snap elevation to the nearest available elevation in the filter set
    if(*pElevation < 0)
        nInternalElevation = ((*pElevation - 5) / 10) * 10;
    else
        nInternalElevation = ((*pElevation + 5) / 10) * 10;

    // Elevation of 50 has a maximum 176 in the azimuth plane so we need to handle that.
    if(nInternalElevation == 50)
    {
        if(*pAzimuth < 0)
            *pAzimuth = *pAzimuth < -176 ? -176 : *pAzimuth;
        else
            *pAzimuth = *pAzimuth > 176 ? 176 : *pAzimuth;
    }

    //Snap azimuth to the nearest available azimuth in the filter set.
    switch(nInternalElevation)
    {
    case 0:        fAzimuthIncrement = 180.f / (MIT_HRTF_AZI_POSITIONS_00 - 1);        break;    // 180 5
    case 10:
    case -10:    fAzimuthIncrement = 180.f / (MIT_HRTF_AZI_POSITIONS_10 - 1);        break;    // 180 5
    case 20:
    case -20:    fAzimuthIncrement = 180.f / (MIT_HRTF_AZI_POSITIONS_20 - 1);        break;    // 180 5
    case 30:
    case -30:    fAzimuthIncrement = 180.f / (MIT_HRTF_AZI_POSITIONS_30 - 1);        break;    // 180 6
    case 40:
    case -40:    fAzimuthIncrement = 180.f / (MIT_HRTF_AZI_POSITIONS_40 - 1);        break;    // 180 6.43
    case 50:    fAzimuthIncrement = 176.f / (MIT_HRTF_AZI_POSITIONS_50 - 1);        break;    // 176 8
    case 60:    fAzimuthIncrement = 180.f / (MIT_HRTF_AZI_POSITIONS_60 - 1);        break;    // 180 10
    case 70:    fAzimuthIncrement = 180.f / (MIT_HRTF_AZI_POSITIONS_70 - 1);        break;    // 180 15
    case 80:    fAzimuthIncrement = 180.f / (MIT_HRTF_AZI_POSITIONS_80 - 1);        break;    // 180 30
    case 90:    fAzimuthIncrement = 0;                                                break;    // 0   1
    };

    if(*pAzimuth < 0)
    {
        nInternalAzimuth = (int)((int)((-*pAzimuth + fAzimuthIncrement / 2.f) / fAzimuthIncrement) * fAzimuthIncrement + 0.5f);
        nSwitchLeftRight = 1;
    }
    else
    {
        nInternalAzimuth = (int)((int)((*pAzimuth + fAzimuthIncrement / 2.f) / fAzimuthIncrement) * fAzimuthIncrement + 0.5f);
    }

    //Determine array index for azimuth based on elevation
    switch(nInternalElevation)
    {
    case 0:        nAzimuthIndex = (int)((nInternalAzimuth / 180.f) * (MIT_HRTF_AZI_POSITIONS_00 - 1));    break;
    case 10:
    case -10:    nAzimuthIndex = (int)((nInternalAzimuth / 180.f) * (MIT_HRTF_AZI_POSITIONS_10 - 1));    break;
    case 20:
    case -20:    nAzimuthIndex = (int)((nInternalAzimuth / 180.f) * (MIT_HRTF_AZI_POSITIONS_20 - 1));    break;
    case 30:
    case -30:    nAzimuthIndex = (int)((nInternalAzimuth / 180.f) * (MIT_HRTF_AZI_POSITIONS_30 - 1));    break;
    case 40:
    case -40:    nAzimuthIndex = (int)((nInternalAzimuth / 180.f) * (MIT_HRTF_AZI_POSITIONS_40 - 1));    break;
    case 50:    nAzimuthIndex = (int)((nInternalAzimuth / 176.f) * (MIT_HRTF_AZI_POSITIONS_50 - 1));    break;
    case 60:    nAzimuthIndex = (int)((nInternalAzimuth / 180.f) * (MIT_HRTF_AZI_POSITIONS_60 - 1));    break;
    case 70:    nAzimuthIndex = (int)((nInternalAzimuth / 180.f) * (MIT_HRTF_AZI_POSITIONS_70 - 1));    break;
    case 80:    nAzimuthIndex = (int)((nInternalAzimuth / 180.f) * (MIT_HRTF_AZI_POSITIONS_80 - 1));    break;
    case 90:    nAzimuthIndex = (int)((nInternalAzimuth / 180.f) * (MIT_HRTF_AZI_POSITIONS_90 - 1));    break;
    };

    //The azimuths for +/- elevations need special handling
    if(nInternalElevation == 40 || nInternalElevation == -40)
    {
        nInternalAzimuth = mit_hrtf_findAzimuthFor40Elev(nInternalAzimuth);
        nAzimuthIndex = mit_hrtf_findIndexFor40Elev(nInternalAzimuth);
    }

    //Assign pointer to appropriate array depending on saple rate, normal filters, elevation, and azimuth index.
    switch(samplerate)
    {
    case 44100:
        pFilter44 = &normal_44;

        switch(nInternalElevation)
        {
        case -10:    psLeftTaps = pFilter44->e_10[nAzimuthIndex].left;
                    psRightTaps = pFilter44->e_10[nAzimuthIndex].right;        break;
        case -20:    psLeftTaps = pFilter44->e_20[nAzimuthIndex].left;
                    psRightTaps = pFilter44->e_20[nAzimuthIndex].right;        break;
        case -30:    psLeftTaps = pFilter44->e_30[nAzimuthIndex].left;
                    psRightTaps = pFilter44->e_30[nAzimuthIndex].right;        break;
        case -40:    psLeftTaps = pFilter44->e_40[nAzimuthIndex].left;
                    psRightTaps = pFilter44->e_40[nAzimuthIndex].right;        break;
        case 0:        psLeftTaps = pFilter44->e00[nAzimuthIndex].left;
                    psRightTaps = pFilter44->e00[nAzimuthIndex].right;        break;
        case 10:    psLeftTaps = pFilter44->e10[nAzimuthIndex].left;
                    psRightTaps = pFilter44->e10[nAzimuthIndex].right;        break;
        case 20:    psLeftTaps = pFilter44->e20[nAzimuthIndex].left;
                    psRightTaps = pFilter44->e20[nAzimuthIndex].right;        break;
        case 30:    psLeftTaps = pFilter44->e30[nAzimuthIndex].left;
                    psRightTaps = pFilter44->e30[nAzimuthIndex].right;        break;
        case 40:    psLeftTaps = pFilter44->e40[nAzimuthIndex].left;
                    psRightTaps = pFilter44->e40[nAzimuthIndex].right;        break;
        case 50:    psLeftTaps = pFilter44->e50[nAzimuthIndex].left;
                    psRightTaps = pFilter44->e50[nAzimuthIndex].right;        break;
        case 60:    psLeftTaps = pFilter44->e60[nAzimuthIndex].left;
                    psRightTaps = pFilter44->e60[nAzimuthIndex].right;        break;
        case 70:    psLeftTaps = pFilter44->e70[nAzimuthIndex].left;
                    psRightTaps = pFilter44->e70[nAzimuthIndex].right;        break;
        case 80:    psLeftTaps = pFilter44->e80[nAzimuthIndex].left;
                    psRightTaps = pFilter44->e80[nAzimuthIndex].right;        break;
        case 90:    psLeftTaps = pFilter44->e90[nAzimuthIndex].left;
                    psRightTaps = pFilter44->e90[nAzimuthIndex].right;        break;
        };

        //How many taps to copy later to user's buffers
        nTotalTaps = MIT_HRTF_44_TAPS;
        break;
    case 48000:
        pFilter48 = &normal_48;

        switch(nInternalElevation)
        {
        case -10:    psLeftTaps = pFilter48->e_10[nAzimuthIndex].left;
                    psRightTaps = pFilter48->e_10[nAzimuthIndex].right;        break;
        case -20:    psLeftTaps = pFilter48->e_20[nAzimuthIndex].left;
                    psRightTaps = pFilter48->e_20[nAzimuthIndex].right;        break;
        case -30:    psLeftTaps = pFilter48->e_30[nAzimuthIndex].left;
                    psRightTaps = pFilter48->e_30[nAzimuthIndex].right;        break;
        case -40:    psLeftTaps = pFilter48->e_40[nAzimuthIndex].left;
                    psRightTaps = pFilter48->e_40[nAzimuthIndex].right;        break;
        case 0:        psLeftTaps = pFilter48->e00[nAzimuthIndex].left;
                    psRightTaps = pFilter48->e00[nAzimuthIndex].right;        break;
        case 10:    psLeftTaps = pFilter48->e10[nAzimuthIndex].left;
                    psRightTaps = pFilter48->e10[nAzimuthIndex].right;        break;
        case 20:    psLeftTaps = pFilter48->e20[nAzimuthIndex].left;
                    psRightTaps = pFilter48->e20[nAzimuthIndex].right;        break;
        case 30:    psLeftTaps = pFilter48->e30[nAzimuthIndex].left;
                    psRightTaps = pFilter48->e30[nAzimuthIndex].right;        break;
        case 40:    psLeftTaps = pFilter48->e40[nAzimuthIndex].left;
                    psRightTaps = pFilter48->e40[nAzimuthIndex].right;        break;
        case 50:    psLeftTaps = pFilter48->e50[nAzimuthIndex].left;
                    psRightTaps = pFilter48->e50[nAzimuthIndex].right;        break;
        case 60:    psLeftTaps = pFilter48->e60[nAzimuthIndex].left;
                    psRightTaps = pFilter48->e60[nAzimuthIndex].right;        break;
        case 70:    psLeftTaps = pFilter48->e70[nAzimuthIndex].left;
                    psRightTaps = pFilter48->e70[nAzimuthIndex].right;        break;
        case 80:    psLeftTaps = pFilter48->e80[nAzimuthIndex].left;
                    psRightTaps = pFilter48->e80[nAzimuthIndex].right;        break;
        case 90:    psLeftTaps = pFilter48->e90[nAzimuthIndex].left;
                    psRightTaps = pFilter48->e90[nAzimuthIndex].right;        break;
        };

        //How many taps to copy later to user's buffers
        nTotalTaps = MIT_HRTF_48_TAPS;
        break;
    case 88200:
        pFilter88 = &normal_88;

        switch(nInternalElevation)
        {
        case -10:    psLeftTaps = pFilter88->e_10[nAzimuthIndex].left;
                    psRightTaps = pFilter88->e_10[nAzimuthIndex].right;        break;
        case -20:    psLeftTaps = pFilter88->e_20[nAzimuthIndex].left;
                    psRightTaps = pFilter88->e_20[nAzimuthIndex].right;        break;
        case -30:    psLeftTaps = pFilter88->e_30[nAzimuthIndex].left;
                    psRightTaps = pFilter88->e_30[nAzimuthIndex].right;        break;
        case -40:    psLeftTaps = pFilter88->e_40[nAzimuthIndex].left;
                    psRightTaps = pFilter88->e_40[nAzimuthIndex].right;        break;
        case 0:        psLeftTaps = pFilter88->e00[nAzimuthIndex].left;
                    psRightTaps = pFilter88->e00[nAzimuthIndex].right;        break;
        case 10:    psLeftTaps = pFilter88->e10[nAzimuthIndex].left;
                    psRightTaps = pFilter88->e10[nAzimuthIndex].right;        break;
        case 20:    psLeftTaps = pFilter88->e20[nAzimuthIndex].left;
                    psRightTaps = pFilter88->e20[nAzimuthIndex].right;        break;
        case 30:    psLeftTaps = pFilter88->e30[nAzimuthIndex].left;
                    psRightTaps = pFilter88->e30[nAzimuthIndex].right;        break;
        case 40:    psLeftTaps = pFilter88->e40[nAzimuthIndex].left;
                    psRightTaps = pFilter88->e40[nAzimuthIndex].right;        break;
        case 50:    psLeftTaps = pFilter88->e50[nAzimuthIndex].left;
                    psRightTaps = pFilter88->e50[nAzimuthIndex].right;        break;
        case 60:    psLeftTaps = pFilter88->e60[nAzimuthIndex].left;
                    psRightTaps = pFilter88->e60[nAzimuthIndex].right;        break;
        case 70:    psLeftTaps = pFilter88->e70[nAzimuthIndex].left;
                    psRightTaps = pFilter88->e70[nAzimuthIndex].right;        break;
        case 80:    psLeftTaps = pFilter88->e80[nAzimuthIndex].left;
                    psRightTaps = pFilter88->e80[nAzimuthIndex].right;        break;
        case 90:    psLeftTaps = pFilter88->e90[nAzimuthIndex].left;
                    psRightTaps = pFilter88->e90[nAzimuthIndex].right;        break;
        };

        //How many taps to copy later to user's buffers
        nTotalTaps = MIT_HRTF_88_TAPS;
        break;
    case 96000:
        pFilter96 = &normal_96;

        switch(nInternalElevation)
        {
        case -10:    psLeftTaps = pFilter96->e_10[nAzimuthIndex].left;
                    psRightTaps = pFilter96->e_10[nAzimuthIndex].right;        break;
        case -20:    psLeftTaps = pFilter96->e_20[nAzimuthIndex].left;
                    psRightTaps = pFilter96->e_20[nAzimuthIndex].right;        break;
        case -30:    psLeftTaps = pFilter96->e_30[nAzimuthIndex].left;
                    psRightTaps = pFilter96->e_30[nAzimuthIndex].right;        break;
        case -40:    psLeftTaps = pFilter96->e_40[nAzimuthIndex].left;
                    psRightTaps = pFilter96->e_40[nAzimuthIndex].right;        break;
        case 0:        psLeftTaps = pFilter96->e00[nAzimuthIndex].left;
                    psRightTaps = pFilter96->e00[nAzimuthIndex].right;        break;
        case 10:    psLeftTaps = pFilter96->e10[nAzimuthIndex].left;
                    psRightTaps = pFilter96->e10[nAzimuthIndex].right;        break;
        case 20:    psLeftTaps = pFilter96->e20[nAzimuthIndex].left;
                    psRightTaps = pFilter96->e20[nAzimuthIndex].right;        break;
        case 30:    psLeftTaps = pFilter96->e30[nAzimuthIndex].left;
                    psRightTaps = pFilter96->e30[nAzimuthIndex].right;        break;
        case 40:    psLeftTaps = pFilter96->e40[nAzimuthIndex].left;
                    psRightTaps = pFilter96->e40[nAzimuthIndex].right;        break;
        case 50:    psLeftTaps = pFilter96->e50[nAzimuthIndex].left;
                    psRightTaps = pFilter96->e50[nAzimuthIndex].right;        break;
        case 60:    psLeftTaps = pFilter96->e60[nAzimuthIndex].left;
                    psRightTaps = pFilter96->e60[nAzimuthIndex].right;        break;
        case 70:    psLeftTaps = pFilter96->e70[nAzimuthIndex].left;
                    psRightTaps = pFilter96->e70[nAzimuthIndex].right;        break;
        case 80:    psLeftTaps = pFilter96->e80[nAzimuthIndex].left;
                    psRightTaps = pFilter96->e80[nAzimuthIndex].right;        break;
        case 90:    psLeftTaps = pFilter96->e90[nAzimuthIndex].left;
                    psRightTaps = pFilter96->e90[nAzimuthIndex].right;        break;
        };

        //How many taps to copy later to user's buffers
        nTotalTaps = MIT_HRTF_96_TAPS;
        break;
    };

    //Switch left and right ear if the azimuth is to the left of front centre (azimuth < 0)
    if(nSwitchLeftRight)
    {
        psTempTaps = psRightTaps;
        psRightTaps = psLeftTaps;
        psLeftTaps = psTempTaps;
    }

    //Copy taps to user's arrays
    for(niTap = 0; niTap < nTotalTaps; niTap++)
    {
        psLeft[niTap] = psLeftTaps[niTap];
        psRight[niTap] = psRightTaps[niTap];
    }

    //Assign the real azimuth and elevation used
    *pAzimuth = nInternalAzimuth;
    *pElevation = nInternalElevation;

    return nTotalTaps;
}



int mit_hrtf_findAzimuthFor40Elev(int azimuth)
{
    if(azimuth >= 0 && azimuth < 4)
        return 0;
    else if(azimuth >= 4 && azimuth < 10)
        return 6;
    else if(azimuth >= 10 && azimuth < 17)
        return 13;
    else if(azimuth >= 17 && azimuth < 23)
        return 19;
    else if(azimuth >= 23 && azimuth < 30)
        return 26;
    else if(azimuth >= 30 && azimuth < 36)
        return 32;
    else if(azimuth >= 36 && azimuth < 43)
        return 39;
    else if(azimuth >= 43 && azimuth < 49)
        return 45;
    else if(azimuth >= 49 && azimuth < 55)
        return 51;
    else if(azimuth >= 55 && azimuth < 62)
        return 58;
    else if(azimuth >= 62 && azimuth < 68)
        return 64;
    else if(azimuth >= 68 && azimuth < 75)
        return 71;
    else if(azimuth >= 75 && azimuth < 81)
        return 77;
    else if(azimuth >= 81 && azimuth < 88)
        return 84;
    else if(azimuth >= 88 && azimuth < 94)
        return 90;
    else if(azimuth >= 94 && azimuth < 100)
        return 96;
    else if(azimuth >= 100 && azimuth < 107)
        return 103;
    else if(azimuth >= 107 && azimuth < 113)
        return 109;
    else if(azimuth >= 113 && azimuth < 120)
        return 116;
    else if(azimuth >= 120 && azimuth < 126)
        return 122;
    else if(azimuth >= 126 && azimuth < 133)
        return 129;
    else if(azimuth >= 133 && azimuth < 139)
        return 135;
    else if(azimuth >= 139 && azimuth < 145)
        return 141;
    else if(azimuth >= 145 && azimuth < 152)
        return 148;
    else if(azimuth >= 152 && azimuth < 158)
        return 154;
    else if(azimuth >= 158 && azimuth < 165)
        return 161;
    else if(azimuth >= 165 && azimuth < 171)
        return 167;
    else if(azimuth >= 171 && azimuth < 178)
        return 174;
    else
        return 180;
};



int mit_hrtf_findIndexFor40Elev(int azimuth)
{
    if(azimuth >= 0 && azimuth < 4)
        return 0;
    else if(azimuth >= 4 && azimuth < 10)
        return 1;
    else if(azimuth >= 10 && azimuth < 17)
        return 2;
    else if(azimuth >= 17 && azimuth < 23)
        return 3;
    else if(azimuth >= 23 && azimuth < 30)
        return 4;
    else if(azimuth >= 30 && azimuth < 36)
        return 5;
    else if(azimuth >= 36 && azimuth < 43)
        return 6;
    else if(azimuth >= 43 && azimuth < 49)
        return 7;
    else if(azimuth >= 49 && azimuth < 55)
        return 8;
    else if(azimuth >= 55 && azimuth < 62)
        return 9;
    else if(azimuth >= 62 && azimuth < 68)
        return 10;
    else if(azimuth >= 68 && azimuth < 75)
        return 11;
    else if(azimuth >= 75 && azimuth < 81)
        return 12;
    else if(azimuth >= 81 && azimuth < 88)
        return 13;
    else if(azimuth >= 88 && azimuth < 94)
        return 14;
    else if(azimuth >= 94 && azimuth < 100)
        return 15;
    else if(azimuth >= 100 && azimuth < 107)
        return 16;
    else if(azimuth >= 107 && azimuth < 113)
        return 17;
    else if(azimuth >= 113 && azimuth < 120)
        return 18;
    else if(azimuth >= 120 && azimuth < 126)
        return 19;
    else if(azimuth >= 126 && azimuth < 133)
        return 20;
    else if(azimuth >= 133 && azimuth < 139)
        return 21;
    else if(azimuth >= 139 && azimuth < 145)
        return 22;
    else if(azimuth >= 145 && azimuth < 152)
        return 23;
    else if(azimuth >= 152 && azimuth < 158)
        return 24;
    else if(azimuth >= 158 && azimuth < 165)
        return 25;
    else if(azimuth >= 165 && azimuth < 171)
        return 26;
    else if(azimuth >= 171 && azimuth < 178)
        return 27;
    else
        return 28;
}
}

// MIT_HRTF
MIT_HRTF::MIT_HRTF(unsigned i_sampleRate)
    : HRTF(i_sampleRate)
{
    i_len = mit_hrtf_availability(0, 0, i_sampleRate);
}


bool MIT_HRTF::get(float f_azimuth, float f_elevation, float** pfHRTF)
{
    int nAzimuth = (int)RadiansToDegrees(-f_azimuth);
    if(nAzimuth > 180)
        nAzimuth -= 360;
    int nElevation = (int)RadiansToDegrees(f_elevation);
    //Get HRTFs for given position
    std::vector<short> psHRTF[2] = {std::vector<short>(i_len), std::vector<short>(i_len)};
    unsigned ret = mit_hrtf_get(&nAzimuth, &nElevation, i_sampleRate, psHRTF[0].data(), psHRTF[1].data());
    if (ret == 0)
        return false;

    //Convert from short to float representation
    for (unsigned t = 0; t < i_len; t++)
    {
        pfHRTF[0][t] = psHRTF[0][t] / 32767.f;
        pfHRTF[1][t] = psHRTF[1][t] / 32767.f;
    }

    return true;
}

// AmbisonicCommons
float DegreesToRadians(float fDegrees)
{
    return fDegrees * (float)M_PI / 180.f;
}

float RadiansToDegrees(float fRadians)
{
    return fRadians * 180.f / (float)M_PI;
}

unsigned OrderToComponents(unsigned nOrder, bool b3D)
{
    if(b3D)
        return (unsigned) powf(nOrder + 1.f, 2.f);
    else
        return nOrder * 2 + 1;
}

unsigned OrderToComponentPosition(unsigned nOrder, bool b3D)
{


    unsigned nIndex = 0;

    if(b3D)
    {
        switch(nOrder)
        {
        case 0:    nIndex = 0;    break;
        case 1:    nIndex = 1;    break;
        case 2:    nIndex = 4;    break;
        case 3:    nIndex = 10;break;
        }
    }
    else
    {
        switch(nOrder)
        {
        case 0:    nIndex = 0;    break;
        case 1:    nIndex = 1;    break;
        case 2:    nIndex = 3;    break;
        case 3:    nIndex = 5;    break;
        }
    }

    return nIndex;
}

unsigned OrderToSpeakers(unsigned nOrder, bool b3D)
{

    if(b3D)
        return (nOrder * 2 + 2) * 2;
    else
        return nOrder * 2 + 2;
}

char ComponentToChannelLabel(unsigned nComponent, bool b3D)
{

    char cLabel = ' ';
    if(b3D)
    {
        switch(nComponent)
        {
        case 0:     cLabel = 'W';   break;
        case 1:     cLabel = 'Y';   break;
        case 2:     cLabel = 'Z';   break;
        case 3:     cLabel = 'X';   break;
        case 4:     cLabel = 'V';   break;
        case 5:     cLabel = 'T';   break;
        case 6:     cLabel = 'R';   break;
        case 7:     cLabel = 'U';   break;
        case 8:     cLabel = 'S';   break;
        case 9:     cLabel = 'Q';   break;
        case 10:    cLabel = 'O';   break;
        case 11:    cLabel = 'M';   break;
        case 12:    cLabel = 'K';   break;
        case 13:    cLabel = 'L';   break;
        case 14:    cLabel = 'N';   break;
        case 15:    cLabel = 'P';   break;
        };
    }
    else
    {
        switch(nComponent)
        {
        case 0:     cLabel = 'W';   break;
        case 1:     cLabel = 'X';   break;
        case 2:     cLabel = 'Y';   break;
        case 3:     cLabel = 'U';   break;
        case 4:     cLabel = 'V';   break;
        case 5:     cLabel = 'P';   break;
        case 6:     cLabel = 'Q';   break;
        };
    }

    return cLabel;
}

// CAmbisonicBase
CAmbisonicBase::CAmbisonicBase()
    : m_nOrder(0)
    , m_b3D(0)
    , m_nChannelCount(0)
    , m_bOpt(0)
{
}

unsigned CAmbisonicBase::GetOrder()
{
    return m_nOrder;
}

bool CAmbisonicBase::GetHeight()
{
    return m_b3D;
}

unsigned CAmbisonicBase::GetChannelCount()
{
    return m_nChannelCount;
}

bool CAmbisonicBase::Configure(unsigned nOrder, bool b3D, unsigned nMisc)
{
    m_nOrder = nOrder;
    m_b3D = b3D;
    m_nChannelCount = OrderToComponents(m_nOrder, m_b3D);

    return true;
}

// CBFormat
CBFormat::CBFormat()
{
    m_nSamples = 0;
    m_nDataLength = 0;
}

unsigned CBFormat::GetSampleCount()
{
    return m_nSamples;
}

bool CBFormat::Configure(unsigned nOrder, bool b3D, unsigned nSampleCount)
{
    bool success = CAmbisonicBase::Configure(nOrder, b3D, nSampleCount);
    if(!success)
        return false;

    m_nSamples = nSampleCount;
    m_nDataLength = m_nSamples * m_nChannelCount;

    m_pfData.resize(m_nDataLength);
    memset(m_pfData.data(), 0, m_nDataLength * sizeof(float));
    m_ppfChannels.reset(new float*[m_nChannelCount]);

    for(unsigned niChannel = 0; niChannel < m_nChannelCount; niChannel++)
    {
        m_ppfChannels[niChannel] = &m_pfData[niChannel * m_nSamples];
    }

    return true;
}

void CBFormat::Reset()
{
    memset(m_pfData.data(), 0, m_nDataLength * sizeof(float));
}

void CBFormat::Refresh()
{

}

void CBFormat::InsertStream(float* pfData, unsigned nChannel, unsigned nSamples)
{
    memcpy(m_ppfChannels[nChannel], pfData, nSamples * sizeof(float));
}

void CBFormat::ExtractStream(float* pfData, unsigned nChannel, unsigned nSamples)
{
    memcpy(pfData, m_ppfChannels[nChannel], nSamples * sizeof(float));
}

void CBFormat::operator = (const CBFormat &bf)
{
    memcpy(m_pfData.data(), bf.m_pfData.data(), m_nDataLength * sizeof(float));
}

bool CBFormat::operator == (const CBFormat &bf)
{
    if(m_b3D == bf.m_b3D && m_nOrder == bf.m_nOrder && m_nDataLength == bf.m_nDataLength)
        return true;
    else
        return false;
}

bool CBFormat::operator != (const CBFormat &bf)
{
    if(m_b3D != bf.m_b3D || m_nOrder != bf.m_nOrder || m_nDataLength != bf.m_nDataLength)
        return true;
    else
        return false;
}

CBFormat& CBFormat::operator += (const CBFormat &bf)
{
    unsigned niChannel = 0;
    unsigned niSample = 0;
    for(niChannel = 0; niChannel < m_nChannelCount; niChannel++)
    {
        for(niSample = 0; niSample < m_nSamples; niSample++)
        {
            m_ppfChannels[niChannel][niSample] += bf.m_ppfChannels[niChannel][niSample];
        }
    }

    return *this;
}

CBFormat& CBFormat::operator -= (const CBFormat &bf)
{
    unsigned niChannel = 0;
    unsigned niSample = 0;
    for(niChannel = 0; niChannel < m_nChannelCount; niChannel++)
    {
        for(niSample = 0; niSample < m_nSamples; niSample++)
        {
            m_ppfChannels[niChannel][niSample] -= bf.m_ppfChannels[niChannel][niSample];
        }
    }

    return *this;
}

CBFormat& CBFormat::operator *= (const CBFormat &bf)
{
    unsigned niChannel = 0;
    unsigned niSample = 0;
    for(niChannel = 0; niChannel < m_nChannelCount; niChannel++)
    {
        for(niSample = 0; niSample < m_nSamples; niSample++)
        {
            m_ppfChannels[niChannel][niSample] *= bf.m_ppfChannels[niChannel][niSample];
        }
    }

    return *this;
}

CBFormat& CBFormat::operator /= (const CBFormat &bf)
{
    unsigned niChannel = 0;
    unsigned niSample = 0;
    for(niChannel = 0; niChannel < m_nChannelCount; niChannel++)
    {
        for(niSample = 0; niSample < m_nSamples; niSample++)
        {
            m_ppfChannels[niChannel][niSample] /= bf.m_ppfChannels[niChannel][niSample];
        }
    }

    return *this;
}

CBFormat& CBFormat::operator += (const float &fValue)
{
    unsigned niChannel = 0;
    unsigned niSample = 0;
    for(niChannel = 0; niChannel < m_nChannelCount; niChannel++)
    {
        for(niSample = 0; niSample < m_nSamples; niSample++)
        {
            m_ppfChannels[niChannel][niSample] += fValue;
        }
    }

    return *this;
}

CBFormat& CBFormat::operator -= (const float &fValue)
{
    unsigned niChannel = 0;
    unsigned niSample = 0;
    for(niChannel = 0; niChannel < m_nChannelCount; niChannel++)
    {
        for(niSample = 0; niSample < m_nSamples; niSample++)
        {
            m_ppfChannels[niChannel][niSample] -= fValue;
        }
    }

    return *this;
}

CBFormat& CBFormat::operator *= (const float &fValue)
{
    unsigned niChannel = 0;
    unsigned niSample = 0;
    for(niChannel = 0; niChannel < m_nChannelCount; niChannel++)
    {
        for(niSample = 0; niSample < m_nSamples; niSample++)
        {
            m_ppfChannels[niChannel][niSample] *= fValue;
        }
    }

    return *this;
}

CBFormat& CBFormat::operator /= (const float &fValue)
{
    unsigned niChannel = 0;
    unsigned niSample = 0;
    for(niChannel = 0; niChannel < m_nChannelCount; niChannel++)
    {
        for(niSample = 0; niSample < m_nSamples; niSample++)
        {
            m_ppfChannels[niChannel][niSample] /= fValue;
        }
    }

    return *this;
}

// CAmbisonicProcessor
CAmbisonicProcessor::CAmbisonicProcessor()
    : m_orientation(0, 0, 0)
{
    m_pfTempSample = nullptr;
    m_pfScratchBufferA = nullptr;
    m_pFFT_psych_cfg = nullptr;
    m_pIFFT_psych_cfg = nullptr;
    m_ppcpPsychFilters = nullptr;
    m_pcpScratch = nullptr;
    m_pfOverlap = nullptr;
}

CAmbisonicProcessor::~CAmbisonicProcessor()
{
    if(m_pfTempSample)
        delete [] m_pfTempSample;
    if(m_pfScratchBufferA)
        delete [] m_pfScratchBufferA;
    if(m_pFFT_psych_cfg)
        kiss_fftr_free(m_pFFT_psych_cfg);
    if(m_pIFFT_psych_cfg)
        kiss_fftr_free(m_pIFFT_psych_cfg);
    if (m_ppcpPsychFilters)
    {
        for(unsigned i=0; i<=m_nOrder; i++)
            if(m_ppcpPsychFilters[i])
                delete [] m_ppcpPsychFilters[i];
        delete [] m_ppcpPsychFilters;
    }
    if(m_pcpScratch)
        delete [] m_pcpScratch;
    if(m_pfOverlap){
        for(unsigned i=0; i<m_nChannelCount; i++)
            if(m_pfOverlap[i])
                delete [] m_pfOverlap[i];
        delete [] m_pfOverlap;
    }
}

bool CAmbisonicProcessor::Configure(unsigned nOrder, bool b3D, unsigned nBlockSize, unsigned nMisc)
{
    bool success = CAmbisonicBase::Configure(nOrder, b3D, nMisc);
    if(!success)
        return false;
    if(m_pfTempSample)
        delete [] m_pfTempSample;
    m_pfTempSample = new float[m_nChannelCount];
    memset(m_pfTempSample, 0, m_nChannelCount * sizeof(float));

    /* This bool should be set as a user option to turn optimisation on and off*/
    m_bOpt = true;

    // All optimisation filters have the same number of taps so take from the first order 3D impulse response arbitrarily
    unsigned nbTaps = sizeof(first_order_3D[0]) / sizeof(int16_t);

    m_nBlockSize = nBlockSize;
    m_nTaps = nbTaps;

    //What will the overlap size be?
    m_nOverlapLength = m_nBlockSize < m_nTaps ? m_nBlockSize - 1 : m_nTaps - 1;
    //How large does the FFT need to be
    m_nFFTSize = 1;
    while(m_nFFTSize < (m_nBlockSize + m_nTaps + m_nOverlapLength))
        m_nFFTSize <<= 1;
    //How many bins is that
    m_nFFTBins = m_nFFTSize / 2 + 1;
    //What do we need to scale the result of the iFFT by
    m_fFFTScaler = 1.f / m_nFFTSize;

    //Allocate buffers
        m_pfOverlap = new float*[m_nChannelCount];
    for(unsigned i=0; i<m_nChannelCount; i++)
        m_pfOverlap[i] = new float[m_nOverlapLength];

    m_pfScratchBufferA = new float[m_nFFTSize];
    m_ppcpPsychFilters = new kiss_fft_cpx*[m_nOrder+1];
    for(unsigned i = 0; i <= m_nOrder; i++)
        m_ppcpPsychFilters[i] = new kiss_fft_cpx[m_nFFTBins];

    m_pcpScratch = new kiss_fft_cpx[m_nFFTBins];

    //Allocate temporary buffers for retrieving taps of psychoacoustic opimisation filters
    std::vector<std::unique_ptr<float[]>> pfPsychIR;
    for(unsigned i = 0; i <= m_nOrder; i++)
    {
        pfPsychIR.emplace_back(new float[m_nTaps]);
    }

    Reset();

    //Allocate FFT and iFFT for new size
    m_pFFT_psych_cfg = kiss_fftr_alloc(m_nFFTSize, 0, 0, 0);
    m_pIFFT_psych_cfg = kiss_fftr_alloc(m_nFFTSize, 1, 0, 0);

    // get impulse responses for psychoacoustic optimisation based on playback system (2D or 3D) and playback order (1 to 3)
    //Convert from short to float representation
    for (unsigned i_m = 0; i_m <= m_nOrder; i_m++){
        for(unsigned i = 0; i < m_nTaps; i++)
            if(m_b3D){
                switch(m_nOrder){
                    case 1: pfPsychIR[i_m][i] = 2.f*first_order_3D[i_m][i] / 32767.f; break;
                    case 2: pfPsychIR[i_m][i] = 2.f*second_order_3D[i_m][i] / 32767.f; break;
                    case 3: pfPsychIR[i_m][i] = 2.f*third_order_3D[i_m][i] / 32767.f; break;
                }
                }
                else{
                    switch(m_nOrder){
                    case 1: pfPsychIR[i_m][i] = 2.f*first_order_2D[i_m][i] / 32767.f; break;
                    case 2: pfPsychIR[i_m][i] = 2.f*second_order_2D[i_m][i] / 32767.f; break;
                    case 3: pfPsychIR[i_m][i] = 2.f*third_order_2D[i_m][i] / 32767.f; break;
                }
            }
        // Convert the impulse responses to the frequency domain
        memcpy(m_pfScratchBufferA, pfPsychIR[i_m].get(), m_nTaps * sizeof(float));
        memset(&m_pfScratchBufferA[m_nTaps], 0, (m_nFFTSize - m_nTaps) * sizeof(float));
        kiss_fftr(m_pFFT_psych_cfg, m_pfScratchBufferA, m_ppcpPsychFilters[i_m]);
    }

    return true;
}

void CAmbisonicProcessor::Reset()
{
    for(unsigned i=0; i<m_nChannelCount; i++)
        memset(m_pfOverlap[i], 0, m_nOverlapLength * sizeof(float));
}

void CAmbisonicProcessor::Refresh()
{
    // Trig terms used multiple times in rotation equations
    m_fCosAlpha = cosf(m_orientation.fAlpha);
    m_fSinAlpha = sinf(m_orientation.fAlpha);
    m_fCosBeta = cosf(m_orientation.fBeta);
    m_fSinBeta = sinf(m_orientation.fBeta);
    m_fCosGamma = cosf(m_orientation.fGamma);
    m_fSinGamma = sinf(m_orientation.fGamma);
    m_fCos2Alpha = cosf(2.f * m_orientation.fAlpha);
    m_fSin2Alpha = sinf(2.f * m_orientation.fAlpha);
    m_fCos2Beta = cosf(2.f * m_orientation.fBeta);
    m_fSin2Beta = sinf(2.f * m_orientation.fBeta);
    m_fCos2Gamma = cosf(2.f * m_orientation.fGamma);
    m_fSin2Gamma = sinf(2.f * m_orientation.fGamma);
    m_fCos3Alpha = cosf(3.f * m_orientation.fAlpha);
    m_fSin3Alpha = sinf(3.f * m_orientation.fAlpha);
    m_fCos3Beta = cosf(3.f * m_orientation.fBeta);
    m_fSin3Beta = sinf(3.f * m_orientation.fBeta);
    m_fCos3Gamma = cosf(3.f * m_orientation.fGamma);
    m_fSin3Gamma = sinf(3.f * m_orientation.fGamma);
}

void CAmbisonicProcessor::SetOrientation(Orientation orientation)
{
    m_orientation = orientation;
}

Orientation CAmbisonicProcessor::GetOrientation()
{
    return m_orientation;
}

void CAmbisonicProcessor::Process(CBFormat* pBFSrcDst, unsigned nSamples)
{

    /* Rotate the sound scene based on the rotation angle from the 360 video*/
    /* Before the rotation we apply the psychoacoustic optimisation filters */
    if(m_bOpt)
    {
        ShelfFilterOrder(pBFSrcDst, nSamples);
    }
    else
    {
        // No filtering required
    }

    /* 3D Ambisonics input expected so perform 3D rotations */
    if(m_nOrder >= 1)
        ProcessOrder1_3D(pBFSrcDst, nSamples);
    if(m_nOrder >= 2)
        ProcessOrder2_3D(pBFSrcDst, nSamples);
    if(m_nOrder >= 3)
        ProcessOrder3_3D(pBFSrcDst, nSamples);
}

extern "C" {
void processOrder1(float* tempChannels, unsigned nSamples, float m_fSinAlpha, float m_fCosAlpha, float m_fCosBeta, float m_fSinBeta, float m_fSinGamma, float m_fCosGamma) {
loopROa:    for(unsigned niSample = 0; niSample < nSamples; niSample++) {
        // Alpha rotation
        float tempY = -tempChannels[nSamples * 2 + niSample] * m_fSinAlpha
                            + tempChannels[niSample] * m_fCosAlpha;
        float tempZ = tempChannels[nSamples + niSample];
        float tempX = tempChannels[nSamples * 2 + niSample] * m_fCosAlpha
                            + tempChannels[niSample] * m_fSinAlpha;

        // Beta rotation
        tempChannels[niSample] = tempY;
        tempChannels[nSamples + niSample] = tempZ * m_fCosBeta
                            +  tempX * m_fSinBeta;
        tempChannels[nSamples * 2 + niSample] = tempX * m_fCosBeta
                            - tempZ * m_fSinBeta;

        // Gamma rotation
        tempY = -tempChannels[nSamples * 2 + niSample] * m_fSinGamma
                            + tempChannels[niSample] * m_fCosGamma;
        tempZ = tempChannels[nSamples + niSample];
        tempX = tempChannels[nSamples * 2 + niSample] * m_fCosGamma
                            + tempChannels[niSample] * m_fSinGamma;

        tempChannels[nSamples * 2 + niSample] = tempX;
        tempChannels[niSample] = tempY;
        tempChannels[nSamples + niSample] = tempZ;
    }
}
}

void CAmbisonicProcessor::ProcessOrder1_3D(CBFormat* pBFSrcDst, unsigned nSamples)
{
    /* Rotations are performed in the following order:
        1 - rotation around the z-axis
        2 - rotation around the *new* y-axis (y')
        3 - rotation around the new z-axis (z'')
    This is different to the rotations obtained from the video, which are around z, y' then x''.
    The rotation equations used here work for third order. However, for higher orders a recursive algorithm
    should be considered.*/
    // for(unsigned niSample = 0; niSample < nSamples; niSample++)
    // {
    //     // Alpha rotation
    //     m_pfTempSample[kY] = -pBFSrcDst->m_ppfChannels[kX][niSample] * m_fSinAlpha
    //                         + pBFSrcDst->m_ppfChannels[kY][niSample] * m_fCosAlpha;
    //     m_pfTempSample[kZ] = pBFSrcDst->m_ppfChannels[kZ][niSample];
    //     m_pfTempSample[kX] = pBFSrcDst->m_ppfChannels[kX][niSample] * m_fCosAlpha
    //                         + pBFSrcDst->m_ppfChannels[kY][niSample] * m_fSinAlpha;

    //     // Beta rotation
    //     pBFSrcDst->m_ppfChannels[kY][niSample] = m_pfTempSample[kY];
    //     pBFSrcDst->m_ppfChannels[kZ][niSample] = m_pfTempSample[kZ] * m_fCosBeta
    //                         +  m_pfTempSample[kX] * m_fSinBeta;
    //     pBFSrcDst->m_ppfChannels[kX][niSample] = m_pfTempSample[kX] * m_fCosBeta
    //                         - m_pfTempSample[kZ] * m_fSinBeta;

    //     // Gamma rotation
    //     m_pfTempSample[kY] = -pBFSrcDst->m_ppfChannels[kX][niSample] * m_fSinGamma
    //                         + pBFSrcDst->m_ppfChannels[kY][niSample] * m_fCosGamma;
    //     m_pfTempSample[kZ] = pBFSrcDst->m_ppfChannels[kZ][niSample];
    //     m_pfTempSample[kX] = pBFSrcDst->m_ppfChannels[kX][niSample] * m_fCosGamma
    //                         + pBFSrcDst->m_ppfChannels[kY][niSample] * m_fSinGamma;

    //     pBFSrcDst->m_ppfChannels[kX][niSample] = m_pfTempSample[kX];
    //     pBFSrcDst->m_ppfChannels[kY][niSample] = m_pfTempSample[kY];
    //     pBFSrcDst->m_ppfChannels[kZ][niSample] = m_pfTempSample[kZ];
    // }

    float tempChannels[3 * nSamples];
    for (unsigned niSample = 0; niSample < nSamples; niSample++) {
        tempChannels[nSamples * 2 + niSample] = pBFSrcDst->m_ppfChannels[kX][niSample];
        tempChannels[niSample] = pBFSrcDst->m_ppfChannels[kY][niSample];
        tempChannels[nSamples + niSample] = pBFSrcDst->m_ppfChannels[kZ][niSample];
    }
    std::cout << "size of tempChannels: " << 3 * nSamples * sizeof(float) << std::endl;
    processOrder1(tempChannels, nSamples, m_fSinAlpha, m_fCosAlpha, m_fCosBeta, m_fSinBeta, m_fSinGamma, m_fCosGamma);

    for (unsigned niSample = 0; niSample < nSamples; niSample++) {
        pBFSrcDst->m_ppfChannels[kX][niSample] = tempChannels[nSamples * 2 + niSample];
        pBFSrcDst->m_ppfChannels[kY][niSample] = tempChannels[niSample];
        pBFSrcDst->m_ppfChannels[kZ][niSample] = tempChannels[nSamples + niSample];
    }
}

extern "C" {
void processOrder2(float* tempChannels, unsigned nSamples, float m_fSin2Alpha, float m_fCos2Alpha, float m_fSinAlpha, float m_fCosAlpha, \
                   float m_fSinBeta, float m_fCosBeta, float m_fCos2Beta, float m_fSin2Gamma, float m_fCos2Gamma, float m_fCosGamma, float m_fSinGamma) {
    float fSqrt3 = sqrt(3.f);

loopROb:    for(unsigned niSample = 0; niSample < nSamples; niSample++)
    {
        // Alpha rotation
        float tempV = - tempChannels[nSamples * 4 + niSample] * m_fSin2Alpha
                            + tempChannels[niSample] * m_fCos2Alpha;
        float tempT = - tempChannels[nSamples * 3 + niSample] * m_fSinAlpha
                            + tempChannels[nSamples + niSample] * m_fCosAlpha;
        float tempR = tempChannels[nSamples * 2 + niSample];
        float tempS = tempChannels[nSamples * 3 + niSample] * m_fCosAlpha
                            + tempChannels[nSamples + niSample] * m_fSinAlpha;
        float tempU = tempChannels[nSamples * 4 + niSample] * m_fCos2Alpha
                            + tempChannels[niSample] * m_fSin2Alpha;

        // Beta rotation
        tempChannels[niSample] = -m_fSinBeta * tempT
                                        + m_fCosBeta * tempV;
        tempChannels[nSamples + niSample] = -m_fCosBeta * tempT
                                        + m_fSinBeta * tempV;
        tempChannels[nSamples * 2 + niSample] = (0.75f * m_fCos2Beta + 0.25f) * tempR
                            + (0.5 * fSqrt3 * pow(m_fSinBeta,2.0) ) * tempU
                            + (fSqrt3 * m_fSinBeta * m_fCosBeta) * tempS;
        tempChannels[nSamples * 3 + niSample] = m_fCos2Beta * tempS
                            - fSqrt3 * m_fCosBeta * m_fSinBeta * tempR
                            + m_fCosBeta * m_fSinBeta * tempU;
        tempChannels[nSamples * 4 + niSample] = (0.25f * m_fCos2Beta + 0.75f) * tempU
                            - m_fCosBeta * m_fSinBeta * tempS
                            +0.5 * fSqrt3 * pow(m_fSinBeta,2.0) * tempR;

        // Gamma rotation
        tempV = - tempChannels[nSamples * 4 + niSample] * m_fSin2Gamma
                            + tempChannels[niSample] * m_fCos2Gamma;
        tempT = - tempChannels[nSamples * 3 + niSample] * m_fSinGamma
                            + tempChannels[nSamples + niSample] * m_fCosGamma;

        tempR = tempChannels[nSamples + niSample];
        tempS = tempChannels[nSamples * 3 + niSample] * m_fCosGamma
                            + tempChannels[nSamples + niSample] * m_fSinGamma;
        tempU = tempChannels[nSamples * 4 + niSample] * m_fCos2Gamma
                            + tempChannels[niSample] * m_fSin2Gamma;

        tempChannels[nSamples * 2 + niSample] = tempR;
        tempChannels[nSamples * 3 + niSample] = tempS;
        tempChannels[nSamples + niSample] = tempT;
        tempChannels[nSamples * 4 + niSample] = tempU;
        tempChannels[niSample] = tempV;
    }
}
}

void CAmbisonicProcessor::ProcessOrder2_3D(CBFormat* pBFSrcDst, unsigned nSamples)
{
    // float fSqrt3 = sqrt(3.f);

    // for(unsigned niSample = 0; niSample < nSamples; niSample++)
    // {
    //     // Alpha rotation
    //     m_pfTempSample[kV] = - pBFSrcDst->m_ppfChannels[kU][niSample] * m_fSin2Alpha
    //                         + pBFSrcDst->m_ppfChannels[kV][niSample] * m_fCos2Alpha;
    //     m_pfTempSample[kT] = - pBFSrcDst->m_ppfChannels[kS][niSample] * m_fSinAlpha
    //                         + pBFSrcDst->m_ppfChannels[kT][niSample] * m_fCosAlpha;
    //     m_pfTempSample[kR] = pBFSrcDst->m_ppfChannels[kR][niSample];
    //     m_pfTempSample[kS] = pBFSrcDst->m_ppfChannels[kS][niSample] * m_fCosAlpha
    //                         + pBFSrcDst->m_ppfChannels[kT][niSample] * m_fSinAlpha;
    //     m_pfTempSample[kU] = pBFSrcDst->m_ppfChannels[kU][niSample] * m_fCos2Alpha
    //                         + pBFSrcDst->m_ppfChannels[kV][niSample] * m_fSin2Alpha;

    //     // Beta rotation
    //     pBFSrcDst->m_ppfChannels[kV][niSample] = -m_fSinBeta * m_pfTempSample[kT]
    //                                     + m_fCosBeta * m_pfTempSample[kV];
    //     pBFSrcDst->m_ppfChannels[kT][niSample] = -m_fCosBeta * m_pfTempSample[kT]
    //                                     + m_fSinBeta * m_pfTempSample[kV];
    //     pBFSrcDst->m_ppfChannels[kR][niSample] = (0.75f * m_fCos2Beta + 0.25f) * m_pfTempSample[kR]
    //                         + (0.5 * fSqrt3 * pow(m_fSinBeta,2.0) ) * m_pfTempSample[kU]
    //                         + (fSqrt3 * m_fSinBeta * m_fCosBeta) * m_pfTempSample[kS];
    //     pBFSrcDst->m_ppfChannels[kS][niSample] = m_fCos2Beta * m_pfTempSample[kS]
    //                         - fSqrt3 * m_fCosBeta * m_fSinBeta * m_pfTempSample[kR]
    //                         + m_fCosBeta * m_fSinBeta * m_pfTempSample[kU];
    //     pBFSrcDst->m_ppfChannels[kU][niSample] = (0.25f * m_fCos2Beta + 0.75f) * m_pfTempSample[kU]
    //                         - m_fCosBeta * m_fSinBeta * m_pfTempSample[kS]
    //                         +0.5 * fSqrt3 * pow(m_fSinBeta,2.0) * m_pfTempSample[kR];

    //     // Gamma rotation
    //     m_pfTempSample[kV] = - pBFSrcDst->m_ppfChannels[kU][niSample] * m_fSin2Gamma
    //                         + pBFSrcDst->m_ppfChannels[kV][niSample] * m_fCos2Gamma;
    //     m_pfTempSample[kT] = - pBFSrcDst->m_ppfChannels[kS][niSample] * m_fSinGamma
    //                         + pBFSrcDst->m_ppfChannels[kT][niSample] * m_fCosGamma;

    //     m_pfTempSample[kR] = pBFSrcDst->m_ppfChannels[kR][niSample];
    //     m_pfTempSample[kS] = pBFSrcDst->m_ppfChannels[kS][niSample] * m_fCosGamma
    //                         + pBFSrcDst->m_ppfChannels[kT][niSample] * m_fSinGamma;
    //     m_pfTempSample[kU] = pBFSrcDst->m_ppfChannels[kU][niSample] * m_fCos2Gamma
    //                         + pBFSrcDst->m_ppfChannels[kV][niSample] * m_fSin2Gamma;

    //     pBFSrcDst->m_ppfChannels[kR][niSample] = m_pfTempSample[kR];
    //     pBFSrcDst->m_ppfChannels[kS][niSample] = m_pfTempSample[kS];
    //     pBFSrcDst->m_ppfChannels[kT][niSample] = m_pfTempSample[kT];
    //     pBFSrcDst->m_ppfChannels[kU][niSample] = m_pfTempSample[kU];
    //     pBFSrcDst->m_ppfChannels[kV][niSample] = m_pfTempSample[kV];
    // }

    float tempChannels[5 * nSamples];

    for (unsigned niSample = 0; niSample < nSamples; niSample++) {
        tempChannels[nSamples * 2 + niSample] = pBFSrcDst->m_ppfChannels[kR][niSample];
        tempChannels[nSamples * 3 + niSample] = pBFSrcDst->m_ppfChannels[kS][niSample];
        tempChannels[nSamples + niSample] = pBFSrcDst->m_ppfChannels[kT][niSample];
        tempChannels[nSamples * 4 + niSample] = pBFSrcDst->m_ppfChannels[kU][niSample];
        tempChannels[niSample] = pBFSrcDst->m_ppfChannels[kV][niSample];
    }
    std::cout << "size of tempChannels: " << 5 * nSamples * sizeof(float) << std::endl;
    processOrder2(tempChannels, nSamples, m_fSin2Alpha, m_fCos2Alpha, m_fSinAlpha, m_fCosAlpha, m_fSinBeta, m_fCosBeta, m_fCos2Beta, m_fSin2Gamma, m_fCos2Gamma, m_fCosGamma, m_fSinGamma);

    for (unsigned niSample = 0; niSample < nSamples; niSample++) {
        pBFSrcDst->m_ppfChannels[kR][niSample] = tempChannels[nSamples * 2 + niSample];
        pBFSrcDst->m_ppfChannels[kS][niSample] = tempChannels[nSamples * 3 + niSample];
        pBFSrcDst->m_ppfChannels[kT][niSample] = tempChannels[nSamples + niSample];
        pBFSrcDst->m_ppfChannels[kU][niSample] = tempChannels[nSamples * 4 + niSample];
        pBFSrcDst->m_ppfChannels[kV][niSample] = tempChannels[niSample];
    }
}

extern "C" {
void processOrder3(float* tempChannels, unsigned nSamples, float m_fSin3Alpha, float m_fCos3Alpha, float m_fSin2Alpha, float m_fCos2Alpha, float m_fSinAlpha, \
                   float m_fCosAlpha, float m_fCos2Beta, float m_fCosBeta, float m_fSinBeta, float m_fSin3Beta, float m_fCos3Beta, float m_fSin3Gamma, \
                   float m_fCos3Gamma, float m_fSin2Gamma, float m_fCos2Gamma, float m_fSinGamma, float m_fCosGamma) {
        /* (should move these somewhere that does recompute each time) */
    float fSqrt3_2 = sqrt(3.f/2.f);
    float fSqrt15 = sqrt(15.f);
    float fSqrt5_2 = sqrt(5.f/2.f);

loopROc:    for(unsigned niSample = 0; niSample < nSamples; niSample++)
    {
        // Alpha rotation
        float tempQ = - tempChannels[nSamples * 6 + niSample] * m_fSin3Alpha
                            + tempChannels[niSample] * m_fCos3Alpha;
        float tempO = - tempChannels[nSamples * 5 + niSample] * m_fSin2Alpha
                            + tempChannels[nSamples + niSample] * m_fCos2Alpha;
        float tempM = - tempChannels[nSamples * 4 + niSample] * m_fSinAlpha
                            + tempChannels[nSamples * 2 + niSample] * m_fCosAlpha;
        float tempK = tempChannels[nSamples * 3 + niSample];
        float tempL = tempChannels[nSamples * 4 + niSample] * m_fCosAlpha
                            + tempChannels[nSamples * 2 + niSample] * m_fSinAlpha;
        float tempN = tempChannels[nSamples * 5 + niSample] * m_fCos2Alpha
                            + tempChannels[nSamples + niSample] * m_fSin2Alpha;
        float tempP = tempChannels[nSamples * 6 + niSample] * m_fCos3Alpha
                            + tempChannels[niSample] * m_fSin3Alpha;

        // Beta rotation
        tempChannels[niSample] = 0.125f * tempQ * (5.f + 3.f*m_fCos2Beta)
                    - fSqrt3_2 * tempO *m_fCosBeta * m_fSinBeta
                    + 0.25f * fSqrt15 * tempM * pow(m_fSinBeta,2.0f);
        tempChannels[nSamples + niSample] = tempO * m_fCos2Beta
                    - fSqrt5_2 * tempM * m_fCosBeta * m_fSinBeta
                    + fSqrt3_2 * tempQ * m_fCosBeta * m_fSinBeta;
        tempChannels[nSamples * 2 + niSample] = 0.125f * tempM * (3.f + 5.f*m_fCos2Beta)
                    - fSqrt5_2 * tempO *m_fCosBeta * m_fSinBeta
                    + 0.25f * fSqrt15 * tempQ * pow(m_fSinBeta,2.0f);
        tempChannels[nSamples * 3 + niSample] = 0.25f * tempK * m_fCosBeta * (-1.f + 15.f*m_fCos2Beta)
                    + 0.5f * fSqrt15 * tempN * m_fCosBeta * pow(m_fSinBeta,2.f)
                    + 0.5f * fSqrt5_2 * tempP * pow(m_fSinBeta,3.f)
                    + 0.125f * fSqrt3_2 * tempL * (m_fSinBeta + 5.f * m_fSin3Beta);
        tempChannels[nSamples * 4 + niSample] = 0.0625f * tempL * (m_fCosBeta + 15.f * m_fCos3Beta)
                    + 0.25f * fSqrt5_2 * tempN * (1.f + 3.f * m_fCos2Beta) * m_fSinBeta
                    + 0.25f * fSqrt15 * tempP * m_fCosBeta * pow(m_fSinBeta,2.f)
                    - 0.125 * fSqrt3_2 * tempK * (m_fSinBeta + 5.f * m_fSin3Beta);
        tempChannels[nSamples * 5 + niSample] = 0.125f * tempN * (5.f * m_fCosBeta + 3.f * m_fCos3Beta)
                    + 0.25f * fSqrt3_2 * tempP * (3.f + m_fCos2Beta) * m_fSinBeta
                    + 0.5f * fSqrt15 * tempK * m_fCosBeta * pow(m_fSinBeta,2.f)
                    + 0.125 * fSqrt5_2 * tempL * (m_fSinBeta - 3.f * m_fSin3Beta);
        tempChannels[nSamples * 6 + niSample] = 0.0625f * tempP * (15.f * m_fCosBeta + m_fCos3Beta)
                    - 0.25f * fSqrt3_2 * tempN * (3.f + m_fCos2Beta) * m_fSinBeta
                    + 0.25f * fSqrt15 * tempL * m_fCosBeta * pow(m_fSinBeta,2.f)
                    - 0.5 * fSqrt5_2 * tempK * pow(m_fSinBeta,3.f);

        // Gamma rotation
        tempQ = - tempChannels[nSamples * 6 + niSample] * m_fSin3Gamma
                            + tempChannels[niSample] * m_fCos3Gamma;
        tempO = - tempChannels[nSamples * 5 + niSample] * m_fSin2Gamma
                            + tempChannels[nSamples + niSample] * m_fCos2Gamma;
        tempM = - tempChannels[nSamples * 4 + niSample] * m_fSinGamma
                            + tempChannels[nSamples * 2 + niSample] * m_fCosGamma;
        tempK = tempChannels[nSamples * 3 + niSample];
        tempL = tempChannels[nSamples * 4 + niSample] * m_fCosGamma
                            + tempChannels[nSamples * 2 + niSample] * m_fSinGamma;
        tempN = tempChannels[nSamples * 5 + niSample] * m_fCos2Gamma
                            + tempChannels[nSamples + niSample] * m_fSin2Gamma;
        tempP = tempChannels[nSamples * 6 + niSample] * m_fCos3Gamma
                            + tempChannels[niSample] * m_fSin3Gamma;

        tempChannels[niSample] = tempQ;
        tempChannels[nSamples + niSample] = tempO;
        tempChannels[nSamples * 2 + niSample] = tempM;
        tempChannels[nSamples * 3 + niSample] = tempK;
        tempChannels[nSamples * 4 + niSample] = tempL;
        tempChannels[nSamples * 5 + niSample] = tempN;
        tempChannels[nSamples * 6 + niSample] = tempP;
    }
}
}

void CAmbisonicProcessor::ProcessOrder3_3D(CBFormat* pBFSrcDst, unsigned nSamples)
{
        /* (should move these somewhere that does recompute each time) */
    //     float fSqrt3_2 = sqrt(3.f/2.f);
    //     float fSqrt15 = sqrt(15.f);
    //     float fSqrt5_2 = sqrt(5.f/2.f);

    // for(unsigned niSample = 0; niSample < nSamples; niSample++)
    // {
    //     // Alpha rotation
    //     m_pfTempSample[kQ] = - pBFSrcDst->m_ppfChannels[kP][niSample] * m_fSin3Alpha
    //                         + pBFSrcDst->m_ppfChannels[kQ][niSample] * m_fCos3Alpha;
    //     m_pfTempSample[kO] = - pBFSrcDst->m_ppfChannels[kN][niSample] * m_fSin2Alpha
    //                         + pBFSrcDst->m_ppfChannels[kO][niSample] * m_fCos2Alpha;
    //     m_pfTempSample[kM] = - pBFSrcDst->m_ppfChannels[kL][niSample] * m_fSinAlpha
    //                         + pBFSrcDst->m_ppfChannels[kM][niSample] * m_fCosAlpha;
    //     m_pfTempSample[kK] = pBFSrcDst->m_ppfChannels[kK][niSample];
    //     m_pfTempSample[kL] = pBFSrcDst->m_ppfChannels[kL][niSample] * m_fCosAlpha
    //                         + pBFSrcDst->m_ppfChannels[kM][niSample] * m_fSinAlpha;
    //     m_pfTempSample[kN] = pBFSrcDst->m_ppfChannels[kN][niSample] * m_fCos2Alpha
    //                         + pBFSrcDst->m_ppfChannels[kO][niSample] * m_fSin2Alpha;
    //     m_pfTempSample[kP] = pBFSrcDst->m_ppfChannels[kP][niSample] * m_fCos3Alpha
    //                         + pBFSrcDst->m_ppfChannels[kQ][niSample] * m_fSin3Alpha;

    //     // Beta rotation
    //     pBFSrcDst->m_ppfChannels[kQ][niSample] = 0.125f * m_pfTempSample[kQ] * (5.f + 3.f*m_fCos2Beta)
    //                 - fSqrt3_2 * m_pfTempSample[kO] *m_fCosBeta * m_fSinBeta
    //                 + 0.25f * fSqrt15 * m_pfTempSample[kM] * pow(m_fSinBeta,2.0f);
    //     pBFSrcDst->m_ppfChannels[kO][niSample] = m_pfTempSample[kO] * m_fCos2Beta
    //                 - fSqrt5_2 * m_pfTempSample[kM] * m_fCosBeta * m_fSinBeta
    //                 + fSqrt3_2 * m_pfTempSample[kQ] * m_fCosBeta * m_fSinBeta;
    //     pBFSrcDst->m_ppfChannels[kM][niSample] = 0.125f * m_pfTempSample[kM] * (3.f + 5.f*m_fCos2Beta)
    //                 - fSqrt5_2 * m_pfTempSample[kO] *m_fCosBeta * m_fSinBeta
    //                 + 0.25f * fSqrt15 * m_pfTempSample[kQ] * pow(m_fSinBeta,2.0f);
    //     pBFSrcDst->m_ppfChannels[kK][niSample] = 0.25f * m_pfTempSample[kK] * m_fCosBeta * (-1.f + 15.f*m_fCos2Beta)
    //                 + 0.5f * fSqrt15 * m_pfTempSample[kN] * m_fCosBeta * pow(m_fSinBeta,2.f)
    //                 + 0.5f * fSqrt5_2 * m_pfTempSample[kP] * pow(m_fSinBeta,3.f)
    //                 + 0.125f * fSqrt3_2 * m_pfTempSample[kL] * (m_fSinBeta + 5.f * m_fSin3Beta);
    //     pBFSrcDst->m_ppfChannels[kL][niSample] = 0.0625f * m_pfTempSample[kL] * (m_fCosBeta + 15.f * m_fCos3Beta)
    //                 + 0.25f * fSqrt5_2 * m_pfTempSample[kN] * (1.f + 3.f * m_fCos2Beta) * m_fSinBeta
    //                 + 0.25f * fSqrt15 * m_pfTempSample[kP] * m_fCosBeta * pow(m_fSinBeta,2.f)
    //                 - 0.125 * fSqrt3_2 * m_pfTempSample[kK] * (m_fSinBeta + 5.f * m_fSin3Beta);
    //     pBFSrcDst->m_ppfChannels[kN][niSample] = 0.125f * m_pfTempSample[kN] * (5.f * m_fCosBeta + 3.f * m_fCos3Beta)
    //                 + 0.25f * fSqrt3_2 * m_pfTempSample[kP] * (3.f + m_fCos2Beta) * m_fSinBeta
    //                 + 0.5f * fSqrt15 * m_pfTempSample[kK] * m_fCosBeta * pow(m_fSinBeta,2.f)
    //                 + 0.125 * fSqrt5_2 * m_pfTempSample[kL] * (m_fSinBeta - 3.f * m_fSin3Beta);
    //     pBFSrcDst->m_ppfChannels[kP][niSample] = 0.0625f * m_pfTempSample[kP] * (15.f * m_fCosBeta + m_fCos3Beta)
    //                 - 0.25f * fSqrt3_2 * m_pfTempSample[kN] * (3.f + m_fCos2Beta) * m_fSinBeta
    //                 + 0.25f * fSqrt15 * m_pfTempSample[kL] * m_fCosBeta * pow(m_fSinBeta,2.f)
    //                 - 0.5 * fSqrt5_2 * m_pfTempSample[kK] * pow(m_fSinBeta,3.f);

    //     // Gamma rotation
    //     m_pfTempSample[kQ] = - pBFSrcDst->m_ppfChannels[kP][niSample] * m_fSin3Gamma
    //                         + pBFSrcDst->m_ppfChannels[kQ][niSample] * m_fCos3Gamma;
    //     m_pfTempSample[kO] = - pBFSrcDst->m_ppfChannels[kN][niSample] * m_fSin2Gamma
    //                         + pBFSrcDst->m_ppfChannels[kO][niSample] * m_fCos2Gamma;
    //     m_pfTempSample[kM] = - pBFSrcDst->m_ppfChannels[kL][niSample] * m_fSinGamma
    //                         + pBFSrcDst->m_ppfChannels[kM][niSample] * m_fCosGamma;
    //     m_pfTempSample[kK] = pBFSrcDst->m_ppfChannels[kK][niSample];
    //     m_pfTempSample[kL] = pBFSrcDst->m_ppfChannels[kL][niSample] * m_fCosGamma
    //                         + pBFSrcDst->m_ppfChannels[kM][niSample] * m_fSinGamma;
    //     m_pfTempSample[kN] = pBFSrcDst->m_ppfChannels[kN][niSample] * m_fCos2Gamma
    //                         + pBFSrcDst->m_ppfChannels[kO][niSample] * m_fSin2Gamma;
    //     m_pfTempSample[kP] = pBFSrcDst->m_ppfChannels[kP][niSample] * m_fCos3Gamma
    //                         + pBFSrcDst->m_ppfChannels[kQ][niSample] * m_fSin3Gamma;

    //     pBFSrcDst->m_ppfChannels[kQ][niSample] = m_pfTempSample[kQ];
    //     pBFSrcDst->m_ppfChannels[kO][niSample] = m_pfTempSample[kO];
    //     pBFSrcDst->m_ppfChannels[kM][niSample] = m_pfTempSample[kM];
    //     pBFSrcDst->m_ppfChannels[kK][niSample] = m_pfTempSample[kK];
    //     pBFSrcDst->m_ppfChannels[kL][niSample] = m_pfTempSample[kL];
    //     pBFSrcDst->m_ppfChannels[kN][niSample] = m_pfTempSample[kN];
    //     pBFSrcDst->m_ppfChannels[kP][niSample] = m_pfTempSample[kP];
    // }

    float tempChannels[7 * nSamples];

    for (unsigned niSample = 0; niSample < nSamples; niSample++) {
        tempChannels[niSample] = m_pfTempSample[kQ];
        tempChannels[nSamples + niSample] = m_pfTempSample[kO];
        tempChannels[nSamples * 2 + niSample] = m_pfTempSample[kM];
        tempChannels[nSamples * 3 + niSample] = m_pfTempSample[kK];
        tempChannels[nSamples * 4 + niSample] = m_pfTempSample[kL];
        tempChannels[nSamples * 5 + niSample] = m_pfTempSample[kN];
        tempChannels[nSamples * 6 + niSample] = m_pfTempSample[kP];
    }
    std::cout << "size of tempChannels: " << 7 * nSamples * sizeof(float) << std::endl;
    processOrder3(tempChannels, nSamples, m_fSin3Alpha, m_fCos3Alpha, m_fSin2Alpha, m_fCos2Alpha, m_fSinAlpha, \
                   m_fCosAlpha, m_fCos2Beta, m_fCosBeta, m_fSinBeta, m_fSin3Beta, m_fCos3Beta, m_fSin3Gamma, \
                   m_fCos3Gamma, m_fSin2Gamma, m_fCos2Gamma, m_fSinGamma, m_fCosGamma);

    for (unsigned niSample = 0; niSample < nSamples; niSample++) {
        m_pfTempSample[kQ] = tempChannels[niSample];
        m_pfTempSample[kO] = tempChannels[nSamples + niSample];
        m_pfTempSample[kM] = tempChannels[nSamples * 2 + niSample];
        m_pfTempSample[kK] = tempChannels[nSamples * 3 + niSample];
        m_pfTempSample[kL] = tempChannels[nSamples * 4 + niSample];
        m_pfTempSample[kN] = tempChannels[nSamples * 5 + niSample];
        m_pfTempSample[kP] = tempChannels[nSamples * 6 + niSample];
    }
}

// ACN/SN3D is generally only ever produced for 3D Ambisonics.
// If 2D Ambisonics is required then these equations need to be modified (they can be found in the 3D code for the first Z-rotation).
// Generally, 2D-only rotations do not make sense for use with 360 degree videos.
/*
void CAmbisonicProcessor::ProcessOrder1_2D(CBFormat* pBFSrcDst, unsigned nSamples)
{
    for(unsigned niSample = 0; niSample < nSamples; niSample++)
    {
        //Yaw
        m_pfTempSample[kX] = pBFSrcDst->m_ppfChannels[kX][niSample] * m_fCosYaw
                            - pBFSrcDst->m_ppfChannels[kY][niSample] * m_fSinYaw;
        m_pfTempSample[kY] = pBFSrcDst->m_ppfChannels[kX][niSample] * m_fSinYaw
                            + pBFSrcDst->m_ppfChannels[kY][niSample] * m_fCosYaw;

        pBFSrcDst->m_ppfChannels[kX][niSample] = m_pfTempSample[kX];
        pBFSrcDst->m_ppfChannels[kY][niSample] = m_pfTempSample[kY];
    }
}

void CAmbisonicProcessor::ProcessOrder2_2D(CBFormat* pBFSrcDst, unsigned nSamples)
{
    for(unsigned niSample = 0; niSample < nSamples; niSample++)
    {
        //Yaw
        m_pfTempSample[kS] = pBFSrcDst->m_ppfChannels[kS][niSample] * m_fCosYaw
                            - pBFSrcDst->m_ppfChannels[kT][niSample] * m_fSinYaw;
        m_pfTempSample[kT] = pBFSrcDst->m_ppfChannels[kS][niSample] * m_fSinYaw
                            + pBFSrcDst->m_ppfChannels[kT][niSample] * m_fCosYaw;
        m_pfTempSample[kU] = pBFSrcDst->m_ppfChannels[kU][niSample] * m_fCos2Yaw
                            - pBFSrcDst->m_ppfChannels[kV][niSample] * m_fSin2Yaw;
        m_pfTempSample[kV] = pBFSrcDst->m_ppfChannels[kU][niSample] * m_fSin2Yaw
                            + pBFSrcDst->m_ppfChannels[kV][niSample] * m_fCos2Yaw;

        pBFSrcDst->m_ppfChannels[kS][niSample] = m_pfTempSample[kS];
        pBFSrcDst->m_ppfChannels[kT][niSample] = m_pfTempSample[kT];
        pBFSrcDst->m_ppfChannels[kU][niSample] = m_pfTempSample[kU];
        pBFSrcDst->m_ppfChannels[kV][niSample] = m_pfTempSample[kV];
    }
}

void CAmbisonicProcessor::ProcessOrder3_2D(CBFormat* pBFSrcDst, unsigned nSamples)
{
    //TODO
}
*/

extern "C" {
void processorFilter(float* m_pfScratchBufferA, unsigned m_nFFTSize, unsigned m_nChannelCount, float* tempChannels, unsigned m_nBlockSize, kiss_fftr_cfg m_pFFT_psych_cfg, kiss_fft_cpx* m_pcpScratch,\
                     kiss_fftr_cfg m_pIFFT_psych_cfg, unsigned nSamples, float m_fFFTScaler, kiss_fft_cpx* m_ppcpPsychFilters, unsigned m_nFFTBins, unsigned m_nOverlapLength, float* m_pfOverlap) {
    kiss_fft_cpx cpTemp;

    unsigned iChannelOrder = 0;

    // Filter the Ambisonics channels
    // All  channels are filtered using linear phase FIR filters.
    // In the case of the 0th order signal (W channel) this takes the form of a delay
    // For all other channels shelf filters are used
    memset(m_pfScratchBufferA, 0, m_nFFTSize * sizeof(float));
loopFil1:    for(unsigned niChannel = 0; niChannel < m_nChannelCount; niChannel++)
    {

        iChannelOrder = int(sqrt(niChannel));    //get the order of the current channel

        memcpy(m_pfScratchBufferA, &tempChannels[niChannel * nSamples], m_nBlockSize * sizeof(float));
        memset(&m_pfScratchBufferA[m_nBlockSize], 0, (m_nFFTSize - m_nBlockSize) * sizeof(float));
        kiss_fftr(m_pFFT_psych_cfg, m_pfScratchBufferA, m_pcpScratch);
        // Perform the convolution in the frequency domain
loopFil2:        for(unsigned ni = 0; ni < m_nFFTBins; ni++)
        {
            cpTemp.r = m_pcpScratch[ni].r * m_ppcpPsychFilters[iChannelOrder * m_nFFTBins + ni].r
                        - m_pcpScratch[ni].i * m_ppcpPsychFilters[iChannelOrder * m_nFFTBins + ni].i;
            cpTemp.i = m_pcpScratch[ni].r * m_ppcpPsychFilters[iChannelOrder * m_nFFTBins + ni].i
                        + m_pcpScratch[ni].i * m_ppcpPsychFilters[iChannelOrder * m_nFFTBins + ni].r;
            m_pcpScratch[ni] = cpTemp;
        }
        // Convert from frequency domain back to time domain
        kiss_fftri(m_pIFFT_psych_cfg, m_pcpScratch, m_pfScratchBufferA);
loopFil3:        for(unsigned ni = 0; ni < m_nFFTSize; ni++)
            m_pfScratchBufferA[ni] *= m_fFFTScaler;
        memcpy(&tempChannels[niChannel * nSamples], m_pfScratchBufferA, m_nBlockSize * sizeof(float));
loopFil4:        for(unsigned ni = 0; ni < m_nOverlapLength; ni++)
        {
            tempChannels[niChannel * nSamples + ni] += m_pfOverlap[niChannel * m_nOverlapLength + ni];
        }
        memcpy(&m_pfOverlap[niChannel * m_nOverlapLength], &m_pfScratchBufferA[m_nBlockSize], m_nOverlapLength * sizeof(float));
    }
}
}

void CAmbisonicProcessor::ShelfFilterOrder(CBFormat* pBFSrcDst, unsigned nSamples)
{
    // kiss_fft_cpx cpTemp;

    // unsigned iChannelOrder = 0;

    // // Filter the Ambisonics channels
    // // All  channels are filtered using linear phase FIR filters.
    // // In the case of the 0th order signal (W channel) this takes the form of a delay
    // // For all other channels shelf filters are used
    // memset(m_pfScratchBufferA, 0, m_nFFTSize * sizeof(float));
    // for(unsigned niChannel = 0; niChannel < m_nChannelCount; niChannel++)
    // {

    //     iChannelOrder = int(sqrt(niChannel));    //get the order of the current channel

    //     memcpy(m_pfScratchBufferA, pBFSrcDst->m_ppfChannels[niChannel], m_nBlockSize * sizeof(float));
    //     memset(&m_pfScratchBufferA[m_nBlockSize], 0, (m_nFFTSize - m_nBlockSize) * sizeof(float));
    //     kiss_fftr(m_pFFT_psych_cfg, m_pfScratchBufferA, m_pcpScratch);
    //     // Perform the convolution in the frequency domain
    //     for(unsigned ni = 0; ni < m_nFFTBins; ni++)
    //     {
    //         cpTemp.r = m_pcpScratch[ni].r * m_ppcpPsychFilters[iChannelOrder][ni].r
    //                     - m_pcpScratch[ni].i * m_ppcpPsychFilters[iChannelOrder][ni].i;
    //         cpTemp.i = m_pcpScratch[ni].r * m_ppcpPsychFilters[iChannelOrder][ni].i
    //                     + m_pcpScratch[ni].i * m_ppcpPsychFilters[iChannelOrder][ni].r;
    //         m_pcpScratch[ni] = cpTemp;
    //     }
    //     // Convert from frequency domain back to time domain
    //     kiss_fftri(m_pIFFT_psych_cfg, m_pcpScratch, m_pfScratchBufferA);
    //     for(unsigned ni = 0; ni < m_nFFTSize; ni++)
    //         m_pfScratchBufferA[ni] *= m_fFFTScaler;
    //             memcpy(pBFSrcDst->m_ppfChannels[niChannel], m_pfScratchBufferA, m_nBlockSize * sizeof(float));
    //     for(unsigned ni = 0; ni < m_nOverlapLength; ni++)
    //             {
    //                     pBFSrcDst->m_ppfChannels[niChannel][ni] += m_pfOverlap[niChannel][ni];
    //             }
    //             memcpy(m_pfOverlap[niChannel], &m_pfScratchBufferA[m_nBlockSize], m_nOverlapLength * sizeof(float));
    // }

    float tempChannels[m_nChannelCount * nSamples];
    float tempOverlap[m_nChannelCount * m_nOverlapLength];
    kiss_fft_cpx tempPsychoFilter[(m_nOrder + 1) * m_nFFTBins];

    for (unsigned j = 0 ; j < m_nChannelCount; ++j) {
        for (unsigned i = 0; i < nSamples; ++i) {
            pBFSrcDst->m_ppfChannels[j][i] = tempChannels[j * nSamples + i];
        }
    }

    for(unsigned niChannel = 0; niChannel < m_nChannelCount; niChannel++) {
        for(unsigned ni = 0; ni < m_nOverlapLength; ni++) {
            tempOverlap[niChannel * m_nOverlapLength + ni] = m_pfOverlap[niChannel][ni];
        }
    }

    for(unsigned niChannel = 0; niChannel < m_nChannelCount; niChannel++) {
        unsigned iChannelOrder = int(sqrt(niChannel));
        for(unsigned ni = 0; ni < m_nFFTBins; ni++) {
            tempPsychoFilter[iChannelOrder * m_nFFTBins + ni] = m_ppcpPsychFilters[iChannelOrder][ni];
        }
    }
    std::cout << "size of m_pfScratchBufferA: " << m_nFFTSize * sizeof(float) << std::endl;
    std::cout << "size of tempChannels: " << m_nChannelCount * nSamples * sizeof(float) << std::endl;
    std::cout << "size of m_pfOverlap: " << m_nChannelCount * m_nOverlapLength * sizeof(float) << std::endl;
    std::cout << "size of m_ppcpPsychFilters: " << (m_nOrder + 1) * m_nFFTBins * sizeof(kiss_fft_cpx) << std::endl;
    std::cout << "size of m_pcpScratch: " << m_nFFTBins * sizeof(kiss_fft_cpx) << std::endl;
    processorFilter(m_pfScratchBufferA, m_nFFTSize, m_nChannelCount, tempChannels, m_nBlockSize, m_pFFT_psych_cfg, m_pcpScratch, m_pIFFT_psych_cfg, nSamples, m_fFFTScaler, tempPsychoFilter, m_nFFTBins, m_nOverlapLength, tempOverlap);

    for (unsigned j = 0 ; j < m_nChannelCount; ++j) {
        for (unsigned i = 0; i < nSamples; ++i) {
            tempChannels[j * nSamples + i] = pBFSrcDst->m_ppfChannels[j][i];
        }
    }

    for(unsigned niChannel = 0; niChannel < m_nChannelCount; niChannel++) {
        for(unsigned ni = 0; ni < m_nOverlapLength; ni++) {
            m_pfOverlap[niChannel][ni] = tempOverlap[niChannel * m_nOverlapLength + ni];
        }
    }
}

// CAmbisonicSource
CAmbisonicSource::CAmbisonicSource()
{
    m_polPosition.fAzimuth = 0.f;
    m_polPosition.fElevation = 0.f;
    m_polPosition.fDistance = 1.f;
    m_fGain = 1.f;
}

bool CAmbisonicSource::Configure(unsigned nOrder, bool b3D, unsigned nMisc)
{
    bool success = CAmbisonicBase::Configure(nOrder, b3D, nMisc);
    if(!success)
        return false;

    m_pfCoeff.resize( m_nChannelCount, 0 );
    // for a Basic Ambisonics decoder all of the gains are set to 1.f
    m_pfOrderWeights.resize( m_nOrder + 1, 1.f );

    return true;
}

void CAmbisonicSource::Reset()
{
    //memset(m_pfCoeff, 0, m_nChannelCount * sizeof(float));
}

void CAmbisonicSource::Refresh()
{
    float fCosAzim = cosf(m_polPosition.fAzimuth);
    float fSinAzim = sinf(m_polPosition.fAzimuth);
    float fCosElev = cosf(m_polPosition.fElevation);
    float fSinElev = sinf(m_polPosition.fElevation);

    float fCos2Azim = cosf(2.f * m_polPosition.fAzimuth);
    float fSin2Azim = sinf(2.f * m_polPosition.fAzimuth);
    float fSin2Elev = sinf(2.f * m_polPosition.fElevation);

    if(m_b3D)
    {
        // Uses ACN channel ordering and SN3D normalization scheme (AmbiX format)
        if(m_nOrder >= 0)
        {
            m_pfCoeff[0] = 1.f * m_pfOrderWeights[0]; // W
        }
        if(m_nOrder >= 1)
        {
            m_pfCoeff[1] = (fSinAzim * fCosElev) * m_pfOrderWeights[1]; // Y
            m_pfCoeff[2] = (fSinElev) * m_pfOrderWeights[1]; // Z
            m_pfCoeff[3] = (fCosAzim * fCosElev) * m_pfOrderWeights[1]; // X
        }
        if(m_nOrder >= 2)
        {
            m_pfCoeff[4] = fSqrt32*(fSin2Azim * powf(fCosElev, 2)) * m_pfOrderWeights[2]; // V
            m_pfCoeff[5] = fSqrt32*(fSinAzim * fSin2Elev) * m_pfOrderWeights[2]; // T
            m_pfCoeff[6] = (1.5f * powf(fSinElev, 2.f) - 0.5f) * m_pfOrderWeights[2]; // R
            m_pfCoeff[7] = fSqrt32*(fCosAzim * fSin2Elev) * m_pfOrderWeights[2]; // S
            m_pfCoeff[8] = fSqrt32*(fCos2Azim * powf(fCosElev, 2)) * m_pfOrderWeights[2]; // U
        }
        if(m_nOrder >= 3)
        {
            m_pfCoeff[9] = fSqrt58*(sinf(3.f * m_polPosition.fAzimuth) * powf(fCosElev, 3.f)) * m_pfOrderWeights[3]; // Q
            m_pfCoeff[10] = fSqrt152*(fSin2Azim * fSinElev * powf(fCosElev, 2.f)) * m_pfOrderWeights[3]; // O
            m_pfCoeff[11] = fSqrt38*(fSinAzim * fCosElev * (5.f * powf(fSinElev, 2.f) - 1.f)) * m_pfOrderWeights[3]; // M
            m_pfCoeff[12] = (fSinElev * (5.f * powf(fSinElev, 2.f) - 3.f) * 0.5f) * m_pfOrderWeights[3]; // K
            m_pfCoeff[13] = fSqrt38*(fCosAzim * fCosElev * (5.f * powf(fSinElev, 2.f) - 1.f)) * m_pfOrderWeights[3]; // L
            m_pfCoeff[14] = fSqrt152*(fCos2Azim * fSinElev * powf(fCosElev, 2.f)) * m_pfOrderWeights[3]; // N
            m_pfCoeff[15] = fSqrt58*(cosf(3.f * m_polPosition.fAzimuth) * powf(fCosElev, 3.f)) * m_pfOrderWeights[3]; // P

        }
    }
    else
    {
        if(m_nOrder >= 0)
        {
            m_pfCoeff[0] = m_pfOrderWeights[0];
        }
        if(m_nOrder >= 1)
        {
            m_pfCoeff[1] = (fCosAzim * fCosElev) * m_pfOrderWeights[1];
            m_pfCoeff[2] = (fSinAzim * fCosElev) * m_pfOrderWeights[1];
        }
        if(m_nOrder >= 2)
        {
            m_pfCoeff[3] = (fCos2Azim * powf(fCosElev, 2)) * m_pfOrderWeights[2];
            m_pfCoeff[4] = (fSin2Azim * powf(fCosElev, 2)) * m_pfOrderWeights[2];
        }
        if(m_nOrder >= 3)
        {
            m_pfCoeff[5] = (cosf(3.f * m_polPosition.fAzimuth) * powf(fCosElev, 3.f)) * m_pfOrderWeights[3];
            m_pfCoeff[6] = (sinf(3.f * m_polPosition.fAzimuth) * powf(fCosElev, 3.f)) * m_pfOrderWeights[3];
        }
    }

    for(unsigned ni = 0; ni < m_nChannelCount; ni++)
        m_pfCoeff[ni] *= m_fGain;
}

void CAmbisonicSource::SetPosition(PolarPoint polPosition)
{
    m_polPosition = polPosition;
}

PolarPoint CAmbisonicSource::GetPosition()
{
    return m_polPosition;
}

void CAmbisonicSource::SetOrderWeight(unsigned nOrder, float fWeight)
{
    m_pfOrderWeights[nOrder] = fWeight;
}

void CAmbisonicSource::SetOrderWeightAll(float fWeight)
{
    for(unsigned niOrder = 0; niOrder < m_nOrder + 1; niOrder++)
    {
        m_pfOrderWeights[niOrder] = fWeight;
    }
}

void CAmbisonicSource::SetCoefficient(unsigned nChannel, float fCoeff)
{
    m_pfCoeff[nChannel] = fCoeff;
}

float CAmbisonicSource::GetOrderWeight(unsigned nOrder)
{
    return m_pfOrderWeights[nOrder];
}

float CAmbisonicSource::GetCoefficient(unsigned nChannel)
{
    return m_pfCoeff[nChannel];
}

void CAmbisonicSource::SetGain(float fGain)
{
    m_fGain = fGain;
}

float CAmbisonicSource::GetGain()
{
    return m_fGain;
}

// CAmbisonicEncoder
CAmbisonicEncoder::CAmbisonicEncoder()
{ }

CAmbisonicEncoder::~CAmbisonicEncoder()
{ }

bool CAmbisonicEncoder::Configure(unsigned nOrder, bool b3D, unsigned nMisc)
{
    bool success = CAmbisonicSource::Configure(nOrder, b3D, nMisc);
    if(!success)
        return false;
    //SetOrderWeight(0, 1.f / sqrtf(2.f)); // Removed as seems to break SN3D normalisation
    
    return true;
}

void CAmbisonicEncoder::Refresh()
{
    CAmbisonicSource::Refresh();
}

void CAmbisonicEncoder::Process(float* pfSrc, unsigned nSamples, CBFormat* pfDst)
{
    unsigned niChannel = 0;
    unsigned niSample = 0;
    // printf("Encoder::Process\n");
loopEproc:    for(niChannel = 0; niChannel < m_nChannelCount; niChannel++)
    {
        for(niSample = 0; niSample < nSamples; niSample++)
        {
            pfDst->m_ppfChannels[niChannel][niSample] = pfSrc[niSample] * m_pfCoeff[niChannel];
        }
    }
}

// CAmbisonicEncoderDist
CAmbisonicEncoderDist::CAmbisonicEncoderDist()
{
    m_nSampleRate = 0;
    m_fDelay = 0.f;
    m_nDelay = 0;
    m_nDelayBufferLength = 0;
    m_pfDelayBuffer = 0;
    m_nIn = 0;
    m_nOutA = 0;
    m_nOutB = 0;
    m_fRoomRadius = 5.f;
    m_fInteriorGain = 0.f;
    m_fExteriorGain = 0.f;

    Configure(DEFAULT_ORDER, DEFAULT_HEIGHT, DEFAULT_SAMPLERATE);
}

CAmbisonicEncoderDist::~CAmbisonicEncoderDist()
{
    if(m_pfDelayBuffer)
        delete [] m_pfDelayBuffer;
}

bool CAmbisonicEncoderDist::Configure(unsigned nOrder, bool b3D, unsigned nSampleRate)
{
    bool success = CAmbisonicEncoder::Configure(nOrder, b3D, 0);
    if(!success)
        return false;
    m_nSampleRate = nSampleRate;
    m_nDelayBufferLength = (unsigned)((float)knMaxDistance / knSpeedOfSound * m_nSampleRate + 0.5f);
    if(m_pfDelayBuffer)
        delete [] m_pfDelayBuffer;
    m_pfDelayBuffer = new float[m_nDelayBufferLength];
    Reset();
    
    return true;
}

void CAmbisonicEncoderDist::Reset()
{
    memset(m_pfDelayBuffer, 0, m_nDelayBufferLength * sizeof(float));
    m_fDelay = m_polPosition.fDistance / knSpeedOfSound * m_nSampleRate + 0.5f;
    m_nDelay = (int)m_fDelay;
    m_fDelay -= m_nDelay;
    m_nIn = 0;
    m_nOutA = (m_nIn - m_nDelay + m_nDelayBufferLength) % m_nDelayBufferLength;
    m_nOutB = (m_nOutA + 1) % m_nDelayBufferLength;
}

void CAmbisonicEncoderDist::Refresh()
{
    CAmbisonicEncoder::Refresh();

    m_fDelay = fabs(m_polPosition.fDistance) / knSpeedOfSound * m_nSampleRate; //TODO abs() sees float as int!
    m_nDelay = (int)m_fDelay;
    m_fDelay -= m_nDelay;
    m_nOutA = (m_nIn - m_nDelay + m_nDelayBufferLength) % m_nDelayBufferLength;
    m_nOutB = (m_nOutA + 1) % m_nDelayBufferLength;

    //Source is outside speaker array
    if(fabs(m_polPosition.fDistance) >= m_fRoomRadius)
    {
        m_fInteriorGain    = (m_fRoomRadius / fabs(m_polPosition.fDistance)) / 2.f;
        m_fExteriorGain    = m_fInteriorGain;
    }
    else
    {
        m_fInteriorGain = (2.f - fabs(m_polPosition.fDistance) / m_fRoomRadius) / 2.f;
        m_fExteriorGain = (fabs(m_polPosition.fDistance) / m_fRoomRadius) / 2.f;
    }
}

extern "C" {
// void encoderDistProcess(CAmbisonicEncoderDist* ed, float* pfSrc, unsigned nSamples, CBFormat* pfDst) {
//     unsigned niChannel = 0;
//     unsigned niSample = 0;
//     float fSrcSample = 0;

// loopEDproc:    for(niSample = 0; niSample < nSamples; niSample++)
//     {
//         //Store
//         ed->m_pfDelayBuffer[ed->m_nIn] = pfSrc[niSample];
//         //Read
//         fSrcSample = ed->m_pfDelayBuffer[ed->m_nOutA] * (1.f - ed->m_fDelay)
//                     + ed->m_pfDelayBuffer[ed->m_nOutB] * ed->m_fDelay;

//         pfDst->m_ppfChannels[kW][niSample] = fSrcSample * ed->m_fInteriorGain * ed->m_pfCoeff[kW];

//         fSrcSample *= ed->m_fExteriorGain;
//         for(niChannel = 1; niChannel < ed->m_nChannelCount; niChannel++)
//         {
//             pfDst->m_ppfChannels[niChannel][niSample] = fSrcSample * ed->m_pfCoeff[niChannel];
//         }

//         ed->m_nIn = (ed->m_nIn + 1) % ed->m_nDelayBufferLength;
//         ed->m_nOutA = (ed->m_nOutA + 1) % ed->m_nDelayBufferLength;
//         ed->m_nOutB = (ed->m_nOutB + 1) % ed->m_nDelayBufferLength;
//     }
// }

void encoderDistProcess(float* m_pfDelayBuffer, float* pfSrc, int m_nIn, int m_nOutA, int m_nOutB, float m_fInteriorGain, float* m_pfCoeff, float m_fExteriorGain,\
                        unsigned m_nDelayBufferLength, float* tempChannels, unsigned nSamples, float m_fDelay, unsigned m_nChannelCount) {
    unsigned niChannel = 0;
    unsigned niSample = 0;
    float fSrcSample = 0;

loopEDproc1:    for(niSample = 0; niSample < nSamples; niSample++)
    {
        //Store
        m_pfDelayBuffer[m_nIn] = pfSrc[niSample];
        //Read
        fSrcSample = m_pfDelayBuffer[m_nOutA] * (1.f - m_fDelay)
                    + m_pfDelayBuffer[m_nOutB] * m_fDelay;

        // m_ppfChannels[kW][niSample] = fSrcSample * m_fInteriorGain * m_pfCoeff[kW];
        tempChannels[niSample] = fSrcSample * m_fInteriorGain * m_pfCoeff[kW];

        fSrcSample *= m_fExteriorGain;
loopEDproc2:        for(niChannel = 1; niChannel < m_nChannelCount; niChannel++)
        {
            // m_ppfChannels[niChannel][niSample] = fSrcSample * m_pfCoeff[niChannel];
            tempChannels[niChannel * nSamples + niSample] = fSrcSample * m_pfCoeff[niChannel];
        }

        m_nIn = (m_nIn + 1) % m_nDelayBufferLength;
        m_nOutA = (m_nOutA + 1) % m_nDelayBufferLength;
        m_nOutB = (m_nOutB + 1) % m_nDelayBufferLength;
    }
}
}

void CAmbisonicEncoderDist::Process(float* pfSrc, unsigned nSamples, CBFormat* pfDst)
{
//     unsigned niChannel = 0;
//     unsigned niSample = 0;
//     float fSrcSample = 0;

// loopEDproc:    for(niSample = 0; niSample < nSamples; niSample++)
//     {
//         //Store
//         m_pfDelayBuffer[m_nIn] = pfSrc[niSample];
//         //Read
//         fSrcSample = m_pfDelayBuffer[m_nOutA] * (1.f - m_fDelay)
//                     + m_pfDelayBuffer[m_nOutB] * m_fDelay;

//         pfDst->m_ppfChannels[kW][niSample] = fSrcSample * m_fInteriorGain * m_pfCoeff[kW];

//         fSrcSample *= m_fExteriorGain;
//         for(niChannel = 1; niChannel < m_nChannelCount; niChannel++)
//         {
//             pfDst->m_ppfChannels[niChannel][niSample] = fSrcSample * m_pfCoeff[niChannel];
//         }

//         m_nIn = (m_nIn + 1) % m_nDelayBufferLength;
//         m_nOutA = (m_nOutA + 1) % m_nDelayBufferLength;
//         m_nOutB = (m_nOutB + 1) % m_nDelayBufferLength;
//     }
//     

    float tempChannels[m_nChannelCount * nSamples];
    float tempCoeff[m_pfCoeff.size()];
    for (int i = 0 ; i < m_pfCoeff.size(); ++i) {
        tempCoeff[i] = m_pfCoeff[i];
    }
    std::cout << "size of m_pfDelayBuffer: " << m_nDelayBufferLength * sizeof(float) << std::endl;
    std::cout << "size of pfSrc: " << 1024 * sizeof(float) << std::endl;
    std::cout << "size of m_pfCoeff: " << m_pfCoeff.size() * sizeof(float) << std::endl;
    std::cout << "size of tempChannels: " << m_nChannelCount * nSamples * sizeof(float) << std::endl;
    encoderDistProcess(m_pfDelayBuffer, pfSrc, m_nIn, m_nOutA, m_nOutB, m_fInteriorGain, tempCoeff, m_fExteriorGain, m_nDelayBufferLength, tempChannels, nSamples, m_fDelay, m_nChannelCount);
    for (int j = 0 ; j < m_nChannelCount; ++j) {
        for (int i = 0; i < nSamples; ++i) {
            pfDst->m_ppfChannels[j][i] = tempChannels[j * nSamples + i];
        }
    }
}

void CAmbisonicEncoderDist::SetRoomRadius(float fRoomRadius)
{
    m_fRoomRadius = fRoomRadius;
}

float CAmbisonicEncoderDist::GetRoomRadius()
{
    return m_fRoomRadius;
}

// CAmbisonicSpeaker
CAmbisonicSpeaker::CAmbisonicSpeaker()
{ }

CAmbisonicSpeaker::~CAmbisonicSpeaker()
{ }

bool CAmbisonicSpeaker::Configure(unsigned nOrder, bool b3D, unsigned nMisc)
{
    bool success = CAmbisonicSource::Configure(nOrder, b3D, nMisc);
    if(!success)
        return false;
    
    return true;
}

void CAmbisonicSpeaker::Refresh()
{
    CAmbisonicSource::Refresh();
}

void CAmbisonicSpeaker::Process(CBFormat* pBFSrc, unsigned nSamples, float* pfDst)
{
    unsigned niChannel = 0;
    unsigned niSample = 0;
    memset(pfDst, 0, nSamples * sizeof(float));
    for(niChannel = 0; niChannel < m_nChannelCount; niChannel++)
    {
        float *in = pBFSrc->m_ppfChannels[niChannel];
        float *out = pfDst;

        if(m_b3D){ /* Decode to a 3D loudspeaker array */
            // The spherical harmonic coefficients are multiplied by (2*order + 1) to provide the correct decoder
            // for SN3D normalised Ambisonic inputs.
            const float coeff = m_pfCoeff[niChannel] * (2*floor(sqrt(niChannel)) + 1);
            for(niSample = 0; niSample < nSamples; niSample++)
                *out++ += (*in++) * coeff;
        }
        else
        {    /* Decode to a 2D loudspeaker array */
            // The spherical harmonic coefficients are multiplied by 2 to provide the correct decoder
            // for SN3D normalised Ambisonic inputs decoded to a horizontal loudspeaker array
            const float coeff = m_pfCoeff[niChannel] * 2.f;
            for(niSample = 0; niSample < nSamples; niSample++)
                *out++ += (*in++) * coeff;
        }
    }
}

// CAmbisonicDecoder
CAmbisonicDecoder::CAmbisonicDecoder()
{
    m_nSpeakerSetUp = 0;
    m_nSpeakers = 0;
    m_pAmbSpeakers = nullptr;
}

CAmbisonicDecoder::~CAmbisonicDecoder()
{
    if(m_pAmbSpeakers)
        delete [] m_pAmbSpeakers;
}

bool CAmbisonicDecoder::Configure(unsigned nOrder, bool b3D, int nSpeakerSetUp, unsigned nSpeakers)
{
    bool success = CAmbisonicBase::Configure(nOrder, b3D, nSpeakerSetUp);
    if(!success)
        return false;
    SpeakerSetUp(nSpeakerSetUp, nSpeakers);
    Refresh();
    
    return true;
}

void CAmbisonicDecoder::Reset()
{
    for(unsigned niSpeaker = 0; niSpeaker < m_nSpeakers; niSpeaker++)
        m_pAmbSpeakers[niSpeaker].Reset();
}

void CAmbisonicDecoder::Refresh()
{
    for(unsigned niSpeaker = 0; niSpeaker < m_nSpeakers; niSpeaker++)
        m_pAmbSpeakers[niSpeaker].Refresh();
}

void CAmbisonicDecoder::Process(CBFormat* pBFSrc, unsigned nSamples, float** ppfDst)
{
    for(unsigned niSpeaker = 0; niSpeaker < m_nSpeakers; niSpeaker++)
    {
        m_pAmbSpeakers[niSpeaker].Process(pBFSrc, nSamples, ppfDst[niSpeaker]);
    }
}

int CAmbisonicDecoder::GetSpeakerSetUp()
{
    return m_nSpeakerSetUp;
}

unsigned CAmbisonicDecoder::GetSpeakerCount()
{
    return m_nSpeakers;
}

void CAmbisonicDecoder::SetPosition(unsigned nSpeaker, PolarPoint polPosition)
{
    m_pAmbSpeakers[nSpeaker].SetPosition(polPosition);
}

PolarPoint CAmbisonicDecoder::GetPosition(unsigned nSpeaker)
{
    return m_pAmbSpeakers[nSpeaker].GetPosition();
}

void CAmbisonicDecoder::SetOrderWeight(unsigned nSpeaker, unsigned nOrder, float fWeight)
{
    m_pAmbSpeakers[nSpeaker].SetOrderWeight(nOrder, fWeight);
}

float CAmbisonicDecoder::GetOrderWeight(unsigned nSpeaker, unsigned nOrder)
{
    return m_pAmbSpeakers[nSpeaker].GetOrderWeight(nOrder);
}

float CAmbisonicDecoder::GetCoefficient(unsigned nSpeaker, unsigned nChannel)
{
    return m_pAmbSpeakers[nSpeaker].GetCoefficient(nChannel);
}

void CAmbisonicDecoder::SetCoefficient(unsigned nSpeaker, unsigned nChannel, float fCoeff)
{
    m_pAmbSpeakers[nSpeaker].SetCoefficient(nChannel, fCoeff);
}

void CAmbisonicDecoder::SpeakerSetUp(int nSpeakerSetUp, unsigned nSpeakers)
{
    m_nSpeakerSetUp = nSpeakerSetUp;

    if(m_pAmbSpeakers)
        delete [] m_pAmbSpeakers;

    PolarPoint polPosition = {0.f, 0.f, 1.f};
    unsigned niSpeaker = 0;
    float fSpeakerGain = 0.f;

    switch(m_nSpeakerSetUp)
    {
    case kAmblib_CustomSpeakerSetUp:
        m_nSpeakers = nSpeakers;
        m_pAmbSpeakers = new CAmbisonicSpeaker[m_nSpeakers];
        for(niSpeaker = 0; niSpeaker < m_nSpeakers; niSpeaker++)
        {
            m_pAmbSpeakers[niSpeaker].Configure(m_nOrder, m_b3D, 0);
        }
        break;
    case kAmblib_Mono:
        m_nSpeakers = 1;
        m_pAmbSpeakers = new CAmbisonicSpeaker[m_nSpeakers];
        m_pAmbSpeakers[0].Configure(m_nOrder, m_b3D, 0);
        m_pAmbSpeakers[0].SetPosition(polPosition);
        break;
    case kAmblib_Stereo:
        m_nSpeakers = 2;
        m_pAmbSpeakers = new CAmbisonicSpeaker[m_nSpeakers];
        polPosition.fAzimuth = DegreesToRadians(30.f);
        m_pAmbSpeakers[0].Configure(m_nOrder, m_b3D, 0);
        m_pAmbSpeakers[0].SetPosition(polPosition);
        polPosition.fAzimuth = DegreesToRadians(-30.f);
        m_pAmbSpeakers[1].Configure(m_nOrder, m_b3D, 0);
        m_pAmbSpeakers[1].SetPosition(polPosition);
        break;
    case kAmblib_LCR:
        m_nSpeakers = 3;
        m_pAmbSpeakers = new CAmbisonicSpeaker[m_nSpeakers];
        polPosition.fAzimuth = DegreesToRadians(30.f);
        m_pAmbSpeakers[0].Configure(m_nOrder, m_b3D, 0);
        m_pAmbSpeakers[0].SetPosition(polPosition);
        polPosition.fAzimuth = DegreesToRadians(0.f);
        m_pAmbSpeakers[1].Configure(m_nOrder, m_b3D, 0);
        m_pAmbSpeakers[1].SetPosition(polPosition);
        polPosition.fAzimuth = DegreesToRadians(-30.f);
        m_pAmbSpeakers[2].Configure(m_nOrder, m_b3D, 0);
        m_pAmbSpeakers[2].SetPosition(polPosition);
        break;
    case kAmblib_Quad:
        m_nSpeakers = 4;
        m_pAmbSpeakers = new CAmbisonicSpeaker[m_nSpeakers];
        polPosition.fAzimuth = DegreesToRadians(45.f);
        m_pAmbSpeakers[0].Configure(m_nOrder, m_b3D, 0);
        m_pAmbSpeakers[0].SetPosition(polPosition);
        polPosition.fAzimuth = DegreesToRadians(-45.f);
        m_pAmbSpeakers[1].Configure(m_nOrder, m_b3D, 0);
        m_pAmbSpeakers[1].SetPosition(polPosition);
        polPosition.fAzimuth = DegreesToRadians(135.f);
        m_pAmbSpeakers[2].Configure(m_nOrder, m_b3D, 0);
        m_pAmbSpeakers[2].SetPosition(polPosition);
        polPosition.fAzimuth = DegreesToRadians(-135.f);
        m_pAmbSpeakers[3].Configure(m_nOrder, m_b3D, 0);
        m_pAmbSpeakers[3].SetPosition(polPosition);
        break;
    case kAmblib_50:
        m_nSpeakers = 5;
        m_pAmbSpeakers = new CAmbisonicSpeaker[m_nSpeakers];
        polPosition.fAzimuth = DegreesToRadians(30.f);
        m_pAmbSpeakers[0].Configure(m_nOrder, m_b3D, 0);
        m_pAmbSpeakers[0].SetPosition(polPosition);
        polPosition.fAzimuth = DegreesToRadians(-30.f);
        m_pAmbSpeakers[1].Configure(m_nOrder, m_b3D, 0);
        m_pAmbSpeakers[1].SetPosition(polPosition);
        polPosition.fAzimuth = DegreesToRadians(0.f);
        m_pAmbSpeakers[2].Configure(m_nOrder, m_b3D, 0);
        m_pAmbSpeakers[2].SetPosition(polPosition);
        polPosition.fAzimuth = DegreesToRadians(110.f);
        m_pAmbSpeakers[3].Configure(m_nOrder, m_b3D, 0);
        m_pAmbSpeakers[3].SetPosition(polPosition);
        polPosition.fAzimuth = DegreesToRadians(-110.f);
        m_pAmbSpeakers[4].Configure(m_nOrder, m_b3D, 0);
        m_pAmbSpeakers[4].SetPosition(polPosition);
        break;
    case kAmblib_Pentagon:
        m_nSpeakers = 5;
        m_pAmbSpeakers = new CAmbisonicSpeaker[m_nSpeakers];
        for(niSpeaker = 0; niSpeaker < m_nSpeakers; niSpeaker++)
        {
            polPosition.fAzimuth = -DegreesToRadians(niSpeaker * 360.f / m_nSpeakers);
            m_pAmbSpeakers[niSpeaker].Configure(m_nOrder, m_b3D, 0);
            m_pAmbSpeakers[niSpeaker].SetPosition(polPosition);
        }
        break;
    case kAmblib_Hexagon:
        m_nSpeakers = 6;
        m_pAmbSpeakers = new CAmbisonicSpeaker[m_nSpeakers];
        for(niSpeaker = 0; niSpeaker < m_nSpeakers; niSpeaker++)
        {
            polPosition.fAzimuth = -DegreesToRadians(niSpeaker * 360.f / m_nSpeakers + 30.f);
            m_pAmbSpeakers[niSpeaker].Configure(m_nOrder, m_b3D, 0);
            m_pAmbSpeakers[niSpeaker].SetPosition(polPosition);
        }
        break;
    case kAmblib_HexagonWithCentre:
        m_nSpeakers = 6;
        m_pAmbSpeakers = new CAmbisonicSpeaker[m_nSpeakers];
        for(niSpeaker = 0; niSpeaker < m_nSpeakers; niSpeaker++)
        {
            polPosition.fAzimuth = -DegreesToRadians(niSpeaker * 360.f / m_nSpeakers);
            m_pAmbSpeakers[niSpeaker].Configure(m_nOrder, m_b3D, 0);
            m_pAmbSpeakers[niSpeaker].SetPosition(polPosition);
        }
        break;
    case kAmblib_Octagon:
        m_nSpeakers = 8;
        m_pAmbSpeakers = new CAmbisonicSpeaker[m_nSpeakers];
        for(niSpeaker = 0; niSpeaker < m_nSpeakers; niSpeaker++)
        {
            polPosition.fAzimuth = -DegreesToRadians(niSpeaker * 360.f / m_nSpeakers);
            m_pAmbSpeakers[niSpeaker].Configure(m_nOrder, m_b3D, 0);
            m_pAmbSpeakers[niSpeaker].SetPosition(polPosition);
        }
        break;
    case kAmblib_Decadron:
        m_nSpeakers = 10;
        m_pAmbSpeakers = new CAmbisonicSpeaker[m_nSpeakers];
        for(niSpeaker = 0; niSpeaker < m_nSpeakers; niSpeaker++)
        {
            polPosition.fAzimuth = -DegreesToRadians(niSpeaker * 360.f / m_nSpeakers);
            m_pAmbSpeakers[niSpeaker].Configure(m_nOrder, m_b3D, 0);
            m_pAmbSpeakers[niSpeaker].SetPosition(polPosition);
        }
        break;
    case kAmblib_Dodecadron:
        m_nSpeakers = 12;
        m_pAmbSpeakers = new CAmbisonicSpeaker[m_nSpeakers];
        for(niSpeaker = 0; niSpeaker < m_nSpeakers; niSpeaker++)
        {
            polPosition.fAzimuth = -DegreesToRadians(niSpeaker * 360.f / m_nSpeakers);
            m_pAmbSpeakers[niSpeaker].Configure(m_nOrder, m_b3D, 0);
            m_pAmbSpeakers[niSpeaker].SetPosition(polPosition);
        }
        break;
    case kAmblib_Cube:
        m_nSpeakers = 8;
        m_pAmbSpeakers = new CAmbisonicSpeaker[m_nSpeakers];
        polPosition.fElevation = DegreesToRadians(45.f);
        for(niSpeaker = 0; niSpeaker < m_nSpeakers / 2; niSpeaker++)
        {
            polPosition.fAzimuth = -DegreesToRadians(niSpeaker * 360.f / (m_nSpeakers / 2) + 45.f);
            m_pAmbSpeakers[niSpeaker].Configure(m_nOrder, m_b3D, 0);
            m_pAmbSpeakers[niSpeaker].SetPosition(polPosition);
        }
        polPosition.fElevation = DegreesToRadians(-45.f);
        for(niSpeaker = m_nSpeakers / 2; niSpeaker < m_nSpeakers; niSpeaker++)
        {
            polPosition.fAzimuth = -DegreesToRadians((niSpeaker - 4) * 360.f / (m_nSpeakers / 2) + 45.f);
            m_pAmbSpeakers[niSpeaker].Configure(m_nOrder, m_b3D, 0);
            m_pAmbSpeakers[niSpeaker].SetPosition(polPosition);
        }
        break;
    case kAmblib_Dodecahedron:
        // This arrangement is used for second and third orders
        m_nSpeakers = 20;
        m_pAmbSpeakers = new CAmbisonicSpeaker[m_nSpeakers];
        // Loudspeaker 1
        polPosition.fElevation = DegreesToRadians(-69.1f);
        polPosition.fAzimuth = DegreesToRadians(90.f);
        m_pAmbSpeakers[0].Configure(m_nOrder, m_b3D, 0);
        m_pAmbSpeakers[0].SetPosition(polPosition);
        // Loudspeaker 2
        polPosition.fAzimuth = DegreesToRadians(-90.f);
        m_pAmbSpeakers[1].Configure(m_nOrder, m_b3D, 0);
        m_pAmbSpeakers[1].SetPosition(polPosition);

        // Loudspeaker 3
        polPosition.fElevation = DegreesToRadians(-35.3f);
        polPosition.fAzimuth = DegreesToRadians(45.f);
        m_pAmbSpeakers[2].Configure(m_nOrder, m_b3D, 0);
        m_pAmbSpeakers[2].SetPosition(polPosition);
        // Loudspeaker 4
        polPosition.fAzimuth = DegreesToRadians(135.f);
        m_pAmbSpeakers[3].Configure(m_nOrder, m_b3D, 0);
        m_pAmbSpeakers[3].SetPosition(polPosition);
        // Loudspeaker 5
        polPosition.fAzimuth = DegreesToRadians(-45.f);
        m_pAmbSpeakers[4].Configure(m_nOrder, m_b3D, 0);
        m_pAmbSpeakers[4].SetPosition(polPosition);
        // Loudspeaker 6
        polPosition.fAzimuth = DegreesToRadians(-135.f);
        m_pAmbSpeakers[5].Configure(m_nOrder, m_b3D, 0);
        m_pAmbSpeakers[5].SetPosition(polPosition);

        // Loudspeaker 7
        polPosition.fElevation = DegreesToRadians(-20.9f);
        polPosition.fAzimuth = DegreesToRadians(180.f);
        m_pAmbSpeakers[6].Configure(m_nOrder, m_b3D, 0);
        m_pAmbSpeakers[6].SetPosition(polPosition);
        // Loudspeaker 8
        polPosition.fAzimuth = DegreesToRadians(0.f);
        m_pAmbSpeakers[7].Configure(m_nOrder, m_b3D, 0);
        m_pAmbSpeakers[7].SetPosition(polPosition);

        // Loudspeaker 9
        polPosition.fElevation = DegreesToRadians(0.f);
        polPosition.fAzimuth = DegreesToRadians(69.1f);
        m_pAmbSpeakers[8].Configure(m_nOrder, m_b3D, 0);
        m_pAmbSpeakers[8].SetPosition(polPosition);
        // Loudspeaker 10
        polPosition.fAzimuth = DegreesToRadians(110.9f);
        m_pAmbSpeakers[9].Configure(m_nOrder, m_b3D, 0);
        m_pAmbSpeakers[9].SetPosition(polPosition);
        // Loudspeaker 11
        polPosition.fAzimuth = DegreesToRadians(-69.1f);
        m_pAmbSpeakers[10].Configure(m_nOrder, m_b3D, 0);
        m_pAmbSpeakers[10].SetPosition(polPosition);
        // Loudspeaker 12
        polPosition.fAzimuth = DegreesToRadians(-110.9f);
        m_pAmbSpeakers[11].Configure(m_nOrder, m_b3D, 0);
        m_pAmbSpeakers[11].SetPosition(polPosition);

        // Loudspeaker 13
        polPosition.fElevation = DegreesToRadians(20.9f);
        polPosition.fAzimuth = DegreesToRadians(180.f);
        m_pAmbSpeakers[12].Configure(m_nOrder, m_b3D, 0);
        m_pAmbSpeakers[12].SetPosition(polPosition);
        // Loudspeaker 14
        polPosition.fAzimuth = DegreesToRadians(0.f);
        m_pAmbSpeakers[13].Configure(m_nOrder, m_b3D, 0);
        m_pAmbSpeakers[13].SetPosition(polPosition);

        // Loudspeaker 15
        polPosition.fElevation = DegreesToRadians(35.3f);
        polPosition.fAzimuth = DegreesToRadians(45.f);
        m_pAmbSpeakers[14].Configure(m_nOrder, m_b3D, 0);
        m_pAmbSpeakers[14].SetPosition(polPosition);
        // Loudspeaker 16
        polPosition.fAzimuth = DegreesToRadians(135.f);
        m_pAmbSpeakers[15].Configure(m_nOrder, m_b3D, 0);
        m_pAmbSpeakers[15].SetPosition(polPosition);
        // Loudspeaker 17
        polPosition.fAzimuth = DegreesToRadians(-45.f);
        m_pAmbSpeakers[16].Configure(m_nOrder, m_b3D, 0);
        m_pAmbSpeakers[16].SetPosition(polPosition);
        // Loudspeaker 18
        polPosition.fAzimuth = DegreesToRadians(-135.f);
        m_pAmbSpeakers[17].Configure(m_nOrder, m_b3D, 0);
        m_pAmbSpeakers[17].SetPosition(polPosition);

        // Loudspeaker 19
        polPosition.fElevation = DegreesToRadians(69.1f);
        polPosition.fAzimuth = DegreesToRadians(90.f);
        m_pAmbSpeakers[18].Configure(m_nOrder, m_b3D, 0);
        m_pAmbSpeakers[18].SetPosition(polPosition);
        // Loudspeaker 20
        polPosition.fAzimuth = DegreesToRadians(-90.f);
        m_pAmbSpeakers[19].Configure(m_nOrder, m_b3D, 0);
        m_pAmbSpeakers[19].SetPosition(polPosition);
        break;
    case kAmblib_Cube2:
        // This configuration is a standard for first order decoding
        m_nSpeakers = 8;
        m_pAmbSpeakers = new CAmbisonicSpeaker[m_nSpeakers];
        polPosition.fElevation = DegreesToRadians(35.2f);
        for(niSpeaker = 0; niSpeaker < m_nSpeakers / 2; niSpeaker++)
        {
            polPosition.fAzimuth = -DegreesToRadians(niSpeaker * 360.f / (m_nSpeakers / 2) + 45.f);
            m_pAmbSpeakers[niSpeaker].Configure(m_nOrder, m_b3D, 0);
            m_pAmbSpeakers[niSpeaker].SetPosition(polPosition);
        }
        polPosition.fElevation = DegreesToRadians(-35.2f);
        for(niSpeaker = m_nSpeakers / 2; niSpeaker < m_nSpeakers; niSpeaker++)
        {
            polPosition.fAzimuth = -DegreesToRadians((niSpeaker - 4) * 360.f / (m_nSpeakers / 2) + 45.f);
            m_pAmbSpeakers[niSpeaker].Configure(m_nOrder, m_b3D, 0);
            m_pAmbSpeakers[niSpeaker].SetPosition(polPosition);
        }
        break;
    case kAmblib_MonoCustom:
        m_nSpeakers = 17;
        m_pAmbSpeakers = new CAmbisonicSpeaker[m_nSpeakers];
        polPosition.fAzimuth = 0.f;
        polPosition.fElevation = 0.f;
        polPosition.fDistance = 1.f;
        for(niSpeaker = 0; niSpeaker < m_nSpeakers; niSpeaker++)
        {
            polPosition.fAzimuth = DegreesToRadians(0.f);
            m_pAmbSpeakers[niSpeaker].Configure(m_nOrder, m_b3D, 0);
            m_pAmbSpeakers[niSpeaker].SetPosition(polPosition);

        }
        break;
    default:
        m_nSpeakers = 1;
        m_pAmbSpeakers = new CAmbisonicSpeaker[m_nSpeakers];
        m_pAmbSpeakers[0].Configure(m_nOrder, m_b3D, 0);
        m_pAmbSpeakers[0].SetPosition(polPosition);
        break;
    };

    fSpeakerGain = 1.f / sqrtf((float)m_nSpeakers);
    for(niSpeaker = 0; niSpeaker < m_nSpeakers; niSpeaker++)
        m_pAmbSpeakers[niSpeaker].SetGain(fSpeakerGain);
}

// CAmbisonicZoomer
CAmbisonicZoomer::CAmbisonicZoomer()
{
    m_fZoom = 0;
}

bool CAmbisonicZoomer::Configure(unsigned nOrder, bool b3D, unsigned nMisc)
{
    bool success = CAmbisonicBase::Configure(nOrder, b3D, nMisc);
    if(!success)
        return false;

    m_AmbDecoderFront.Configure(m_nOrder, 1, kAmblib_Mono, 1);

    //Calculate all the speaker coefficients
    m_AmbDecoderFront.Refresh();

    m_fZoomRed = 0.f;

    m_AmbEncoderFront.reset(new float[m_nChannelCount]);
    m_AmbEncoderFront_weighted.reset(new float[m_nChannelCount]);
    a_m.reset(new float[m_nOrder + 1]);

    // These weights a_m are applied to the channels of a corresponding order within the Ambisonics signals.
    // When applied to the encoded channels and decoded to a particular loudspeaker direction they will create a
    // virtual microphone pattern with no rear lobes.
    // When used for decoding this is known as in-phase decoding.
    for(unsigned iOrder = 0; iOrder < m_nOrder + 1; iOrder++)
        a_m[iOrder] = (2*iOrder+1)*factorial(m_nOrder)*factorial(m_nOrder+1) / (factorial(m_nOrder+iOrder+1)*factorial(m_nOrder-iOrder));

    unsigned iDegree=0;
    for(unsigned iChannel = 0; iChannel<m_nChannelCount; iChannel++)
    {
        m_AmbEncoderFront[iChannel] = m_AmbDecoderFront.GetCoefficient(0, iChannel);
        iDegree = (int)floor(sqrt(iChannel));
        m_AmbEncoderFront_weighted[iChannel] = m_AmbEncoderFront[iChannel] * a_m[iDegree];
        // Normalisation factor
        m_AmbFrontMic += m_AmbEncoderFront[iChannel] * m_AmbEncoderFront_weighted[iChannel];
    }

    return true;
}

void CAmbisonicZoomer::Reset()
{

}

void CAmbisonicZoomer::Refresh()
{
    m_fZoomRed = sqrtf(1.f - m_fZoom * m_fZoom);
    m_fZoomBlend = 1.f - m_fZoom;
}

void CAmbisonicZoomer::SetZoom(float fZoom)
{
    // Limit the zoom value to always preserve the spacial effect.
    m_fZoom = std::min(fZoom, 0.99f);
}

float CAmbisonicZoomer::GetZoom()
{
    return m_fZoom;
}

extern "C" {
void zoomerProcess(float* tempChannels, float* m_AmbEncoderFront_weighted, float* m_AmbEncoderFront, unsigned nSamples, unsigned m_nChannelCount, float m_fZoomBlend, float m_fZoom, float m_AmbFrontMic, float m_fZoomRed) {
loopZproc1:    for(unsigned niSample = 0; niSample < nSamples; niSample++)
    {
        float fMic = 0.f;

loopZproc2:        for(unsigned iChannel=0; iChannel<m_nChannelCount; iChannel++)
        {
            // virtual microphone with polar pattern narrowing as Ambisonic order increases
            fMic += m_AmbEncoderFront_weighted[iChannel] * tempChannels[iChannel * nSamples + niSample];
        }
loopZproc3:        for(unsigned iChannel=0; iChannel<m_nChannelCount; iChannel++)
        {
            // if(std::abs(m_AmbEncoderFront[iChannel])>1e-6)
            // {
            //     // Blend original channel with the virtual microphone pointed directly to the front
            //     // Only do this for Ambisonics components that aren't zero for an encoded frontal source
            //     tempChannels[iChannel * nSamples + niSample] = (m_fZoomBlend * tempChannels[iChannel * nSamples + niSample]
            //         + m_AmbEncoderFront[iChannel]*m_fZoom*fMic) / (m_fZoomBlend + std::fabs(m_fZoom)*m_AmbFrontMic);
            // }
            // else{
            //     // reduce the level of the Ambisonic components that are zero for a frontal source
            //     tempChannels[iChannel * nSamples + niSample] = tempChannels[iChannel * nSamples + niSample] * m_fZoomRed;
            // }
            if (m_AmbEncoderFront[iChannel] >= 0) {
                if (m_AmbEncoderFront[iChannel] > 1e-6) {
                    if (m_fZoom >= 0) {
                        tempChannels[iChannel * nSamples + niSample] = (m_fZoomBlend * tempChannels[iChannel * nSamples + niSample]
                        + m_AmbEncoderFront[iChannel]*m_fZoom*fMic) / (m_fZoomBlend + m_fZoom*m_AmbFrontMic);
                    }
                    else {
                        tempChannels[iChannel * nSamples + niSample] = (m_fZoomBlend * tempChannels[iChannel * nSamples + niSample]
                        + m_AmbEncoderFront[iChannel]*m_fZoom*fMic) / (m_fZoomBlend - m_fZoom*m_AmbFrontMic);
                    }
                }
                else {
                    tempChannels[iChannel * nSamples + niSample] = tempChannels[iChannel * nSamples + niSample] * m_fZoomRed;
                }
            }
            else {
                if ((-m_AmbEncoderFront[iChannel]) > 1e-6) {
                    if (m_fZoom >= 0) {
                        tempChannels[iChannel * nSamples + niSample] = (m_fZoomBlend * tempChannels[iChannel * nSamples + niSample]
                        + m_AmbEncoderFront[iChannel]*m_fZoom*fMic) / (m_fZoomBlend + m_fZoom*m_AmbFrontMic);
                    }
                    else {
                        tempChannels[iChannel * nSamples + niSample] = (m_fZoomBlend * tempChannels[iChannel * nSamples + niSample]
                        + m_AmbEncoderFront[iChannel]*m_fZoom*fMic) / (m_fZoomBlend - m_fZoom*m_AmbFrontMic);
                    }
                }
                else {
                    tempChannels[iChannel * nSamples + niSample] = tempChannels[iChannel * nSamples + niSample] * m_fZoomRed;
                }
            }
        }
    }
}
}

void CAmbisonicZoomer::Process(CBFormat* pBFSrcDst, unsigned nSamples)
{
    // for(unsigned niSample = 0; niSample < nSamples; niSample++)
    // {
    //     float fMic = 0.f;

    //     for(unsigned iChannel=0; iChannel<m_nChannelCount; iChannel++)
    //     {
    //         // virtual microphone with polar pattern narrowing as Ambisonic order increases
    //         fMic += m_AmbEncoderFront_weighted[iChannel] * pBFSrcDst->m_ppfChannels[iChannel][niSample];
    //     }
    //     for(unsigned iChannel=0; iChannel<m_nChannelCount; iChannel++)
    //     {
    //         if(std::abs(m_AmbEncoderFront[iChannel])>1e-6)
    //         {
    //             // Blend original channel with the virtual microphone pointed directly to the front
    //             // Only do this for Ambisonics components that aren't zero for an encoded frontal source
    //             pBFSrcDst->m_ppfChannels[iChannel][niSample] = (m_fZoomBlend * pBFSrcDst->m_ppfChannels[iChannel][niSample]
    //                 + m_AmbEncoderFront[iChannel]*m_fZoom*fMic) / (m_fZoomBlend + std::fabs(m_fZoom)*m_AmbFrontMic);
    //         }
    //         else{
    //             // reduce the level of the Ambisonic components that are zero for a frontal source
    //             pBFSrcDst->m_ppfChannels[iChannel][niSample] = pBFSrcDst->m_ppfChannels[iChannel][niSample] * m_fZoomRed;
    //         }
    //     }
    // }

    float tempChannels[m_nChannelCount * nSamples];
    float tempAmbEncoderFront_weighted[m_nChannelCount];
    float tempAmbEncoderFront[m_nChannelCount];

    for (unsigned iChannel=0; iChannel<m_nChannelCount; iChannel++) {
        for (unsigned niSample = 0; niSample < nSamples; niSample++) {
            tempChannels[iChannel * nSamples + niSample] = pBFSrcDst->m_ppfChannels[iChannel][niSample];
        }
    }

    for (unsigned iChannel=0; iChannel<m_nChannelCount; iChannel++) {
        tempAmbEncoderFront_weighted[iChannel] = m_AmbEncoderFront_weighted[iChannel];
    }

    for (unsigned iChannel=0; iChannel<m_nChannelCount; iChannel++) {
        tempAmbEncoderFront[iChannel] = m_AmbEncoderFront[iChannel];
    }
    std::cout << "size of tempChannels is: "<< m_nChannelCount * nSamples * sizeof(float) << std::endl;
    std::cout << "size of m_AmbEncoderFront_weighted is: "<< m_nChannelCount * sizeof(float) << std::endl;
    std::cout << "size of m_AmbEncoderFront is: "<< m_nChannelCount * sizeof(float) << std::endl;
    zoomerProcess(tempChannels, tempAmbEncoderFront_weighted, tempAmbEncoderFront, nSamples, m_nChannelCount, m_fZoomBlend, m_fZoom, m_AmbFrontMic, m_fZoomRed);

    for (unsigned iChannel=0; iChannel<m_nChannelCount; iChannel++) {
        for (unsigned niSample = 0; niSample < nSamples; niSample++) {
            pBFSrcDst->m_ppfChannels[iChannel][niSample] = tempChannels[iChannel * nSamples + niSample];
        }
    }
}

float CAmbisonicZoomer::factorial(unsigned M)
{
    unsigned ret = 1;
    for(unsigned int i = 1; i <= M; ++i)
        ret *= i;
    return ret;
}

// CAmbisonicBinauralizer
CAmbisonicBinauralizer::CAmbisonicBinauralizer()
    : m_pFFT_cfg(nullptr, kiss_fftr_free)
    , m_pIFFT_cfg(nullptr, kiss_fftr_free)
{
    m_nBlockSize = 0;
    m_nTaps = 0;
    m_nFFTSize = 0;
    m_nFFTBins = 0;
    m_fFFTScaler = 0.f;
    m_nOverlapLength = 0;
}

bool CAmbisonicBinauralizer::Configure(unsigned nOrder,
                                       bool b3D,
                                       unsigned nSampleRate,
                                       unsigned nBlockSize,
                                       unsigned& tailLength,
                                       std::string HRTFPath)
{
    //Iterators
    unsigned niEar = 0;
    unsigned niChannel = 0;
    unsigned niSpeaker = 0;
    unsigned niTap = 0;

    HRTF *p_hrtf = getHRTF(nSampleRate, HRTFPath);
    if (p_hrtf == nullptr)
        return false;

    tailLength = m_nTaps = p_hrtf->getHRTFLen();
    m_nBlockSize = nBlockSize;

    //What will the overlap size be?
    m_nOverlapLength = m_nBlockSize < m_nTaps ? m_nBlockSize - 1 : m_nTaps - 1;
    //How large does the FFT need to be
    m_nFFTSize = 1;
    while(m_nFFTSize < (m_nBlockSize + m_nTaps + m_nOverlapLength))
        m_nFFTSize <<= 1;
    //How many bins is that
    m_nFFTBins = m_nFFTSize / 2 + 1;
    //What do we need to scale the result of the iFFT by
    m_fFFTScaler = 1.f / m_nFFTSize;

    CAmbisonicBase::Configure(nOrder, b3D, 0);
    //Position speakers and recalculate coefficients
    ArrangeSpeakers();

    unsigned nSpeakers = m_AmbDecoder.GetSpeakerCount();

    //Allocate buffers with new settings
    AllocateBuffers();

    //Allocate temporary buffers for retrieving taps from mit_hrtf_lib
    float* pfHRTF[2];
    for(niEar = 0; niEar < 2; niEar++)
        pfHRTF[niEar] = new float[m_nTaps];

    //Allocate buffers for HRTF accumulators
    float** ppfAccumulator[2];
    for(niEar = 0; niEar < 2; niEar++)
    {
        ppfAccumulator[niEar] = new float*[m_nChannelCount];
        for(niChannel = 0; niChannel < m_nChannelCount; niChannel++)
            ppfAccumulator[niEar][niChannel] = new float[m_nTaps]();
    }

    for(niChannel = 0; niChannel < m_nChannelCount; niChannel++)
    {
        for(niSpeaker = 0; niSpeaker < nSpeakers; niSpeaker++)
        {
            //What is the position of the current speaker
            PolarPoint position = m_AmbDecoder.GetPosition(niSpeaker);

            bool b_found = p_hrtf->get(position.fAzimuth, position.fElevation, pfHRTF);
            if (!b_found)
                return false;

            //Scale the HRTFs by the coefficient of the current channel/component
            // The spherical harmonic coefficients are multiplied by (2*order + 1) to provide the correct decoder
            // for SN3D normalised Ambisonic inputs.
            float fCoefficient = m_AmbDecoder.GetCoefficient(niSpeaker, niChannel) * (2*floor(sqrt(niChannel)) + 1);
            for(niTap = 0; niTap < m_nTaps; niTap++)
            {
                pfHRTF[0][niTap] *= fCoefficient;
                pfHRTF[1][niTap] *= fCoefficient;
            }
            //Accumulate channel/component HRTF
            for(niTap = 0; niTap < m_nTaps; niTap++)
            {
                ppfAccumulator[0][niChannel][niTap] += pfHRTF[0][niTap];
                ppfAccumulator[1][niChannel][niTap] += pfHRTF[1][niTap];
            }
        }
    }

    delete p_hrtf;

    //Find the maximum tap
    float fMax = 0;

    // encode a source at azimuth 90deg and elevation 0
    CAmbisonicEncoder myEncoder;
    myEncoder.Configure(m_nOrder, true, 0);

    PolarPoint position90;
    position90.fAzimuth = DegreesToRadians(90.f);
    position90.fElevation = 0.f;
    position90.fDistance = 5.f;
    myEncoder.SetPosition(position90);
    myEncoder.Refresh();

    float* pfLeftEar90;
    pfLeftEar90 = new float[m_nTaps]();
    for(niChannel = 0; niChannel < m_nChannelCount; niChannel++)
        for(niTap = 0; niTap < m_nTaps; niTap++)
            pfLeftEar90[niTap] += myEncoder.GetCoefficient(niChannel) * ppfAccumulator[0][niChannel][niTap];

    //Find the maximum value for a source encoded at 90degrees
    for(niTap = 0; niTap < m_nTaps; niTap++)
    {
        float val = fabs(pfLeftEar90[niTap]);
        fMax = val > fMax ? val : fMax;
    }

    //Normalize to pre-defined value
    float fUpperSample = 1.f;
    float fScaler = fUpperSample / fMax;
    fScaler *= 0.35f;
    for(niEar = 0; niEar < 2; niEar++)
    {
        for(niChannel = 0; niChannel < m_nChannelCount; niChannel++)
        {
            for(niTap = 0; niTap < m_nTaps; niTap++)
            {
                ppfAccumulator[niEar][niChannel][niTap] *= fScaler;
            }
        }
    }

    //Convert frequency domain filters
    for(niEar = 0; niEar < 2; niEar++)
    {
        for(niChannel = 0; niChannel < m_nChannelCount; niChannel++)
        {
            memcpy(m_pfScratchBufferA.data(), ppfAccumulator[niEar][niChannel], m_nTaps * sizeof(float));
            memset(&m_pfScratchBufferA[m_nTaps], 0, (m_nFFTSize - m_nTaps) * sizeof(float));
            kiss_fftr(m_pFFT_cfg.get(), m_pfScratchBufferA.data(), m_ppcpFilters[niEar][niChannel].get());
        }
    }

    for(niEar = 0; niEar < 2; niEar++)
        delete [] pfHRTF[niEar];

    for(niEar = 0; niEar < 2; niEar++)
    {
        for(niChannel = 0; niChannel < m_nChannelCount; niChannel++)
            delete [] ppfAccumulator[niEar][niChannel];
        delete [] ppfAccumulator[niEar];
    }
    delete[] pfLeftEar90;

    return true;
}

void CAmbisonicBinauralizer::Reset()
{
    memset(m_pfOverlap[0].data(), 0, m_nOverlapLength * sizeof(float));
    memset(m_pfOverlap[1].data(), 0, m_nOverlapLength * sizeof(float));
}

void CAmbisonicBinauralizer::Refresh()
{

}

extern "C" {
void binauralizerProcess(float* m_pfScratchBufferA, unsigned m_nFFTSize, unsigned m_nChannelCount, float* m_pfScratchBufferB, \
                         unsigned m_nBlockSize, kiss_fftr_cfg m_pFFT_cfg, kiss_fft_cpx* m_pcpScratch, unsigned m_nFFTBins, kiss_fft_cpx* m_ppcpFilters, \
                         kiss_fftr_cfg m_pIFFT_cfg, unsigned m_nOverlapLength, float* m_pfOverlap, float* tempChannels, unsigned nSamples, float* ppfDst, float m_fFFTScaler) {
    unsigned niEar = 0;
    unsigned niChannel = 0;
    unsigned ni = 0;
    kiss_fft_cpx cpTemp;
// TODO: update the code to match the inputs
loopBproc1:    for(niEar = 0; niEar < 2; niEar++)
    {
        memset(m_pfScratchBufferA, 0, m_nFFTSize * sizeof(float));
loopBproc2:        for(niChannel = 0; niChannel < m_nChannelCount; niChannel++)
        {
            memcpy(m_pfScratchBufferB, &tempChannels[niChannel * nSamples], m_nBlockSize * sizeof(float));
            memset(&m_pfScratchBufferB[m_nBlockSize], 0, (m_nFFTSize - m_nBlockSize) * sizeof(float));
            kiss_fftr(m_pFFT_cfg, m_pfScratchBufferB, m_pcpScratch);
loopBproc3:            for(ni = 0; ni < m_nFFTBins; ni++)
            {
                cpTemp.r = m_pcpScratch[ni].r * m_ppcpFilters[niEar * m_nChannelCount * m_nFFTBins + niChannel * m_nFFTBins + ni].r
                            - m_pcpScratch[ni].i * m_ppcpFilters[niEar * m_nChannelCount * m_nFFTBins + niChannel * m_nFFTBins + ni].i;
                cpTemp.i = m_pcpScratch[ni].r * m_ppcpFilters[niEar * m_nChannelCount * m_nFFTBins + niChannel * m_nFFTBins + ni].i
                            + m_pcpScratch[ni].i * m_ppcpFilters[niEar * m_nChannelCount * m_nFFTBins + niChannel * m_nFFTBins + ni].r;
                m_pcpScratch[ni] = cpTemp;
            }
            kiss_fftri(m_pIFFT_cfg, m_pcpScratch, m_pfScratchBufferB);
loopBproc4:            for(ni = 0; ni < m_nFFTSize; ni++) {
                m_pfScratchBufferA[ni] += m_pfScratchBufferB[ni];
            }
                
        }
loopBproc5:        for(ni = 0; ni < m_nFFTSize; ni++) {
            m_pfScratchBufferA[ni] *= m_fFFTScaler;
        }
        memcpy(&ppfDst[niEar * nSamples], m_pfScratchBufferA, m_nBlockSize * sizeof(float));
loopBproc6:        for(ni = 0; ni < m_nOverlapLength; ni++) {
            ppfDst[niEar * nSamples + ni] += m_pfOverlap[niEar * m_nOverlapLength + ni];
        }
        memcpy(&m_pfOverlap[niEar * m_nOverlapLength], &m_pfScratchBufferA[m_nBlockSize], m_nOverlapLength * sizeof(float));
    }
}
}

void CAmbisonicBinauralizer::Process(CBFormat* pBFSrc,
                                     float** ppfDst)
{
    // unsigned niEar = 0;
    // unsigned niChannel = 0;
    // unsigned ni = 0;
    // kiss_fft_cpx cpTemp;


    // /* If CPU load needs to be reduced then perform the convolution for each of the Ambisonics/spherical harmonic
    // decompositions of the loudspeakers HRTFs for the left ear. For the left ear the results of these convolutions
    // are summed to give the ear signal. For the right ear signal, the properties of the spherical harmonic decomposition
    // can be use to to create the ear signal. This is done by either adding or subtracting the correct channels.
    // Channels 1, 4, 5, 9, 10 and 11 are subtracted from the accumulated signal. All others are added.
    // For example, for a first order signal the ears are generated from:
    //     SignalL = W x HRTF_W + Y x HRTF_Y + Z x HRTF_Z + X x HRTF_X
    //     SignalR = W x HRTF_W - Y x HRTF_Y + Z x HRTF_Z + X x HRTF_X
    // where 'x' is a convolution, W/Y/Z/X are the Ambisonic signal channels and HRTF_x are the spherical harmonic
    // decompositions of the virtual loudspeaker array HRTFs.
    // This has the effect of assuming a completel symmetric head. */

    // /* TODO: This bool flag should be either an automatic or user option depending on CPU. It should be 'true' if
    // CPU load needs to be limited */
    // bool bLowCPU = false;
    // if(bLowCPU){
    //     // Perform the convolutions for the left ear and generate the right ear from a modified accumulation of these channels
    //     niEar = 0;
    //     memset(m_pfScratchBufferA.data(), 0, m_nFFTSize * sizeof(float));
    //     memset(m_pfScratchBufferC.data(), 0, m_nFFTSize * sizeof(float));
    //     for(niChannel = 0; niChannel < m_nChannelCount; niChannel++)
    //     {
    //         memcpy(m_pfScratchBufferB.data(), pBFSrc->m_ppfChannels[niChannel], m_nBlockSize * sizeof(float));
    //         memset(&m_pfScratchBufferB[m_nBlockSize], 0, (m_nFFTSize - m_nBlockSize) * sizeof(float));
    //         kiss_fftr(m_pFFT_cfg.get(), m_pfScratchBufferB.data(), m_pcpScratch.get());
    //         for(ni = 0; ni < m_nFFTBins; ni++)
    //         {
    //             cpTemp.r = m_pcpScratch[ni].r * m_ppcpFilters[niEar][niChannel][ni].r
    //                         - m_pcpScratch[ni].i * m_ppcpFilters[niEar][niChannel][ni].i;
    //             cpTemp.i = m_pcpScratch[ni].r * m_ppcpFilters[niEar][niChannel][ni].i
    //                         + m_pcpScratch[ni].i * m_ppcpFilters[niEar][niChannel][ni].r;
    //             m_pcpScratch[ni] = cpTemp;
    //         }
    //         kiss_fftri(m_pIFFT_cfg.get(), m_pcpScratch.get(), m_pfScratchBufferB.data());
    //         for(ni = 0; ni < m_nFFTSize; ni++)
    //             m_pfScratchBufferA[ni] += m_pfScratchBufferB[ni];

    //         for(ni = 0; ni < m_nFFTSize; ni++){
    //             // Subtract certain channels (such as Y) to generate right ear.
    //             if((niChannel==1) || (niChannel==4) || (niChannel==5) ||
    //                 (niChannel==9) || (niChannel==10)|| (niChannel==11))
    //             {
    //                 m_pfScratchBufferC[ni] -= m_pfScratchBufferB[ni];
    //             }
    //             else{
    //                 m_pfScratchBufferC[ni] += m_pfScratchBufferB[ni];
    //             }
    //         }
    //     }
    //     for(ni = 0; ni < m_nFFTSize; ni++){
    //         m_pfScratchBufferA[ni] *= m_fFFTScaler;
    //         m_pfScratchBufferC[ni] *= m_fFFTScaler;
    //     }
    //     memcpy(ppfDst[0], m_pfScratchBufferA.data(), m_nBlockSize * sizeof(float));
    //     memcpy(ppfDst[1], m_pfScratchBufferC.data(), m_nBlockSize * sizeof(float));
    //     for(ni = 0; ni < m_nOverlapLength; ni++){
    //         ppfDst[0][ni] += m_pfOverlap[0][ni];
    //         ppfDst[1][ni] += m_pfOverlap[1][ni];
    //     }
    //     memcpy(m_pfOverlap[0].data(), &m_pfScratchBufferA[m_nBlockSize], m_nOverlapLength * sizeof(float));
    //     memcpy(m_pfOverlap[1].data(), &m_pfScratchBufferC[m_nBlockSize], m_nOverlapLength * sizeof(float));
    // }
    // else
    // {
    //     // Perform the convolution on both ears. Potentially more realistic results but requires double the number of
    //     // convolutions.
    //     for(niEar = 0; niEar < 2; niEar++)
    //     {
    //         memset(m_pfScratchBufferA.data(), 0, m_nFFTSize * sizeof(float));
    //         for(niChannel = 0; niChannel < m_nChannelCount; niChannel++)
    //         {
    //             memcpy(m_pfScratchBufferB.data(), pBFSrc->m_ppfChannels[niChannel], m_nBlockSize * sizeof(float));
    //             memset(&m_pfScratchBufferB[m_nBlockSize], 0, (m_nFFTSize - m_nBlockSize) * sizeof(float));
    //             kiss_fftr(m_pFFT_cfg.get(), m_pfScratchBufferB.data(), m_pcpScratch.get());
    //             for(ni = 0; ni < m_nFFTBins; ni++)
    //             {
    //                 cpTemp.r = m_pcpScratch[ni].r * m_ppcpFilters[niEar][niChannel][ni].r
    //                             - m_pcpScratch[ni].i * m_ppcpFilters[niEar][niChannel][ni].i;
    //                 cpTemp.i = m_pcpScratch[ni].r * m_ppcpFilters[niEar][niChannel][ni].i
    //                             + m_pcpScratch[ni].i * m_ppcpFilters[niEar][niChannel][ni].r;
    //                 m_pcpScratch[ni] = cpTemp;
    //             }
    //             kiss_fftri(m_pIFFT_cfg.get(), m_pcpScratch.get(), m_pfScratchBufferB.data());
    //             for(ni = 0; ni < m_nFFTSize; ni++)
    //                 m_pfScratchBufferA[ni] += m_pfScratchBufferB[ni];
    //         }
    //         for(ni = 0; ni < m_nFFTSize; ni++)
    //             m_pfScratchBufferA[ni] *= m_fFFTScaler;
    //         memcpy(ppfDst[niEar], m_pfScratchBufferA.data(), m_nBlockSize * sizeof(float));
    //         for(ni = 0; ni < m_nOverlapLength; ni++)
    //             ppfDst[niEar][ni] += m_pfOverlap[niEar][ni];
    //         memcpy(m_pfOverlap[niEar].data(), &m_pfScratchBufferA[m_nBlockSize], m_nOverlapLength * sizeof(float));
    //     }
    // }


    float tempBufferA[m_nFFTSize];
    float tempBufferB[m_nFFTSize];
    float tempChannels[m_nChannelCount * BLOCK_SIZE];
    kiss_fftr_cfg tempFFT_cfg;
    kiss_fftr_cfg tempIFFT_cfg;
    kiss_fft_cpx tempScratch[m_nFFTBins];
    kiss_fft_cpx tempFilters[2 * m_nChannelCount * m_nFFTBins];
    float tempDst[2 * BLOCK_SIZE];
    float tempOverlap[2 * m_nOverlapLength];

    for (unsigned ni = 0; ni < m_nFFTBins; ni++) {
        tempScratch[ni] = m_pcpScratch[ni];
    }

    for (unsigned niEar = 0; niEar < 2; niEar++) {
        for(unsigned ni = 0; ni < m_nOverlapLength; ni++) {
            tempDst[niEar * BLOCK_SIZE + ni] = ppfDst[niEar][ni];
        }
    }

    for (unsigned niEar = 0; niEar < 2; niEar++) {
        for (unsigned niChannel = 0; niChannel < m_nChannelCount; niChannel++) {
            for(unsigned ni = 0; ni < m_nFFTBins; ni++) {
                tempFilters[niEar * m_nChannelCount * m_nFFTBins + niChannel * m_nFFTBins + ni] = m_ppcpFilters[niEar][niChannel][ni];
            }
        }
    }

    for (unsigned niEar = 0; niEar < 2; niEar++) {
        for (unsigned ni = 0; ni < m_nOverlapLength; ni++) {
            tempOverlap[niEar * m_nOverlapLength + ni] = m_pfOverlap[niEar][ni];
        }
    }

    tempFFT_cfg = m_pFFT_cfg.get();
    tempIFFT_cfg = m_pIFFT_cfg.get();

    std::cout << "size of m_pfScratchBufferA is: "<< m_nFFTSize * sizeof(float) << std::endl;
    std::cout << "size of m_pfScratchBufferB is: "<< m_nFFTSize * sizeof(float) << std::endl;
    std::cout << "size of m_pcpScratch is: "<< m_nFFTBins * sizeof(kiss_fft_cpx) << std::endl;
    std::cout << "size of m_ppcpFilters is: "<< 2 * m_nChannelCount * m_nFFTBins * sizeof(kiss_fft_cpx) << std::endl;
    std::cout << "size of m_pfOverlap is: "<< 2 * m_nOverlapLength * sizeof(float) << std::endl;
    std::cout << "size of tempChannels is: "<< m_nChannelCount * BLOCK_SIZE * sizeof(float) << std::endl;
    std::cout << "size of ppfDst is: "<< 2 * BLOCK_SIZE * sizeof(float) << std::endl;
    binauralizerProcess(tempBufferA, m_nFFTSize, m_nChannelCount,  tempBufferB, \
                         m_nBlockSize, tempFFT_cfg, tempScratch, m_nFFTBins, tempFilters, \
                         tempIFFT_cfg, m_nOverlapLength, tempOverlap, tempChannels, BLOCK_SIZE, tempDst, m_fFFTScaler);

    for (unsigned niEar = 0; niEar < 2; niEar++) {
        for(unsigned ni = 0; ni < m_nOverlapLength; ni++) {
            ppfDst[niEar][ni] = tempDst[niEar * BLOCK_SIZE + ni];
        }
    }

    for (unsigned niEar = 0; niEar < 2; niEar++) {
        for (unsigned ni = 0; ni < m_nOverlapLength; ni++) {
            m_pfOverlap[niEar][ni] = tempOverlap[niEar * m_nOverlapLength + ni];
        }
    }
}

void CAmbisonicBinauralizer::ArrangeSpeakers()
{
    unsigned nSpeakerSetUp;
    //How many speakers will be needed? Add one for right above the listener
    unsigned nSpeakers = OrderToSpeakers(m_nOrder, m_b3D);
    //Custom speaker setup
    // Select cube layout for first order a dodecahedron for 2nd and 3rd
    if (m_nOrder == 1)
    {
        #ifndef NDEBUG
            std::cout << "Getting first order cube" << std::endl;
        #endif
        nSpeakerSetUp = kAmblib_Cube2;
    }
    else
    {
        #ifndef NDEBUG
            std::cout << "Getting second/third order dodecahedron" << std::endl;
        #endif
        nSpeakerSetUp = kAmblib_Dodecahedron;
    }

    m_AmbDecoder.Configure(m_nOrder, m_b3D, nSpeakerSetUp, nSpeakers);

    //Calculate all the speaker coefficients
    m_AmbDecoder.Refresh();
}


HRTF *CAmbisonicBinauralizer::getHRTF(unsigned nSampleRate, std::string HRTFPath)
{
    HRTF *p_hrtf;

#ifdef HAVE_MYSOFA
# ifdef HAVE_MIT_HRTF
    if (HRTFPath == "")
        p_hrtf = new MIT_HRTF(nSampleRate);
    else
# endif
        p_hrtf = new SOFA_HRTF(HRTFPath, nSampleRate);
#else
# ifdef HAVE_MIT_HRTF
    p_hrtf = new MIT_HRTF(nSampleRate);
# else
# error At least MySOFA or MIT_HRTF need to be enabled
# endif
#endif

    if (p_hrtf == nullptr)
        return nullptr;

    if (!p_hrtf->isLoaded())
    {
        delete p_hrtf;
        return nullptr;
    }

    return p_hrtf;
}


void CAmbisonicBinauralizer::AllocateBuffers()
{
    //Allocate scratch buffers
    m_pfScratchBufferA.resize(m_nFFTSize);
    m_pfScratchBufferB.resize(m_nFFTSize);
    m_pfScratchBufferC.resize(m_nFFTSize);

    //Allocate overlap-add buffers
    m_pfOverlap[0].resize(m_nOverlapLength);
    m_pfOverlap[1].resize(m_nOverlapLength);

    //Allocate FFT and iFFT for new size
    m_pFFT_cfg.reset(kiss_fftr_alloc(m_nFFTSize, 0, 0, 0));
    m_pIFFT_cfg.reset(kiss_fftr_alloc(m_nFFTSize, 1, 0, 0));

    //Allocate the FFTBins for each channel, for each ear
    for(unsigned niEar = 0; niEar < 2; niEar++)
    {
        m_ppcpFilters[niEar].resize(m_nChannelCount);
        for(unsigned niChannel = 0; niChannel < m_nChannelCount; niChannel++)
            m_ppcpFilters[niEar][niChannel].reset(new kiss_fft_cpx[m_nFFTBins]);
    }

    m_pcpScratch.reset(new kiss_fft_cpx[m_nFFTBins]);
}

// Sound
ILLIXR_AUDIO::Sound::Sound(std::string srcFilename, unsigned nOrder, bool b3D){
    amp = 1.0;
    srcFile = new std::fstream(srcFilename, std::fstream::in);

    // NOTE: This is currently only accepts mono channel 16-bit depth WAV file
    // TODO: Change brutal read from wav file
    char temp[44];
    srcFile->read((char*)temp, 44);

    // BFormat file initialization
    BFormat = new CBFormat();
    bool ok = BFormat->Configure(nOrder, true, BLOCK_SIZE);
    BFormat->Refresh();

    // Encoder initialization
    BEncoder = new CAmbisonicEncoderDist();
    ok &= BEncoder->Configure(nOrder, true, SAMPLERATE);
    BEncoder->Refresh();
    srcPos.fAzimuth = 0;
    srcPos.fElevation = 0;
    srcPos.fDistance = 0;
    BEncoder->SetPosition(srcPos);
    BEncoder->Refresh();
}

void ILLIXR_AUDIO::Sound::setSrcPos(PolarPoint& pos){
    srcPos.fAzimuth = pos.fAzimuth;
    srcPos.fElevation = pos.fElevation;
    srcPos.fDistance = pos.fDistance;
    BEncoder->SetPosition(srcPos);
    BEncoder->Refresh();
}

void ILLIXR_AUDIO::Sound::setSrcAmp(float ampScale){
    amp = ampScale;
}

//TODO: Change brutal read from wav file
CBFormat* ILLIXR_AUDIO::Sound::readInBFormat(){
    short sampleTemp[BLOCK_SIZE];
    srcFile->read((char*)sampleTemp, BLOCK_SIZE * sizeof(short));
    // normalize samples to -1 to 1 float, with amplitude scale
    for (int i = 0; i < BLOCK_SIZE; ++i){
        sample[i] = amp * (sampleTemp[i] / 32767.0);
    }
    BEncoder->Process(sample, BLOCK_SIZE, BFormat);
    return BFormat;
}

ILLIXR_AUDIO::Sound::~Sound(){
    srcFile->close();
    delete srcFile;
    delete BFormat;
    delete BEncoder;
}


// ABAudio
ILLIXR_AUDIO::ABAudio::ABAudio(std::string outputFilePath, ProcessType procTypeIn){
    processType = procTypeIn;
    if (processType == ILLIXR_AUDIO::ABAudio::ProcessType::FULL){
        outputFile = new std::ofstream(outputFilePath, std::ios_base::out| std::ios_base::binary);
        generateWAVHeader();
    }

    soundSrcs = new std::vector<Sound*>;
    // binauralizer as ambisonics decoder
    decoder = new CAmbisonicBinauralizer();
    unsigned temp;
    bool ok = decoder->Configure(NORDER, true, SAMPLERATE, BLOCK_SIZE, temp);
    if (!ok){
        printf("Binauralizer Configuration failed!\n");
    }
    // Processor to rotate
    rotator = new CAmbisonicProcessor();
    rotator->Configure(NORDER, true, BLOCK_SIZE, 0);
    // Processor to zoom
    zoomer = new CAmbisonicZoomer();
    zoomer->Configure(NORDER, true, 0);
}

ILLIXR_AUDIO::ABAudio::~ABAudio(){
    if (processType == ILLIXR_AUDIO::ABAudio::ProcessType::FULL){
        free(outputFile);
    }
    for (unsigned int soundIdx = 0; soundIdx < soundSrcs->size(); ++soundIdx){
        free((*soundSrcs)[soundIdx]);
    }
    free(soundSrcs);
    free(decoder);
    free(rotator);
    free(zoomer);
}

void ILLIXR_AUDIO::ABAudio::loadSource(){
    // Add a bunch of sound sources
    Sound* inSound;
    PolarPoint position;

    if (processType == ILLIXR_AUDIO::ABAudio::ProcessType::FULL){
        inSound = new Sound("samples/lectureSample.wav", NORDER, true);
        position.fAzimuth = -0.1;
        position.fElevation = 3.14/2;
        position.fDistance = 1;
        inSound->setSrcPos(position);
        soundSrcs->push_back(inSound);
        inSound = new Sound("samples/radioMusicSample.wav", NORDER, true);
        position.fAzimuth = 1.0;
        position.fElevation = 0;
        position.fDistance = 5;
        inSound->setSrcPos(position);
        soundSrcs->push_back(inSound);
    }else{
        for (unsigned i = 0; i < NUM_SRCS; i++) {
            inSound = new Sound("samples/lectureSample.wav", NORDER, true);
            position.fAzimuth = -0.1 * i;
            position.fElevation = 3.14/2 * i;
            position.fDistance = 1 * i;
            inSound->setSrcPos(position);
            soundSrcs->push_back(inSound);
        }
    }
}

void ILLIXR_AUDIO::ABAudio::processBlock(){
    float** resultSample = new float*[2];
    resultSample[0] = new float[BLOCK_SIZE];
    resultSample[1] = new float[BLOCK_SIZE];

    // temporary BFormat file to sum up ambisonics
    CBFormat sumBF;
    sumBF.Configure(NORDER, true, BLOCK_SIZE);

    if (processType != ILLIXR_AUDIO::ABAudio::ProcessType::DECODE){
        readNEncode(sumBF);
    }
    if (processType != ILLIXR_AUDIO::ABAudio::ProcessType::ENCODE){
        // processing garbage data if just decoding
        rotateNZoom(sumBF);
        decoder->Process(&sumBF, resultSample);
    }

    if (processType == ILLIXR_AUDIO::ABAudio::ProcessType::FULL){
        writeFile(resultSample);
    }

    delete[] resultSample[0];
    delete[] resultSample[1];
    delete[] resultSample;
}

// Read from WAV files and encode into ambisonics format
void ILLIXR_AUDIO::ABAudio::readNEncode(CBFormat& sumBF){
    CBFormat* tempBF;
    for (unsigned int soundIdx = 0; soundIdx < soundSrcs->size(); ++soundIdx){
        tempBF = (*soundSrcs)[soundIdx]->readInBFormat();
        if (soundIdx == 0)
            sumBF = *tempBF;
        else
           sumBF += *tempBF;
   }
}

// Simple rotation
void ILLIXR_AUDIO::ABAudio::updateRotation(){
	static int frame = 0;
	frame++;
	Orientation head(0,0,1.0*frame/1500*3.14*2);
	rotator->SetOrientation(head);
	rotator->Refresh();
}
// Simple zoom
void ILLIXR_AUDIO::ABAudio::updateZoom(){
	static int frame = 0;
	frame++;
	zoomer->SetZoom(sinf(frame/100));
	zoomer->Refresh();
}
// Process some rotation and zoom effects
void ILLIXR_AUDIO::ABAudio::rotateNZoom(CBFormat& sumBF){
	updateRotation();
	rotator->Process(&sumBF, BLOCK_SIZE);
	updateZoom();
	zoomer->Process(&sumBF, BLOCK_SIZE);
}

void ILLIXR_AUDIO::ABAudio::writeFile(float** resultSample){
	// Normalize(Clipping), then write into file
	for(int sampleIdx = 0; sampleIdx < BLOCK_SIZE; ++sampleIdx){
		resultSample[0][sampleIdx] = std::max(std::min(resultSample[0][sampleIdx], +1.0f), -1.0f);
		resultSample[1][sampleIdx] = std::max(std::min(resultSample[1][sampleIdx], +1.0f), -1.0f);
		int16_t tempSample0 = (int16_t)(resultSample[0][sampleIdx]/1.0 * 32767);
		int16_t tempSample1 = (int16_t)(resultSample[1][sampleIdx]/1.0 * 32767);
		outputFile->write((char*)&tempSample0,sizeof(short));
		outputFile->write((char*)&tempSample1,sizeof(short));
	}
}

namespace ILLIXR_AUDIO{
    // NOTE: WAV FILE SIZE is not correct
    typedef struct __attribute__ ((packed)) WAVHeader_t
    {
    	unsigned int sGroupID = 0x46464952;
    	unsigned int dwFileLength = 48000000;		// A large enough random number
    	unsigned int sRiffType = 0x45564157;
    	unsigned int subchunkID = 0x20746d66;
    	unsigned int subchunksize = 16;
    	unsigned short audioFormat = 1;
    	unsigned short NumChannels = 2;
    	unsigned int SampleRate = 48000;
    	unsigned int byteRate = 48000*2*2;
    	unsigned short BlockAlign = 2*2;
    	unsigned short BitsPerSample = 16;
    	unsigned int dataChunkID = 0x61746164;	
    	unsigned int dataChunkSize = 48000000;		// A large enough random number
    } WAVHeader;
}
void ILLIXR_AUDIO::ABAudio::generateWAVHeader(){
	// brute force wav header
	WAVHeader wavh;
	outputFile->write((char*)&wavh, sizeof(WAVHeader));
}

// main
int main(int argc, char const *argv[])
{
    using namespace ILLIXR_AUDIO;

    if (argc < 2) {
		std::cout << "Usage: " << argv[0] << " <number of size 1024 blocks to process> ";
		std::cout << "<optional: encode/decode>\n";
		std::cout << "Note: If you want to hear the output sound, limit the process sample blocks so that the output is not longer than input!\n";
        return 1;
    }

    const int numBlocks = atoi(argv[1]);
    ABAudio::ProcessType procType(ABAudio::ProcessType::FULL);
    if (argc > 2){
        if (!strcmp(argv[2], "encode"))
            procType = ABAudio::ProcessType::ENCODE;
        else
            procType = ABAudio::ProcessType::DECODE;
    }

    // This is the code from the latest branch
    // ABAudio::ProcessType procencode(ABAudio::ProcessType::ENCODE);
    // ABAudio::ProcessType procdecode(ABAudio::ProcessType::DECODE);
    // ABAudio encoder("", procencode);
    // ABAudio decoder("", procdecode);
    // encoder.loadSource();
    // decoder.loadSource();
    // std::ofstream outputFile;
    // outputFile.open("audio_timing_solo.txt");
    // std::chrono::time_point<std::chrono::system_clock> blockStart, blockFinish;
    // for (int i = 0; i < 7200; ++i){
    //     blockStart = std::chrono::high_resolution_clock::now();
    //     encoder.processBlock();
    //     decoder.processBlock();
    //     blockFinish = std::chrono::high_resolution_clock::now();
    //     outputFile << std::chrono::duration_cast<std::chrono::milliseconds>(blockFinish - blockStart).count() << std::endl;
    // }

    // This is the code from the master branch
    ABAudio audio("", procType);
    audio.loadSource();
    for (int i = 0; i < numBlocks; ++i){
        audio.processBlock();
    }

    return 0;
}
