residents
residentDispatch
  <post>
  <path: '/resident'>
  <produces: 'application/json'>
  <consumes: '*/json'>
  | json oper |
  json := MCFileTreeJsonParser parse: self requestContext request rawBody.
  oper := json at: 'oper' ifAbsent: [ nil ].
  oper isNil
    ifTrue: [ ^ self respondNotOk: 'Expecting oper parameter' ].
  oper = 'list'
    ifTrue: [ ^ self residentList ].
  oper = 'get'
    ifTrue: [ ^ self getResident: json ].
  oper = 'save'
    ifTrue: [ ^ self residentSave: json ].
  oper = 'saveNew'
    ifTrue: [ ^ self residentSavenew: json ].
  oper = 'new'
    ifTrue: [ ^ self respondOk: Resident new ].
  ^ self respondNotOk: 'unknown operation ' , oper