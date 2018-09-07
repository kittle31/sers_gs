as yet unclassified
updateWith: aByteArray
  "Update the hash function with the data from aByteArray"

  ^ self updateWithNext: aByteArray size from: aByteArray readStream