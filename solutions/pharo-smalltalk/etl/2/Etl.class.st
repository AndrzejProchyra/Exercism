Class {
	#name : 'Etl',
	#superclass : 'Object',
	#category : 'Exercise@Etl',
	#package : 'Exercise@Etl'
}

{ #category : 'as yet unclassified' }
Etl >> transformData: aDictionary [

	^ aDictionary associations
		  inject: Dictionary new
		  into: [ :transformed :mapping |
			  mapping value do: [ :letter |
				  transformed at: letter asLowercase put: mapping key asInteger ].
			  transformed ]
]
