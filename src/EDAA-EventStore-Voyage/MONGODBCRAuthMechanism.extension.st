Extension { #name : #MONGODBCRAuthMechanism }

{ #category : #'*EDAA-EventStore-Voyage' }
MONGODBCRAuthMechanism >> mechanismName [

	^ self class mechanismName
]

{ #category : #'*EDAA-EventStore-Voyage' }
MONGODBCRAuthMechanism class >> mechanismName [

	^ 'MONGODB-CR'
]

{ #category : #'*EDAA-EventStore-Voyage' }
MONGODBCRAuthMechanism class >> textDescription [
	^ 'Challenge Response'
]
