# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.10

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "D:\Program Files\JetBrains\CLion 2018.1.2\bin\cmake\bin\cmake.exe"

# The command to remove a file.
RM = "D:\Program Files\JetBrains\CLion 2018.1.2\bin\cmake\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\909845\CLionProjects\MuxerPcm

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\909845\CLionProjects\MuxerPcm\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/MuxerPcm.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/MuxerPcm.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/MuxerPcm.dir/flags.make

CMakeFiles/MuxerPcm.dir/src/MuxerPcm/MuxerPcm.cpp.obj: CMakeFiles/MuxerPcm.dir/flags.make
CMakeFiles/MuxerPcm.dir/src/MuxerPcm/MuxerPcm.cpp.obj: ../src/MuxerPcm/MuxerPcm.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\909845\CLionProjects\MuxerPcm\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/MuxerPcm.dir/src/MuxerPcm/MuxerPcm.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\MuxerPcm.dir\src\MuxerPcm\MuxerPcm.cpp.obj -c C:\Users\909845\CLionProjects\MuxerPcm\src\MuxerPcm\MuxerPcm.cpp

CMakeFiles/MuxerPcm.dir/src/MuxerPcm/MuxerPcm.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MuxerPcm.dir/src/MuxerPcm/MuxerPcm.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\909845\CLionProjects\MuxerPcm\src\MuxerPcm\MuxerPcm.cpp > CMakeFiles\MuxerPcm.dir\src\MuxerPcm\MuxerPcm.cpp.i

CMakeFiles/MuxerPcm.dir/src/MuxerPcm/MuxerPcm.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MuxerPcm.dir/src/MuxerPcm/MuxerPcm.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\909845\CLionProjects\MuxerPcm\src\MuxerPcm\MuxerPcm.cpp -o CMakeFiles\MuxerPcm.dir\src\MuxerPcm\MuxerPcm.cpp.s

CMakeFiles/MuxerPcm.dir/src/MuxerPcm/MuxerPcm.cpp.obj.requires:

.PHONY : CMakeFiles/MuxerPcm.dir/src/MuxerPcm/MuxerPcm.cpp.obj.requires

CMakeFiles/MuxerPcm.dir/src/MuxerPcm/MuxerPcm.cpp.obj.provides: CMakeFiles/MuxerPcm.dir/src/MuxerPcm/MuxerPcm.cpp.obj.requires
	$(MAKE) -f CMakeFiles\MuxerPcm.dir\build.make CMakeFiles/MuxerPcm.dir/src/MuxerPcm/MuxerPcm.cpp.obj.provides.build
.PHONY : CMakeFiles/MuxerPcm.dir/src/MuxerPcm/MuxerPcm.cpp.obj.provides

CMakeFiles/MuxerPcm.dir/src/MuxerPcm/MuxerPcm.cpp.obj.provides.build: CMakeFiles/MuxerPcm.dir/src/MuxerPcm/MuxerPcm.cpp.obj


CMakeFiles/MuxerPcm.dir/src/Startup/main.cpp.obj: CMakeFiles/MuxerPcm.dir/flags.make
CMakeFiles/MuxerPcm.dir/src/Startup/main.cpp.obj: ../src/Startup/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\909845\CLionProjects\MuxerPcm\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/MuxerPcm.dir/src/Startup/main.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\MuxerPcm.dir\src\Startup\main.cpp.obj -c C:\Users\909845\CLionProjects\MuxerPcm\src\Startup\main.cpp

CMakeFiles/MuxerPcm.dir/src/Startup/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MuxerPcm.dir/src/Startup/main.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\909845\CLionProjects\MuxerPcm\src\Startup\main.cpp > CMakeFiles\MuxerPcm.dir\src\Startup\main.cpp.i

CMakeFiles/MuxerPcm.dir/src/Startup/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MuxerPcm.dir/src/Startup/main.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\909845\CLionProjects\MuxerPcm\src\Startup\main.cpp -o CMakeFiles\MuxerPcm.dir\src\Startup\main.cpp.s

CMakeFiles/MuxerPcm.dir/src/Startup/main.cpp.obj.requires:

.PHONY : CMakeFiles/MuxerPcm.dir/src/Startup/main.cpp.obj.requires

CMakeFiles/MuxerPcm.dir/src/Startup/main.cpp.obj.provides: CMakeFiles/MuxerPcm.dir/src/Startup/main.cpp.obj.requires
	$(MAKE) -f CMakeFiles\MuxerPcm.dir\build.make CMakeFiles/MuxerPcm.dir/src/Startup/main.cpp.obj.provides.build
.PHONY : CMakeFiles/MuxerPcm.dir/src/Startup/main.cpp.obj.provides

CMakeFiles/MuxerPcm.dir/src/Startup/main.cpp.obj.provides.build: CMakeFiles/MuxerPcm.dir/src/Startup/main.cpp.obj


# Object files for target MuxerPcm
MuxerPcm_OBJECTS = \
"CMakeFiles/MuxerPcm.dir/src/MuxerPcm/MuxerPcm.cpp.obj" \
"CMakeFiles/MuxerPcm.dir/src/Startup/main.cpp.obj"

# External object files for target MuxerPcm
MuxerPcm_EXTERNAL_OBJECTS =

MuxerPcm.exe: CMakeFiles/MuxerPcm.dir/src/MuxerPcm/MuxerPcm.cpp.obj
MuxerPcm.exe: CMakeFiles/MuxerPcm.dir/src/Startup/main.cpp.obj
MuxerPcm.exe: CMakeFiles/MuxerPcm.dir/build.make
MuxerPcm.exe: CMakeFiles/MuxerPcm.dir/linklibs.rsp
MuxerPcm.exe: CMakeFiles/MuxerPcm.dir/objects1.rsp
MuxerPcm.exe: CMakeFiles/MuxerPcm.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\909845\CLionProjects\MuxerPcm\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable MuxerPcm.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\MuxerPcm.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/MuxerPcm.dir/build: MuxerPcm.exe

.PHONY : CMakeFiles/MuxerPcm.dir/build

CMakeFiles/MuxerPcm.dir/requires: CMakeFiles/MuxerPcm.dir/src/MuxerPcm/MuxerPcm.cpp.obj.requires
CMakeFiles/MuxerPcm.dir/requires: CMakeFiles/MuxerPcm.dir/src/Startup/main.cpp.obj.requires

.PHONY : CMakeFiles/MuxerPcm.dir/requires

CMakeFiles/MuxerPcm.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\MuxerPcm.dir\cmake_clean.cmake
.PHONY : CMakeFiles/MuxerPcm.dir/clean

CMakeFiles/MuxerPcm.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\909845\CLionProjects\MuxerPcm C:\Users\909845\CLionProjects\MuxerPcm C:\Users\909845\CLionProjects\MuxerPcm\cmake-build-debug C:\Users\909845\CLionProjects\MuxerPcm\cmake-build-debug C:\Users\909845\CLionProjects\MuxerPcm\cmake-build-debug\CMakeFiles\MuxerPcm.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/MuxerPcm.dir/depend

