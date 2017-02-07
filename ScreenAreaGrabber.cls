"Filed out from Dolphin Smalltalk 7"!

ShellView subclass: #ScreenAreaGrabber
	instanceVariableNames: 'tracker startPoint trackBitmap trackPoint done answer'
	classVariableNames: ''
	poolDictionaries: 'Win32Constants'
	classInstanceVariableNames: ''!
ScreenAreaGrabber guid: (GUID fromString: '{38A0FD93-8EC1-48B9-9B18-E0CC99D91B45}')!
ScreenAreaGrabber comment: ''!
!ScreenAreaGrabber categoriesForClass!MVP-Resources-Misc! !
!ScreenAreaGrabber methodsFor!

answer: aBitmapOrNil
	answer := aBitmapOrNil.
	done := true.
!

cancelTrackingAt: aPoint 
	self close
	!

continueTrackingAt: pointOffset from: previousPointOffset
	"Private - Continue selection tracking at pointOffset when the previous tracking 
	was at previousPointOffset. Part of the <MouseTracker> target protocol. 
	Answers the actual position achieved after any view constraints
	have been applied"

	self eraseTrackingAt: previousPointOffset.
	self drawTrackingAt: pointOffset.
	^pointOffset!

defaultExtent
	"Answer the default size of the receiver"

	^View desktop extent!

defaultPositionWithin: aParentView forExtent: aPoint
	"Private - Answer the default position of the receiver within aParentView given its intended extent aPoint.
	This is used only on creation."

	^0@0!

defaultWindowExStyle
	"Private - Answer the default extended window creation style.
	We use the WS_EX_TOOLWINDOW style to prevent icons from appearing in the desktop tray."

	^super defaultWindowExStyle bitOr: WS_EX_TOOLWINDOW | WS_EX_TRANSPARENT !

defaultWindowStyle
	"Private - Answer the default basic window creation style"

	^##(WS_POPUP)!

drawTrackingAt: aPointOffset
	| rect grabRect |
	rect := (startPoint corner: startPoint + aPointOffset) normalize.
	grabRect := rect expandBy: 1.
	trackBitmap := self screenBitmapInRect: grabRect.
	trackPoint := grabRect topLeft.
	(View desktop canvas)
		pen: (Pen red width: 2);
		brush: Brush transparent;
		rectangle: rect!

endTrackingAt: aPoint
	| rect |
	self eraseTrackingAt: aPoint.
	rect := (startPoint corner: startPoint + aPoint) normalize.
	self answer: (self screenBitmapInRect: rect)!

eraseTrackingAt: aPointOffset
	trackBitmap drawOn: View desktop canvas at: trackPoint!

onKeyTyped: aKeyEvent

	aKeyEvent code = VK_ESCAPE ifTrue: [self answer: nil].!

onLeftButtonPressed: aMouseEvent
	startPoint := aMouseEvent screenPosition.
	tracker := MouseTracker forPresenter: self startingAt: aMouseEvent screenPosition.
	tracker startTracking: self!

runModalInProcessLoop
	"Private - Create a modal message loop until our continue flag suggests exit. Note that here
	we run the dialog message loop in the current active process, rather than forking a new one.
	This can be useful ifa deadlock is likely due to the current process holding a Mutex lock
	likely to be required by the new process."

	done := false.
	SessionManager inputState loopWhile: [done not].
	self close.
	^answer!

screenBitmapInRect: aRectangle
	^self class screenBitmapInRect: aRectangle!

startTrackingAt: aPoint 
	self drawTrackingAt: aPoint .
	^aPoint
! !
!ScreenAreaGrabber categoriesFor: #answer:!private!tracking! !
!ScreenAreaGrabber categoriesFor: #cancelTrackingAt:!private!tracking! !
!ScreenAreaGrabber categoriesFor: #continueTrackingAt:from:!event handling!private!tracking! !
!ScreenAreaGrabber categoriesFor: #defaultExtent!constants!private! !
!ScreenAreaGrabber categoriesFor: #defaultPositionWithin:forExtent:!geometry!private! !
!ScreenAreaGrabber categoriesFor: #defaultWindowExStyle!constants!private! !
!ScreenAreaGrabber categoriesFor: #defaultWindowStyle!constants!private! !
!ScreenAreaGrabber categoriesFor: #drawTrackingAt:!private! !
!ScreenAreaGrabber categoriesFor: #endTrackingAt:!private!tracking! !
!ScreenAreaGrabber categoriesFor: #eraseTrackingAt:!private! !
!ScreenAreaGrabber categoriesFor: #onKeyTyped:!event handling!private! !
!ScreenAreaGrabber categoriesFor: #onLeftButtonPressed:!event handling!private! !
!ScreenAreaGrabber categoriesFor: #runModalInProcessLoop!operations!private! !
!ScreenAreaGrabber categoriesFor: #screenBitmapInRect:!operations!private! !
!ScreenAreaGrabber categoriesFor: #startTrackingAt:!private! !

!ScreenAreaGrabber class methodsFor!

cursor

	^Cursor cross!

grabBitmap
	^self show runModalInProcessLoop!

grabImage
	^self grabBitmap ifNotNil: [:bitmap | self imageClass fromBitmap: bitmap]!

grabPng
	"
	self grabPng copyToClipboard
	"

	^self grabPng: (File composePath: 'images'
				subPath: 'img' , (Timestamp current asFilenameString copyWithout: $-))!

grabPng: aFilename
	^self grabImage
		ifNotNil: 
			[:img || fullPath |
			fullPath := (File default: aFilename extension: 'png').
			img saveImage: fullPath. fullPath ]!

grabPngSymbolToClipboard
	"
	self grabPngSymbolToClipboard
	"

	^self grabPng ifNotNil: [:filename | ('#' , (File splitStemFrom: filename)) copyToClipboard]!

imageClass
	^CvMat!

screenBitmapInRect: aRectangle
	| bitmap |
	bitmap := Bitmap displayCompatibleWithExtent: aRectangle extent.
	bitmap canvas
		bitBlt: View desktop canvas
		rectangle: aRectangle
		to: 0 @ 0
		rop: SRCCOPY.
	^bitmap! !
!ScreenAreaGrabber class categoriesFor: #cursor!accessing!public! !
!ScreenAreaGrabber class categoriesFor: #grabBitmap!public! !
!ScreenAreaGrabber class categoriesFor: #grabImage!public! !
!ScreenAreaGrabber class categoriesFor: #grabPng!public! !
!ScreenAreaGrabber class categoriesFor: #grabPng:!public! !
!ScreenAreaGrabber class categoriesFor: #grabPngSymbolToClipboard!public! !
!ScreenAreaGrabber class categoriesFor: #imageClass!private! !
!ScreenAreaGrabber class categoriesFor: #screenBitmapInRect:!public! !

