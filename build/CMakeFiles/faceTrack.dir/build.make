# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/workspace/capstone

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/workspace/capstone/build

# Include any dependencies generated for this target.
include CMakeFiles/faceTrack.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/faceTrack.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/faceTrack.dir/flags.make

CMakeFiles/faceTrack.dir/src/main.cpp.o: CMakeFiles/faceTrack.dir/flags.make
CMakeFiles/faceTrack.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/workspace/capstone/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/faceTrack.dir/src/main.cpp.o"
	/usr/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/faceTrack.dir/src/main.cpp.o -c /home/workspace/capstone/src/main.cpp

CMakeFiles/faceTrack.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/faceTrack.dir/src/main.cpp.i"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/workspace/capstone/src/main.cpp > CMakeFiles/faceTrack.dir/src/main.cpp.i

CMakeFiles/faceTrack.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/faceTrack.dir/src/main.cpp.s"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/workspace/capstone/src/main.cpp -o CMakeFiles/faceTrack.dir/src/main.cpp.s

CMakeFiles/faceTrack.dir/src/face.cpp.o: CMakeFiles/faceTrack.dir/flags.make
CMakeFiles/faceTrack.dir/src/face.cpp.o: ../src/face.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/workspace/capstone/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/faceTrack.dir/src/face.cpp.o"
	/usr/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/faceTrack.dir/src/face.cpp.o -c /home/workspace/capstone/src/face.cpp

CMakeFiles/faceTrack.dir/src/face.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/faceTrack.dir/src/face.cpp.i"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/workspace/capstone/src/face.cpp > CMakeFiles/faceTrack.dir/src/face.cpp.i

CMakeFiles/faceTrack.dir/src/face.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/faceTrack.dir/src/face.cpp.s"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/workspace/capstone/src/face.cpp -o CMakeFiles/faceTrack.dir/src/face.cpp.s

CMakeFiles/faceTrack.dir/src/crossHair.cpp.o: CMakeFiles/faceTrack.dir/flags.make
CMakeFiles/faceTrack.dir/src/crossHair.cpp.o: ../src/crossHair.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/workspace/capstone/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/faceTrack.dir/src/crossHair.cpp.o"
	/usr/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/faceTrack.dir/src/crossHair.cpp.o -c /home/workspace/capstone/src/crossHair.cpp

CMakeFiles/faceTrack.dir/src/crossHair.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/faceTrack.dir/src/crossHair.cpp.i"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/workspace/capstone/src/crossHair.cpp > CMakeFiles/faceTrack.dir/src/crossHair.cpp.i

CMakeFiles/faceTrack.dir/src/crossHair.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/faceTrack.dir/src/crossHair.cpp.s"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/workspace/capstone/src/crossHair.cpp -o CMakeFiles/faceTrack.dir/src/crossHair.cpp.s

# Object files for target faceTrack
faceTrack_OBJECTS = \
"CMakeFiles/faceTrack.dir/src/main.cpp.o" \
"CMakeFiles/faceTrack.dir/src/face.cpp.o" \
"CMakeFiles/faceTrack.dir/src/crossHair.cpp.o"

# External object files for target faceTrack
faceTrack_EXTERNAL_OBJECTS =

faceTrack: CMakeFiles/faceTrack.dir/src/main.cpp.o
faceTrack: CMakeFiles/faceTrack.dir/src/face.cpp.o
faceTrack: CMakeFiles/faceTrack.dir/src/crossHair.cpp.o
faceTrack: CMakeFiles/faceTrack.dir/build.make
faceTrack: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_stitching3.so.3.3.1
faceTrack: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_superres3.so.3.3.1
faceTrack: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_videostab3.so.3.3.1
faceTrack: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_aruco3.so.3.3.1
faceTrack: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_bgsegm3.so.3.3.1
faceTrack: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_bioinspired3.so.3.3.1
faceTrack: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_ccalib3.so.3.3.1
faceTrack: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_cvv3.so.3.3.1
faceTrack: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_dpm3.so.3.3.1
faceTrack: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_face3.so.3.3.1
faceTrack: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_fuzzy3.so.3.3.1
faceTrack: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_hdf3.so.3.3.1
faceTrack: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_img_hash3.so.3.3.1
faceTrack: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_line_descriptor3.so.3.3.1
faceTrack: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_optflow3.so.3.3.1
faceTrack: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_reg3.so.3.3.1
faceTrack: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_rgbd3.so.3.3.1
faceTrack: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_saliency3.so.3.3.1
faceTrack: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_stereo3.so.3.3.1
faceTrack: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_structured_light3.so.3.3.1
faceTrack: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_surface_matching3.so.3.3.1
faceTrack: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_tracking3.so.3.3.1
faceTrack: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_xfeatures2d3.so.3.3.1
faceTrack: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_ximgproc3.so.3.3.1
faceTrack: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_xobjdetect3.so.3.3.1
faceTrack: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_xphoto3.so.3.3.1
faceTrack: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_shape3.so.3.3.1
faceTrack: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_photo3.so.3.3.1
faceTrack: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_datasets3.so.3.3.1
faceTrack: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_plot3.so.3.3.1
faceTrack: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_text3.so.3.3.1
faceTrack: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_dnn3.so.3.3.1
faceTrack: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_ml3.so.3.3.1
faceTrack: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_video3.so.3.3.1
faceTrack: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_calib3d3.so.3.3.1
faceTrack: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_features2d3.so.3.3.1
faceTrack: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_highgui3.so.3.3.1
faceTrack: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_videoio3.so.3.3.1
faceTrack: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_viz3.so.3.3.1
faceTrack: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_phase_unwrapping3.so.3.3.1
faceTrack: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_flann3.so.3.3.1
faceTrack: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_imgcodecs3.so.3.3.1
faceTrack: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_objdetect3.so.3.3.1
faceTrack: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_imgproc3.so.3.3.1
faceTrack: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_core3.so.3.3.1
faceTrack: CMakeFiles/faceTrack.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/workspace/capstone/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable faceTrack"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/faceTrack.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/faceTrack.dir/build: faceTrack

.PHONY : CMakeFiles/faceTrack.dir/build

CMakeFiles/faceTrack.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/faceTrack.dir/cmake_clean.cmake
.PHONY : CMakeFiles/faceTrack.dir/clean

CMakeFiles/faceTrack.dir/depend:
	cd /home/workspace/capstone/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/workspace/capstone /home/workspace/capstone /home/workspace/capstone/build /home/workspace/capstone/build /home/workspace/capstone/build/CMakeFiles/faceTrack.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/faceTrack.dir/depend

