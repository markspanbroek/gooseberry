#include "led.h"
#include "Arduino.h"

void led_setup() {
  pinMode(LED_BUILTIN, OUTPUT);
}

void led_on() {
  digitalWrite(LED_BUILTIN, HIGH);
}

void led_off() {
  digitalWrite(LED_BUILTIN, LOW);
}
