json
jsonKeysDefault
  | col |
  col := super jsonKeysDefault.
  col add: 'notes'.
  col add: 'creationDate'.
  ^ col