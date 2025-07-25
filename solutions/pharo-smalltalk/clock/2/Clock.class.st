Class {
	#name : 'Clock',
	#superclass : 'Object',
	#instVars : [
		'hour',
		'minute'
	],
	#category : 'Exercise@Clock',
	#package : 'Exercise@Clock'
}

{ #category : 'instance creation' }
Clock class >> hour: hourNumber minute: minuteNumber [

	^ self new setHour: hourNumber minute: minuteNumber
]

{ #category : 'arithmetic' }
Clock >> + anInteger [

	^ self class hour: hour minute: minute + anInteger
]

{ #category : 'arithmetic' }
Clock >> - anInteger [

	^ self + anInteger negated
]

{ #category : 'comparing' }
Clock >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject ifTrue: [ ^ true ].
	self class = anObject class ifFalse: [ ^ false ].
	^ minute = anObject minute and: [ hour = anObject hour ]
]

{ #category : 'comparing' }
Clock >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ minute hash bitXor: hour hash
]

{ #category : 'accessing' }
Clock >> hour [

	^ hour
]

{ #category : 'accessing' }
Clock >> minute [

	^ minute
]

{ #category : 'printing' }
Clock >> printOn: aStream [

	aStream
		nextPutAll: (hour printPaddedWith: $0 to: 2);
		nextPut: $:;
		nextPutAll: (minute printPaddedWith: $0 to: 2)
]

{ #category : 'private' }
Clock >> setHour: hourNumber minute: minuteNumber [

	| minutesSinceMidnight |
	minutesSinceMidnight := hourNumber * 60 + minuteNumber.
	hour := minutesSinceMidnight // 60 \\ 24.
	minute := minutesSinceMidnight % 60.
	^ self
]
