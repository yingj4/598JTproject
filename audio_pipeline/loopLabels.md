# Loop Labels and Their Classes

This file contains the loop labels and their function calls. The first column indicates whether it is encoding or decoding, the second column indicates their function calls, the third column shows the loop names, and the fourth column tells whether we should do unrolling or pipelining (U or P).

| Encode / Decode | Function Name | Loop Name | U or P |
|-----------------|---------------|-----------|--------|
| Encode | encoderDistProcess | loopEDproc1 | P |
| Encode | encoderDistProcess | loopEDproc2 | U |
|--|--|--|
| Decode | processOrder1 | loopROa | U |
|  |  |  |
| Decode | processOrder2 | loopROb | U |
|  |  |  |
| Decode | processOrder3 | loopROc | U |
|  |  |  |
