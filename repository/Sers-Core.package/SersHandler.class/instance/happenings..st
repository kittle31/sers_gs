accountability
happenings: aDict
  | batch objects start |
  batch := aDict at: 'batch' ifAbsent: [ nil ].
  batch isNil
    ifTrue: [ ^ self respondNotOk: 'Missing batch key' ].
  objects := AccountabilityNote objects.
  start := objects size - batch.
  start < 1
    ifTrue: [ start := 1 ].
  ^ self respondOk: (objects copyFrom: start to: objects size)