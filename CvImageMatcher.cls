"Filed out from Dolphin Smalltalk 7"!

Object subclass: #CvImageMatcher
	instanceVariableNames: 'matches trialMatchScale isValidateTrialMatches'
	classVariableNames: ''
	poolDictionaries: 'OpenCVConstants'
	classInstanceVariableNames: ''!
CvImageMatcher guid: (GUID fromString: '{60DE4CD4-E6CF-4F69-9E17-947461FC4C67}')!
CvImageMatcher comment: ''!
!CvImageMatcher categoriesForClass!Unclassified! !
!CvImageMatcher methodsFor!

bestMatch
	self matches isEmpty ifTrue: [^nil].
	^self matches first!

bestMatchConfidence
	self matches isEmpty ifTrue: [^0].
	^self matches first key!

confidenceFor: aFloatCoefficient
	^aFloatCoefficient * 1000!

fillRect: aRectangle in: anIplImage with: anInteger 
	OpenCVCoreLibrary default
				cvRectangleR: anIplImage
				rect: (CvRect fromRectangle: aRectangle )
				color: (CvScalar with: 1)
				thickness: 4
				lineType: 8
				shift: 0.

			OpenCVImgProcLibrary default
				cvFloodFill: anIplImage
				seedPt: (aRectangle topLeft+1) asParameter
				newVal: (CvScalar with: 0)
				loDiff: (CvScalar with: 1)
				upDiff: (CvScalar with: 0.1)
				comp: nil
				flags: 4
				mask: nil.

			OpenCVCoreLibrary default
				cvRectangleR: anIplImage
				rect: (CvRect fromRectangle: aRectangle)
				color: (CvScalar with: 0)
				thickness: 4
				lineType: 8
				shift: 0.!

initialize
	super initialize.
	isValidateTrialMatches := true.!

isValidateTrialMatches
	^isValidateTrialMatches!

isValidateTrialMatches: aBoolean
	isValidateTrialMatches := aBoolean!

match: matchImage in: sourceImage rect: rect scale: scale
	| rectSourceImage source match correlation maxPos bestConfidence bestRect tmpMatches |
	rectSourceImage := sourceImage cropTo: rect.
	source := rectSourceImage scaleBy: scale.
	match := matchImage scaleBy: scale.
	correlation := source matchTemplate: match.
	source free.

	"Extract the match position points from the correlation image"
	tmpMatches := OrderedCollection new.
	self maxMatches timesRepeat: 
			[maxPos := correlation maxValueAndPosition.
			bestConfidence := self confidenceFor: maxPos key.
			bestConfidence < self class defaultGoodMatchThreshold ifTrue: [^tmpMatches].
			bestRect := ((maxPos value extent: match extent) scaleBy: 1 / scale) translatedBy: rect position.
			tmpMatches add: bestConfidence -> bestRect rounded.

			"Blank out the current match rectangle so that it is ignored during the subsequent
			#maxValueAndPosition search."
			self
				fillRect: (maxPos value extent: match extent)
				in: correlation
				with: 0].
	correlation free.
	^tmpMatches!

matches
	^matches!

matches: matchImage in: sourceImage
	| trialMatches |
	trialMatches := self
				match: matchImage
				in: sourceImage
				rect: sourceImage rectangle
				scale: self trialMatchScale.

	"If the trial scale is full scale or we don't require further validation then we are done"
	(self trialMatchScale = 1 or: [self isValidateTrialMatches not])
		ifTrue: 
			[matches := trialMatches.
			^matches].

	"Now validate each of the trial matches individually"
	matches := OrderedCollection new.
	trialMatches do: 
			[:each |
			| validateMatches rect |
			rect := each value expandedBy: self class trialMatchValidateInflateBoundary.
			validateMatches := self
						match: matchImage
						in: sourceImage
						rect: rect
						scale: 1.
			validateMatches notEmpty ifTrue: [matches add: validateMatches first]].
	^matches!

maxMatches
	^50!

trialMatchScale
	^trialMatchScale ifNil: [trialMatchScale := self class defaultTrialMatchScale]!

trialMatchScale: aNumber 
	trialMatchScale := aNumber! !
!CvImageMatcher categoriesFor: #bestMatch!accessing!public! !
!CvImageMatcher categoriesFor: #bestMatchConfidence!accessing!public! !
!CvImageMatcher categoriesFor: #confidenceFor:!helpers!private! !
!CvImageMatcher categoriesFor: #fillRect:in:with:!public! !
!CvImageMatcher categoriesFor: #initialize!initialize/release!private! !
!CvImageMatcher categoriesFor: #isValidateTrialMatches!accessing!public! !
!CvImageMatcher categoriesFor: #isValidateTrialMatches:!accessing!public! !
!CvImageMatcher categoriesFor: #match:in:rect:scale:!operations!private! !
!CvImageMatcher categoriesFor: #matches!accessing!public! !
!CvImageMatcher categoriesFor: #matches:in:!operations!private! !
!CvImageMatcher categoriesFor: #maxMatches!public! !
!CvImageMatcher categoriesFor: #trialMatchScale!accessing!public! !
!CvImageMatcher categoriesFor: #trialMatchScale:!accessing!public! !

!CvImageMatcher class methodsFor!

defaultGoodMatchThreshold
	"Answer the default coerrallation coefficient for a good match"

	^900!

defaultTrialMatchScale
	"For large source images it is advantageous (speed-wise) to scale down the images to perform
	a much faster initial search. Subsequently each match found at this reduced scale is retried
	in it's local area if #isValidateTrialMatches is turned on. Here we answer the scale for
	trial matching."

	^0.75!

new	
	^super new initialize!

trialMatchValidateInflateBoundary
	"Answer the number of pixels to inflate the rectangle found by a trial match when performing
	a validating match at full scale."

	^5! !
!CvImageMatcher class categoriesFor: #defaultGoodMatchThreshold!public! !
!CvImageMatcher class categoriesFor: #defaultTrialMatchScale!public! !
!CvImageMatcher class categoriesFor: #new!instance creation!public! !
!CvImageMatcher class categoriesFor: #trialMatchValidateInflateBoundary!constants!public! !

