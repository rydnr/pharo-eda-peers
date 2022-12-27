"
I'm the exception to trigger when help from peers is requested.

I invoke the flow of finding the peer.

I collaborate with EDAPEPeers.
"
Class {
	#name : #PeerHelpNeeded,
	#superclass : #Exception,
	#instVars : [
		'selector'
	],
	#category : #'EDAPE-Domain-Exceptions'
}

{ #category : #signalling }
PeerHelpNeeded class >> signalFor: aSelector [

	^ self new selector: aSelector; signal
]

{ #category : #handling }
PeerHelpNeeded >> defaultAction [

	self halt
]

{ #category : #accessing }
PeerHelpNeeded >> selector [

	^ selector
]

{ #category : #accessing }
PeerHelpNeeded >> selector: anObject [

	selector := anObject
]
