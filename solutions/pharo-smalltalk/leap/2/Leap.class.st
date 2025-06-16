Class {
	#name : #Leap,
	#superclass : #Object,
	#category : #'Exercise@Leap'
}

{ #category : #'as yet unclassified' }
Leap >> leapYear: aYear [

	^ (aYear isDivisibleBy: 4) and: [ 
		  (aYear isDivisibleBy: 400) or: [ (aYear isDivisibleBy: 100) not ] ]
]
