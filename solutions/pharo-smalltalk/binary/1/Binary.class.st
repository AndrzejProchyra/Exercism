Class {
	#name : 'Binary',
	#superclass : 'Object',
	#category : 'Exercise@Binary',
	#package : 'Exercise@Binary'
}

{ #category : 'api' }
Binary >> decimalFromBinary: aString [

	| total |
	('01' includesAll: aString) ifFalse: [ ^ nil ].
	total := 0.
	aString reverseWithIndexDo: [ :each :index |
		total := total
		         + (each digitValue * (2 raisedTo: aString size - index)) ].
	^ total
]
