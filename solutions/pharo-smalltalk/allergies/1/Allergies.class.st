Class {
	#name : #Allergies,
	#superclass : #Object,
	#instVars : [
		'allergyValues'
	],
	#category : #'Exercise@Allergies'
}

{ #category : #'as yet unclassified' }
Allergies >> allergicToItem: aString forScore: anInteger [

	^ anInteger allMask: (self allergyValue: aString)
]

{ #category : #'as yet unclassified' }
Allergies >> allergyListForScore: anInteger [

	^ (allergyValues selectEvery: [ :i |
		   anInteger allMask: (2 raisedTo: i - 1) ]) asArray
]

{ #category : #private }
Allergies >> allergyValue: aString [

	^ 2 raisedTo: (allergyValues indexOf: aString) - 1
]

{ #category : #initialization }
Allergies >> initialize [

	allergyValues := #( 'eggs' 'peanuts' 'shellfish' 'strawberries'
	                    'tomatoes' 'chocolate' 'pollen' 'cats' )
]
