accessing
start
	| new |
	new := self new.
	new openInWindow.
	SimpleButtonMorph new
		target: new;
		actionSelector: #nextIteration;
		label: 'Next';
		openInWindow.
	^ new