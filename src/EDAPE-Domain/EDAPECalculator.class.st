"
I represent an entity expected to perform calculations.

I actually don't know how to perform calculations. I rely upon peers to help me.
"
Class {
	#name : #EDAPECalculator,
	#superclass : #Object,
	#category : #'EDAPE-Domain-Examples'
}

{ #category : #adding }
EDAPECalculator >> add: anInteger and: anotherInteger [

	self peerHelpNeeded
]
