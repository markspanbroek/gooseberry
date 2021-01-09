template setup*(body) =
  proc setup {.exportc.} =
    body

template loop*(body) =
  proc loop {.exportc.} =
    body
