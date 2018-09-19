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
  (self findUser: new userid) ifNil: [ People add: new ].

  new := self new.
  new firstName: 'Default'.
  new lastName: 'User'.
  new active: false.
  new createdBy: 'system'.
  DefaultUser := new