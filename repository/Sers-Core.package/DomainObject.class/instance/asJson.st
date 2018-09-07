json
asJson
  "return a json string for sending this object to the client"

  | str |
  str := WriteStream on: (String new: 25).
  str nextPut: ${.
  self jsonVars
    do: [ :var | 
      str nextPut: $".
      str nextPutAll: var str nextPutAll: '" : ' ].
  str nextPut: $}.
  ^ str contents