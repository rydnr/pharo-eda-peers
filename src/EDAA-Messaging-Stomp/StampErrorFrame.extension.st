Extension { #name : #StampErrorFrame }

{ #category : #'*EDAA-Messaging-Stomp' }
StampErrorFrame >> contentType [

	^ self contentTypeIfAbsent: StampConstants defaultErrorContentType
]
