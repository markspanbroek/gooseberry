import pkg/nim-arduino/arduino
import pkg/nim-neopixel/neopixel

let pixel = initNeoPixel(1, 11)

setup:
  pinMode(LED_BUILTIN, OUTPUT)
  pixel.begin()
  pixel.setPixelColor(0, 2, 4, 0, 0)
  pixel.show()

loop:
  digitalWrite(LED_BUILTIN, HIGH)
  delay(1000)
  digitalWrite(LED_BUILTIN, LOW)
  delay(1000)
  pixel.clear()
  pixel.show()
