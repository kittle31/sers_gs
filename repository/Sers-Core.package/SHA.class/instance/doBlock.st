as yet unclassified
doBlock
  k := K1.
  1 to: 20 do: [ :i | 
    self
      chX: b Y: c Z: d;
      updateTRound: i;
      shuffleRegisters ].
  k := K2.
  21 to: 40 do: [ :i | 
    self
      updateWAt: i;
      parityX: b Y: c Z: d;
      updateTRound: i;
      shuffleRegisters ].
  k := K3.
  41 to: 60 do: [ :i | 
    self
      updateWAt: i;
      majX: b Y: c Z: d;
      updateTRound: i;
      shuffleRegisters ].
  k := K4.
  61 to: 80 do: [ :i | 
    self
      updateWAt: i;
      parityX: b Y: c Z: d;
      updateTRound: i;
      shuffleRegisters ]