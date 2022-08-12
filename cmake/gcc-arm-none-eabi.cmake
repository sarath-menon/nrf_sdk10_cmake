set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR arm)

if(MINGW OR CYGWIN OR WIN32)
    set(UTIL_SEARCH_CMD where)
elseif(UNIX OR APPLE)
    set(UTIL_SEARCH_CMD which)
endif()

set(COMPILER_PREFIX /usr/local/bin/arm-none-eabi-)

execute_process(
  COMMAND ${UTIL_SEARCH_CMD} ${TOOLCHAIN_PREFIX}gcc
  OUTPUT_VARIABLE BINUTILS_PATH
  OUTPUT_STRIP_TRAILING_WHITESPACE
)
get_filename_component(ARM_TOOLCHAIN_DIR ${BINUTILS_PATH} DIRECTORY)

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)
set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)

# cmake-format: off
set(CMAKE_C_COMPILER    ${COMPILER_PREFIX}gcc)
set(CMAKE_CXX_COMPILER  ${COMPILER_PREFIX}g++)
set(CMAKE_AR            ${COMPILER_PREFIX}ar)
set(CMAKE_RANLIB        ${COMPILER_PREFIX}ranlib)
set(CMAKE_LINKER        ${COMPILER_PREFIX}ld)
set(CMAKE_ASM_COMPILER  ${COMPILER_PREFIX}gcc)
set(CMAKE_OBJCOPY       ${COMPILER_PREFIX}objcopy)
set(CMAKE_OBJDUMP       ${COMPILER_PREFIX}objdump)
set(CMAKE_SIZE          ${COMPILER_PREFIX}size)

# Compiler flags

# flags common to both C and C++
set(COMMON_FLAGS "${COMMON_FLAGS} -Wall  -ffunction-sections -fdata-sections -fno-strict-aliasing  -fno-builtin --short-enums")
# flags specific to C++
set(CXX_FLAGS "${COMMON_FLAGS} -fno-exceptions -fno-threadsafe-statics -fno-rtti -ffunction-sections -fdata-sections -fno-strict-aliasing  -fno-builtin --short-enums")
set(CXX_FLAGS "${CXX_FLAGS} -Wall -Wextra -Wpedantic -Wsuggest-override -Wno-unused-parameter")

set(CMAKE_C_FLAGS     "${COMMON_FLAGS} ")
set(CMAKE_CXX_FLAGS   "${CXX_FLAGS}")

# Linker flags
set(LINKER_FLAGS
  -specs=nano.specs
  -specs=nosys.specs
  -Wl,--start-group
  -lc
  -lm
  -lnosys
  -lstdc++
  -Wl,--end-group
  -Wl,--print-memory-usage
  -Wl,-Map=${PROJECT_NAME}.map,--cref
  -Wl,--gc-sections
  )