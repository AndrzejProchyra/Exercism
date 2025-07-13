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

	| lowercasedCandidate lowercasedSubject |
	lowercasedCandidate := candidateString asLowercase.
	lowercasedSubject := subjectString asLowercase.

	^ lowercasedCandidate ~= lowercasedSubject and: [
		  lowercasedCandidate sorted = lowercasedSubject sorted ]
]
