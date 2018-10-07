residents
residentList
  System abortTransaction.
  self respondOk: (Resident objects collect: [ :item | item asLightweight ])