as yet unclassified
initializeStaff
  | new |
  new := self new.
  new firstName: 'Administrator'.
  new lastName: String new.
  new userid: 'admin'.
  new password: 'admin'.
  new active: true.
  new createdBy: 'system'.
  People add: new