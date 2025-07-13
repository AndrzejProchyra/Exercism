Class {
	#name : 'Anagram',
	#superclass : 'Object',
	#category : 'Exercise@Anagram',
	#package : 'Exercise@Anagram'
}

{ #category : 'api' }
Anagram >> findAnagramsCandidates: aCollection subject: aString [

	^ aCollection select: [ :candidate |
		  self is: candidate anagramOf: aString ]
]

{ #category : 'private' }
Anagram >> is: candidateString anagramOf: subjectString [

	^ (candidateString sameAs: subjectString) not and: [
		  candidateString asLowercase asBag
		  = subjectString asLowercase asBag ]
]
