# CS 598 JT Course Project
This is the project for CS 598 JT in Fall 2020. It aims to analyze the power-performance tradeoff of the audio component in ILLIXR.
This project is based on [ILLIXR](https://github.com/ILLIXR/ILLIXR), [LLVM-Tracer](https://github.com/harvard-acc/LLVM-Tracer), and [Aladdin](https://github.com/harvard-acc/ALADDIN).
## Source Code
The output files generated from LLVM-Tracer are those end with `llvm` and 's'. The files in `./audio_pipeline/llvm-tracer-label-1/` and `./audio_pipeline/llvm-tracer-no-label/` are the stale ones we generated when doing this project.
The binary executable is also an output. It is `./audio_pipeline/main-single`.
## Experiment Steps
The binary executable also requires input for the number of input blocks and the operating mode. The operating mode includes `encode` and `decode`. For example, if you want to run audio encoding with 500 blocks, you should run
```
./audio_pipeline/main-single 500 encode
```
If your third input argument is not `encode`, it will do audio decoding automatically. If you do not have a third argument, it will perform encoding and then decoding.
The output of the above command is `dynamic_trace.gz`. This trace file should be further fed into Aladdin with configuration parameters. Then you should be able to see the power and timing values.
