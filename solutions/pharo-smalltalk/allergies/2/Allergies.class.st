Class {
	#name : #Allergies,
	#superclass : #Object,
	#category : #'Exercise@Allergies'
}

{ #category : #initialization }
Allergies class >> allergyValues [

	^ {
		  ('eggs' -> 1).
		  ('peanuts' -> 2).
		  ('shellfish' -> 4).
		  ('strawberries' -> 8).
		  ('tomatoes' -> 16).
		  ('chocolate' -> 32).
		  ('pollen' -> 64).
		  ('cats' -> 128) } asOrderedDictionary
]

{ #category : #'as yet unclassified' }
Allergies >> allergicToItem: aString forScore: anInteger [

	^ anInteger allMask: (self valueOf: aString)
]

{ #category : #'as yet unclassified' }
Allergies >> allergyListForScore: anInteger [

	^ (self class allergyValues associationsSelect: [ :each |
		   self allergicToItem: each key forScore: anInteger ]) keys
]

{ #category : #private }
Allergies >> valueOf: aString [

	^ self class allergyValues at: aString
]
