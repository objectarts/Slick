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
	^self click: anImage offset: 0
!

click: anImage offset: aPoint
	(self wait: anImage)
		ifNotNil: 
			[:match| | rect pt |
			rect := match value.
			pt := rect center+self activeWindowRect topLeft + aPoint asPoint.
			self autoIt
				mouseClick: 'primary'
				nX: pt x
				nY: pt y
				nClicks: 1
				nSpeed: 10]
!

closeBrowserTab
	self click: #BrowserCloseTab offset: -10 @ 0.
	Processor sleep: 100.
	!

defaultMatchScale
	^1!

defaultTimeout
	^5000!

find: anImage
	| sourceImage matchImage |
	sourceImage := self activeWindowImage.
	matchImage := self loadImage: anImage.
	(self find: matchImage in: sourceImage) ifNotNil: [:match | ^match].
	matchImage free.
	SessionManager inputState pumpMessages.
	^nil!

find: matchImage in: sourceImage
	| ms result |
	ms := Time millisecondsToRun: 
					[| matcher |
					matcher := (self imageMatcherClass new)
								trialMatchScale: self defaultMatchScale;
								matches: matchImage in: sourceImage;
								yourself.
					result := matcher bestMatch].
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
	filename := self class fullPathForImage: anImageSymbol.
	(self imageClass loadImage: filename) ifNotNil: [:image | ^image].
	self error: 'Can''t find image file: ' , filename!

openUrl: aString
	ShellLibrary default shellOpen: aString.
	self autoIt processWait: 'explorer.exe'!

setWindowSize: anXY
	self activeWindow extent: anXY!

type: aString
	self autoIt send: aString!

wait: anImage
	^self wait: anImage timeout: self defaultTimeout!

wait: anImage timeout: timeoutMilliseconds
	| sourceImage matchImage timeoutTime |
	timeoutTime := TimeStamp current asMilliseconds + timeoutMilliseconds.
	[TimeStamp current asMilliseconds < timeoutTime] whileTrue: 
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
!RecorderTestCase categoriesFor: #click:offset:!public! !
!RecorderTestCase categoriesFor: #closeBrowserTab!public! !
!RecorderTestCase categoriesFor: #defaultMatchScale!public! !
!RecorderTestCase categoriesFor: #defaultTimeout!constants!public! !
!RecorderTestCase categoriesFor: #find:!public! !
!RecorderTestCase categoriesFor: #find:in:!private! !
!RecorderTestCase categoriesFor: #grabScreenImageInRect:!private! !
!RecorderTestCase categoriesFor: #imageClass!private! !
!RecorderTestCase categoriesFor: #imageMatcherClass!private! !
!RecorderTestCase categoriesFor: #loadImage:!private! !
!RecorderTestCase categoriesFor: #openUrl:!public! !
!RecorderTestCase categoriesFor: #setWindowSize:!public! !
!RecorderTestCase categoriesFor: #type:!public! !
!RecorderTestCase categoriesFor: #wait:!public! !
!RecorderTestCase categoriesFor: #wait:timeout:!public! !
!RecorderTestCase categoriesFor: #waitActiveTitle:!public! !

!RecorderTestCase class methodsFor!

fullPathForImage: aFilenameString
	| filename |
	
	filename := File
				composePath: 'images'
				stem: aFilenameString asString
				extension: 'png'.
	^(PackageRelativeFileLocator package: self class owningPackage) localFileSpecFor: filename!

getFilenameForImage
	^(FileSaveDialog new)
				on: 'img' , (Timestamp current asFilenameString copyWithout: $-);
				fileTypes: #(#('Png Files (*.png)' '*.png') #('All Files' '*.*'));
				showModal ifNotNil: [:filename | File splitFilenameFrom: filename]!

grabPngSymbolToClipboard
	"
	self grabPngSymbolToClipboard
	"

	| image filename |
	image := ScreenAreaGrabber grabImage.
	image ifNil: [^nil].
	filename := self getFilenameForImage.
	filename ifNil: [^nil].
	image saveImage: (self fullPathForImage:  filename).
	^('#' , (File splitStemFrom: filename)) copyToClipboard! !
!RecorderTestCase class categoriesFor: #fullPathForImage:!private! !
!RecorderTestCase class categoriesFor: #getFilenameForImage!private! !
!RecorderTestCase class categoriesFor: #grabPngSymbolToClipboard!public! !

