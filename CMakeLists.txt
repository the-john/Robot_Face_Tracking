cmake_minimum_required(VERSION 3.7)

project(capstone)

set(CXX_FLAGS "-Wall")
set(CMAKE_CXX_FLAGS, ${CXX_FLAGS}, "-std=c++17 -pthread")

find_package (Threads)

find_package(OpenCV REQUIRED)
#[[
message(STATUS "OpenCV library status:")
message(STATUS "    config:  ${OpenCV_DIR}")
message(STATUS "    version:  ${OpenCV_VERSION}")
message(STATUS "    libraries:  ${OpenCV_LIBS}")
message(STATUS "    include path:  ${OpenCV_INCUDE_DIRS}")
]]

add_executable(faceTrack src/main.cpp src/face.cpp src/fceMrk.cpp src/img.cpp src/xyVector.cpp src/srvVctrs.cpp src/servo.cpp src/raii.cpp)

target_link_libraries(faceTrack LINK_PRIVATE ${OpenCV_LIBS} ${CMAKE_THREAD_LIBS_INIT})