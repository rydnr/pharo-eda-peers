Class {
	#name : #EDAAVOMongoRepository,
	#superclass : #VOMongoRepository,
	#traits : 'EDACPrintOnHelper + EDACPragmaHelper',
	#classTraits : 'EDACPrintOnHelper classTrait + EDACPragmaHelper classTrait',
	#instVars : [
		'authenticationMechanism'
	],
	#category : #'EDAA-EventStore-Voyage'
}

{ #category : #voyage }
EDAAVOMongoRepository class >> errorClass [

	^ EDAInvalidApplication
]

{ #category : #voyage }
EDAAVOMongoRepository class >> voyageCollectionName [
	^ 'EDAEventSourcingEvent'
]

{ #category : #accessing }
EDAAVOMongoRepository >> authenticationMechanism [

	^ authenticationMechanism
]

{ #category : #accessing }
EDAAVOMongoRepository >> authenticationMechanism: anObject [

	authenticationMechanism := anObject
]

{ #category : #private }
EDAAVOMongoRepository >> collectionNameFor: aClass [

	^ (self retrievePragma: #eventStoreCollection: in: aClass upTo: EDAEventSourcingEvent)
		  ifNil: [ 
			  (self retrievePragma: #eventStoreCollection: in: aClass class upTo: EDAEventSourcingEvent class)
				  ifNil: [ aClass voyageCollectionName ]
				  ifNotNil: [ :p | p arguments first ] ]
		  ifNotNil: [ :p | p arguments first ]
]

{ #category : #private }
EDAAVOMongoRepository >> mongoDatabaseFrom: mongo [

	| db |
	mongo authMechanism: (self authenticationMechanism root: mongo).
	db := mongo databaseNamed: self databaseName.
	(self username isNotNil and: [ self username notEmpty ]) ifTrue: [ 
		db username: self username password: self password ].
	^ db
]

{ #category : #persistence }
EDAAVOMongoRepository >> selectMany: aClass where: aBlock sortBy: sortBlock [
	^ self selectManyOperation
		queryClass: aClass;
		where: aBlock;
		sortBlock: sortBlock;
		execute

]
