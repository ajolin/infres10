# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

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
CMAKE_COMMAND = /home/alexis/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/191.7479.33/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/alexis/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/191.7479.33/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/alexis/GithubProject/infres10

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/alexis/GithubProject/infres10/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/SECURE_PROGRAMMING.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/SECURE_PROGRAMMING.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/SECURE_PROGRAMMING.dir/flags.make

CMakeFiles/SECURE_PROGRAMMING.dir/main.c.o: CMakeFiles/SECURE_PROGRAMMING.dir/flags.make
CMakeFiles/SECURE_PROGRAMMING.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alexis/GithubProject/infres10/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/SECURE_PROGRAMMING.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/SECURE_PROGRAMMING.dir/main.c.o   -c /home/alexis/GithubProject/infres10/main.c

CMakeFiles/SECURE_PROGRAMMING.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/SECURE_PROGRAMMING.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/alexis/GithubProject/infres10/main.c > CMakeFiles/SECURE_PROGRAMMING.dir/main.c.i

CMakeFiles/SECURE_PROGRAMMING.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/SECURE_PROGRAMMING.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/alexis/GithubProject/infres10/main.c -o CMakeFiles/SECURE_PROGRAMMING.dir/main.c.s

# Object files for target SECURE_PROGRAMMING
SECURE_PROGRAMMING_OBJECTS = \
"CMakeFiles/SECURE_PROGRAMMING.dir/main.c.o"

# External object files for target SECURE_PROGRAMMING
SECURE_PROGRAMMING_EXTERNAL_OBJECTS =

SECURE_PROGRAMMING: CMakeFiles/SECURE_PROGRAMMING.dir/main.c.o
SECURE_PROGRAMMING: CMakeFiles/SECURE_PROGRAMMING.dir/build.make
SECURE_PROGRAMMING: CMakeFiles/SECURE_PROGRAMMING.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/alexis/GithubProject/infres10/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable SECURE_PROGRAMMING"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SECURE_PROGRAMMING.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/SECURE_PROGRAMMING.dir/build: SECURE_PROGRAMMING

.PHONY : CMakeFiles/SECURE_PROGRAMMING.dir/build

CMakeFiles/SECURE_PROGRAMMING.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/SECURE_PROGRAMMING.dir/cmake_clean.cmake
.PHONY : CMakeFiles/SECURE_PROGRAMMING.dir/clean

CMakeFiles/SECURE_PROGRAMMING.dir/depend:
	cd /home/alexis/GithubProject/infres10/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/alexis/GithubProject/infres10 /home/alexis/GithubProject/infres10 /home/alexis/GithubProject/infres10/cmake-build-debug /home/alexis/GithubProject/infres10/cmake-build-debug /home/alexis/GithubProject/infres10/cmake-build-debug/CMakeFiles/SECURE_PROGRAMMING.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/SECURE_PROGRAMMING.dir/depend

