# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /app/C++/hm2/technopark_homeworks

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /app/C++/hm2/technopark_homeworks/.build

# Include any dependencies generated for this target.
include CMakeFiles/f_timer.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/f_timer.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/f_timer.dir/flags.make

CMakeFiles/f_timer.dir/f_timer.c.o: CMakeFiles/f_timer.dir/flags.make
CMakeFiles/f_timer.dir/f_timer.c.o: ../f_timer.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/app/C++/hm2/technopark_homeworks/.build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/f_timer.dir/f_timer.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/f_timer.dir/f_timer.c.o   -c /app/C++/hm2/technopark_homeworks/f_timer.c

CMakeFiles/f_timer.dir/f_timer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/f_timer.dir/f_timer.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /app/C++/hm2/technopark_homeworks/f_timer.c > CMakeFiles/f_timer.dir/f_timer.c.i

CMakeFiles/f_timer.dir/f_timer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/f_timer.dir/f_timer.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /app/C++/hm2/technopark_homeworks/f_timer.c -o CMakeFiles/f_timer.dir/f_timer.c.s

# Object files for target f_timer
f_timer_OBJECTS = \
"CMakeFiles/f_timer.dir/f_timer.c.o"

# External object files for target f_timer
f_timer_EXTERNAL_OBJECTS =

libf_timer.a: CMakeFiles/f_timer.dir/f_timer.c.o
libf_timer.a: CMakeFiles/f_timer.dir/build.make
libf_timer.a: CMakeFiles/f_timer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/app/C++/hm2/technopark_homeworks/.build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libf_timer.a"
	$(CMAKE_COMMAND) -P CMakeFiles/f_timer.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/f_timer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/f_timer.dir/build: libf_timer.a

.PHONY : CMakeFiles/f_timer.dir/build

CMakeFiles/f_timer.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/f_timer.dir/cmake_clean.cmake
.PHONY : CMakeFiles/f_timer.dir/clean

CMakeFiles/f_timer.dir/depend:
	cd /app/C++/hm2/technopark_homeworks/.build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /app/C++/hm2/technopark_homeworks /app/C++/hm2/technopark_homeworks /app/C++/hm2/technopark_homeworks/.build /app/C++/hm2/technopark_homeworks/.build /app/C++/hm2/technopark_homeworks/.build/CMakeFiles/f_timer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/f_timer.dir/depend
