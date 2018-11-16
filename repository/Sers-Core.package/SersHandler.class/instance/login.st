as yet unclassified
login
  <post>
  <path: '/login'>
  <produces: 'text/json'>
  <consumes: '*/json'>
  | json |
  json := MCFileTreeJsonParser parse: self requestContext request rawBody.
  self requestContext
    respond: [ :response | 
      response contentType: 'text/json'.
      (Staff loginUser: (json at: 'user') pw: (json at: 'pass')) asLightweight 
        printJsonOn: response ]