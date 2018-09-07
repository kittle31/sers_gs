as yet unclassified
processBlock
  self
    readBlock;
    prepareWorkingRegisters;
    doBlock;
    updateDigestRegisters