# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/gaurav/QuickSort/googletest

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/gaurav/QuickSort/googletest/build

# Include any dependencies generated for this target.
include googletest/CMakeFiles/sample1_unittest.dir/depend.make

# Include the progress variables for this target.
include googletest/CMakeFiles/sample1_unittest.dir/progress.make

# Include the compile flags for this target's objects.
include googletest/CMakeFiles/sample1_unittest.dir/flags.make

googletest/CMakeFiles/sample1_unittest.dir/samples/sample1_unittest.cc.o: googletest/CMakeFiles/sample1_unittest.dir/flags.make
googletest/CMakeFiles/sample1_unittest.dir/samples/sample1_unittest.cc.o: ../googletest/samples/sample1_unittest.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gaurav/QuickSort/googletest/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object googletest/CMakeFiles/sample1_unittest.dir/samples/sample1_unittest.cc.o"
	cd /home/gaurav/QuickSort/googletest/build/googletest && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sample1_unittest.dir/samples/sample1_unittest.cc.o -c /home/gaurav/QuickSort/googletest/googletest/samples/sample1_unittest.cc

googletest/CMakeFiles/sample1_unittest.dir/samples/sample1_unittest.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sample1_unittest.dir/samples/sample1_unittest.cc.i"
	cd /home/gaurav/QuickSort/googletest/build/googletest && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gaurav/QuickSort/googletest/googletest/samples/sample1_unittest.cc > CMakeFiles/sample1_unittest.dir/samples/sample1_unittest.cc.i

googletest/CMakeFiles/sample1_unittest.dir/samples/sample1_unittest.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sample1_unittest.dir/samples/sample1_unittest.cc.s"
	cd /home/gaurav/QuickSort/googletest/build/googletest && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gaurav/QuickSort/googletest/googletest/samples/sample1_unittest.cc -o CMakeFiles/sample1_unittest.dir/samples/sample1_unittest.cc.s

googletest/CMakeFiles/sample1_unittest.dir/samples/sample1_unittest.cc.o.requires:

.PHONY : googletest/CMakeFiles/sample1_unittest.dir/samples/sample1_unittest.cc.o.requires

googletest/CMakeFiles/sample1_unittest.dir/samples/sample1_unittest.cc.o.provides: googletest/CMakeFiles/sample1_unittest.dir/samples/sample1_unittest.cc.o.requires
	$(MAKE) -f googletest/CMakeFiles/sample1_unittest.dir/build.make googletest/CMakeFiles/sample1_unittest.dir/samples/sample1_unittest.cc.o.provides.build
.PHONY : googletest/CMakeFiles/sample1_unittest.dir/samples/sample1_unittest.cc.o.provides

googletest/CMakeFiles/sample1_unittest.dir/samples/sample1_unittest.cc.o.provides.build: googletest/CMakeFiles/sample1_unittest.dir/samples/sample1_unittest.cc.o


googletest/CMakeFiles/sample1_unittest.dir/samples/sample1.cc.o: googletest/CMakeFiles/sample1_unittest.dir/flags.make
googletest/CMakeFiles/sample1_unittest.dir/samples/sample1.cc.o: ../googletest/samples/sample1.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gaurav/QuickSort/googletest/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object googletest/CMakeFiles/sample1_unittest.dir/samples/sample1.cc.o"
	cd /home/gaurav/QuickSort/googletest/build/googletest && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sample1_unittest.dir/samples/sample1.cc.o -c /home/gaurav/QuickSort/googletest/googletest/samples/sample1.cc

googletest/CMakeFiles/sample1_unittest.dir/samples/sample1.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sample1_unittest.dir/samples/sample1.cc.i"
	cd /home/gaurav/QuickSort/googletest/build/googletest && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gaurav/QuickSort/googletest/googletest/samples/sample1.cc > CMakeFiles/sample1_unittest.dir/samples/sample1.cc.i

googletest/CMakeFiles/sample1_unittest.dir/samples/sample1.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sample1_unittest.dir/samples/sample1.cc.s"
	cd /home/gaurav/QuickSort/googletest/build/googletest && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gaurav/QuickSort/googletest/googletest/samples/sample1.cc -o CMakeFiles/sample1_unittest.dir/samples/sample1.cc.s

googletest/CMakeFiles/sample1_unittest.dir/samples/sample1.cc.o.requires:

.PHONY : googletest/CMakeFiles/sample1_unittest.dir/samples/sample1.cc.o.requires

googletest/CMakeFiles/sample1_unittest.dir/samples/sample1.cc.o.provides: googletest/CMakeFiles/sample1_unittest.dir/samples/sample1.cc.o.requires
	$(MAKE) -f googletest/CMakeFiles/sample1_unittest.dir/build.make googletest/CMakeFiles/sample1_unittest.dir/samples/sample1.cc.o.provides.build
.PHONY : googletest/CMakeFiles/sample1_unittest.dir/samples/sample1.cc.o.provides

googletest/CMakeFiles/sample1_unittest.dir/samples/sample1.cc.o.provides.build: googletest/CMakeFiles/sample1_unittest.dir/samples/sample1.cc.o


# Object files for target sample1_unittest
sample1_unittest_OBJECTS = \
"CMakeFiles/sample1_unittest.dir/samples/sample1_unittest.cc.o" \
"CMakeFiles/sample1_unittest.dir/samples/sample1.cc.o"

# External object files for target sample1_unittest
sample1_unittest_EXTERNAL_OBJECTS =

googletest/sample1_unittest: googletest/CMakeFiles/sample1_unittest.dir/samples/sample1_unittest.cc.o
googletest/sample1_unittest: googletest/CMakeFiles/sample1_unittest.dir/samples/sample1.cc.o
googletest/sample1_unittest: googletest/CMakeFiles/sample1_unittest.dir/build.make
googletest/sample1_unittest: lib/libgtest_maind.a
googletest/sample1_unittest: lib/libgtestd.a
googletest/sample1_unittest: googletest/CMakeFiles/sample1_unittest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/gaurav/QuickSort/googletest/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable sample1_unittest"
	cd /home/gaurav/QuickSort/googletest/build/googletest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sample1_unittest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
googletest/CMakeFiles/sample1_unittest.dir/build: googletest/sample1_unittest

.PHONY : googletest/CMakeFiles/sample1_unittest.dir/build

googletest/CMakeFiles/sample1_unittest.dir/requires: googletest/CMakeFiles/sample1_unittest.dir/samples/sample1_unittest.cc.o.requires
googletest/CMakeFiles/sample1_unittest.dir/requires: googletest/CMakeFiles/sample1_unittest.dir/samples/sample1.cc.o.requires

.PHONY : googletest/CMakeFiles/sample1_unittest.dir/requires

googletest/CMakeFiles/sample1_unittest.dir/clean:
	cd /home/gaurav/QuickSort/googletest/build/googletest && $(CMAKE_COMMAND) -P CMakeFiles/sample1_unittest.dir/cmake_clean.cmake
.PHONY : googletest/CMakeFiles/sample1_unittest.dir/clean

googletest/CMakeFiles/sample1_unittest.dir/depend:
	cd /home/gaurav/QuickSort/googletest/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gaurav/QuickSort/googletest /home/gaurav/QuickSort/googletest/googletest /home/gaurav/QuickSort/googletest/build /home/gaurav/QuickSort/googletest/build/googletest /home/gaurav/QuickSort/googletest/build/googletest/CMakeFiles/sample1_unittest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : googletest/CMakeFiles/sample1_unittest.dir/depend

