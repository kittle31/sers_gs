updating
updateDate: aString from: aDict
  | value symbol date day year |
  value := aDict at: aString ifAbsent: [ nil ].
  value isNil
    ifTrue: [ ^ nil ].
  date := Date fromString: value.
  symbol := (aString , ':') asSymbol.
  self perform: symbol with: date