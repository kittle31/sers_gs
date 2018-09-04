rendering
renderContentOn: html
  | data |
  self context: self requestContext.
  req := context request.
  req method = 'OPTIONS'
    ifTrue: [ 
      context
        respond: [ :response | 
          response contentType: 'text/plain'.
          response headerAt: 'Access-Control-Allow-Origin' put: '*'.
          response
            headerAt: 'Access-Control-Allow-Methods'
            put: 'POST, GET, OPTIONS'.
          response
            headerAt: 'Access-Control-Allow-Headers'
            put: self authTokenName.
          response
            headerAt: 'Access-Control-Expose-Headers'
            put: self authTokenName ] ].
  (self checkToken: req)
    ifTrue: [ data := self perform: (req url path at: 2) asSymbol ]
    ifFalse: [ self context response forbidden ].
  context
    respond: [ :response | 
      response contentType: 'application/json'.
      response nextPutAll: data asJson.
      response headerAt: 'Access-Control-Allow-Origin' put: '*'.
      response headerAt: 'Access-Control-Expose-Headers' put: self authTokenName ].
  self halt