# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/saitetu/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/saitetu/catkin_ws/build

# Include any dependencies generated for this target.
include server/CMakeFiles/server2.dir/depend.make

# Include the progress variables for this target.
include server/CMakeFiles/server2.dir/progress.make

# Include the compile flags for this target's objects.
include server/CMakeFiles/server2.dir/flags.make

server/CMakeFiles/server2.dir/src/server2.cpp.o: server/CMakeFiles/server2.dir/flags.make
server/CMakeFiles/server2.dir/src/server2.cpp.o: /home/saitetu/catkin_ws/src/server/src/server2.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/saitetu/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object server/CMakeFiles/server2.dir/src/server2.cpp.o"
	cd /home/saitetu/catkin_ws/build/server && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/server2.dir/src/server2.cpp.o -c /home/saitetu/catkin_ws/src/server/src/server2.cpp

server/CMakeFiles/server2.dir/src/server2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server2.dir/src/server2.cpp.i"
	cd /home/saitetu/catkin_ws/build/server && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/saitetu/catkin_ws/src/server/src/server2.cpp > CMakeFiles/server2.dir/src/server2.cpp.i

server/CMakeFiles/server2.dir/src/server2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server2.dir/src/server2.cpp.s"
	cd /home/saitetu/catkin_ws/build/server && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/saitetu/catkin_ws/src/server/src/server2.cpp -o CMakeFiles/server2.dir/src/server2.cpp.s

server/CMakeFiles/server2.dir/src/server2.cpp.o.requires:

.PHONY : server/CMakeFiles/server2.dir/src/server2.cpp.o.requires

server/CMakeFiles/server2.dir/src/server2.cpp.o.provides: server/CMakeFiles/server2.dir/src/server2.cpp.o.requires
	$(MAKE) -f server/CMakeFiles/server2.dir/build.make server/CMakeFiles/server2.dir/src/server2.cpp.o.provides.build
.PHONY : server/CMakeFiles/server2.dir/src/server2.cpp.o.provides

server/CMakeFiles/server2.dir/src/server2.cpp.o.provides.build: server/CMakeFiles/server2.dir/src/server2.cpp.o


# Object files for target server2
server2_OBJECTS = \
"CMakeFiles/server2.dir/src/server2.cpp.o"

# External object files for target server2
server2_EXTERNAL_OBJECTS =

/home/saitetu/catkin_ws/devel/lib/server/server2: server/CMakeFiles/server2.dir/src/server2.cpp.o
/home/saitetu/catkin_ws/devel/lib/server/server2: server/CMakeFiles/server2.dir/build.make
/home/saitetu/catkin_ws/devel/lib/server/server2: /opt/ros/kinetic/lib/libroscpp.so
/home/saitetu/catkin_ws/devel/lib/server/server2: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/saitetu/catkin_ws/devel/lib/server/server2: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/saitetu/catkin_ws/devel/lib/server/server2: /opt/ros/kinetic/lib/librosconsole.so
/home/saitetu/catkin_ws/devel/lib/server/server2: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/saitetu/catkin_ws/devel/lib/server/server2: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/saitetu/catkin_ws/devel/lib/server/server2: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/saitetu/catkin_ws/devel/lib/server/server2: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/saitetu/catkin_ws/devel/lib/server/server2: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/saitetu/catkin_ws/devel/lib/server/server2: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/saitetu/catkin_ws/devel/lib/server/server2: /opt/ros/kinetic/lib/librostime.so
/home/saitetu/catkin_ws/devel/lib/server/server2: /opt/ros/kinetic/lib/libcpp_common.so
/home/saitetu/catkin_ws/devel/lib/server/server2: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/saitetu/catkin_ws/devel/lib/server/server2: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/saitetu/catkin_ws/devel/lib/server/server2: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/saitetu/catkin_ws/devel/lib/server/server2: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/saitetu/catkin_ws/devel/lib/server/server2: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/saitetu/catkin_ws/devel/lib/server/server2: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/saitetu/catkin_ws/devel/lib/server/server2: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/saitetu/catkin_ws/devel/lib/server/server2: server/CMakeFiles/server2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/saitetu/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/saitetu/catkin_ws/devel/lib/server/server2"
	cd /home/saitetu/catkin_ws/build/server && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/server2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
server/CMakeFiles/server2.dir/build: /home/saitetu/catkin_ws/devel/lib/server/server2

.PHONY : server/CMakeFiles/server2.dir/build

server/CMakeFiles/server2.dir/requires: server/CMakeFiles/server2.dir/src/server2.cpp.o.requires

.PHONY : server/CMakeFiles/server2.dir/requires

server/CMakeFiles/server2.dir/clean:
	cd /home/saitetu/catkin_ws/build/server && $(CMAKE_COMMAND) -P CMakeFiles/server2.dir/cmake_clean.cmake
.PHONY : server/CMakeFiles/server2.dir/clean

server/CMakeFiles/server2.dir/depend:
	cd /home/saitetu/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/saitetu/catkin_ws/src /home/saitetu/catkin_ws/src/server /home/saitetu/catkin_ws/build /home/saitetu/catkin_ws/build/server /home/saitetu/catkin_ws/build/server/CMakeFiles/server2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : server/CMakeFiles/server2.dir/depend

