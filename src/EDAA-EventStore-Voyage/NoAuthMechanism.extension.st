Extension { #name : #NoAuthMechanism }

{ #category : #'*EDAA-EventStore-Voyage' }
NoAuthMechanism class >> mechanismName [

	^ '(none)'
]

{ #category : #'*EDAA-EventStore-Voyage' }
NoAuthMechanism >> mechanismName [

	^ self class mechanismName
]

{ #category : #'*EDAA-EventStore-Voyage' }
NoAuthMechanism class >> textDescription [

	^ '(none)'
]
