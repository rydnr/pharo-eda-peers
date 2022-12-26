Extension { #name : #StampConstants }

{ #category : #'*EDAA-Messaging-Stomp' }
StampConstants class >> defaultContentType [

	<doc>
	^ 'application/json'
]

{ #category : #'*EDAA-Messaging-Stomp' }
StampConstants class >> defaultErrorContentType [

	<doc>
	^ self defaultContentType
]
