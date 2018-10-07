updating
updateFromJson: aDict
  "update this obj with values from aDict"

  super updateFromJson: aDict.
  self update: 'areaCode' from: aDict.
  self update: 'prefix' from: aDict.
  self update: 'suffix' from: aDict.
  self update: 'extension' from: aDict