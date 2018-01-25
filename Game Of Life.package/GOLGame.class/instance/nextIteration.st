game logic
nextIteration
	cells do: [ :c | c updateState ].
	iteration := iteration + 1.