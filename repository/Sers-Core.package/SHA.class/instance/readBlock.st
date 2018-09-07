as yet unclassified
readBlock
  "read in the message block"

  1 to: 16 do: [ :i | (w at: i) loadFrom: block at: (i - 1) * 4 + 1 ].
  17 to: 20 do: [ :i | self updateWAt: i ]