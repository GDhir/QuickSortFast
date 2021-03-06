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
CMAKE_SOURCE_DIR = /home/gaurav/QuickSort

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/gaurav/QuickSort/build

# Include any dependencies generated for this target.
include threaded/src/CMakeFiles/runScript_threaded.dir/depend.make

# Include the progress variables for this target.
include threaded/src/CMakeFiles/runScript_threaded.dir/progress.make

# Include the compile flags for this target's objects.
include threaded/src/CMakeFiles/runScript_threaded.dir/flags.make

threaded/src/CMakeFiles/runScript_threaded.dir/runScript_threaded.cpp.o: threaded/src/CMakeFiles/runScript_threaded.dir/flags.make
threaded/src/CMakeFiles/runScript_threaded.dir/runScript_threaded.cpp.o: ../threaded/src/runScript_threaded.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gaurav/QuickSort/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object threaded/src/CMakeFiles/runScript_threaded.dir/runScript_threaded.cpp.o"
	cd /home/gaurav/QuickSort/build/threaded/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/runScript_threaded.dir/runScript_threaded.cpp.o -c /home/gaurav/QuickSort/threaded/src/runScript_threaded.cpp

threaded/src/CMakeFiles/runScript_threaded.dir/runScript_threaded.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/runScript_threaded.dir/runScript_threaded.cpp.i"
	cd /home/gaurav/QuickSort/build/threaded/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gaurav/QuickSort/threaded/src/runScript_threaded.cpp > CMakeFiles/runScript_threaded.dir/runScript_threaded.cpp.i

threaded/src/CMakeFiles/runScript_threaded.dir/runScript_threaded.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/runScript_threaded.dir/runScript_threaded.cpp.s"
	cd /home/gaurav/QuickSort/build/threaded/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gaurav/QuickSort/threaded/src/runScript_threaded.cpp -o CMakeFiles/runScript_threaded.dir/runScript_threaded.cpp.s

threaded/src/CMakeFiles/runScript_threaded.dir/runScript_threaded.cpp.o.requires:

.PHONY : threaded/src/CMakeFiles/runScript_threaded.dir/runScript_threaded.cpp.o.requires

threaded/src/CMakeFiles/runScript_threaded.dir/runScript_threaded.cpp.o.provides: threaded/src/CMakeFiles/runScript_threaded.dir/runScript_threaded.cpp.o.requires
	$(MAKE) -f threaded/src/CMakeFiles/runScript_threaded.dir/build.make threaded/src/CMakeFiles/runScript_threaded.dir/runScript_threaded.cpp.o.provides.build
.PHONY : threaded/src/CMakeFiles/runScript_threaded.dir/runScript_threaded.cpp.o.provides

threaded/src/CMakeFiles/runScript_threaded.dir/runScript_threaded.cpp.o.provides.build: threaded/src/CMakeFiles/runScript_threaded.dir/runScript_threaded.cpp.o


# Object files for target runScript_threaded
runScript_threaded_OBJECTS = \
"CMakeFiles/runScript_threaded.dir/runScript_threaded.cpp.o"

# External object files for target runScript_threaded
runScript_threaded_EXTERNAL_OBJECTS =

threaded/src/runScript_threaded: threaded/src/CMakeFiles/runScript_threaded.dir/runScript_threaded.cpp.o
threaded/src/runScript_threaded: threaded/src/CMakeFiles/runScript_threaded.dir/build.make
threaded/src/runScript_threaded: /usr/lib/gcc/x86_64-linux-gnu/7/libgomp.so
threaded/src/runScript_threaded: /usr/lib/x86_64-linux-gnu/libpthread.so
threaded/src/runScript_threaded: threaded/src/CMakeFiles/runScript_threaded.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/gaurav/QuickSort/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable runScript_threaded"
	cd /home/gaurav/QuickSort/build/threaded/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/runScript_threaded.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
threaded/src/CMakeFiles/runScript_threaded.dir/build: threaded/src/runScript_threaded

.PHONY : threaded/src/CMakeFiles/runScript_threaded.dir/build

threaded/src/CMakeFiles/runScript_threaded.dir/requires: threaded/src/CMakeFiles/runScript_threaded.dir/runScript_threaded.cpp.o.requires

.PHONY : threaded/src/CMakeFiles/runScript_threaded.dir/requires

threaded/src/CMakeFiles/runScript_threaded.dir/clean:
	cd /home/gaurav/QuickSort/build/threaded/src && $(CMAKE_COMMAND) -P CMakeFiles/runScript_threaded.dir/cmake_clean.cmake
.PHONY : threaded/src/CMakeFiles/runScript_threaded.dir/clean

threaded/src/CMakeFiles/runScript_threaded.dir/depend:
	cd /home/gaurav/QuickSort/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gaurav/QuickSort /home/gaurav/QuickSort/threaded/src /home/gaurav/QuickSort/build /home/gaurav/QuickSort/build/threaded/src /home/gaurav/QuickSort/build/threaded/src/CMakeFiles/runScript_threaded.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : threaded/src/CMakeFiles/runScript_threaded.dir/depend

