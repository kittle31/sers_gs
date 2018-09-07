as yet unclassified
addIn: a32BitRegister
  "There's +=, but I want consistent naming and there's no good binary equivalent for xor"

  low := low + a32BitRegister low.
  hi := hi + a32BitRegister hi
    +
      (low > 16rFFFF
        ifTrue: [ 1 ]
        ifFalse: [ 0 ])
    bitAnd: 16rFFFF.
  low := low bitAnd: 16rFFFF