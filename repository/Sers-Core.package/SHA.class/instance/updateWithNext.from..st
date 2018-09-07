as yet unclassified
updateWithNext: count from: aReadStream
  "Update the hash function with count bytes from aReadStream"

  | blockSize left |
  blockSize := self blockSize.	"Try to finish current block"
  left := blockSize - position.
  count < left
    ifTrue: [ 
      aReadStream next: count into: block startingAt: position + 1.
      position := position + count.
      ^ self ].
  aReadStream next: left into: block startingAt: position + 1.
  self updateWithBlock.	"Note that we're changing the meaning of 'left' here. Hope that's OK."
  left := count - left.	"Do as many full buffers as possible"
  [ left > blockSize ]
    whileTrue: [ 
      aReadStream next: blockSize into: block startingAt: 1.
      self updateWithBlock.
      left := left - blockSize ].	"Buffer the leftover"
  aReadStream next: left into: block startingAt: 1.
  position := left