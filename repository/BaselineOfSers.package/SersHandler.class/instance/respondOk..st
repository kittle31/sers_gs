as yet unclassified
respondOk: aValue
	"return success response"
	| dict |
	dict := Dictionary new.
	dict at: 'success' put: true.
	self requestContext respond: [ :response | 
		response contentType: 'application/json'.
		dict at: 'resp' put: aValue.
		dict printJsonOn: response.
	]