# Loop Labels and Their Classes

This file contains the loop labels and their classes. The first column indicates their classes, the second column is for the functions that the loops are in, the third column shows the loop names, and the fourth column tells whether we should do unrolling or pipelining (U or P).

In `BFormat`, there are function overloading with `+=`, `-=`, `*=`, and `/=` operators. The first four rows are for `operator +=(CBFormat&)` etc, and the next four rows are for `operator +=(float&)` etc.

There is only one loop that we must do pipelining: `Binauralizer-loopBproc1`.

| Class Name | Function in the Class | Loop Name | U or P |
|------------|-----------------------|-----------|-------------------------|
| BFormat | operator += | loopAa | U |
| BFormat | operator -= | loopNa | U |
| BFormat | operator \*=| loopMa | U |
| BFormat | operator \\=| loopDa | U |
| BFormat | operator += | loopAb | U |
| BFormat | operator -= | loopNb | U |
| BFormat | operator \*=| loopMb | U |
| BFormat | operator \\=| loopDb | U |
| Processor | Configure | loopPconfa | U |
| Processor | Configure | loopPconfb | U |
| Processor | Configure | loopPconfc | U |
| Processor | Configure | loopPconfd | U |
| Processor | RotateOrder1_3D | loopROa | U |
| Processor | RotateOrder2_3D | loopROb | U |
| Processor | RotateOrder3_3D | loopROc | U |
| Processor | ShelfFilter | loopFil | U |
| Encoder | Process | loopEproc | U |
| EncoderDist | Process | loopEDproc | U |
| Speaker | Process | loopSproc | U |
| Zoomer | Process | loopZproc | U |
| Binauralizer | Process | loopBproc1 | P |
| Binauralizer | Process | loopBproc2 | U |
| Binauralizer | Process | loopBproc3 | U |
| Binauralizer | Process | loopBproc4 | U |
| Binauralizer | Process | loopBproc5 | U |
| Binauralizer | Process | loopBproc6 | U |
| Binauralizer | Configure | loopBconf1 | U |
| Binauralizer | Configure | loopBconf2 | U |
| Binauralizer | Configure | loopBconf3 | U |
| Binauralizer | Configure | loopBconf4 | U |
| Binauralizer | Configure | loopBconf5,6, ... | U |
| Binauralizer | Configure | loopBconf16 | U |
| Binauralizer | AllocateBuffers | loopBalloc | U |
