json
jsonKeysDefault
  | col |
  col := super jsonKeysDefault.
  col addAll: #(#'addressLine1' #'apartmentNumber' #'city' #'st' #'zipCode').
  ^ col