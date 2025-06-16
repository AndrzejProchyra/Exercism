Class {
	#name : #ReverseString,
	#superclass : #Object,
	#category : #'Exercise@ReverseString'
}

{ #category : #'as yet unclassified' }
ReverseString >> reverseValue: aString [

	| reversed |
	reversed := WriteStream on: (String new: aString size).
	aString size to: 1 by: -1 do: [ :i | 
	reversed nextPut: (aString at: i) ].
	^ reversed contents
]
