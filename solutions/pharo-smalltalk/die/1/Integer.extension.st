Extension { #name : #Integer }

{ #category : '*Exercise@Die' }
Integer >> d10 [

	| dieHandle |
	dieHandle := DieHandle new.
	self timesRepeat: [ dieHandle addDie: (Die withFaces: 10) ].
	^ dieHandle
]

{ #category : '*Exercise@Die' }
Integer >> d20 [

	| dieHandle |
	dieHandle := DieHandle new.
	self timesRepeat: [ dieHandle addDie: (Die withFaces: 20) ].
	^ dieHandle
]
