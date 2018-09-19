as yet unclassified
staffList
  <get>
  <path: '/staff/list'>
  self requestContext
    respond: [ :response | 
      response contentType: 'application/json'.
 		(Staff objects collect: [ : item | item asLightweight]) printJsonOn: response.
	]