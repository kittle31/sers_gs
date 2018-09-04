services
writeJsonVariables: aCol for: obj on: aStream
  "write the collection of variables to aStream in json format"

  aCol
    do: [ :varName | 
      aStream nextPut: $".
      aStream nextPutAll: varName.
      aStream nextPutAll: '": '.
      (obj perform: varName) jsonOn: aStream ]
    separatedBy: [ aStream nextPut: $, ]