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
CMAKE_SOURCE_DIR = /home/kalhan/Documents/FAC/L3/Semestre_6/Sécurité/TEA_Securite/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kalhan/Documents/FAC/L3/Semestre_6/Sécurité/TEA_Securite/build

# Include any dependencies generated for this target.
include CMakeFiles/Primes.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Primes.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Primes.dir/flags.make

CMakeFiles/Primes.dir/Utils_Primes.c.o: CMakeFiles/Primes.dir/flags.make
CMakeFiles/Primes.dir/Utils_Primes.c.o: /home/kalhan/Documents/FAC/L3/Semestre_6/Sécurité/TEA_Securite/src/Utils_Primes.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kalhan/Documents/FAC/L3/Semestre_6/Sécurité/TEA_Securite/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Primes.dir/Utils_Primes.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Primes.dir/Utils_Primes.c.o   -c /home/kalhan/Documents/FAC/L3/Semestre_6/Sécurité/TEA_Securite/src/Utils_Primes.c

CMakeFiles/Primes.dir/Utils_Primes.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Primes.dir/Utils_Primes.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kalhan/Documents/FAC/L3/Semestre_6/Sécurité/TEA_Securite/src/Utils_Primes.c > CMakeFiles/Primes.dir/Utils_Primes.c.i

CMakeFiles/Primes.dir/Utils_Primes.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Primes.dir/Utils_Primes.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kalhan/Documents/FAC/L3/Semestre_6/Sécurité/TEA_Securite/src/Utils_Primes.c -o CMakeFiles/Primes.dir/Utils_Primes.c.s

CMakeFiles/Primes.dir/Utils_Primes.c.o.requires:

.PHONY : CMakeFiles/Primes.dir/Utils_Primes.c.o.requires

CMakeFiles/Primes.dir/Utils_Primes.c.o.provides: CMakeFiles/Primes.dir/Utils_Primes.c.o.requires
	$(MAKE) -f CMakeFiles/Primes.dir/build.make CMakeFiles/Primes.dir/Utils_Primes.c.o.provides.build
.PHONY : CMakeFiles/Primes.dir/Utils_Primes.c.o.provides

CMakeFiles/Primes.dir/Utils_Primes.c.o.provides.build: CMakeFiles/Primes.dir/Utils_Primes.c.o


# Object files for target Primes
Primes_OBJECTS = \
"CMakeFiles/Primes.dir/Utils_Primes.c.o"

# External object files for target Primes
Primes_EXTERNAL_OBJECTS =

Primes: CMakeFiles/Primes.dir/Utils_Primes.c.o
Primes: CMakeFiles/Primes.dir/build.make
Primes: CMakeFiles/Primes.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kalhan/Documents/FAC/L3/Semestre_6/Sécurité/TEA_Securite/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable Primes"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Primes.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Primes.dir/build: Primes

.PHONY : CMakeFiles/Primes.dir/build

CMakeFiles/Primes.dir/requires: CMakeFiles/Primes.dir/Utils_Primes.c.o.requires

.PHONY : CMakeFiles/Primes.dir/requires

CMakeFiles/Primes.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Primes.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Primes.dir/clean

CMakeFiles/Primes.dir/depend:
	cd /home/kalhan/Documents/FAC/L3/Semestre_6/Sécurité/TEA_Securite/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kalhan/Documents/FAC/L3/Semestre_6/Sécurité/TEA_Securite/src /home/kalhan/Documents/FAC/L3/Semestre_6/Sécurité/TEA_Securite/src /home/kalhan/Documents/FAC/L3/Semestre_6/Sécurité/TEA_Securite/build /home/kalhan/Documents/FAC/L3/Semestre_6/Sécurité/TEA_Securite/build /home/kalhan/Documents/FAC/L3/Semestre_6/Sécurité/TEA_Securite/build/CMakeFiles/Primes.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Primes.dir/depend
