Class {
	#name : 'Acronym',
	#superclass : 'Object',
	#category : 'Exercise@Acronym',
	#package : 'Exercise@Acronym'
}

{ #category : 'as yet unclassified' }
Acronym >> abbreviatePhrase: aString [

	| wordSeparators words characters |
	wordSeparators := {
		                  Character space.
		                  $-.
		                  $_ }.
	words := aString substrings: wordSeparators.
	characters := words collect: [ :each | each first uppercase ].

	^ String withAll: characters
]
