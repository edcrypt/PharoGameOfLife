event handling
mouseUp: evt
	super mouseUp: evt.
	states atLast: 1 put: self isOn