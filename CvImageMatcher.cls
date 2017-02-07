"Filed out from Dolphin Smalltalk 7"!

Object subclass: #CvImageMatcher
	instanceVariableNames: 'matches scale'
	classVariableNames: ''
	poolDictionaries: 'OpenCVConstants'
	classInstanceVariableNames: ''!
CvImageMatcher guid: (GUID fromString: '{60DE4CD4-E6CF-4F69-9E17-947461FC4C67}')!
CvImageMatcher comment: ''!
!CvImageMatcher categoriesForClass!Unclassified! !
!CvImageMatcher methodsFor!

bestMatch
	^self matches first!

bestMatchConfidence
	^self matches first key!

bestMatchFor: matchImage in: sourceImage
	| rect |
	rect := sourceImage rectangle.
	self scale ~= 1
		ifTrue: 
			[matches := self
						match: matchImage
						in: sourceImage
						rect: rect
						scale: self scale.
			rect := matches first value expandedBy: self class bestMatchReSearchBoundary].
	matches := self
				match: matchImage
				in: sourceImage
				rect: rect
				scale: 1.
	^matches first key > self class goodMatchThreshold ifTrue: [matches first]!

coefficientFor: aFloat 
	^aFloat*1000!

goodMatch
	^(self matches first key>self class goodMatchThreshold) ifTrue: [self bestMatch].!

goodMatchFor: matchImage in: sourceImage
	(self bestMatchFor: matchImage in: sourceImage)
		ifNotNil: [:best | best key > self class goodMatchThreshold ifTrue: [^best]].
	^nil!

match: matchImage in: sourceImage rect: rect scale: scale
	| rectSourceImage source match correlation maxPos bestCoeff bestRect |
	rectSourceImage := sourceImage cropTo: rect.
	source := rectSourceImage scaleBy: scale.
	match := matchImage scaleBy: scale.
	correlation := source matchTemplate: match.
	matches := OrderedCollection new.
	10 timesRepeat: 
			[maxPos := correlation maxValueAndPosition.
			bestCoeff := self coefficientFor: maxPos key.
			bestRect := ((maxPos value extent: match extent) scaleBy: 1 / scale) translatedBy: rect position.
			matches add: bestCoeff -> bestRect rounded.
			^matches.
			OpenCVCoreLibrary default
				cvRectangle: correlation asCvMat
				pt1: maxPos value asCvPoint
				pt2: (maxPos value+match extent) asCvPoint
				color: (CvScalar with: 0)
				thickness: 4
				lineType: 8
				shift: 0].
	^matches!

matches
	^matches!

matchOne: matchImage in: sourceImage rect: rect scale: scale
	| rectSourceImage source match correlation maxPos bestCoeff bestRect |
	rectSourceImage := sourceImage cropTo: rect.
	source := rectSourceImage scaleBy: scale.
	match := matchImage scaleBy: scale.
	correlation := source matchTemplate: match.
	maxPos := correlation maxValueAndPosition.
	bestCoeff := self coefficientFor: maxPos key.
	bestRect := ((maxPos value extent: match extent) scaleBy: 1 / scale ) translatedBy: rect position.
	matches := Array with: bestCoeff -> bestRect rounded.
	^matches!

scale
	^scale ifNil: [scale := self class rialMatchScale]!

scale: aFraction 
	scale := aFraction
	! !
!CvImageMatcher categoriesFor: #bestMatch!accessing!public! !
!CvImageMatcher categoriesFor: #bestMatchConfidence!public! !
!CvImageMatcher categoriesFor: #bestMatchFor:in:!operations!public! !
!CvImageMatcher categoriesFor: #coefficientFor:!private! !
!CvImageMatcher categoriesFor: #goodMatch!public! !
!CvImageMatcher categoriesFor: #goodMatchFor:in:!operations!public! !
!CvImageMatcher categoriesFor: #match:in:rect:scale:!commands!operations!private! !
!CvImageMatcher categoriesFor: #matches!accessing!public! !
!CvImageMatcher categoriesFor: #matchOne:in:rect:scale:!commands!operations!private! !
!CvImageMatcher categoriesFor: #scale!accessing!private! !
!CvImageMatcher categoriesFor: #scale:!accessing!private! !

!CvImageMatcher class methodsFor!

bestMatchReSearchBoundary
	^5!

goodMatchThreshold
	^600!

trialMatchScale
	^0.5! !
!CvImageMatcher class categoriesFor: #bestMatchReSearchBoundary!constants!public! !
!CvImageMatcher class categoriesFor: #goodMatchThreshold!public! !
!CvImageMatcher class categoriesFor: #trialMatchScale!public! !

