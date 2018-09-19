updating
updateDate: aString from: aDict
	| value symbol date day year |
	value := aDict at: aString ifAbsent: [nil].
	value isNil ifTrue: [^nil].

	day := value at: 'dayOfYear' ifAbsent: [nil].
	year := value at: 'year' ifAbsent: [nil].
	date := Date newDay: day year: year.
 
	symbol := (aString, ':') asSymbol.	
	self perform: symbol with: date.