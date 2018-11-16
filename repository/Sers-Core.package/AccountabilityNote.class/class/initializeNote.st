initialize
initializeNote
  | note |
  AccountabilityNotes := OrderedCollection new.
  note := self new.
  note notes: 'Beginning of time'.
  note createdBy: 'system'.
  self objects add: note