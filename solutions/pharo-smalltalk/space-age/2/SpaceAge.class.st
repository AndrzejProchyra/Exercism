Class {
	#name : 'SpaceAge',
	#superclass : 'Object',
	#instVars : [
		'planetToOrbitalPeriodInSeconds'
	],
	#category : 'Exercise@SpaceAge',
	#package : 'Exercise@SpaceAge'
}

{ #category : 'calculating' }
SpaceAge >> ageOnPlanet: planetName at: secondsSinceBirth [

	^ secondsSinceBirth / (self secondsInYearOn: planetName)
]

{ #category : 'initialization' }
SpaceAge >> initialize [

	| secondsInEarthYear |
	super initialize.
	secondsInEarthYear := 31557600.
	planetToOrbitalPeriodInSeconds := {
		                                  ('Earth' -> 1.0).
		                                  ('Mercury' -> 0.2408467).
		                                  ('Venus' -> 0.61519726).
		                                  ('Mars' -> 1.8808158).
		                                  ('Jupiter' -> 11.862615).
		                                  ('Saturn' -> 29.447498).
		                                  ('Uranus' -> 84.016846).
		                                  ('Neptune' -> 164.79132) }
		                                  asDictionary collect: [ :assoc |
		                                  assoc * secondsInEarthYear ]
]

{ #category : 'private' }
SpaceAge >> secondsInYearOn: planetName [

	^ planetToOrbitalPeriodInSeconds at: planetName
]
