Class {
	#name : 'DieHandle',
	#superclass : 'Object',
	#instVars : [
		'dice'
	],
	#category : 'Exercise@Die',
	#package : 'Exercise@Die'
}

{ #category : 'instance creation' }
DieHandle class >> withAll: aDiceCollection [

	^ self new setDice: aDiceCollection
]

{ #category : 'arithmetic' }
DieHandle >> + anoterDieHandle [

	| newDieHandle |
	newDieHandle := self class withAll: dice.
	anoterDieHandle do: [ :die | newDieHandle addDie: die ].
	^ newDieHandle
]

{ #category : 'adding' }
DieHandle >> addDie: aDie [

	dice add: aDie
]

{ #category : 'accessing' }
DieHandle >> diceNumber [

	^ dice size
]

{ #category : 'enumerating' }
DieHandle >> do: aBlock [

	dice do: aBlock
]

{ #category : 'initialization' }
DieHandle >> initialize [

	dice := OrderedCollection new
]

{ #category : 'rolling' }
DieHandle >> roll [

	^ dice inject: 0 into: [ :sum :each | each roll ]
]

{ #category : 'initialization' }
DieHandle >> setDice: aDiceCollection [

	dice addAll: aDiceCollection
]
