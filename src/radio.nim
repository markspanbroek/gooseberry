import pkg/nim-arduino/arduino
import ./rf95

type Radio* = object

proc init*(_: type Radio) =
  let rf = initRF95(chipselect = 8, interrupt = 7)
  
  const reset = Pin(4)
  digitalWrite(reset, LOW)
  delay(10)
  digitalWrite(reset, HIGH)
  delay(10)

  doAssert rf.init()
  doAssert rf.setFrequency(868.0)
  rf.setTxPower(23)

proc available*(_: type Radio): bool =
  discard # TODO: we need rf here
