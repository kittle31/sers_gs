services
login
  | user pass |
  user := self req at: 'user'.
  pass := self req at: 'pass'.
  user := Staff loginPlayer: user pw: pass.
  user isNil
    ifTrue: [ ^ self context response forbidden ].
  user auth: true.
  self context response headerAt: self authTokenName put: 'token'.
  ^ user