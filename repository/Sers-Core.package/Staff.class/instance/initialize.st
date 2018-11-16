initialize release
initialize
  "Initialize a newly created instance. This method must answer the receiver."

  super initialize.	" *** Edit the following to properly initialize instance variables ***"
  firstName := nil.
  lastName := nil.
  startDate := Date today.
  schedule := nil.
  notes := OrderedCollection new.
  roles := OrderedCollection new.
  ^ self