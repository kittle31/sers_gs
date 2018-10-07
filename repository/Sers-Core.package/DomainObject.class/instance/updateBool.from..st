updating
updateBool: aString from: aDict
  | value symbol bool |
  value := aDict at: aString ifAbsent: [ nil ].
  value isNil
    ifTrue: [ ^ nil ].
  value = true
    ifTrue: [ bool := true ].
  value = false
    ifTrue: [ bool := false ].
  symbol := (aString , ':') asSymbol.
  self perform: symbol with: bool