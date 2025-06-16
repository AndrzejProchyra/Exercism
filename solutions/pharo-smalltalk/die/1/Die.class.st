Class {
	#name : 'Die',
	#superclass : 'Object',
	#instVars : [
		'faces',
		'random'
	],
	#category : 'Exercise@Die',
	#package : 'Exercise@Die'
}

{ #category : 'as yet unclassified' }
Die class >> withFaces: anInteger [

	^ self new setFaces: anInteger
]

{ #category : 'accessing' }
Die >> faces [

	^ faces
]

{ #category : 'initialization' }
Die >> initialize [

	faces := 6.
	random := Random new
]

{ #category : 'rolling' }
Die >> roll [

	^ random nextInteger: faces
]

{ #category : 'initialization' }
Die >> setFaces: anInteger [

	faces := anInteger
]
