services
checkToken: aRequest
  "make sure the auth token in aRequest is valid.  return true/false accordingly"

  | token |
  (aRequest url path at: 2) = 'login'
    ifTrue: [ ^ true ].
  token := aRequest headerAt: self authTokenName.
  token isEmpty
    ifTrue: [ ^ false ].
  ^ true