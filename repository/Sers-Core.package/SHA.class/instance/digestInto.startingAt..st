as yet unclassified
digestInto: aByteArray startingAt: start
  "Write the current digest value into aByteArray at index start"

  self enoughRoomToPad
    ifTrue: [ self singlePaddedDigestInto: aByteArray startingAt: start ]
    ifFalse: [ self doublePaddedDigestInto: aByteArray startingAt: start ]