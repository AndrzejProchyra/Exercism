Class {
	#name : 'SecretHandshake',
	#superclass : 'Object',
	#category : 'Exercise@SecretHandshake',
	#package : 'Exercise@SecretHandshake'
}

{ #category : 'private' }
SecretHandshake >> commandMappings [

	^ {
		  (2r1 -> 'wink').
		  (2r10 -> 'double blink').
		  (2r100 -> 'close your eyes').
		  (2r1000 -> 'jump') } asOrderedDictionary
]

{ #category : 'API' }
SecretHandshake >> commandsNumber: anInteger [

	| commands |
	commands := self translateCommandsFrom: anInteger.
	(self containsReverseCode: anInteger) ifTrue: [ ^ commands reversed ].
	^ commands
]

{ #category : 'private' }
SecretHandshake >> containsReverseCode: anInteger [

	^ anInteger allMask: 2r10000
]

{ #category : 'private' }
SecretHandshake >> translateCommandsFrom: anInteger [

	| commands |
	commands := OrderedCollection new.
	self commandMappings keysAndValuesDo: [ :code :command |
		(anInteger allMask: code) ifTrue: [ commands add: command ] ].
	^ commands asArray
]
