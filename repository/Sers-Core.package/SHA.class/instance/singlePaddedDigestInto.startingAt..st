as yet unclassified
singlePaddedDigestInto: aByteArray startingAt: start
  | backup |
  backup := self backupRegisters.
  block at: position + 1 put: 16r80.
  position + 2 to: self blockSize - 8 do: [ :i | block at: i put: 0 ].
  self storeLength.
  self processBlock.
  self writeDigestInto: aByteArray startingAt: start.
  self restoreRegisters: backup