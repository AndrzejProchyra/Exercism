Class {
	#name : #ResistorColorDuo,
	#superclass : #Object,
	#instVars : [
		'colorValues'
	],
	#category : #'Exercise@ResistorColorDuo'
}

{ #category : #'as yet unclassified' }
ResistorColorDuo >> initialize [

	colorValues := #( 'black' 'brown' 'red' 'orange' 'yellow' 'green'
	                   'blue' 'violet' 'grey' 'white' )
]

{ #category : #'as yet unclassified' }
ResistorColorDuo >> valueOf: aColor [

	| colorIndex |
	colorIndex := colorValues indexOf: aColor.
	colorIndex = 0 ifTrue: [ self error: 'Invalid color' ].

	^ colorIndex - 1
]

{ #category : #'as yet unclassified' }
ResistorColorDuo >> valueWithColors: aCollection [

	^ (self valueOf: aCollection first) * 10
	  + (self valueOf: aCollection second)
]
