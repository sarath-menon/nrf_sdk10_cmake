# PROGRAM = build/apps/uart/uart_demo
# PROGRAM = build/apps/blinky/blinky
PROGRAM = build/apps/bluetooth_demo/bluetooth_demo
# PROGRAM = build/apps/blinky_s130/blinky_s130

OPENOCD           ?= openocd
OPENOCD_DIR       ?=
OPENOCD_INTERFACE ?= $(OPENOCD_DIR)interface/stlink.cfg
OPENOCD_TARGET    ?= target/nrf51.cfg
OPENOCD_CMDS      ?=

S130_SOFTDEVICE = external/nRF5_SDK_12.3.0_d7731ad/components/softdevice/s130/hex/s130_nrf51_2.0.1_softdevice

make:
	ninja -Cbuild

flash:
	ninja -Cbuild
	$(OPENOCD) -d2 -f $(OPENOCD_INTERFACE) $(OPENOCD_CMDS) -f $(OPENOCD_TARGET)  -c init -c targets -c "reset halt" \
                 -c "flash write_image erase $(PROGRAM).hex" -c "verify_image $(PROGRAM).hex" \
                 -c "reset run" -c shutdown

mass_erase:
	$(OPENOCD) -d2 -f $(OPENOCD_INTERFACE) $(OPENOCD_CMDS) -f $(OPENOCD_TARGET) -c init -c targets -c "reset halt" \
                 -c "nrf51 mass_erase" -c shutdown

flash_s110v8:
	$(OPENOCD) -d2 -f $(OPENOCD_INTERFACE) $(OPENOCD_CMDS) -f $(OPENOCD_TARGET) -c init -c targets -c "reset halt" \
                 -c "nrf51 mass_erase" \
                 -c "flash write_image erase bootloaders/nrf51_s110_v8.hex" \
                 -c "reset run" -c shutdown