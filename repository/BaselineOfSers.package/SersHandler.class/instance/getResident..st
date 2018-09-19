residents
getResident: json
	| res anOop |
	anOop := json at: 'oop'.
	res := Resident objects detect: [ : item | item oop = anOop] ifNone: [nil].
	res isNil ifTrue: [ ^self respondNotOk: 'not found'].
	self respondOk: res