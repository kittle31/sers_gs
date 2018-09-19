json
jsonKeys
	self jsonMode isNil ifTrue: [^self jsonKeysDefault].
	^self jsonMode.