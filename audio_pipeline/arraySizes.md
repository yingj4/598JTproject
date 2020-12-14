# Array Sizes and Their Function Calls

This file contains the array sizes and their function calls. The first column indicates whether it is encoding or decoding, the second column indicates their function calls, the third column shows the array names, the fourth function tells the total size of the array, and the final column is the size of a single element in the array.<br />
 The size of a float is 4B, the size of a kiss_fft_cpx structure is 8B, and the size of a kiss_fftr_state structure is 24B.<br />
The size of the array and the size of a single element in the array are used for Aladdin configuration.

| Encode / Decode | Function Name | Array Name | Total Size | Element size |
|-----------------|---------------|------------|------------|--------------|
| Encode | encoderDistProcess | m_pfDelayBuffer | 83720 | 4 |
| Encode | encoderDistProcess | pfSrc | 4096 | 4 |
| Encode | encoderDistProcess | m_pfCoeff | 64 | 4 |
| Encode | encoderDistProcess | tempChannels | 65536 | 4 |
|--|--|--|--|--|
| Decode | processOrder1 | tempChannels | 12288 | 4 |
|--|--|--|--|--|
| Decode | processOrder2 | tempChannels | 20480 | 4 |
|--|--|--|--|--|
| Decode | processOrder3 | tempChannels | 28672 | 4 |
|--|--|--|--|--|
| Decode | processorFilter | m_pfScratchBufferA | 8192 | 4 |
| Decode | processorFilter | tempChannels | 65536 | 4 |
| Decode | processorFilter | m_pfOverlap | 6400 | 4 |
| Decode | processorFilter | m_ppcpPsychFilters | 32800 | 8 |
| Decode | processorFilter | m_pcpScratch | 8200 | 8 |
| Decode | processorFilter | m_pFFT_psych_cfg | 24 | 24 |
| Decode | processorFilter | m_pIFFT_psych_cfg | 24 | 24 |
|--|--|--|--|--|
| Decode | zoomerProcess | tempChannels | 65536 | 4 |
| Decode | zoomerProcess | m_AmbEncoderFront_weighted | 64 | 4 |
| Decode | zoomerProcess | m_AmbEncoderFront | 64 | 4 |
|--|--|--|--|--|
| Decode | binauralizerProcess | m_pfScratchBufferA | 8192 | 4 |
| Decode | binauralizerProcess | m_pfScratchBufferB | 8192 | 4 |
| Decode | binauralizerProcess | m_pcpScratch | 8200 | 8 |
| Decode | binauralizerProcess | m_ppcpFilters | 262400 | 8 |
| Decode | binauralizerProcess | m_pfOverlap | 1112 | 4 |
| Decode | binauralizerProcess | tempChannels | 65536 | 4 |
| Decode | binauralizerProcess | ppfDst | 8192 | 4 |
| Decode | binauralizerProcess | m_pFFT_cfg | 24 | 24 |
| Decode | binauralizerProcess | m_pIFFT_cfg | 24 | 24 |
