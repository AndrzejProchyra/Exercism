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

{ #category : 'api' }
HighScores >> latestScore [

	^ scores last
]

{ #category : 'api' }
HighScores >> personalBestScores [

	^ scores max
]

{ #category : 'api' }
HighScores >> personalTopThreeScores [

	^ (scores sorted last: (3 min: scores size)) reversed asArray
]

{ #category : 'accessing' }
HighScores >> scores [

	^ scores asArray
]
