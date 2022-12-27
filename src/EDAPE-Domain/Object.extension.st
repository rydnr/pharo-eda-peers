Extension { #name : #Object }

{ #category : #'*EDAPE-Domain' }
Object >> peerHelpNeeded [

	<debuggerCompleteToSender>
	PeerHelpNeeded signalFor: thisContext sender selector
]
