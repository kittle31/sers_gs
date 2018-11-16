as yet unclassified
handleFiltered: aValue
  [ super handleFiltered: aValue ]
    on: Error , Halt , Warning
    do: [ :ex | 

				System abortTransaction.
				System beginTransaction.
          (ex isKindOf: Warning)
            ifTrue: [ 
              "record warning message in object log"
              (ObjectLogEntry warn: ex description) addToLog ]
            ifFalse: [ 
              "record continuation in object log"
              DebuggerLogEntry createContinuationLabeled: ex description ]. 
				System commitTransaction.

		ex resignalWith: nil.
	]