# Loop Labels and Their Function Calls

This file contains the loop labels and their function calls. The first column indicates whether it is encoding or decoding, the second column indicates their function calls, the third column shows the loop names, and the fourth column tells whether we should do unrolling or pipelining (U or P).

| Encode / Decode | Function Name | Loop Name | U or P |
|-----------------|---------------|-----------|--------|
| Encode | encoderDistProcess | loopEDproc1 | P |
| Encode | encoderDistProcess | loopEDproc2 | U |
|--|--|--|--|
| Decode | processOrder1 | loopROa | U |
|--|--|--|--|
| Decode | processOrder2 | loopROb | U |
|--|--|--|--|
| Decode | processOrder3 | loopROc | U |
|--|--|--|--|
| Decode | processorFilter | loopFil1 | P |
| Decode | processorFilter | loopFil2 | P |
| Decode | processorFilter | loopFil3 | P |
| Decode | processorFilter | loopFil4 | P |
|--|--|--|--|
| Decode | zoomerProcess | loopZproc1 | P |
| Decode | zoomerProcess | loopZproc2 | P |
| Decode | zoomerProcess | loopZproc3 | U |
|--|--|--|--|
| Decode | binauralizerProcess | loopBproc1 | P |
| Decode | binauralizerProcess | loopBproc2 | P |
| Decode | binauralizerProcess | loopBproc3 | U |
| Decode | binauralizerProcess | loopBproc4 | P |
| Decode | binauralizerProcess | loopBproc5 | P |
| Decode | binauralizerProcess | loopBproc6 | P |
