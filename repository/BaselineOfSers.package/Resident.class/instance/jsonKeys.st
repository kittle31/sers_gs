as yet unclassified
jsonKeys
  | col |
  col := super jsonKeys.
  col
    addAll:
      #(#'birthdate' #'address' #'ssn' #'homePhone' #'cellPhone' #'messagePhone' #'exitDate' #'allergy').
  ^ col