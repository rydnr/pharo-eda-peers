"
I represent the person under the github account rydnr.
"
Class {
	#name : #Rydnr,
	#superclass : #EDAPEPeer,
	#classVars : [
		'Himself'
	],
	#category : #'EDAPE-Domain-People'
}

{ #category : #singleton }
Rydnr class >> himself [

	^ Himself ifNil: [ Himself := self new ]
]

{ #category : #representation }
Rydnr >> picture [

	<inspectorPresentationOrder: 0 title: 'Picture'>
	
		^ SpImagePresenter new
		  image: ((FileSystem workingDirectory / 'rydnr.png') binaryReadStreamDo: [ :stream | 
					   PNGReadWriter formFromStream: stream ]);
		  yourself
]
