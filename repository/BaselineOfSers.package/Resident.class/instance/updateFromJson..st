updating
updateFromJson: aDict
	"update this obj with values from aDict"
	super updateFromJson: aDict.
	self update: 'ssn' from: aDict.
	self update: 'birthdate' from: aDict.