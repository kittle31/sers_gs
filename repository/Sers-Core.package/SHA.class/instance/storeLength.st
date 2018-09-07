as yet unclassified
storeLength
  "big-endian"

  | bufferSize length |
  bufferSize := self blockSize.
  length := self messageLength.
  bufferSize to: bufferSize - 7 by: -1 do: [ :i | 
    block at: i put: (length bitAnd: 255).
    length := length bitShift: -8 ]