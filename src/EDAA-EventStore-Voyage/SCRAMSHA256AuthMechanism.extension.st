Extension { #name : #SCRAMSHA256AuthMechanism }

{ #category : #'*EDAA-EventStore-Voyage' }
SCRAMSHA256AuthMechanism class >> mechanismName [

	^ 'SCRAM-SHA-256'
]

{ #category : #'*EDAA-EventStore-Voyage' }
SCRAMSHA256AuthMechanism >> mechanismName [

	^ self class mechanismName
]

{ #category : #'*EDAA-EventStore-Voyage' }
SCRAMSHA256AuthMechanism class >> textDescription [

	^ 'SCRAM-SHA-256'
]
