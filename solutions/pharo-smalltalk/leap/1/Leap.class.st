Class {
	#name : #Leap,
	#superclass : #Object,
	#category : #'Exercise@Leap'
}

{ #category : #'as yet unclassified' }
Leap >> leapYear: aYear [

	^ (aYear isDivisibleBy: 4) and: [ 
		  (aYear isDivisibleBy: 100) ifTrue: [ aYear isDivisibleBy: 400 ] ifFalse: true]
]
