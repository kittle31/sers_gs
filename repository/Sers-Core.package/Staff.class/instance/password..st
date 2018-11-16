accessing
password: anObject
  password = anObject
    ifTrue: [ ^ self ].
  password := self class hash: anObject