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
		rect: (CvRect fromRectangle: aRectangle)
		color: (CvScalar with: 1)
		thickness: 1
		lineType: 8
		shift: 0.
	OpenCVImgProcLibrary default
		cvFloodFill: anIplImage
		seedPt: (aRectangle topLeft + 2) asParameter
		newVal: (CvScalar with: anInteger)
		loDiff: (CvScalar with: 1)
		upDiff: (CvScalar with: 0.1)
		comp: nil
		flags: 4
		mask: nil.
	OpenCVCoreLibrary default
		cvRectangleR: anIplImage
		rect: (CvRect fromRectangle: aRectangle)
		color: (CvScalar with: anInteger)
		thickness: 1
		lineType: 8
		shift: 0!

initialize
	super initialize.
	isValidateTrialMatches := true.!

isValidateTrialMatches
	^isValidateTrialMatches!

isValidateTrialMatches: aBoolean
	isValidateTrialMatches := aBoolean!

match: matchImage in: sourceImage rect: rect
	"Find the single best good match for matchgImage within sourceImage within rect"

	| rectSourceImage correlation maxPos bestConfidence bestRect |
	rectSourceImage := sourceImage cropTo: rect.
	correlation := rectSourceImage matchTemplate: matchImage.
	maxPos := correlation maxValueAndPosition.
	bestConfidence := self confidenceFor: maxPos key.
	bestConfidence < self class defaultGoodMatchThreshold ifTrue: [^nil].
	bestRect := (maxPos value extent: matchImage extent) translatedBy: rect position.
	^bestConfidence -> bestRect rounded!

matches
	^matches!

matches: matchImage in: sourceImage
	| trialMatches threshold |
	trialMatches := self
				matches: matchImage
				in: sourceImage
				scale: self trialMatchScale
				threshold: (self trialMatchScale = 1
						ifTrue: [self class defaultGoodMatchThreshold]
						ifFalse: [self class defaultGoodMatchTrialThreshold]).

	"If the trial scale is full scale or we don't require further validation then we are done"
	(self trialMatchScale = 1 or: [self isValidateTrialMatches not])
		ifTrue: 
			[matches := trialMatches.
			^matches].

	"Otherwise validate each of the trial matches individually"
	matches := OrderedCollection new.
	trialMatches do: 
			[:each |
			| validatedMatch rect |
			rect := each value expandedBy: self class trialMatchValidateInflateBoundary.
			validatedMatch := self
						match: matchImage
						in: sourceImage
						rect: rect.
			validatedMatch ifNotNil: [:match | matches add: match]].
	^matches!

matches: matchImage in: sourceImage scale: scale threshold: goodMatchThreshold
	"Find multiple good matches for matchgImage within sourceImage after applying a scale to 
	speed things up."

	| source match correlation maxPos bestConfidence bestRect tmpMatches |
	source := sourceImage scaleBy: scale.
	match := matchImage scaleBy: scale.
	correlation := source matchTemplate: match.

	"Extract the match position points from the correlation image"
	tmpMatches := OrderedCollection new.
	self maxMatches timesRepeat: 
			[maxPos := correlation maxValueAndPosition.
			bestConfidence := self confidenceFor: maxPos key.
			bestConfidence < goodMatchThreshold ifTrue: [^tmpMatches].
			bestRect := (maxPos value extent: match extent) scaleBy: 1 / scale.
			tmpMatches add: bestConfidence -> bestRect rounded.

			"Blank out the current match rectangle so that it is ignored during the subsequent
			#maxValueAndPosition search."
			self
				fillRect: (maxPos value extent: match extent)
				in: correlation
				with: 0].
	correlation free.
	^tmpMatches!

maxMatches
	^50!

trialMatchScale
	^trialMatchScale ifNil: [trialMatchScale := self class defaultTrialMatchScale]!

trialMatchScale: aNumber 
	trialMatchScale := aNumber! !
!CvImageMatcher categoriesFor: #bestMatch!accessing!public! !
!CvImageMatcher categoriesFor: #bestMatchConfidence!accessing!public! !
!CvImageMatcher categoriesFor: #confidenceFor:!helpers!private! !
!CvImageMatcher categoriesFor: #fillRect:in:with:!private! !
!CvImageMatcher categoriesFor: #initialize!initialize/release!private! !
!CvImageMatcher categoriesFor: #isValidateTrialMatches!accessing!public! !
!CvImageMatcher categoriesFor: #isValidateTrialMatches:!accessing!public! !
!CvImageMatcher categoriesFor: #match:in:rect:!operations!private! !
!CvImageMatcher categoriesFor: #matches!accessing!public! !
!CvImageMatcher categoriesFor: #matches:in:!operations!private! !
!CvImageMatcher categoriesFor: #matches:in:scale:threshold:!operations!private! !
!CvImageMatcher categoriesFor: #maxMatches!public! !
!CvImageMatcher categoriesFor: #trialMatchScale!accessing!public! !
!CvImageMatcher categoriesFor: #trialMatchScale:!accessing!public! !

!CvImageMatcher class methodsFor!

defaultGoodMatchThreshold
	"Answer the default coerollation coefficient for a good match"

	^900!

defaultGoodMatchTrialThreshold
	"Answer the default coerollation coefficient for a good match during the trial. This must be
	smaller than #defaultGoodMatchThreshold because reduced scale matches will likely be less accurate."

	^500!

defaultTrialMatchScale
	"For large source images it is advantageous (speed-wise) to scale down the images to perform
	a much faster initial search. Subsequently each match found at this reduced scale is retried
	in it's local area if #isValidateTrialMatches is turned on. Here we answer the scale for
	trial matching."

	^0.5!

new	
	^super new initialize!

trialMatchValidateInflateBoundary
	"Answer the number of pixels to inflate the rectangle found by a trial match when performing
	a validating match at full scale."

	^5! !
!CvImageMatcher class categoriesFor: #defaultGoodMatchThreshold!public! !
!CvImageMatcher class categoriesFor: #defaultGoodMatchTrialThreshold!public! !
!CvImageMatcher class categoriesFor: #defaultTrialMatchScale!public! !
!CvImageMatcher class categoriesFor: #new!instance creation!public! !
!CvImageMatcher class categoriesFor: #trialMatchValidateInflateBoundary!constants!public! !

