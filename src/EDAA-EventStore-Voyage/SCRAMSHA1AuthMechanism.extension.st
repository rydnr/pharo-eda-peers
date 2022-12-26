Extension { #name : #SCRAMSHA1AuthMechanism }

{ #category : #'*EDAA-EventStore-Voyage' }
SCRAMSHA1AuthMechanism class >> mechanismName [

	^ 'SCRAM-SHA-1'
]

{ #category : #'*EDAA-EventStore-Voyage' }
SCRAMSHA1AuthMechanism >> mechanismName [

	^ self class mechanismName
]

{ #category : #'*EDAA-EventStore-Voyage' }
SCRAMSHA1AuthMechanism class >> textDescription [
	^ 'SCRAM-SHA-1'
]
