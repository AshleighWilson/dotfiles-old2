#!/usr/bin/env sh
sleep 5
echo 0 > /sys/bus/pci/devices/0000\:01\:00.0/d3cold_allowed
echo '1-3' | tee /sys/bus/usb/drivers/usb/unbind
echo '1-3' | tee /sys/bus/usb/drivers/usb/bind
