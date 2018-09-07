as yet unclassified
shuffleRegisters
  | temp |
  temp := e.
  e := d.
  d := c.
  c := b.
  c leftRotateBy: 30.
  b := a.
  a := t.
  t := temp