as yet unclassified
doublePaddedDigestInto: aByteArray startingAt: start
  | backup bufferBackup wroteOne |
  backup := self backupRegisters.
  wroteOne := false.
  position < 64
    ifTrue: [ 
      block at: position + 1 put: 16r80.
      wroteOne := true.
      position + 2 to: self blockSize do: [ :i | block at: i put: 0 ] ].
  self processBlock.
  bufferBackup := block.
  block := ByteArray new: self blockSize.
  (wroteOne
    ifTrue: [ 1 ]
    ifFalse: [ 
      block at: 1 put: 16r80.
      2 ]) to: self blockSize - 8 do: [ :i | block at: i put: 0 ].
  self storeLength.
  self processBlock.
  self writeDigestInto: aByteArray startingAt: start.
  block := bufferBackup.
  self restoreRegisters: backup