Class {
	#name : 'TwelveDays',
	#superclass : 'Object',
	#instVars : [
		'presents',
		'ordinals'
	],
	#category : 'Exercise@TwelveDays',
	#package : 'Exercise@TwelveDays'
}

{ #category : 'initialization' }
TwelveDays >> initialize [

	super initialize.
	presents := #( 'a Partridge in a Pear Tree'
	               'two Turtle Doves' 'three French Hens'
	               'four Calling Birds' 'five Gold Rings'
	               'six Geese-a-Laying' 'seven Swans-a-Swimming'
	               'eight Maids-a-Milking' 'nine Ladies Dancing'
	               'ten Lords-a-Leaping' 'eleven Pipers Piping'
	               'twelve Drummers Drumming' ).
	ordinals := #( 'first' 'second' 'third' 'fourth' 'fifth' 'sixth'
	               'seventh' 'eighth' 'ninth' 'tenth' 'eleventh'
	               'twelfth' )
]

{ #category : 'private' }
TwelveDays >> ordinalFor: anInteger [

	^ ordinals at: anInteger
]

{ #category : 'private' }
TwelveDays >> presentsForDay: anInteger [

	anInteger = 1 ifTrue: [ ^ presents at: 1 ].
	^ '{1}, and {2}' format: {
			  ((presents copyFrom: 2 to: anInteger) reversed joinUsing: ', ').
			  (presents at: 1) }
]

{ #category : 'api' }
TwelveDays >> reciteStartVerse: startVerseNumber endVerse: endVerseNumber [

	^ (startVerseNumber to: endVerseNumber) collect: [ :verseNumber |
		  self verse: verseNumber ]
]

{ #category : 'private' }
TwelveDays >> verse: aVerseNumber [

	^ 'On the {1} day of Christmas my true love gave to me: {2}.'
		  format: {
				  (self ordinalFor: aVerseNumber).
				  (self presentsForDay: aVerseNumber) }
]
