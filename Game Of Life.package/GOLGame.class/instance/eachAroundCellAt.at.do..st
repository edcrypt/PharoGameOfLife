accessing
eachAroundCellAt: i at: j do: aBlock
   | n |
	n := self cellsPerSide.

   (j > 1 ) ifTrue: [
	 	(i < n) ifTrue: [ aBlock value: (self cellAt: i+1 at: j-1) ].
		aBlock value: (self cellAt: i at: j-1).
		(i > 1) ifTrue: [ aBlock value: (self cellAt: i-1 at: j-1) ].
	].

	(i < n) ifTrue: [ aBlock value: (self cellAt: i+1 at: j) ].
	(i > 1) ifTrue: [ aBlock value: (self cellAt: i-1 at: j) ].

   (j < n) ifTrue: [ 
		(i < n) ifTrue: [ aBlock value: (self cellAt: i+1 at: j+1) ].
		aBlock value: (self cellAt: i at: j+1).
		(i > 1) ifTrue: [ aBlock value: (self cellAt: i-1 at: j+1) ].
	].