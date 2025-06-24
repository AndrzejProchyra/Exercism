Class {
	#name : 'Hamming',
	#superclass : 'Object',
	#category : 'Exercise@Hamming',
	#package : 'Exercise@Hamming'
}

{ #category : 'as yet unclassified' }
Hamming >> distanceStrand1: leftStrand strand2: rightStrand [

	self requireEqualLengthStrand1: leftStrand strand2: rightStrand.

	^ leftStrand size - (leftStrand howManyMatch: rightStrand)
]

{ #category : 'private' }
Hamming >> requireEqualLengthStrand1: leftStrand strand2: rightStrand [

	leftStrand size = rightStrand size ifTrue: [ ^ self ].
	leftStrand isEmpty ifTrue: [
		Error signal: 'left strand must not be empty' ].
	rightStrand isEmpty ifTrue: [
		Error signal: 'right strand must not be empty' ].
	Error signal: 'left and right strands must be of equal length'
]
