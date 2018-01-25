instance creation
newCellAt: i at: j
	| c origin |
	c := self newCell.
	origin := self innerBounds origin.
	self addMorph: c.
	c position: ((i - 1) * c width) @ ((j - 1) * c height) + origin.
	c updateState: [ self toggleCellAt: i at: j ].
	^ c