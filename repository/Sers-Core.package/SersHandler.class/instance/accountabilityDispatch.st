accountability
accountabilityDispatch
  <post>
  <path: '/accountability'>
  <produces: 'application/json'>
  <consumes: '*/json'>
  | json oper |
  json := MCFileTreeJsonParser parse: self requestContext request rawBody.
  oper := json at: 'oper' ifAbsent: [ nil ].
  oper = 'happenings'
    ifTrue: [ ^ self happenings: json ].
  oper isNil
    ifTrue: [ ^ self respondNotOk: 'Expecting oper parameter' ].
  ^ self respondNotOk: 'unknown operation ' , oper