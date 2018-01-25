printing
printOn: aStream
	aStream << 'GOLCell('.
	self isLive ifTrue: [ aStream << 'Live' ] ifFalse: [ aStream << 'Dead' ].
	aStream << ')'