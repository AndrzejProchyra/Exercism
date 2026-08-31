Class {
	#name : 'Diamond',
	#superclass : 'Object',
	#instVars : [
		'letter'
	],
	#category : 'Exercise@Diamond',
	#package : 'Exercise@Diamond'
}

{ #category : 'instance creation' }
Diamond class >> forLetter: aCharacter [

	^ self new setLetter: aCharacter
]

{ #category : 'private' }
Diamond >> halfWidth [

	^ self indexFor: letter
]

{ #category : 'private' }
Diamond >> indexFor: aCharacter [
	"NOTE: Could be an extension on Character - e.g. aCharacter alphabetIndex"

	^ ($A to: aCharacter) size
]

{ #category : 'private' }
Diamond >> mirror: aSequenceableCollection [
	"NOTE: Could be an extension on SequenceableCollection - e.g. aSequenceableCollection mirrored"

	^ aSequenceableCollection
	  , aSequenceableCollection allButLast reversed
]

{ #category : 'private' }
Diamond >> rowFor: aCharacter [

	| leftHalf |
	leftHalf := (aCharacter asString padRightTo:
		             (self indexFor: aCharacter)) padLeftTo: self halfWidth.
	^ self mirror: leftHalf
]

{ #category : 'accessing' }
Diamond >> rows [

	^ self mirror: self topHalf
]

{ #category : 'exercism' }
Diamond >> rowsLetter: aString [

	^ (self class forLetter: aString first) rows
]

{ #category : 'private' }
Diamond >> setLetter: aCharacter [

	letter := aCharacter
]

{ #category : 'private' }
Diamond >> topHalf [

	^ ($A to: letter) collect: [ :each | self rowFor: each ]
]
