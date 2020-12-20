#!/usr/bin/env python
import os
import sys

kernels = {
'triad' : 'triad',
}

def main (directory, source):

  if not 'TRACER_HOME' in os.environ:
    raise Exception('Set TRACER_HOME directory as an environment variable')
  if not 'LLVM_HOME' in os.environ:
    raise Exception('Set LLVM_HOME directory as an environment variable')

  os.chdir(directory)
  obj = source + '.llvm'
  opt_obj = source + '-opt.llvm'
  executable = source + '-instrumented'
  os.environ['WORKLOAD']=kernels[source]

  TRACER_HOME = os.getenv('TRACER_HOME')
  LLVM_HOME = os.getenv('TRACER_HOME')

  source_file = source + '.cpp'
  # os.system('%s/bin/get-labeled-stmts triad.c -- -I%s/lib/clang/3.4' % (TRACER_HOME, LLVM_HOME))
  os.system('%s/ast-pass/get-labeled-stmts triad.c -- -I%s/lib/clang/6.0.1/include -I./include -I./libspatialaudio/build/Release/include/spatialaudio/' % (TRACER_HOME, LLVM_HOME))
  # os.system('clang -static -g -O1 -S -fno-slp-vectorize -fno-vectorize ' + \
  #           ' -fno-unroll-loops -fno-inline -fno-builtin -emit-llvm -o ' + \
  #           obj + ' '  + source_file)
  os.system(('%s/bin/clang++ -static -g -O1 -S -fno-slp-vectorize -fno-vectorize ' + \
            ' -fno-unroll-loops -fno-inline -emit-llvm -o ' + \
            obj + ' '  + source_file + '-I./libspatialaudio/build/Release/include/spatialaudio/ -I./include') % (LLVM_HOME))
  # os.system('opt -disable-inlining -S -load=' + TRACER_HOME + \
  #           '/lib/full_trace.so -fulltrace -labelmapwriter ' + obj + ' -o ' + opt_obj)
  os.system(('%s/bin/opt -disable-inlining -S -load=' + TRACER_HOME + \
            '%s/full-trace/full_trace.so -fulltrace -labelmapwriter ' + obj + ' -o ' + opt_obj) % (LLVM_HOME, TRACER_HOME))
  # os.system('llvm-link -o full.llvm ' + opt_obj + ' ' + \
  #           TRACER_HOME + '/lib/trace_logger.llvm')
  os.system(('%s/bin/llvm-link -o full.llvm ' + opt_obj + ' ' + \
            TRACER_HOME + '/profile-func/trace_logger.llvm') % (LLVM_HOME))
  # os.system('llc -O0 -disable-fp-elim -filetype=asm -o full.s full.llvm')
  os.system(('%s/bin/llc -O0 -disable-fp-elim -filetype=asm -o full.s full.llvm') % (LLVM_HOME))
  # os.system('gcc -static -O0 -fno-inline -o ' + executable + ' full.s -lm -lz')
  os.system('g++ -static -O0 -fno-inline -o ' + executable + ' full.s -lm -lz -no-pie -lpthread')
  os.system('./' + executable)

if __name__ == '__main__':
  directory = sys.argv[1]
  source = sys.argv[2]
  print directory, source
  main(directory, source)
