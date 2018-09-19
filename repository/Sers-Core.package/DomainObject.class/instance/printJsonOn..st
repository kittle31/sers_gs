json
printJsonOn: aStream

	| keys delimiter |
	keys := self jsonKeys.
	delimiter := ''.
	aStream nextPut: ${.
	keys do: [ : key |
		aStream nextPutAll: delimiter.
		key printJsonOn: aStream.
		aStream nextPut: $:.
		(self perform: key) printJsonOn: aStream.
		delimiter := ','.
	].
	aStream nextPut: $}.
	self jsonMode: nil