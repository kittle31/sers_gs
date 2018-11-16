json
jsonKeysDefault
  | col |
  col := super jsonKeysDefault.
  col
    addAll:
      #(#'birthdate' #'address' ssn #'homePhone' #'cellPhone' #'messagePhone'
		allergy emContactName emContactPhone referredBy referredPhone).
  ^ col