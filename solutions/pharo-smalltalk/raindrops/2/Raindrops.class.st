Class {
	#name : 'Raindrops',
	#superclass : 'Object',
	#category : 'Exercise@Raindrops',
	#package : 'Exercise@Raindrops'
}

{ #category : 'API' }
Raindrops >> convertNumber: anInteger [

	| result |
	result := self soundFor: anInteger.
	^ result ifEmpty: [ ^ anInteger asString ]
]

{ #category : 'private' }
Raindrops >> soundFor: anInteger [

	^ String streamContents: [ :stream |
		  self sounds keysAndValuesDo: [ :factor :sound |
			  (anInteger isDivisibleBy: factor) ifTrue: [
				  stream nextPutAll: sound ] ] ]
]

{ #category : 'private' }
Raindrops >> sounds [

	^ {
		  (3 -> 'Pling').
		  (5 -> 'Plang').
		  (7 -> 'Plong') } asDictionary
]
