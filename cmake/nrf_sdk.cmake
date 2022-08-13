set(SDK_ROOT ${CMAKE_SOURCE_DIR}/external/nrf51sdk1000dc26b5e)

set(NRF_SDK_SRC_FILES
        ${SDK_ROOT}/components/libraries/button/app_button.c
        ${SDK_ROOT}/components/libraries/util/app_error.c
        ${SDK_ROOT}/components/libraries/timer/app_timer.c
        ${SDK_ROOT}/components/libraries/trace/app_trace.c
        ${SDK_ROOT}/components/libraries/util/nrf_assert.c
        ${SDK_ROOT}/components/libraries/uart/retarget.c
        ${SDK_ROOT}/components/libraries/uart/app_uart.c
        ${SDK_ROOT}/components/drivers_nrf/delay/nrf_delay.c
        ${SDK_ROOT}/components/drivers_nrf/common/nrf_drv_common.c
        ${SDK_ROOT}/components/drivers_nrf/gpiote/nrf_drv_gpiote.c
        ${SDK_ROOT}/components/drivers_nrf/uart/nrf_drv_uart.c
        ${SDK_ROOT}/components/drivers_nrf/pstorage/pstorage.c
        ${SDK_ROOT}/examples/bsp/bsp.c
        ${SDK_ROOT}/examples/bsp/bsp_btn_ble.c
        ${SDK_ROOT}/components/ble/common/ble_advdata.c
        ${SDK_ROOT}/components/ble/ble_advertising/ble_advertising.c
        ${SDK_ROOT}/components/ble/common/ble_conn_params.c
        ${SDK_ROOT}/components/ble/common/ble_srv_common.c
        ${SDK_ROOT}/components/ble/device_manager/device_manager_peripheral.c
        ${SDK_ROOT}/components/toolchain/system_nrf51.c
        ${SDK_ROOT}/components/softdevice/common/softdevice_handler/softdevice_handler.c
        # ${SDK_ROOT}/components/libraries/uart/app_uart_fifo.c
        )

set(NRF_SDK_INCLUDE
        ${SDK_ROOT}/components/libraries/util
        ${SDK_ROOT}/components/drivers_nrf/pstorage
        ${SDK_ROOT}/components/toolchain/gcc
        ${SDK_ROOT}/components/toolchain
        ${SDK_ROOT}/components/ble/common
        ${SDK_ROOT}/components/drivers_nrf/common
        ${SDK_ROOT}/components/ble/ble_advertising
        # ${SDK_ROOT}/components/drivers_nrf/config
        ${SDK_ROOT}/components/libraries/trace
        ${SDK_ROOT}/components/drivers_nrf/gpiote
        ${SDK_ROOT}/components/libraries/gpiote
        ${SDK_ROOT}/components/ble/device_manager
        ${SDK_ROOT}/components/drivers_nrf/uart
        ${SDK_ROOT}/components/libraries/uart
        ${SDK_ROOT}/components/device
        ${SDK_ROOT}/components/softdevice/common/softdevice_handler
        ${SDK_ROOT}/components/softdevice/s110/headers
        ${SDK_ROOT}/components/drivers_nrf/delay
        ${SDK_ROOT}/components/libraries/timer
        ${SDK_ROOT}/components/drivers_nrf/hal
        ${SDK_ROOT}/components/libraries/button
        ${SDK_ROOT}/examples/bsp
)