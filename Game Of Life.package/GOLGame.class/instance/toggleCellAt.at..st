accessing
toggleCellAt: i at: j
	| liveTotal cell |
	liveTotal := 0.
	self eachAroundCellAt: i at: j do: [ :c |
		(c stateForIteration: iteration) 
			ifTrue: [ liveTotal := liveTotal + 1].
	].
	cell := self cellAt: i at: j.
	(cell stateForIteration: iteration) 
		ifTrue: [ 
			 (#(2 3) includes: liveTotal)
				ifFalse: [ cell state: false ]
				ifTrue: [ cell state: true ] ]
		ifFalse: [ 
			 (liveTotal = 3)
				ifTrue: [ cell state: true ]
				ifFalse: [ cell state: false ] ]