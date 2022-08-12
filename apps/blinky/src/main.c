#include "app_error.h"
#include "app_timer.h"
#include "app_trace.h"
#include "ble.h"
#include "ble_advdata.h"
#include "ble_advertising.h"
#include "ble_conn_params.h"
#include "ble_hci.h"
#include "ble_srv_common.h"
// #include "boards.h"
// #include "bsp.h"
// #include "bsp_btn_ble.h"
#include "device_manager.h"
#include "nordic_common.h"
#include "nrf.h"
#include "nrf_delay.h"
#include "nrf_gpio.h"
#include "pstorage.h"
#include "softdevice_handler.h"
#include <stdint.h>
#include <string.h>


#define LED_PIN 13

int main(void) {
  nrf_gpio_cfg_output(LED_PIN);

  while (true) {
    // nrf_gpio_pin_set(LED_PIN);
    // nrf_delay_ms(1000);
    // nrf_gpio_pin_clear(LED_PIN);
    // nrf_delay_ms(1000);

    nrf_gpio_pin_toggle(LED_PIN);
    nrf_delay_ms(500);
  }
}
