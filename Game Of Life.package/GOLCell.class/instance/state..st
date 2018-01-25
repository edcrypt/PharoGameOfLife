accessing structure variables
state: aBoolean
	(states last = aBoolean) ifFalse: [ self toggleState ].
	states add: aBoolean.
