include_directories("${CMAKE_CURRENT_LIST_DIR}")

SET(HEADERS_ONLY)

SET(SOURCES_ONLY)

SET(CLASSES)

foreach(header ${HEADERS_ONLY})
    list(APPEND HEADERS_INCLUDE "${CMAKE_CURRENT_LIST_DIR}/${header}.h")
endforeach()

foreach(source ${SOURCES_ONLY})
    list(APPEND SOURCES_INCLUDE "${CMAKE_CURRENT_LIST_DIR}/${source}.cpp")
endforeach()

foreach(class ${CLASSES})
    list(APPEND HEADERS_INCLUDE "${CMAKE_CURRENT_LIST_DIR}/${class}.h")
    list(APPEND SOURCES_INCLUDE "${CMAKE_CURRENT_LIST_DIR}/${class}.cpp")
endforeach()

include("${CMAKE_CURRENT_LIST_DIR}/models/CmakeListsInclude.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/usecases/CmakeListsInclude.cmake")

MESSAGE("-- APP include")
