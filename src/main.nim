import pkg/nim-arduino/arduino
import pkg/nim-neopixel/neopixel
import pkg/nim-ili9341/ili9341

let pixel = initNeoPixel(1, 11)
let tft = initIli9321(9, 10)

setup:
  pinMode(LED_BUILTIN, OUTPUT)
  pixel.begin()
  pixel.setPixelColor(0, 2, 4, 0, 0)
  pixel.show()
  tft.begin()
  tft.setRotation(1)
  tft.println("Hello World!")

loop:
  digitalWrite(LED_BUILTIN, HIGH)
  delay(1000)
  digitalWrite(LED_BUILTIN, LOW)
  delay(1000)
  pixel.clear()
  pixel.show()
