json
jsonKeysDefault
  | col |
  col := super jsonKeysDefault.
  col
    addAll:
      #(#'firstName' #'lastName' #'title' #'userid' #'startDate' exitDate active).
  ^ col