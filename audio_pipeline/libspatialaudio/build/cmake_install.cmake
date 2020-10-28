# Install script for directory: /home/yingj4/Desktop/master_new_new/ILLIXR/audio_pipeline/libspatialaudio

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/yingj4/Desktop/master_new_new/ILLIXR/audio_pipeline/libspatialaudio/build/Release")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/yingj4/Desktop/master_new_new/ILLIXR/audio_pipeline/libspatialaudio/build/libspatialaudio.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libspatialaudio.so.0.3.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libspatialaudio.so.0"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/yingj4/Desktop/master_new_new/ILLIXR/audio_pipeline/libspatialaudio/build/libspatialaudio.so.0.3.0"
    "/home/yingj4/Desktop/master_new_new/ILLIXR/audio_pipeline/libspatialaudio/build/libspatialaudio.so.0"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libspatialaudio.so.0.3.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libspatialaudio.so.0"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libspatialaudio.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libspatialaudio.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libspatialaudio.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/yingj4/Desktop/master_new_new/ILLIXR/audio_pipeline/libspatialaudio/build/libspatialaudio.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libspatialaudio.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libspatialaudio.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libspatialaudio.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/spatialaudio" TYPE FILE FILES
    "/home/yingj4/Desktop/master_new_new/ILLIXR/audio_pipeline/libspatialaudio/include/AmbisonicBase.h"
    "/home/yingj4/Desktop/master_new_new/ILLIXR/audio_pipeline/libspatialaudio/include/AmbisonicDecoderPresets.h"
    "/home/yingj4/Desktop/master_new_new/ILLIXR/audio_pipeline/libspatialaudio/include/AmbisonicProcessor.h"
    "/home/yingj4/Desktop/master_new_new/ILLIXR/audio_pipeline/libspatialaudio/include/AmbisonicSpeaker.h"
    "/home/yingj4/Desktop/master_new_new/ILLIXR/audio_pipeline/libspatialaudio/include/AmbisonicBinauralizer.h"
    "/home/yingj4/Desktop/master_new_new/ILLIXR/audio_pipeline/libspatialaudio/include/AmbisonicEncoderDist.h"
    "/home/yingj4/Desktop/master_new_new/ILLIXR/audio_pipeline/libspatialaudio/include/AmbisonicPsychoacousticFilters.h"
    "/home/yingj4/Desktop/master_new_new/ILLIXR/audio_pipeline/libspatialaudio/include/AmbisonicTypesDefinesCommons.h"
    "/home/yingj4/Desktop/master_new_new/ILLIXR/audio_pipeline/libspatialaudio/include/SpeakersBinauralizer.h"
    "/home/yingj4/Desktop/master_new_new/ILLIXR/audio_pipeline/libspatialaudio/include/AmbisonicCommons.h"
    "/home/yingj4/Desktop/master_new_new/ILLIXR/audio_pipeline/libspatialaudio/include/AmbisonicEncoder.h"
    "/home/yingj4/Desktop/master_new_new/ILLIXR/audio_pipeline/libspatialaudio/include/Ambisonics.h"
    "/home/yingj4/Desktop/master_new_new/ILLIXR/audio_pipeline/libspatialaudio/include/AmbisonicZoomer.h"
    "/home/yingj4/Desktop/master_new_new/ILLIXR/audio_pipeline/libspatialaudio/include/mit_hrtf_filter.h"
    "/home/yingj4/Desktop/master_new_new/ILLIXR/audio_pipeline/libspatialaudio/include/AmbisonicDecoder.h"
    "/home/yingj4/Desktop/master_new_new/ILLIXR/audio_pipeline/libspatialaudio/include/AmbisonicMicrophone.h"
    "/home/yingj4/Desktop/master_new_new/ILLIXR/audio_pipeline/libspatialaudio/include/AmbisonicSource.h"
    "/home/yingj4/Desktop/master_new_new/ILLIXR/audio_pipeline/libspatialaudio/include/BFormat.h"
    "/home/yingj4/Desktop/master_new_new/ILLIXR/audio_pipeline/libspatialaudio/include/mit_hrtf_lib.h"
    "/home/yingj4/Desktop/master_new_new/ILLIXR/audio_pipeline/libspatialaudio/include/hrtf/hrtf.h"
    "/home/yingj4/Desktop/master_new_new/ILLIXR/audio_pipeline/libspatialaudio/include/hrtf/mit_hrtf.h"
    "/home/yingj4/Desktop/master_new_new/ILLIXR/audio_pipeline/libspatialaudio/include/hrtf/sofa_hrtf.h"
    "/home/yingj4/Desktop/master_new_new/ILLIXR/audio_pipeline/libspatialaudio/include/normal/mit_hrtf_normal_44100.h"
    "/home/yingj4/Desktop/master_new_new/ILLIXR/audio_pipeline/libspatialaudio/include/normal/mit_hrtf_normal_48000.h"
    "/home/yingj4/Desktop/master_new_new/ILLIXR/audio_pipeline/libspatialaudio/include/normal/mit_hrtf_normal_88200.h"
    "/home/yingj4/Desktop/master_new_new/ILLIXR/audio_pipeline/libspatialaudio/include/normal/mit_hrtf_normal_96000.h"
    "/home/yingj4/Desktop/master_new_new/ILLIXR/audio_pipeline/libspatialaudio/source/kiss_fft/kiss_fftr.h"
    "/home/yingj4/Desktop/master_new_new/ILLIXR/audio_pipeline/libspatialaudio/source/kiss_fft/kiss_fft.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/yingj4/Desktop/master_new_new/ILLIXR/audio_pipeline/libspatialaudio/build/spatialaudio.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/spatialaudio" TYPE FILE FILES "/home/yingj4/Desktop/master_new_new/ILLIXR/audio_pipeline/libspatialaudio/build/config.h")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/yingj4/Desktop/master_new_new/ILLIXR/audio_pipeline/libspatialaudio/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
