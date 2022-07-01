cmake_minimum_required(VERSION 3.1) 
project(messanger) 

OPTION(MESSANGER_TEST "Build unit tests" OFF) 

set(CMAKE_CXX_STANDARD 17)  
set(CMAKE_C_STANDARD 11) 


if (CMAKE_VERSION VERSION_EQUAL "3.0.0" OR CMAKE_VERSION VERSION_GREATER "3.0.0")
    SET(CMAKE_CXX_EXTENSIONS OFF)
    SET(CMAKE_CXX_STANDARD_REQUIRED ON)
else()
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} --std=c++${CMAKE_CXX_STANDARD}")  
    set(CMAKE_C_FLAGS   "${CMAKE_C_FLAGS}   --std=c${CMAKE_C_STANDARD}")  
endif()

set(HEADERS_INCLUDE) 
set(SOURCES_INCLUDE)  


set(DIRS
    "adapters"
    "misc"
    "app"
)


foreach(DIR ${DIRS})
    include_directories("${PROJECT_SOURCE_DIR}/src/${DIR}")
    include("${PROJECT_SOURCE_DIR}/src/${DIR}/CmakeListsInclude.cmake")
endforeach ()

set(THREADS_PREFER_PTHREAD_FLAG ON)
find_package(Threads REQUIRED)

add_executable(${PROJECT_NAME}
    "src/main.cpp"

    ${HEADERS_INCLUDE}
    ${SOURCES_INCLUDE}
)

target_link_libraries(
    ${PROJECT_NAME}
    PRIVATE Threads::Threads
)
