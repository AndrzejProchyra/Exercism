Class {
	#name : #Isogram,
	#superclass : #Object,
	#category : #'Exercise@Isogram'
}

{ #category : #testing }
Isogram >> isIsogramPhrase: aString [

	^ aString onlyLetters size = aString onlyLetters asLowercase asSet size
]
