as yet unclassified
loginUser: aUser pw: aPass
  ^ self objects
    detect: [ :item | item userid = aUser ]
    ifNone: [ DefaultUser ]