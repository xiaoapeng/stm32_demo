# the name of the target operating system
set(CROSS_COMPILE_PREFIX /home/simon/.local/toolchain/gcc-arm-none-eabi-10.3-2021.10/bin/arm-none-eabi-)

set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_VERSION  1)
set(CMAKE_SYSTEM_PROCESSOR  Arm)

# specify the cross compiler
set(CMAKE_C_COMPILER ${CROSS_COMPILE_PREFIX}gcc)
set(CMAKE_CXX_COMPILER ${CROSS_COMPILE_PREFIX}g++)
set(CMAKE_ASM_COMPILER ${CROSS_COMPILE_PREFIX}gcc)
set(CMAKE_OBJCOPY ${CROSS_COMPILE_PREFIX}objcopy)
set(CMAKE_OBJDUMP ${CROSS_COMPILE_PREFIX}objdump)

# find additional toolchain executables
find_program(ARM_SIZE_EXECUTABLE ${CROSS_COMPILE_PREFIX}size)
find_program(ARM_GDB_EXECUTABLE ${CROSS_COMPILE_PREFIX}gdb)
find_program(ARM_OBJCOPY_EXECUTABLE ${CROSS_COMPILE_PREFIX}objcopy)
find_program(ARM_OBJDUMP_EXECUTABLE ${CROSS_COMPILE_PREFIX}objdump)

set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)

# search for program/library/include in the build host directories
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)
