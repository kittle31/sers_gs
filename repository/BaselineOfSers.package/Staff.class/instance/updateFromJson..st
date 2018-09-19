updating
updateFromJson: aDict
	"update this obj with values from aDict"
	super updateFromJson: aDict.
	self update: 'firstName' from: aDict.
	self update: 'lastName' from: aDict.
	self update: 'title' from: aDict.
	self updateDate: 'startDate' from: aDict.
	self updateDate: 'exitDate' from: aDict.