Class {
	#name : 'CollatzConjecture',
	#superclass : 'Object',
	#category : 'Exercise@CollatzConjecture',
	#package : 'Exercise@CollatzConjecture'
}

{ #category : 'as yet unclassified' }
CollatzConjecture >> stepsFrom: anInteger [

	anInteger <= 0 ifTrue: [
		Error signal: 'Only positive numbers are allowed' ].
	^ self stepsFrom: anInteger with: 0
]

{ #category : 'private' }
CollatzConjecture >> stepsFrom: anInteger with: accumulator [

	anInteger <= 1 ifTrue: [ ^ accumulator ].
	^ 1 + (anInteger even
		   ifTrue: [ self stepsFrom: anInteger / 2 with: accumulator ]
		   ifFalse: [ self stepsFrom: anInteger * 3 + 1 with: accumulator ])
]
