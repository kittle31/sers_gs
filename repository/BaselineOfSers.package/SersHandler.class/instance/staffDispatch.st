staff
staffDispatch
  <post>
  <path: '/staff'>
  <produces: 'application/json'>
  <consumes: '*/json'>
  | json oper |
  json := MCFileTreeJsonParser parse: self requestContext request rawBody.
  oper := json at: 'oper' ifAbsent: [ nil ].
  oper isNil
    ifTrue: [ ^ self respondNotOk: 'Expecting oper parameter' ].
  oper = 'list'
    ifTrue: [ ^ self staffList ].

 ^ self respondNotOk: 'unknown operation ' , oper