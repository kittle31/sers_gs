updating
updateFromJson: aDict
  "update this obj with values from aDict"

  super updateFromJson: aDict.
  self updateDate: 'birthdate' from: aDict.
  self address updateFromJson: (aDict at: 'address').
  self update: 'ssn' from: aDict.
  self homePhone updateFromJson: (aDict at: 'homePhone').
  self cellPhone updateFromJson: (aDict at: 'cellPhone').
  self messagePhone updateFromJson: (aDict at: 'messagePhone').
  self update: 'allergy' from: aDict.
  self update: 'emContactName' from: aDict.
  self emContactPhone updateFromJson: (aDict at: 'emContactPhone').
  self update: 'referredBy' from: aDict.
  self referredPhone updateFromJson: (aDict at: 'referredPhone')