Class {
	#name : 'Gigasecond',
	#superclass : 'Object',
	#category : 'Exercise@Gigasecond',
	#package : 'Exercise@Gigasecond'
}

{ #category : 'adding' }
Gigasecond >> addMoment: aString [

	| oneGigasecondLater |
	oneGigasecondLater := aString asDateAndTime + 1000000000 asSeconds.

	^ String streamContents: [ :stream |
		  oneGigasecondLater printYMDOn: stream.
		  stream nextPut: $T.
		  oneGigasecondLater printHMSOn: stream ]
]
