updating
update: aString from: aDict
	| value symbol |
	value := aDict at: aString ifAbsent: [nil].
	value isNil ifTrue: [^nil].
	symbol := (aString, ':') asSymbol.
	self perform: symbol with: value.