set(CMAKE_SYSTEM_NAME Linux)

set(CMAKE_C_COMPILER ${TOOL_DIR}/${COMPILER_PREFIX}-gcc)
set(CMAKE_CXX_COMPILER ${TOOL_DIR}/${COMPILER_PREFIX}-g++)
set(CMAKE_AR ${TOOL_DIR}/${COMPILER_PREFIX}-ar)
set(CMAKE_LINKER ${TOOL_DIR}/${COMPILER_PREFIX}-ld)
set(CMAKE_NM ${TOOL_DIR}/${COMPILER_PREFIX}-nm)
set(CMAKE_OBJDUMP ${TOOL_DIR}/${COMPILER_PREFIX}-objdump)
set(CMAKE_RANLIB ${TOOL_DIR}/${COMPILER_PREFIX}-ranlib)
set(CMAKE_STAGING_PREFIX ${LIBRARY_DIR}/${COMPILER_PREFIX})
set(CMAKE_PREFIX_PATH ${CMAKE_STAGING_PREFIX})

include_directories(SYSTEM ${CMAKE_STAGING_PREFIX}/include)
include_directories(SYSTEM ${CMAKE_STAGING_PREFIX}/openssl/include)
set(CMAKE_FIND_ROOT_PATH ${CMAKE_STAGING_PREFIX})
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
link_directories(${CMAKE_STAGING_PREFIX})

if(CMAKE_SYSTEM_PROCESSOR MATCHES "mips32")
	link_libraries(atomic)
endif()
