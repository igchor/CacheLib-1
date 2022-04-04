# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /opt/workspace/cachelib

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /opt/workspace/build

# Include any dependencies generated for this target.
include benchmarks/CMakeFiles/benchmark-test-HashMapBenchmark.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include benchmarks/CMakeFiles/benchmark-test-HashMapBenchmark.dir/compiler_depend.make

# Include the progress variables for this target.
include benchmarks/CMakeFiles/benchmark-test-HashMapBenchmark.dir/progress.make

# Include the compile flags for this target's objects.
include benchmarks/CMakeFiles/benchmark-test-HashMapBenchmark.dir/flags.make

benchmarks/CMakeFiles/benchmark-test-HashMapBenchmark.dir/HashMapBenchmark.cpp.o: benchmarks/CMakeFiles/benchmark-test-HashMapBenchmark.dir/flags.make
benchmarks/CMakeFiles/benchmark-test-HashMapBenchmark.dir/HashMapBenchmark.cpp.o: /opt/workspace/cachelib/benchmarks/HashMapBenchmark.cpp
benchmarks/CMakeFiles/benchmark-test-HashMapBenchmark.dir/HashMapBenchmark.cpp.o: benchmarks/CMakeFiles/benchmark-test-HashMapBenchmark.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/opt/workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object benchmarks/CMakeFiles/benchmark-test-HashMapBenchmark.dir/HashMapBenchmark.cpp.o"
	cd /opt/workspace/build/benchmarks && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT benchmarks/CMakeFiles/benchmark-test-HashMapBenchmark.dir/HashMapBenchmark.cpp.o -MF CMakeFiles/benchmark-test-HashMapBenchmark.dir/HashMapBenchmark.cpp.o.d -o CMakeFiles/benchmark-test-HashMapBenchmark.dir/HashMapBenchmark.cpp.o -c /opt/workspace/cachelib/benchmarks/HashMapBenchmark.cpp

benchmarks/CMakeFiles/benchmark-test-HashMapBenchmark.dir/HashMapBenchmark.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/benchmark-test-HashMapBenchmark.dir/HashMapBenchmark.cpp.i"
	cd /opt/workspace/build/benchmarks && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /opt/workspace/cachelib/benchmarks/HashMapBenchmark.cpp > CMakeFiles/benchmark-test-HashMapBenchmark.dir/HashMapBenchmark.cpp.i

benchmarks/CMakeFiles/benchmark-test-HashMapBenchmark.dir/HashMapBenchmark.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/benchmark-test-HashMapBenchmark.dir/HashMapBenchmark.cpp.s"
	cd /opt/workspace/build/benchmarks && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /opt/workspace/cachelib/benchmarks/HashMapBenchmark.cpp -o CMakeFiles/benchmark-test-HashMapBenchmark.dir/HashMapBenchmark.cpp.s

# Object files for target benchmark-test-HashMapBenchmark
benchmark__test__HashMapBenchmark_OBJECTS = \
"CMakeFiles/benchmark-test-HashMapBenchmark.dir/HashMapBenchmark.cpp.o"

# External object files for target benchmark-test-HashMapBenchmark
benchmark__test__HashMapBenchmark_EXTERNAL_OBJECTS =

benchmarks/benchmark-test-HashMapBenchmark: benchmarks/CMakeFiles/benchmark-test-HashMapBenchmark.dir/HashMapBenchmark.cpp.o
benchmarks/benchmark-test-HashMapBenchmark: benchmarks/CMakeFiles/benchmark-test-HashMapBenchmark.dir/build.make
benchmarks/benchmark-test-HashMapBenchmark: benchmarks/libbenchmark_test_support.a
benchmarks/benchmark-test-HashMapBenchmark: datatype/libcachelib_datatype.a
benchmarks/benchmark-test-HashMapBenchmark: allocator/libcachelib_allocator.a
benchmarks/benchmark-test-HashMapBenchmark: navy/libcachelib_navy.a
benchmarks/benchmark-test-HashMapBenchmark: shm/libcachelib_shm.a
benchmarks/benchmark-test-HashMapBenchmark: common/libcachelib_common.a
benchmarks/benchmark-test-HashMapBenchmark: /opt/lib/libthriftcpp2.so.1.0.0
benchmarks/benchmark-test-HashMapBenchmark: /opt/lib/libthriftfrozen2.so.1.0.0
benchmarks/benchmark-test-HashMapBenchmark: /opt/lib/libthriftmetadata.so.1.0.0
benchmarks/benchmark-test-HashMapBenchmark: /opt/lib/libthrifttype.so.1.0.0
benchmarks/benchmark-test-HashMapBenchmark: /opt/lib/libthriftprotocol.so.1.0.0
benchmarks/benchmark-test-HashMapBenchmark: /opt/lib/libasync.so.1.0.0
benchmarks/benchmark-test-HashMapBenchmark: /opt/lib/libwangle.so.1.0.0
benchmarks/benchmark-test-HashMapBenchmark: /opt/lib/libfizz.so.1.0.0
benchmarks/benchmark-test-HashMapBenchmark: /usr/lib64/libsodium.so
benchmarks/benchmark-test-HashMapBenchmark: /usr/lib64/librt.so
benchmarks/benchmark-test-HashMapBenchmark: /opt/lib/libtransport.so.1.0.0
benchmarks/benchmark-test-HashMapBenchmark: /opt/lib/librpcmetadata.so.1.0.0
benchmarks/benchmark-test-HashMapBenchmark: /opt/lib/libthrift-core.so.1.0.0
benchmarks/benchmark-test-HashMapBenchmark: /opt/lib/libconcurrency.so.1.0.0
benchmarks/benchmark-test-HashMapBenchmark: /usr/lib64/libz.so
benchmarks/benchmark-test-HashMapBenchmark: /opt/lib/libfolly_exception_counter.so.0.58.0-dev
benchmarks/benchmark-test-HashMapBenchmark: /opt/lib/libfolly_exception_tracer.so.0.58.0-dev
benchmarks/benchmark-test-HashMapBenchmark: /opt/lib/libfolly_exception_tracer_base.so.0.58.0-dev
benchmarks/benchmark-test-HashMapBenchmark: /opt/lib/libfollybenchmark.so.0.58.0-dev
benchmarks/benchmark-test-HashMapBenchmark: /opt/lib/libfolly.so.0.58.0-dev
benchmarks/benchmark-test-HashMapBenchmark: /opt/lib64/libfmt.so.8.0.1
benchmarks/benchmark-test-HashMapBenchmark: /usr/lib64/libboost_context.so
benchmarks/benchmark-test-HashMapBenchmark: /usr/lib64/libboost_filesystem.so
benchmarks/benchmark-test-HashMapBenchmark: /usr/lib64/libboost_program_options.so
benchmarks/benchmark-test-HashMapBenchmark: /usr/lib64/libboost_regex.so
benchmarks/benchmark-test-HashMapBenchmark: /usr/lib64/libboost_system.so
benchmarks/benchmark-test-HashMapBenchmark: /usr/lib64/libboost_thread.so
benchmarks/benchmark-test-HashMapBenchmark: /usr/lib64/libboost_chrono.so
benchmarks/benchmark-test-HashMapBenchmark: /usr/lib64/libboost_date_time.so
benchmarks/benchmark-test-HashMapBenchmark: /usr/lib64/libboost_atomic.so
benchmarks/benchmark-test-HashMapBenchmark: /opt/lib64/libglog.so
benchmarks/benchmark-test-HashMapBenchmark: /usr/lib64/libdouble-conversion.so
benchmarks/benchmark-test-HashMapBenchmark: /opt/lib/libgflags.so.2.2.2
benchmarks/benchmark-test-HashMapBenchmark: /usr/lib64/libevent.so
benchmarks/benchmark-test-HashMapBenchmark: /usr/lib64/libz.so
benchmarks/benchmark-test-HashMapBenchmark: /usr/lib64/libssl.so
benchmarks/benchmark-test-HashMapBenchmark: /usr/lib64/libcrypto.so
benchmarks/benchmark-test-HashMapBenchmark: /usr/lib64/libbz2.so
benchmarks/benchmark-test-HashMapBenchmark: /usr/lib64/liblzma.so
benchmarks/benchmark-test-HashMapBenchmark: /usr/lib64/liblz4.so
benchmarks/benchmark-test-HashMapBenchmark: /opt/lib64/libzstd.so
benchmarks/benchmark-test-HashMapBenchmark: /usr/lib64/libsnappy.so
benchmarks/benchmark-test-HashMapBenchmark: /usr/lib64/libdwarf.so
benchmarks/benchmark-test-HashMapBenchmark: /usr/lib64/libiberty.a
benchmarks/benchmark-test-HashMapBenchmark: /usr/lib64/libaio.so
benchmarks/benchmark-test-HashMapBenchmark: /usr/lib64/libsodium.so
benchmarks/benchmark-test-HashMapBenchmark: /usr/lib64/libunwind.so
benchmarks/benchmark-test-HashMapBenchmark: /opt/lib64/libglog.so
benchmarks/benchmark-test-HashMapBenchmark: /opt/lib/libgflags.so.2.2.2
benchmarks/benchmark-test-HashMapBenchmark: /opt/lib64/libgmock.so.1.11.0
benchmarks/benchmark-test-HashMapBenchmark: /opt/lib64/libgtest.so.1.11.0
benchmarks/benchmark-test-HashMapBenchmark: benchmarks/CMakeFiles/benchmark-test-HashMapBenchmark.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/opt/workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable benchmark-test-HashMapBenchmark"
	cd /opt/workspace/build/benchmarks && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/benchmark-test-HashMapBenchmark.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
benchmarks/CMakeFiles/benchmark-test-HashMapBenchmark.dir/build: benchmarks/benchmark-test-HashMapBenchmark
.PHONY : benchmarks/CMakeFiles/benchmark-test-HashMapBenchmark.dir/build

benchmarks/CMakeFiles/benchmark-test-HashMapBenchmark.dir/clean:
	cd /opt/workspace/build/benchmarks && $(CMAKE_COMMAND) -P CMakeFiles/benchmark-test-HashMapBenchmark.dir/cmake_clean.cmake
.PHONY : benchmarks/CMakeFiles/benchmark-test-HashMapBenchmark.dir/clean

benchmarks/CMakeFiles/benchmark-test-HashMapBenchmark.dir/depend:
	cd /opt/workspace/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /opt/workspace/cachelib /opt/workspace/cachelib/benchmarks /opt/workspace/build /opt/workspace/build/benchmarks /opt/workspace/build/benchmarks/CMakeFiles/benchmark-test-HashMapBenchmark.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : benchmarks/CMakeFiles/benchmark-test-HashMapBenchmark.dir/depend

