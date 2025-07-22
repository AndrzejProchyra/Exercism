Class {
	#name : 'Binary',
	#superclass : 'Object',
	#category : 'Exercise@Binary',
	#package : 'Exercise@Binary'
}

{ #category : 'api' }
Binary >> decimalFromBinary: aString [

	| decimal |
	(self isBinaryString: aString) ifFalse: [ ^ nil ].
	decimal := 0.
	aString reverseWithIndexDo: [ :each :index |
		decimal := decimal
		         + (each digitValue * (2 raisedTo: aString size - index)) ].
	^ decimal
]

{ #category : 'private' }
Binary >> isBinaryString: aString [

	^ '01' includesAll: aString
]
