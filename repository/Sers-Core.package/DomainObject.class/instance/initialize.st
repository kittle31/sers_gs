as yet unclassified
initialize
  "Initialize a newly created instance. This method must answer the receiver."

  super initialize.
  creationDate := TimeStamp now.
  createdBy := nil.
  changeDate := nil.
  changedBy := nil.
  ^ self