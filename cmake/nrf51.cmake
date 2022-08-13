set(CPU_PARAMETERS
    -mcpu=cortex-m0
    -mthumb -mabi=aapcs
    -mfloat-abi=soft
    -Xlinker
    )

set(MCU_DEFINITONS
    BOARD_PCA10028
    NRF51
    SWI_DISABLE0
    S110
    SOFTDEVICE_PRESENT
    BLE_STACK_SUPPORT_REQD
    # BSP_DEFINES_ONLY
    )

set(STARTUP_SCRIPT ${CMAKE_SOURCE_DIR}/external/nrf51sdk1000dc26b5e/components/toolchain/gcc/gcc_startup_nrf51.s)
