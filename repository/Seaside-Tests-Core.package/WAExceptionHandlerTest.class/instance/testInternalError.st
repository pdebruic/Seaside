testing
testInternalError
	| context |
	context := self createRequestContext.
	[ self handlerClass
			internalError: (WATestError new)
			context: context ]
		on: WAResponseNotification
		do: [ :n |
			self assert: (context response isKindOf: WAResponse).
			self assert: context response status = 500.
			^ self ].
		
	self assert: false