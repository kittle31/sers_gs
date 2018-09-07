json
jsonKeys
  | col |
  col := super jsonKeys.
  col
    addAll:
      #(#'firstName' #'lastName' #'title' #'userid' #'startDate' #'active').
  ^ col