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
	sumOfPowers := (1 to: numberOfDigits) inject: 0 into: [ :acc :each |
		               acc
		               +
		               ((anInteger decimalDigitAt: each) raisedTo:
			                numberOfDigits) ].
	^ anInteger = sumOfPowers
]
