as yet unclassified
majX: x Y: y Z: z
  "Maj(x,y,z) = (x and y) xor (x and z) xor (y and z)"

  xnlf
    set: x;
    bitAnd: z.
  nlf
    set: x;
    bitAnd: y;
    bitXor: xnlf.
  xnlf
    set: y;
    bitAnd: z.
  nlf bitXor: xnlf