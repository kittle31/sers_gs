as yet unclassified
chX: x Y: y Z: z
  "Ch(x,y,z) = (x and y) xor ((not x) and z)"

  xnlf
    set: x;
    bitInvert;
    bitAnd: z.
  nlf
    set: x;
    bitAnd: y;
    bitXor: xnlf