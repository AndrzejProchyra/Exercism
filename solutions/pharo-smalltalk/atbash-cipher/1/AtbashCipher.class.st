Class {
	#name : 'AtbashCipher',
	#superclass : 'Object',
	#instVars : [
		'alphabet',
		'reverseAlphabet'
	],
	#category : 'Exercise@AtbashCipher',
	#package : 'Exercise@AtbashCipher'
}

{ #category : 'converting' }
AtbashCipher >> decode: aCharacter [

	aCharacter isDigit ifTrue: [ ^ aCharacter ].
	^ alphabet at: (reverseAlphabet indexOf: aCharacter)
]

{ #category : 'api' }
AtbashCipher >> decodePhrase: aString [

	^ String streamContents: [ :aStream |
		  aString do: [ :character |
			  character isAlphaNumeric ifTrue: [
				  aStream nextPut: (self decode: character) ] ] ]
]

{ #category : 'api' }
AtbashCipher >> encode: aCharacter [

	aCharacter isDigit ifTrue: [ ^ aCharacter ].
	^ reverseAlphabet at: (alphabet indexOf: aCharacter asLowercase)
]

{ #category : 'api' }
AtbashCipher >> encodePhrase: aString [

	| characterCount |
	characterCount := 0.
	^ (String streamContents: [ :aStream |
		   aString do: [ :character |
			   character isAlphaNumeric ifTrue: [
				   aStream nextPut: (self encode: character).
				   characterCount := characterCount + 1.
				   (characterCount isDivisibleBy: 5) ifTrue: [
					   aStream nextPut: Character space ] ] ] ]) trimRight
]

{ #category : 'initialization' }
AtbashCipher >> initialize [

	super initialize.
	alphabet := $a to: $z.
	reverseAlphabet := alphabet reversed
]
