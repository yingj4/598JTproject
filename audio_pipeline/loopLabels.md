# Loop Labels and Their Classes

This file contains the loop labels and their classes. The first column indicates their classes, the second column is for the functions that the loops are in, the third column shows the loop names, and the fourth column tells whether we should do unrolling or pipelining (U or P).
In `BFormat`, there are function overloading with `+=`, `-=`, `*=`, and `/=` operators. The first four rows are for `operator +=(CBFormat&)` etc, and the next four rows are for `operator +=(float&)` etc.
There is only one loop that we must do pipelining: `Binauralizer-loopBproc1`.

| Class Name | Function in the Class | Loop Name | U or P |
|------------|-----------------------|-----------|-------------------------|
| BFormat | operator += | loopAa | U |
| BFormat | operator -= | loopNa | U |
| BFormat | operator \*=| loopMa | U |
| BFormat | operator \= | loopDa | U |
| BFormat | operator += | loopAb | U |
| BFormat | operator -= | loopNb | U |
| BFormat | operator \*=| loopMb | U |
| BFormat | operator \= | loopDb | U |

