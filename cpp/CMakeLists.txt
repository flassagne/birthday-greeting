# specify the C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# load dependencies
include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
conan_basic_setup()

add_executable(birthday-greeting-cpp App.cpp)
target_include_directories(birthday-greeting-cpp PRIVATE ${CONAN_INCLUDE_DIRS_BOOST})
