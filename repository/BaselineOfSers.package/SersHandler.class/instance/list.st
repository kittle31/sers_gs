as yet unclassified
list
  <get>
  self requestContext
    respond: [ :response | 
      response contentType: 'text/plain'.
      response nextPutAll: 'test value' ]