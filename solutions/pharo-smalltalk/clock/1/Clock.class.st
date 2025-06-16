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
Clock class >> hour: anInteger minute: anInteger2 [

	^ self new
		  setHour: anInteger minute: anInteger2;
		  yourself
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

{ #category : 'initialization' }
Clock >> setHour: hours minute: minutes [

	| minutesSinceMidnight |
	minutesSinceMidnight := hours * 60 + minutes.
	hour := minutesSinceMidnight // 60 \\ 24.
	minute := minutesSinceMidnight % 60
]
