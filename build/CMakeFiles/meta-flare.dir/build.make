# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.30.0/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.30.0/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/manikanttiwari/Desktop/Personal/metaflare

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/manikanttiwari/Desktop/Personal/metaflare/build

# Include any dependencies generated for this target.
include CMakeFiles/meta-flare.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/meta-flare.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/meta-flare.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/meta-flare.dir/flags.make

CMakeFiles/meta-flare.dir/src/main.cpp.o: CMakeFiles/meta-flare.dir/flags.make
CMakeFiles/meta-flare.dir/src/main.cpp.o: /Users/manikanttiwari/Desktop/Personal/metaflare/src/main.cpp
CMakeFiles/meta-flare.dir/src/main.cpp.o: CMakeFiles/meta-flare.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/manikanttiwari/Desktop/Personal/metaflare/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/meta-flare.dir/src/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/meta-flare.dir/src/main.cpp.o -MF CMakeFiles/meta-flare.dir/src/main.cpp.o.d -o CMakeFiles/meta-flare.dir/src/main.cpp.o -c /Users/manikanttiwari/Desktop/Personal/metaflare/src/main.cpp

CMakeFiles/meta-flare.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/meta-flare.dir/src/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/manikanttiwari/Desktop/Personal/metaflare/src/main.cpp > CMakeFiles/meta-flare.dir/src/main.cpp.i

CMakeFiles/meta-flare.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/meta-flare.dir/src/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/manikanttiwari/Desktop/Personal/metaflare/src/main.cpp -o CMakeFiles/meta-flare.dir/src/main.cpp.s

# Object files for target meta-flare
meta__flare_OBJECTS = \
"CMakeFiles/meta-flare.dir/src/main.cpp.o"

# External object files for target meta-flare
meta__flare_EXTERNAL_OBJECTS =

meta-flare: CMakeFiles/meta-flare.dir/src/main.cpp.o
meta-flare: CMakeFiles/meta-flare.dir/build.make
meta-flare: lib/fmt/libfmt.a
meta-flare: /opt/homebrew/lib/libcpprest.2.10.dylib
meta-flare: /opt/homebrew/Cellar/openssl@3/3.3.1/lib/libssl.dylib
meta-flare: /opt/homebrew/Cellar/openssl@3/3.3.1/lib/libcrypto.dylib
meta-flare: /opt/homebrew/lib/libmongocxx.dylib
meta-flare: /opt/homebrew/lib/libbsoncxx.dylib
meta-flare: CMakeFiles/meta-flare.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/manikanttiwari/Desktop/Personal/metaflare/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable meta-flare"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/meta-flare.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/meta-flare.dir/build: meta-flare
.PHONY : CMakeFiles/meta-flare.dir/build

CMakeFiles/meta-flare.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/meta-flare.dir/cmake_clean.cmake
.PHONY : CMakeFiles/meta-flare.dir/clean

CMakeFiles/meta-flare.dir/depend:
	cd /Users/manikanttiwari/Desktop/Personal/metaflare/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/manikanttiwari/Desktop/Personal/metaflare /Users/manikanttiwari/Desktop/Personal/metaflare /Users/manikanttiwari/Desktop/Personal/metaflare/build /Users/manikanttiwari/Desktop/Personal/metaflare/build /Users/manikanttiwari/Desktop/Personal/metaflare/build/CMakeFiles/meta-flare.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/meta-flare.dir/depend
