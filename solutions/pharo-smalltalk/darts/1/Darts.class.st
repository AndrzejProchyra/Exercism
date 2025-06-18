Class {
	#name : 'Darts',
	#superclass : 'Object',
	#category : 'Exercise@Darts',
	#package : 'Exercise@Darts'
}

{ #category : 'as yet unclassified' }
Darts >> scoreX: xInteger y: yInteger [

	| distanceFromCentre |
	distanceFromCentre := (0 @ 0 squaredDistanceTo: xInteger @ yInteger)
		                      sqrt.
	distanceFromCentre <= 1 ifTrue: [ ^ 10 ].
	distanceFromCentre <= 5 ifTrue: [ ^ 5 ].
	distanceFromCentre > 10 ifTrue: [ ^ 0 ].
	^ 1
]
