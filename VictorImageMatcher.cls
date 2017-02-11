"Filed out from Dolphin Smalltalk 7"!

Object subclass: #VictorImageMatcher
	instanceVariableNames: 'scale matches'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
VictorImageMatcher guid: (GUID fromString: '{0F2C1780-D19A-45DD-AB7A-45E9DA670CB6}')!
VictorImageMatcher comment: ''!
!VictorImageMatcher categoriesForClass!Kernel-Objects! !
!VictorImageMatcher methodsFor!

bestMatch
	^self matches first value!

bestMatchConfidence
	^self matches first key!

goodMatch
	^self matches first key > self class defaultGoodMatchThreshold ifTrue: [self bestMatch]!

matches
	^matches!

matches: matchImage in: sourceImage
	| rect |
	rect := sourceImage rectangle.
	matches := self
				matches: matchImage
				in: sourceImage
				rect: rect
				scale: self scale.
	rect := matches first value expandedBy: self class trialMatchValidateInflateBoundary.
	matches := self
				matches: matchImage
				in: sourceImage
				rect: rect
				scale: 1.
	^matches first key > self class defaultGoodMatchThreshold ifTrue: [matches first value]!

matches: matchImage in: sourceImage rect: rect scale: scale
	| rectSourceImage source match correlation count matches |
	rectSourceImage := sourceImage copyRect: rect.
	source := rectSourceImage scaleBy: scale.
	match := matchImage scaleBy: scale.
	correlation := source copyEmpty.
	VicStatsLibrary default
		correlateimages: source
		match: match
		destination: correlation.
	count := correlation width * correlation height.
	matches := StructureArray length: count elementClass: COORDVAL.
	VicStatsLibrary default
		sortpixelsbyval: correlation
		into: matches
		count: count.
	^(matches asArray first: 10) collect: 
			[:each |
			| r |
			r := (Rectangle origin: each x @ each y extent: match extent) scaleBy: 1 / scale.
			r := r translatedBy: rect position.
			each val -> r rounded]! !
!VictorImageMatcher categoriesFor: #bestMatch!accessing!public! !
!VictorImageMatcher categoriesFor: #bestMatchConfidence!accessing!public! !
!VictorImageMatcher categoriesFor: #goodMatch!public! !
!VictorImageMatcher categoriesFor: #matches!accessing!public! !
!VictorImageMatcher categoriesFor: #matches:in:!operations!public! !
!VictorImageMatcher categoriesFor: #matches:in:rect:scale:!commands!operations!private! !

!VictorImageMatcher class methodsFor!

defaultGoodMatchThreshold
	^700!

defaultTrialMatchScale
	^0.2!

trialMatchValidateInflateBoundary
	^5! !
!VictorImageMatcher class categoriesFor: #defaultGoodMatchThreshold!constants!public! !
!VictorImageMatcher class categoriesFor: #defaultTrialMatchScale!constants!private! !
!VictorImageMatcher class categoriesFor: #trialMatchValidateInflateBoundary!constants!public! !

