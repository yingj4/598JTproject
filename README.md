# CS 598 JT Course Project
This is the project for CS 598 JT in Fall 2020. It aims to analyze the power-performance tradeoff of the audio component in ILLIXR.
This project is based on [ILLIXR](https://github.com/ILLIXR/ILLIXR), [LLVM-Tracer](https://github.com/harvard-acc/LLVM-Tracer), and [Aladdin](https://github.com/harvard-acc/ALADDIN).
## Source code
The output generated from LLVM-Tracer is in `./audio-pipeline/llvm-tracer`.
The binary executable is `./audio-pipeline/audio`.
The binary executable also requires input for the number of input blocks and the operating mode. The operating mode includes `encode` and `decode`. For example, if you want to run audio encoding with 500 blocks, you should run
```
./audio-pipeline/audio 500 encode
```
