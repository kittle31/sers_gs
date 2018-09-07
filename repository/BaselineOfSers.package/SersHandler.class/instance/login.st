as yet unclassified
login
  <get>
  <path: '/login'>
  <produces: 'text/json'>
  self requestContext
    respond: [ :response | 
      response contentType: 'text/json'.
      (Staff objects at: 1) printJsonOn: response ]