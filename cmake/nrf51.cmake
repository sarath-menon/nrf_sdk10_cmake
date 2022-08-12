set(CPU_PARAMETERS
    -mcpu=cortex-m0
    -mthumb -mabi=aapcs
    -mfloat-abi=soft
    )

set(MCU_DEFINITONS
    BOARD_PCA10028
    NRF51
    NRF51822
    SWI_DISABLE0
    # BSP_DEFINES_ONLY
    )

set(STARTUP_SCRIPT ${CMAKE_SOURCE_DIR}/external/nrf51sdk1000dc26b5e/components/toolchain/gcc/gcc_startup_nrf51.s)
