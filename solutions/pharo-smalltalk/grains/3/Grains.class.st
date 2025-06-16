Class {
	#name : #Grains,
	#superclass : #Object,
	#category : #'Exercise@Grains'
}

{ #category : #accessing }
Grains >> atSquare: anInteger [
	(anInteger between: 1 and: 64) 
		ifFalse: [ self error: 'square must be between 1 and 64' ].
	^ 2 ** (anInteger - 1)
]

{ #category : #accessing }
Grains >> total [
	^ (1 to: 64) sum: [ :n | self atSquare: n ].
]
