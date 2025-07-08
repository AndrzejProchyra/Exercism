Class {
	#name : 'Pangram',
	#superclass : 'Object',
	#category : 'Exercise@Pangram',
	#package : 'Exercise@Pangram'
}

{ #category : 'testing' }
Pangram >> isPangramSentence: aString [

	| lowercasedString |
	lowercasedString := aString asLowercase.
	^ Character alphabet allSatisfy: [ :character |
		  lowercasedString includes: character ]
]
