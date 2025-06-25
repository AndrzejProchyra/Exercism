Class {
	#name : 'HighScores',
	#superclass : 'Object',
	#instVars : [
		'scores'
	],
	#category : 'Exercise@HighScores',
	#package : 'Exercise@HighScores'
}

{ #category : 'adding' }
HighScores >> addScores: aCollection [

	scores addAll: aCollection
]

{ #category : 'initialization' }
HighScores >> initialize [

	scores := OrderedCollection new
]

{ #category : 'as yet unclassified' }
HighScores >> latestScore [

	^ scores last
]

{ #category : 'as yet unclassified' }
HighScores >> personalBestScores [

	^ scores max
]

{ #category : 'as yet unclassified' }
HighScores >> personalTopThreeScores [

	| topScoreCount |
	topScoreCount := scores size < 3 ifTrue: [
		                 ^ scores sorted reversed asArray ].
	^ (scores sorted last: 3) reversed asArray
]

{ #category : 'as yet unclassified' }
HighScores >> scores [

	^ scores asArray
]
