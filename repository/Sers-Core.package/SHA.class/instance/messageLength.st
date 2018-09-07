as yet unclassified
messageLength
  "Returns current length of the message in bits"

  ^ total * self blockSize + position bitShift: 3