Class {
	#name : #Grains,
	#superclass : #Object,
	#category : #'Exercise@Grains'
}

{ #category : #accessing }
Grains >> atSquare: anInteger [
	(anInteger between: 1 and: 64) 
		ifFalse: [ self error: 'square must be between 1 and 64' ].
	anInteger = 1 
		ifTrue: [ ^ 1 ]
		ifFalse: [^ (self atSquare: anInteger - 1) * 2]
]

{ #category : #accessing }
Grains >> total [
	^ (1 to: 64) sum: [ :n | self atSquare: n ].
]
