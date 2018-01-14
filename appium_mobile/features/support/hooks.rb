# Before do
#   $driver.start_driver
# end
#
# After do
#   sleep 3
#   $driver.driver_quit
# end
# wifi real device remote
# $ adb devices

# $ adb tcpip 5555
#
# $ adb shell ip -f inet addr show wlan0
#
# $ adb connect 10.75.37.214:5555
#
# $ adb devices
