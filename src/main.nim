import ../lib/arduino
import ../lib/led
import ../lib/sleep

setup:
  led_setup()

loop:
  led_on()
  sleep(1000)
  led_off()
  sleep(1000)
