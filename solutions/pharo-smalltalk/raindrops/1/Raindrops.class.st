Class {
	#name : 'Raindrops',
	#superclass : 'Object',
	#category : 'Exercise@Raindrops',
	#package : 'Exercise@Raindrops'
}

{ #category : 'as yet unclassified' }
Raindrops >> convertNumber: anInteger [

	| sound |
	sound := ''.
	(anInteger isDivisibleBy: 3) ifTrue: [ sound := sound , 'Pling' ].
	(anInteger isDivisibleBy: 5) ifTrue: [ sound := sound , 'Plang' ].
	(anInteger isDivisibleBy: 7) ifTrue: [ sound := sound , 'Plong' ].
	sound ifEmpty: [ ^ anInteger asString ].
	^ sound
]
