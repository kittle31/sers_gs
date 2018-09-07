as yet unclassified
updateWAt: i
  (w at: i)
    set: (w at: i - 3);
    bitXor: (w at: i - 8);
    bitXor: (w at: i - 14);
    bitXor: (w at: i - 16);
    leftRotateBy: 1