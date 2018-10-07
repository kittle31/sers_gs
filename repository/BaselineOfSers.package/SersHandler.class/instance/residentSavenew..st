residents
residentSavenew: json
  | res new oop |
  res := json at: 'resident' ifAbsent: [ nil ].
  res isNil
    ifTrue: [ ^ self responeNotOk: 'Missing resident field' ].
  oop := res at: 'oop' ifAbsent: [ nil ].
  oop isNil
    ifTrue: [ ^ self respondNotOk: 'Resident missing oop' ].
  new := Resident objects detect: [ :item | item oop = oop ] ifNone: [ nil ].
  new isNil
    ifFalse: [ ^ self respondNotOk: 'Duplicate resident with oop ' , oop printString ].
  new := Resident new.
  new updateFromJson: res.
  Resident objects add: new.
  self respondOk: true