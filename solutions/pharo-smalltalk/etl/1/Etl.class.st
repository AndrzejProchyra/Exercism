Class {
	#name : 'Etl',
	#superclass : 'Object',
	#category : 'Exercise@Etl',
	#package : 'Exercise@Etl'
}

{ #category : 'as yet unclassified' }
Etl >> transformData: aCollection [

	| transformed |
	transformed := Dictionary new.

	aCollection keysAndValuesDo: [ :points :letters |
		letters do: [ :letter |
			transformed at: letter asLowercase put: points asInteger ] ].
	^ transformed
]
