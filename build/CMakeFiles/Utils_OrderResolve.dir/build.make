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
include CMakeFiles/Utils_OrderResolve.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Utils_OrderResolve.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Utils_OrderResolve.dir/flags.make

CMakeFiles/Utils_OrderResolve.dir/Utils_OrderResolve.c.o: CMakeFiles/Utils_OrderResolve.dir/flags.make
CMakeFiles/Utils_OrderResolve.dir/Utils_OrderResolve.c.o: /home/kalhan/Documents/FAC/L3/Semestre_6/Sécurité/TEA_Securite/src/Utils_OrderResolve.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kalhan/Documents/FAC/L3/Semestre_6/Sécurité/TEA_Securite/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Utils_OrderResolve.dir/Utils_OrderResolve.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Utils_OrderResolve.dir/Utils_OrderResolve.c.o   -c /home/kalhan/Documents/FAC/L3/Semestre_6/Sécurité/TEA_Securite/src/Utils_OrderResolve.c

CMakeFiles/Utils_OrderResolve.dir/Utils_OrderResolve.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Utils_OrderResolve.dir/Utils_OrderResolve.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kalhan/Documents/FAC/L3/Semestre_6/Sécurité/TEA_Securite/src/Utils_OrderResolve.c > CMakeFiles/Utils_OrderResolve.dir/Utils_OrderResolve.c.i

CMakeFiles/Utils_OrderResolve.dir/Utils_OrderResolve.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Utils_OrderResolve.dir/Utils_OrderResolve.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kalhan/Documents/FAC/L3/Semestre_6/Sécurité/TEA_Securite/src/Utils_OrderResolve.c -o CMakeFiles/Utils_OrderResolve.dir/Utils_OrderResolve.c.s

CMakeFiles/Utils_OrderResolve.dir/Utils_OrderResolve.c.o.requires:

.PHONY : CMakeFiles/Utils_OrderResolve.dir/Utils_OrderResolve.c.o.requires

CMakeFiles/Utils_OrderResolve.dir/Utils_OrderResolve.c.o.provides: CMakeFiles/Utils_OrderResolve.dir/Utils_OrderResolve.c.o.requires
	$(MAKE) -f CMakeFiles/Utils_OrderResolve.dir/build.make CMakeFiles/Utils_OrderResolve.dir/Utils_OrderResolve.c.o.provides.build
.PHONY : CMakeFiles/Utils_OrderResolve.dir/Utils_OrderResolve.c.o.provides

CMakeFiles/Utils_OrderResolve.dir/Utils_OrderResolve.c.o.provides.build: CMakeFiles/Utils_OrderResolve.dir/Utils_OrderResolve.c.o


# Object files for target Utils_OrderResolve
Utils_OrderResolve_OBJECTS = \
"CMakeFiles/Utils_OrderResolve.dir/Utils_OrderResolve.c.o"

# External object files for target Utils_OrderResolve
Utils_OrderResolve_EXTERNAL_OBJECTS =

Utils_OrderResolve: CMakeFiles/Utils_OrderResolve.dir/Utils_OrderResolve.c.o
Utils_OrderResolve: CMakeFiles/Utils_OrderResolve.dir/build.make
Utils_OrderResolve: CMakeFiles/Utils_OrderResolve.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kalhan/Documents/FAC/L3/Semestre_6/Sécurité/TEA_Securite/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable Utils_OrderResolve"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Utils_OrderResolve.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Utils_OrderResolve.dir/build: Utils_OrderResolve

.PHONY : CMakeFiles/Utils_OrderResolve.dir/build

CMakeFiles/Utils_OrderResolve.dir/requires: CMakeFiles/Utils_OrderResolve.dir/Utils_OrderResolve.c.o.requires

.PHONY : CMakeFiles/Utils_OrderResolve.dir/requires

CMakeFiles/Utils_OrderResolve.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Utils_OrderResolve.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Utils_OrderResolve.dir/clean

CMakeFiles/Utils_OrderResolve.dir/depend:
	cd /home/kalhan/Documents/FAC/L3/Semestre_6/Sécurité/TEA_Securite/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kalhan/Documents/FAC/L3/Semestre_6/Sécurité/TEA_Securite/src /home/kalhan/Documents/FAC/L3/Semestre_6/Sécurité/TEA_Securite/src /home/kalhan/Documents/FAC/L3/Semestre_6/Sécurité/TEA_Securite/build /home/kalhan/Documents/FAC/L3/Semestre_6/Sécurité/TEA_Securite/build /home/kalhan/Documents/FAC/L3/Semestre_6/Sécurité/TEA_Securite/build/CMakeFiles/Utils_OrderResolve.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Utils_OrderResolve.dir/depend

