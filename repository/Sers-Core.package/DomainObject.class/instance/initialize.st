as yet unclassified
initialize
  "Initialize a newly created instance. This method must answer the receiver."

  super initialize.	" *** Edit the following to properly initialize instance variables ***"
  creationDate := TimeStamp now.
  createdBy := nil.
  changeDate := nil.
  changedBy := nil.	" *** And replace this comment with additional initialization code *** "
  ^ self