json
jsonKeysDefault
  | col |
  col := super jsonKeysDefault.
  col
    addAll:
      #(areaCode prefix suffix extension).
  ^ col