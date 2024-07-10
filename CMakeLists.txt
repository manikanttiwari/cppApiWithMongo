cmake_minimum_required(VERSION 3.10)
project(meta-flare)

set(CMAKE_CXX_STANDARD 17)

# Find OpenSSL
find_package(OpenSSL REQUIRED)
include_directories(${OPENSSL_INCLUDE_DIR})

# Add fmt library
add_subdirectory(lib/fmt)
include_directories(lib/fmt/include)

# Include directories
# include_directories => it searchs for the possible header file for the compiler to find
include_directories(src)
include_directories(/opt/homebrew/include/mongocxx/v_noabi)
include_directories(/opt/homebrew/include/bsoncxx/v_noabi)
include_directories(/opt/homebrew/Cellar/mongo-cxx-driver/3.10.2/include/bsoncxx/v_noabi/bsoncxx/third_party/mnmlstc)

# Add MongoDB C++ driver
# find_library => it finds the pre compiled libraries
find_library(MONGOCXX_LIB mongocxx HINTS /opt/homebrew/lib)
find_library(BSONCXX_LIB bsoncxx HINTS /opt/homebrew/lib)

# Find cpprestsdk
# The find_package command in CMake is used to locate and configure external dependencies (packages) that your project depends on
find_package(cpprestsdk REQUIRED)

# Define the executable
add_executable(meta-flare src/main.cpp)

# Link libraries
target_link_libraries(meta-flare
    fmt::fmt
    cpprestsdk::cpprest
    ${OPENSSL_LIBRARIES}
    ${MONGOCXX_LIB}
    ${BSONCXX_LIB}
)