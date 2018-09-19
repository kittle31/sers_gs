as yet unclassified
respondNotOk: aValue
	"return failed response"
	| dict |
	dict := Dictionary new.
	dict at: 'success' put: false.
	self requestContext respond: [ :response | 
		response contentType: 'application/json'.
		dict at: 'message' put: aValue.
		dict printJsonOn: response.
	]