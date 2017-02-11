"Filed out from Dolphin Smalltalk 7"!

Shell subclass: #AbstractImageMatcherShell
	instanceVariableNames: 'matchImage matchImagePresenter matchTimePresenter sourceImage sourceImagePresenter confidencePresenter scalePresenter'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
AbstractImageMatcherShell guid: (GUID fromString: '{C66E7D65-8171-40CF-855A-9EE258F1590C}')!
AbstractImageMatcherShell comment: ''!
!AbstractImageMatcherShell categoriesForClass!MVP-Presenters! !
!AbstractImageMatcherShell methodsFor!

bestMatch
	| matcher |
	matcher := self imageMatcherClass new.
	matcher trialMatchScale: self scale.
	matcher matches: matchImage in: sourceImage.
	matcher matches do: [:each | self drawRectangle: each value with: Pen red].
	matcher bestMatch ifNotNil: [:best | self drawRectangle: best value with: Pen green].
	self confidence: matcher bestMatchConfidence.
	matcher matches isEmpty ifTrue: [Sound errorBeep]!

clearMatches
	(sourceImagePresenter view)
		invalidate;
		update!

confidence: aNumber
	confidencePresenter value: aNumber!

createComponents
	super createComponents.
	sourceImagePresenter := self add: ImagePresenter new name: 'source'.
	matchImagePresenter := self add: ImagePresenter new name: 'match'.
	scalePresenter := self add: NumberPresenter new name: 'scale'.
	confidencePresenter := self add: NumberPresenter new name: 'confidence'.
	matchTimePresenter := self add: NumberPresenter new name: 'matchTime'!

drawRectangle: aRectangle with: aPen
	(sourceImagePresenter view canvas)
		pen: aPen;
		brush: Brush transparent;
		rectangle: aRectangle!

grabScreenImage
	^ScreenAreaGrabber grabBitmap ifNotNil: [:bitmap | self imageClass fromBitmap: bitmap]!

imageClass
	self subclassResponsibility!

imageMatcherClass
	self subclassResponsibility!

loadImage
	^((FileOpenDialog new)
		fileTypes: #(#('PNG Files (*.png)' '*.png'));
		showModal) ifNotNil: [:filename | self imageClass loadImage: filename]!

loadMatchImage
	self setMatchImage: self loadImage!

loadSourceImage
	self setSourceImage: self loadImage!

match
	self clearMatches.
	self grabScreenImage
		ifNotNil: 
			[:img |
			| ms |
			self setMatchImage: img.
			ms := Time millisecondsToRun: [self bestMatch].
			self matchTime: ms]!

matchTime: aNumber
	matchTimePresenter value: aNumber!

onViewOpened
	super onViewOpened.
	self scale: self imageMatcherClass defaultTrialMatchScale!

scale
	^scalePresenter value / 100!

scale: aNumber
	^scalePresenter value: (aNumber*100) rounded!

setMatchImage: anImageOrNil
	matchImage := anImageOrNil.
	matchImagePresenter value: (matchImage ifNotNil: [:img | img asBitmap])	!

setSourceImage: anImageOrNil
	sourceImage := anImageOrNil.
	sourceImagePresenter value: (sourceImage ifNotNil: [:img | img asBitmap])!

source
	self clearMatches.
	self grabScreenImage ifNotNil: [:img | self setSourceImage: img]! !
!AbstractImageMatcherShell categoriesFor: #bestMatch!commands!public! !
!AbstractImageMatcherShell categoriesFor: #clearMatches!commands!public! !
!AbstractImageMatcherShell categoriesFor: #confidence:!accessing!private! !
!AbstractImageMatcherShell categoriesFor: #createComponents!private! !
!AbstractImageMatcherShell categoriesFor: #drawRectangle:with:!private! !
!AbstractImageMatcherShell categoriesFor: #grabScreenImage!commands!private! !
!AbstractImageMatcherShell categoriesFor: #imageClass!commands!private! !
!AbstractImageMatcherShell categoriesFor: #imageMatcherClass!commands!private! !
!AbstractImageMatcherShell categoriesFor: #loadImage!public! !
!AbstractImageMatcherShell categoriesFor: #loadMatchImage!commands!public! !
!AbstractImageMatcherShell categoriesFor: #loadSourceImage!commands!public! !
!AbstractImageMatcherShell categoriesFor: #match!commands!public! !
!AbstractImageMatcherShell categoriesFor: #matchTime:!accessing!private! !
!AbstractImageMatcherShell categoriesFor: #onViewOpened!public! !
!AbstractImageMatcherShell categoriesFor: #scale!accessing!private! !
!AbstractImageMatcherShell categoriesFor: #scale:!accessing!private! !
!AbstractImageMatcherShell categoriesFor: #setMatchImage:!private! !
!AbstractImageMatcherShell categoriesFor: #setSourceImage:!private! !
!AbstractImageMatcherShell categoriesFor: #source!commands!public! !

!AbstractImageMatcherShell class methodsFor!

resource_Default_view
	"Answer the literal data from which the 'Default view' resource can be reconstituted.
	DO NOT EDIT OR RECATEGORIZE THIS METHOD.

	If you wish to modify this resource evaluate:
	ViewComposer openOn: (ResourceIdentifier class: self selector: #resource_Default_view)
	"

	^#(#'!!STL' 4 788558 10 ##(Smalltalk.STBViewProxy) ##(Smalltalk.ShellView) 34 27 0 0 8 #(13565952 65536) 416 0 524550 ##(Smalltalk.ColorRef) 8 4278190080 0 39 0 0 0 416 788230 ##(Smalltalk.BorderLayout) 1 1 410 ##(Smalltalk.ContainerView) 34 15 0 416 34 2 8 1140850688 131073 544 0 0 0 7 0 0 0 544 514 1 1 0 0 410 ##(Smalltalk.PushButton) 34 20 0 544 34 2 8 1140924416 1 624 0 0 0 7 0 0 0 624 0 8 4294903689 1180998 4 ##(Smalltalk.CommandDescription) #match 8 'Match' 1 1 0 0 false 0 0 0 983302 ##(Smalltalk.MessageSequence) 138 144 34 3 721670 ##(Smalltalk.MessageSend) #createAt:extent: 34 2 328198 ##(Smalltalk.Point) 1149 1 866 261 79 624 818 #isEnabled: 8 #(false) 624 818 #text: 34 1 8 'Match' 624 983302 ##(Smalltalk.WINDOWPLACEMENT) 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 62 2 0 0 0 0 0 0 192 2 0 0 39 0 0 0] 8 #() 866 193 193 0 29 410 ##(Smalltalk.PushButton) 34 20 0 544 34 2 8 1140924416 1 1072 0 0 0 7 0 0 0 1072 0 8 4294903689 706 #source 8 'Source' 1 1 0 0 true 0 0 0 754 138 144 34 3 818 #createAt:extent: 34 2 866 1 1 866 261 79 1072 818 #isEnabled: 8 #(false) 1072 818 #text: 34 1 8 'Source' 1072 994 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 130 0 0 0 39 0 0 0] 8 #() 1056 0 29 410 ##(Smalltalk.Slider) 34 18 0 544 34 2 8 1140916225 1 1424 721990 2 ##(Smalltalk.ValueHolder) 0 false 1376774 ##(Smalltalk.PluggableSearchPolicy) 459270 ##(Smalltalk.Message) #= 8 #() 1554 #hash 8 #() 1 0 0 7 0 0 0 1424 0 8 4294903587 852486 ##(Smalltalk.NullConverter) 0 0 21 0 0 754 138 144 34 3 818 #createAt:extent: 34 2 866 261 1 866 889 79 1424 818 #lineSize: 8 #(10) 1424 818 #range: 34 1 525062 ##(Smalltalk.Interval) 1 201 21 1424 994 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 130 0 0 0 0 0 0 0 62 2 0 0 39 0 0 0] 8 #() 1056 0 27 170 192 34 2 1424 8 'scale' 0 754 138 144 34 1 818 #createAt:extent: 34 2 866 1 1 866 1409 79 544 994 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 192 2 0 0 39 0 0 0] 34 3 624 1424 1072 1056 0 27 410 ##(Smalltalk.ContainerView) 34 15 0 416 34 2 8 1149239296 131073 2144 0 786694 ##(Smalltalk.IndexedColor) 33554447 0 7 0 0 0 2144 514 1 1 0 0 410 ##(Smalltalk.TextEdit) 34 16 0 2144 34 2 8 1140916226 1 2256 0 466 8 4278190080 0 1031 0 263174 ##(Smalltalk.Font) 0 true 459014 ##(Smalltalk.LOGFONT) 8 #[224 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 144 1 0 0 0 0 0 0 3 2 1 34 65 114 105 97 108 0 78 97 114 114 111 119 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 866 193 193 0 2256 0 8 4294903571 787206 ##(Smalltalk.NumberToText) 0 8 '' 0 1 754 138 144 34 2 818 #createAt:extent: 34 2 866 1165 1 866 241 127 2256 818 #setMarginWidths: 34 1 8 #(9 9) 2256 994 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 70 2 0 0 0 0 0 0 190 2 0 0 63 0 0 0] 8 #() 1056 0 27 410 ##(Smalltalk.TextEdit) 34 16 0 2144 34 2 8 1140916224 1 2720 0 466 2336 0 1031 0 2354 0 true 2386 8 #[224 255 255 255 0 0 0 0 0 0 0 0 0 0 0 0 144 1 0 0 0 0 0 0 3 2 1 34 65 114 105 97 108 0 78 97 114 114 111 119 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0] 866 193 193 0 2720 0 8 4294903571 2466 0 2496 0 1 754 138 144 34 2 818 #createAt:extent: 34 2 866 1 1 866 241 127 2720 818 #setMarginWidths: 34 1 8 #(9 9) 2720 994 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 0 0 0 0 120 0 0 0 63 0 0 0] 8 #() 1056 0 27 410 ##(Smalltalk.ImageView) 34 21 0 2144 34 2 8 1140850944 1 3104 1490 0 false 1310726 ##(Smalltalk.EqualitySearchPolicy) 0 0 0 7 0 0 0 3104 0 0 1650 0 0 0 0 #centered 0 0 0 754 138 144 34 1 818 #createAt:extent: 34 2 866 241 1 866 925 127 3104 994 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 120 0 0 0 0 0 0 0 70 2 0 0 63 0 0 0] 8 #() 1056 0 27 170 192 34 6 3104 8 'match' 2256 8 'matchTime' 2720 8 'confidence' 0 754 138 144 34 1 818 #createAt:extent: 34 2 866 1 1133 866 1409 131 2144 994 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 54 2 0 0 192 2 0 0 119 2 0 0] 34 3 3104 2720 2256 1056 0 27 0 0 410 ##(Smalltalk.ImageView) 34 21 0 416 34 2 8 1140850944 1 3632 1490 0 false 3200 0 0 0 7 0 0 0 3632 0 0 1650 0 0 0 0 #normal 1 0 #none 754 138 144 34 1 818 #createAt:extent: 34 2 866 1 79 866 1409 1055 3632 994 8 #[44 0 0 0 0 0 0 0 1 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 0 0 0 0 39 0 0 0 192 2 0 0 54 2 0 0] 8 #() 1056 0 27 170 192 34 2 3632 8 'source' 0 461638 4 ##(Smalltalk.MenuBar) 0 true 34 2 265030 4 ##(Smalltalk.Menu) 0 true 34 2 984134 2 ##(Smalltalk.CommandMenuItem) 1 706 #loadSourceImage 8 'Load Source Image...' 1 1 0 0 0 4034 1 706 #loadMatchImage 8 'Load Match Image...' 1 1 0 0 0 8 'File' 0 134217729 0 0 13589 0 0 3986 0 true 34 1 4034 1 706 #match 8 'Match' 1 1 0 0 0 8 'Ops' 0 134217729 0 0 13593 0 0 8 '' 0 134217729 0 0 0 0 0 0 0 0 9745 0 0 0 0 1 0 0 754 138 144 34 2 818 #createAt:extent: 34 2 866 5119 21 866 1441 1381 416 818 #updateMenuBar 8 #() 416 994 8 #[44 0 0 0 0 0 0 0 0 0 0 0 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 9 0 0 10 0 0 0 207 12 0 0 188 2 0 0] 34 3 544 3632 2144 1056 0 27 )! !
!AbstractImageMatcherShell class categoriesFor: #resource_Default_view!public!resources-views! !

