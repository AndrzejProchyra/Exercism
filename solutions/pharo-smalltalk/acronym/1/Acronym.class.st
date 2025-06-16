Class {
	#name : 'Acronym',
	#superclass : 'Object',
	#category : 'Exercise@Acronym',
	#package : 'Exercise@Acronym'
}

{ #category : 'as yet unclassified' }
Acronym >> abbreviatePhrase: aString [

	| wordSeparators |
	wordSeparators := {
		                  Character space.
		                  $-.
		                  $_ }.

	^ String withAll:
		  ((aString substrings: wordSeparators) collect: [ :each |
			   each first uppercase ])
]
