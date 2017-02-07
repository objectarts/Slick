"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #RecorderTestCase
	instanceVariableNames: 'autoIt'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
RecorderTestCase guid: (GUID fromString: '{C8107878-337E-46EB-8A59-BE221E0C1A76}')!
RecorderTestCase comment: ''!
!RecorderTestCase categoriesForClass!SUnit! !
!RecorderTestCase methodsFor!

activeWindow
	| h |
	h := self autoIt winGetHandle: '[ACTIVE]'.
	^View fromHandle: (Integer fromString: '16r', (h allButFirst: 2))!

activeWindowImage
	^self grabScreenImageInRect: self activeWindowRect!

activeWindowRect
	^self activeWindow rectangle!

autoIt
	autoIt ifNil: [autoIt := IAutoItX3 new].
	^autoIt!

click: anImage
	(self wait: anImage)
		ifNotNil: 
			[:match| | rect pt |
			rect := match value.
			pt := rect center+self activeWindowRect topLeft.
			self autoIt
				mouseClick: 'primary'
				nX: pt x
				nY: pt y
				nClicks: 1
				nSpeed: 10]
!

defaultMatchScale
	^0.5!

defaultTimeout
	^5000!

find: matchImage in: sourceImage
	| ms result |
	ms := Time millisecondsToRun: 
					[result := (self imageMatcherClass new)
								scale: self defaultMatchScale;
								goodMatchFor: matchImage in: sourceImage].
	Transcript
		show: ('match time <1d>ms' expandMacrosWith: ms);
		cr.
	^result!

grabScreenImageInRect: aRectangle
	^(ScreenAreaGrabber screenBitmapInRect: aRectangle)
		ifNotNil: [:bitmap | self imageClass fromBitmap: bitmap]!

imageClass
	^CvMat!

imageMatcherClass
	^CvImageMatcher!

loadImage: anImageSymbol
	| filename |
	filename := File composePath: 'images' stem: anImageSymbol asString extension: 'png'.
	^self imageClass loadImage: filename!

openUrl: aString
	ShellLibrary default shellOpen: aString.
	self autoIt processWait: 'explorer.exe'!

setWindowSize: anXY
	self activeWindow extent: anXY!

testGoogle
	"
	ScreenAreaGrabber grabPngSymbolToClipboard.
	"

	self openUrl: 'http://google.com'.
	self wait: #img20170206110556872.
	self click: #img20170206110622907.
	self type: 'object arts{ENTER}'.
	self click: #img20170206111043180.
	self wait: #img20170206111128731.
	self click: #img20170206131313380.
!

testOne
	"
	ScreenAreaGrabber grabPngSymbolToClipboard.
	"
	"self openUrl: 'http://object-arts.com'.

	self wait: #img20170203221057855.
	self click: #img20170203215601556."!

type: aString
	self autoIt send: aString!

wait: anImage
	| sourceImage matchImage |
	10 timesRepeat: 
			[sourceImage := self activeWindowImage.
			matchImage := self loadImage: anImage.
			(self find: matchImage in: sourceImage) ifNotNil: [:match | ^match].
			SessionManager inputState pumpMessages.
			Processor sleep: 100].
	self errorNotFound: anImage!

waitActiveTitle: aString
	self autoIt winWaitActive: aString strText: '' nTimeout: self defaultTimeout // 1000.! !
!RecorderTestCase categoriesFor: #activeWindow!public! !
!RecorderTestCase categoriesFor: #activeWindowImage!public! !
!RecorderTestCase categoriesFor: #activeWindowRect!public! !
!RecorderTestCase categoriesFor: #autoIt!private! !
!RecorderTestCase categoriesFor: #click:!public! !
!RecorderTestCase categoriesFor: #defaultMatchScale!public! !
!RecorderTestCase categoriesFor: #defaultTimeout!constants!public! !
!RecorderTestCase categoriesFor: #find:in:!private! !
!RecorderTestCase categoriesFor: #grabScreenImageInRect:!private! !
!RecorderTestCase categoriesFor: #imageClass!private! !
!RecorderTestCase categoriesFor: #imageMatcherClass!private! !
!RecorderTestCase categoriesFor: #loadImage:!private! !
!RecorderTestCase categoriesFor: #openUrl:!public! !
!RecorderTestCase categoriesFor: #setWindowSize:!public! !
!RecorderTestCase categoriesFor: #testGoogle!public! !
!RecorderTestCase categoriesFor: #testOne!public! !
!RecorderTestCase categoriesFor: #type:!public! !
!RecorderTestCase categoriesFor: #wait:!public! !
!RecorderTestCase categoriesFor: #waitActiveTitle:!public! !

