Class {
	#name : 'ArmstrongNumbers',
	#superclass : 'Object',
	#category : 'Exercise@ArmstrongNumbers',
	#package : 'Exercise@ArmstrongNumbers'
}

{ #category : 'testing' }
ArmstrongNumbers >> isArmstrongNumber: anInteger [

	| numberOfDigits sumOfPowers |
	numberOfDigits := anInteger numberOfDigits.
	sumOfPowers := 0.

	1 to: numberOfDigits do: [ :digitIndex |
		sumOfPowers := sumOfPowers
		               +
		               ((anInteger decimalDigitAt: digitIndex) raisedTo:
			                numberOfDigits) ].
	^ anInteger = sumOfPowers
]
