template setup*(body) =
  proc setup {.exportc.} =
    body

template loop*(body) =
  proc loop {.exportc.} =
    body

{.push importc, nodecl, header:"Arduino.h".}

var LED_BUILTIN*: int
var INPUT*: int
var OUTPUT*: int
var HIGH*: int
var LOW*: int

proc delay*(milliseconds: int)
proc pinMode*(pin: int, mode: int)
proc digitalWrite*(pin: int, value: int)

{.pop.}
