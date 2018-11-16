residents
residentSave: json
	| res old oop |
	res := json at: 'resident' ifAbsent: [nil].
	res isNil ifTrue: [
		^self responeNotOk: 'Missing resident field'].
	oop := res at: 'oop' ifAbsent: [nil].
	oop isNil ifTrue: [
		^self respondNotOk: 'Resident missing oop'].

	old := Resident objects detect: [ : item | item oop = oop] ifNone: [nil].
	old isNil ifTrue: [
		^self respondNotOk: 'Cannot find resident with oop ', oop printString].
	old updateFromJson: res.
	self respondOk: true