# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.23

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.23.1_1/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.23.1_1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/shauntemellor/Documents/comsci/Projects/Terraria

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/shauntemellor/Documents/comsci/Projects/Terraria/build

# Include any dependencies generated for this target.
include CMakeFiles/terraria.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/terraria.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/terraria.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/terraria.dir/flags.make

CMakeFiles/terraria.dir/src/image.cpp.o: CMakeFiles/terraria.dir/flags.make
CMakeFiles/terraria.dir/src/image.cpp.o: ../src/image.cpp
CMakeFiles/terraria.dir/src/image.cpp.o: CMakeFiles/terraria.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/shauntemellor/Documents/comsci/Projects/Terraria/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/terraria.dir/src/image.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/terraria.dir/src/image.cpp.o -MF CMakeFiles/terraria.dir/src/image.cpp.o.d -o CMakeFiles/terraria.dir/src/image.cpp.o -c /Users/shauntemellor/Documents/comsci/Projects/Terraria/src/image.cpp

CMakeFiles/terraria.dir/src/image.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/terraria.dir/src/image.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/shauntemellor/Documents/comsci/Projects/Terraria/src/image.cpp > CMakeFiles/terraria.dir/src/image.cpp.i

CMakeFiles/terraria.dir/src/image.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/terraria.dir/src/image.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/shauntemellor/Documents/comsci/Projects/Terraria/src/image.cpp -o CMakeFiles/terraria.dir/src/image.cpp.s

CMakeFiles/terraria.dir/src/input.cpp.o: CMakeFiles/terraria.dir/flags.make
CMakeFiles/terraria.dir/src/input.cpp.o: ../src/input.cpp
CMakeFiles/terraria.dir/src/input.cpp.o: CMakeFiles/terraria.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/shauntemellor/Documents/comsci/Projects/Terraria/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/terraria.dir/src/input.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/terraria.dir/src/input.cpp.o -MF CMakeFiles/terraria.dir/src/input.cpp.o.d -o CMakeFiles/terraria.dir/src/input.cpp.o -c /Users/shauntemellor/Documents/comsci/Projects/Terraria/src/input.cpp

CMakeFiles/terraria.dir/src/input.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/terraria.dir/src/input.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/shauntemellor/Documents/comsci/Projects/Terraria/src/input.cpp > CMakeFiles/terraria.dir/src/input.cpp.i

CMakeFiles/terraria.dir/src/input.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/terraria.dir/src/input.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/shauntemellor/Documents/comsci/Projects/Terraria/src/input.cpp -o CMakeFiles/terraria.dir/src/input.cpp.s

CMakeFiles/terraria.dir/src/main.cpp.o: CMakeFiles/terraria.dir/flags.make
CMakeFiles/terraria.dir/src/main.cpp.o: ../src/main.cpp
CMakeFiles/terraria.dir/src/main.cpp.o: CMakeFiles/terraria.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/shauntemellor/Documents/comsci/Projects/Terraria/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/terraria.dir/src/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/terraria.dir/src/main.cpp.o -MF CMakeFiles/terraria.dir/src/main.cpp.o.d -o CMakeFiles/terraria.dir/src/main.cpp.o -c /Users/shauntemellor/Documents/comsci/Projects/Terraria/src/main.cpp

CMakeFiles/terraria.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/terraria.dir/src/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/shauntemellor/Documents/comsci/Projects/Terraria/src/main.cpp > CMakeFiles/terraria.dir/src/main.cpp.i

CMakeFiles/terraria.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/terraria.dir/src/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/shauntemellor/Documents/comsci/Projects/Terraria/src/main.cpp -o CMakeFiles/terraria.dir/src/main.cpp.s

# Object files for target terraria
terraria_OBJECTS = \
"CMakeFiles/terraria.dir/src/image.cpp.o" \
"CMakeFiles/terraria.dir/src/input.cpp.o" \
"CMakeFiles/terraria.dir/src/main.cpp.o"

# External object files for target terraria
terraria_EXTERNAL_OBJECTS =

terraria: CMakeFiles/terraria.dir/src/image.cpp.o
terraria: CMakeFiles/terraria.dir/src/input.cpp.o
terraria: CMakeFiles/terraria.dir/src/main.cpp.o
terraria: CMakeFiles/terraria.dir/build.make
terraria: libs/glfw/src/libglfw3.a
terraria: libs/Glad/libglad.a
terraria: libimgui.a
terraria: libstb_image.a
terraria: libs/glfw/src/libglfw3.a
terraria: CMakeFiles/terraria.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/shauntemellor/Documents/comsci/Projects/Terraria/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable terraria"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/terraria.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/terraria.dir/build: terraria
.PHONY : CMakeFiles/terraria.dir/build

CMakeFiles/terraria.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/terraria.dir/cmake_clean.cmake
.PHONY : CMakeFiles/terraria.dir/clean

CMakeFiles/terraria.dir/depend:
	cd /Users/shauntemellor/Documents/comsci/Projects/Terraria/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/shauntemellor/Documents/comsci/Projects/Terraria /Users/shauntemellor/Documents/comsci/Projects/Terraria /Users/shauntemellor/Documents/comsci/Projects/Terraria/build /Users/shauntemellor/Documents/comsci/Projects/Terraria/build /Users/shauntemellor/Documents/comsci/Projects/Terraria/build/CMakeFiles/terraria.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/terraria.dir/depend

