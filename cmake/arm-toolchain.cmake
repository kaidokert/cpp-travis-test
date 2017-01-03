string(LENGTH "${ARM}" arm_build_on)
set(arm_build_on ${arm_build_on} CACHE BOOL "")
if(${arm_build_on})

  set(_CMAKE_TOOLCHAIN_PREFIX arm-none-eabi- )
  set(CMAKE_C_COMPILER        ${_CMAKE_TOOLCHAIN_PREFIX}gcc)
  set(CMAKE_CXX_COMPILER      ${_CMAKE_TOOLCHAIN_PREFIX}g++)

  set(CMAKE_TRY_COMPILE_TARGET_TYPE "STATIC_LIBRARY")
  set(CMAKE_SYSTEM_NAME "Generic")

  set(CORE cortex-m3)
  set(OPTIMIZE "-Os")
  string(LENGTH "${LTO}" lto_on)
  set(lto_on ${lto_on} CACHE BOOL "" PARENT_SCOPE)
  if(${lto_on})
    set(LTO "-flto")
  endif()

  set(MCU_FLAGS
          "-mcpu=${CORE} -mthumb -mno-thumb-interwork"
          )

  set(ABI_FLAGS
          "-ffunction-sections -fdata-sections -g -specs=nano.specs -nostdlib -nostartfiles ${OPTIMIZE} ${LTO}"
          )

  set(CXX_COMPILE_FLAGS "-fno-rtti -fno-exceptions")

  set(CMAKE_CXX_FLAGS "${MCU_FLAGS} ${ABI_FLAGS} ${CXX_COMPILE_FLAGS}")
  set(CMAKE_C_FLAGS "${MCU_FLAGS} ${ABI_FLAGS}")

endif()
