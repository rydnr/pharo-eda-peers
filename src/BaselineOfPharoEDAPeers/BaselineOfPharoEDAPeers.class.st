"
**Class**

I'm a baseline to load PharoEDA Peers.

**Responsibilities**

Guide Metacello to load PharoEDA-Peers with its dependencies.

**Collaborators**

Metacello
"
Class {
	#name : #BaselineOfPharoEDAPeers,
	#superclass : #BaselineOf,
	#category : #BaselineOfPharoEDAPeers
}

{ #category : #meta }
BaselineOfPharoEDAPeers class >> declareGroupsIn: spec [

	spec
		group: 'core' with: #( #'EDAPE-Domain' );
		group: 'tests' with: #( #'EDAPE-Domain-Tests' );
		group: 'default' with: #( 'core' 'tests' )
]

{ #category : #meta }
BaselineOfPharoEDAPeers class >> declarePackagesIn: spec [

	spec
		package: #'EDAPE-Domain'
		with: [ spec requires: #( 'PharoEDACommon' ) ];
		package: #'EDAPE-Domain-Tests'
		with: [ spec requires: #( 'EDAPE-Domain' ) ]
]

{ #category : #dependencies }
BaselineOfPharoEDAPeers class >> includePharoEDACommon: spec [
       spec
               baseline: 'PharoEDACommon'
               with: [ spec repository: 'github://rydnr/pharo-eda-common:main' ].
       ^ spec
]

{ #category : #baselines }
BaselineOfPharoEDAPeers >> baseline: spec [

	<baseline>
	spec for: #common do: [ 
		spec blessing: #baseline.
		spec postLoadDoIt: #postload:package:.
		self class includePharoEDACommon: spec;
		 declarePackagesIn: spec;
		 declareGroupsIn: spec ]
]

{ #category : #hooks }
BaselineOfPharoEDAPeers >> postload: loader package: packageSpec [

	| location |
	location := (IceRepository registry detect: [ :each | 
		             each name = 'pharo-eda-peers' ]) location.
	"EDACIconProvider addDefaultLocation: location / 'resources' / 'icons'.
	EDACTranslationProvider addDefaultLocation:
		location / 'resources' / 'l10n'"
]
