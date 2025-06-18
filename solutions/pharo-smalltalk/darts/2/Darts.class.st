Class {
	#name : 'Darts',
	#superclass : 'Object',
	#category : 'Exercise@Darts',
	#package : 'Exercise@Darts'
}

{ #category : 'as yet unclassified' }
Darts >> scoreX: xInteger y: yInteger [

	| distanceFromCentre |
	distanceFromCentre := (xInteger @ yInteger) r.
	distanceFromCentre <= 1 ifTrue: [ ^ 10 ].
	distanceFromCentre <= 5 ifTrue: [ ^ 5 ].
	distanceFromCentre <= 10 ifTrue: [ ^ 1 ].
	^ 0
]
