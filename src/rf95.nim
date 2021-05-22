{.push header:"<RH_RF95.h>".}

type RF95* {.importcpp: "RH_RF95".} = object

{.push importcpp: "RH_RF95(@)", constructor.}
proc initRF95*(chipselect, interrupt: uint8): RF95
{.pop.}

{.push importcpp.}
proc init*(rf95: RF95):bool
proc setFrequency*(rf95: RF95, centre: float): bool
proc setTxPower*(rf95: RF95, power: int8, useRFO: bool = false)
proc available*(rf95: RF95): bool
proc recv*(rf95: RF95, buffer: ptr uint8, len: ptr uint8)
{.pop.}

{.pop.}

