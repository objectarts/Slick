"Filed out from Dolphin Smalltalk 7"!

Object subclass: #ImageMatcher
	instanceVariableNames: 'scale matches'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ImageMatcher guid: (GUID fromString: '{0F2C1780-D19A-45DD-AB7A-45E9DA670CB6}')!
ImageMatcher comment: ''!
!ImageMatcher categoriesForClass!Kernel-Objects! !
!ImageMatcher methodsFor!

bestMatch
	^self matches first value!

bestMatchConfidence
	^self matches first key!

bestMatchFor: matchImage in: sourceImage
	| rect |
	rect := sourceImage rectangle.
	matches := self
				match: matchImage
				in: sourceImage
				rect: rect
				scale: self scale.
	rect := matches first value expandedBy: self class bestMatchReSearchBoundary.
	matches := self
				match: matchImage
				in: sourceImage
				rect: rect
				scale: 1.
	^matches first key > self class goodMatchThreshold ifTrue: [matches first value]!

goodMatch
	^(self matches first key>self class goodMatchThreshold) ifTrue: [self bestMatch].!

goodMatchConfidence
	^self goodMatch ifNotNil: [self bestMatchConfidence ]!

match: matchImage in: sourceImage rect: rect scale: scale
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
			r := (Rectangle origin: each x @ each y extent: match extent) scaleBy: 1/scale.
			r := r translatedBy: rect position.
			each val ->r rounded]!

matches
	^matches!

scale
	^scale ifNil: [scale := self class rialMatchScale]!

scale: aFraction 
	scale := aFraction! !
!ImageMatcher categoriesFor: #bestMatch!accessing!public! !
!ImageMatcher categoriesFor: #bestMatchConfidence!accessing!public! !
!ImageMatcher categoriesFor: #bestMatchFor:in:!operations!public! !
!ImageMatcher categoriesFor: #goodMatch!public! !
!ImageMatcher categoriesFor: #goodMatchConfidence!accessing!public! !
!ImageMatcher categoriesFor: #match:in:rect:scale:!commands!operations!public! !
!ImageMatcher categoriesFor: #matches!accessing!public! !
!ImageMatcher categoriesFor: #scale!accessing!public! !
!ImageMatcher categoriesFor: #scale:!accessing!public! !

!ImageMatcher class methodsFor!

bestMatchReSearchBoundary
	^5!

goodMatchThreshold
	^700!

trialMatchScale
	^0.2! !
!ImageMatcher class categoriesFor: #bestMatchReSearchBoundary!constants!public! !
!ImageMatcher class categoriesFor: #goodMatchThreshold!constants!public! !
!ImageMatcher class categoriesFor: #trialMatchScale!constants!private! !

