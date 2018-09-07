operations
findUser: aUserID
  ^ self objects detect: [ :item | item userid = aUserID ] ifNone: [ nil ]