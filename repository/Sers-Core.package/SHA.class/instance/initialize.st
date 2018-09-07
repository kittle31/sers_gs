as yet unclassified
initialize
  block := ByteArray new: self blockSize.
  h0 := ThirtyTwoBitRegister new.
  h1 := ThirtyTwoBitRegister new.
  h2 := ThirtyTwoBitRegister new.
  h3 := ThirtyTwoBitRegister new.
  h4 := ThirtyTwoBitRegister new.
  a := ThirtyTwoBitRegister new.
  b := ThirtyTwoBitRegister new.
  c := ThirtyTwoBitRegister new.
  d := ThirtyTwoBitRegister new.
  e := ThirtyTwoBitRegister new.
  nlf := ThirtyTwoBitRegister new.
  xnlf := ThirtyTwoBitRegister new.
  w := Array new: 80.
  1 to: 20 do: [ :i | w at: i put: ThirtyTwoBitRegister new ].
  21 to: 80 do: [ :i | w at: i put: (w at: i - 20) ].	"just saving 60 register instances, they are not all needed at the same time"
  t := ThirtyTwoBitRegister new.
  self reset