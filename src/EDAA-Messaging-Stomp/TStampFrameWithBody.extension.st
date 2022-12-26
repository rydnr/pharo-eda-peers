Extension { #name : #TStampFrameWithBody }

{ #category : #'*EDAA-Messaging-Stomp' }
TStampFrameWithBody >> contentType [

	^ self contentTypeIfAbsent: StampConstants defaultContentType
]

{ #category : #'*EDAA-Messaging-Stomp' }
TStampFrameWithBody >> contentTypeIfAbsent: defaultContentType [

	^ self headerAt: #'content-type' ifAbsent: [ 
		  self
			  headerAt: #'Content-Type'
			  ifAbsent: [ defaultContentType ] ]
]

{ #category : #'*EDAA-Messaging-Stomp' }
TStampFrameWithBody >> text: string [

	self
		contentType: self contentType;
		body: string
]
