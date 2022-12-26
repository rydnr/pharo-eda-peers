Extension { #name : #MongoAuthMechanism }

{ #category : #'*EDAA-EventStore-Voyage' }
MongoAuthMechanism class >> from: aString [

	^ (self allSubclasses select: [ :s | 
		   s isAbstract not and: [ s mechanismName = aString ] ])
		  ifEmpty: [ Mongo defaultAuthMechanismClass ]
		  ifNotEmpty: [ :c | c first ]
]

{ #category : #'*EDAA-EventStore-Voyage' }
MongoAuthMechanism >> mechanismName [

	^ self subclassResponsibility
]

{ #category : #'*EDAA-EventStore-Voyage' }
MongoAuthMechanism class >> textDescription [
	self subclassResponsibility
]
