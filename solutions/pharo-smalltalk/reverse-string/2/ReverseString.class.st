Class {
	#name : #ReverseString,
	#superclass : #Object,
	#category : #'Exercise@ReverseString'
}

{ #category : #'as yet unclassified' }
ReverseString >> reverseValue: aString [

	^String streamContents: [ :stream | (aString size) to: 1 by: -1 do: [ :i | stream nextPut: (aString at: i) ] ]
	

]
