"Filed out from Dolphin Smalltalk 7"!

ExternalStructure subclass: #CvMat
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'OpenCVConstants Win32Constants'
	classInstanceVariableNames: ''!
CvMat guid: (GUID fromString: '{8E297B22-2CE2-4E5C-85BA-374A4FEC0C9A}')!
CvMat comment: ''!
!CvMat categoriesForClass!External-Data-Structured! !
!CvMat methodsFor!

_type
	"Answer the receiver's _type field as a Smalltalk object."

	^bytes sdwordAtOffset: 0!

_type: anObject
	"Set the receiver's _type field to the value of anObject."

	bytes sdwordAtOffset: 0 put: anObject!

asBitmap
	| headerinfo bitmapinfo extent h |
	extent := self extent.
	headerinfo := BITMAPINFOHEADER new.
	headerinfo
		biWidth: extent x;
		biHeight: extent y negated;
		biPlanes: 1;
		biBitCount: 32.
	bitmapinfo := BITMAPINFO new.
	bitmapinfo bmiHeader: headerinfo.
	h := GDILibrary default
				createDIBitmap: View desktop canvas handle
				bmih: headerinfo
				init: 4
				data: self data
				bmi: bitmapinfo
				usage: DIB_RGB_COLORS.
	^Bitmap fromOwnedHandle: h!

basicFree
	| ret |
	ret := (OpenCVCoreLibrary default)
				cvReleaseMat: self;
				cvGetErrStatus.
	ret = 0 ifFalse: [self error: (OpenCVCoreLibrary default cvErrorStr: ret)]!

channels
	^(self type bitShift: CV_CN_SHIFT negated)+1
!

cols
	"Answer the receiver's cols field as a Smalltalk object."

	^bytes sdwordAtOffset: ##(self offsetOf: #cols)!

cols: anObject
	"Set the receiver's cols field to the value of anObject."

	bytes sdwordAtOffset: ##(self offsetOf: #cols) put: anObject!

cropTo: aRectangle
	| rect crop r |
	rect := (aRectangle intersect: self rectangle) normalize.
	(rect height <= 0 or: [rect width <= 0])
		ifTrue: [self error: 'Crop rectangle cannot be empty'].
	crop := CvMat withExtent: rect extent type: self type.
	r := CvRect fromRectangle: rect.
	OpenCVCoreLibrary default
		cvGetSubRect: self
		submat: crop
		rect: r.
	^crop!

data
	"Answer the receiver's data field as a Smalltalk object."

	^(bytes uintPtrAtOffset: ##(self offsetOf: #data)) asExternalAddress!

data: anObject
	"Set the receiver's data field to the value of anObject."

	bytes uintPtrAtOffset: ##(self offsetOf: #data) put: anObject!

depth
	^self type bitAnd: CV_MAT_DEPTH_MASK
!

depthDesc
	| s |
	s := ##((LookupTable new)
				at: 0 put: '8U';
				at: 1 put: '8S';
				at: 2 put: '16U';
				at: 3 put: '16S';
				at: 4 put: '32S';
				at: 5 put: '32F';
				at: 6 put: '64F';
				yourself) at: self depth.
	^s!

extent
	^self cols @ self rows!

hdrRefCount
	"Answer the receiver's hdrRefCount field as a Smalltalk object."

	^bytes sdwordAtOffset: ##(self offsetOf: #hdrRefCount)!

hdrRefCount: anObject
	"Set the receiver's hdrRefCount field to the value of anObject."

	bytes sdwordAtOffset: ##(self offsetOf: #hdrRefCount) put: anObject!

initialize
	"Private - Initialize the receiver (common to internal [value] and
	external [reference] buffers.
	These objects are finalizable since they may reference owned external
	resources."

	super initialize.
	self beFinalizable!

isValid
	^self signature = CV_MAT_MAGIC_VAL!

matchTemplate: matchMat
	^self matchTemplate: matchMat mode: CV_TM_CCOEFF_NORMED!

matchTemplate: matchMat mode: mode
	| result rows cols |
	self type = matchMat type ifFalse: [self error: 'Images must have identical types'].
	self extent >= matchMat extent
		ifFalse: [self error: 'Template image must be smaller than source image'].
	rows := self cols - matchMat cols + 1.
	cols := self rows - matchMat rows + 1.
	result := IplImage
				withExtent: cols @ rows
				depth: 32
				channels: 1.
	OpenCVImgProcLibrary default
		cvMatchTemplate: self
		image: matchMat
		result: result
		method: mode.
	"OpenCVCoreLibrary default cvNormalize: result dst: result alpha: 0 beta: 1 normType: NORM_MINMAX."
	^result!

needsFree
	^true!

onStartup
	self beUnfinalizable.
!

rectangle
	^(0 @ 0) extent: (self cols @ self rows)!

refcount
	"Answer the receiver's refcount field as a Smalltalk object."

	^SDWORD fromAddress: (bytes intPtrAtOffset: ##(self offsetOf: #refcount))!

refcount: anObject
	"Set the receiver's refcount field to the value of anObject."

	bytes uintPtrAtOffset: ##(self offsetOf: #refcount) put: anObject yourAddress!

rows
	"Answer the receiver's rows field as a Smalltalk object."

	^bytes sdwordAtOffset: ##(self offsetOf: #rows)!

rows: anObject
	"Set the receiver's rows field to the value of anObject."

	bytes sdwordAtOffset: ##(self offsetOf: #rows) put: anObject!

saveImage: aFilename
	^(OpenCVHighGuiLibrary default cvSaveImage: aFilename image: self params: nil)=1.!

scaleBy: scale
	| newExtent dst |
	scale = 1 ifTrue: [^self].
	newExtent := (self extent * scale asPoint) rounded.
	dst := self class withExtent: newExtent type: self type.
	OpenCVImgProcLibrary default
		cvResize: self
		dst: dst
		interpolation: 2.
	^dst!

show
	OpenCVHighGuiLibrary default cvShowImage: '' image: self!

signature
	^self _type bitAnd: 16rFFFF0000!

step
	"Answer the receiver's step field as a Smalltalk object."

	^bytes sdwordAtOffset: ##(self offsetOf: #step)!

step: anObject
	"Set the receiver's step field to the value of anObject."

	bytes sdwordAtOffset: ##(self offsetOf: #step) put: anObject!

type
	^self _type bitAnd: 16rFF!

typeDesc
	^('CV_<1s><2d>' expandMacrosWith: self depthDesc with: self channels) asSymbol! !
!CvMat categoriesFor: #_type!**compiled accessors**!public! !
!CvMat categoriesFor: #_type:!**compiled accessors**!public! !
!CvMat categoriesFor: #asBitmap!converting!public! !
!CvMat categoriesFor: #basicFree!private! !
!CvMat categoriesFor: #channels!accessing!public! !
!CvMat categoriesFor: #cols!**compiled accessors**!public! !
!CvMat categoriesFor: #cols:!**compiled accessors**!public! !
!CvMat categoriesFor: #cropTo:!operations!public! !
!CvMat categoriesFor: #data!**compiled accessors**!public! !
!CvMat categoriesFor: #data:!**compiled accessors**!public! !
!CvMat categoriesFor: #depth!accessing!public! !
!CvMat categoriesFor: #depthDesc!public! !
!CvMat categoriesFor: #extent!accessing!public! !
!CvMat categoriesFor: #hdrRefCount!**compiled accessors**!public! !
!CvMat categoriesFor: #hdrRefCount:!**compiled accessors**!public! !
!CvMat categoriesFor: #initialize!initializing!private! !
!CvMat categoriesFor: #isValid!public!testing! !
!CvMat categoriesFor: #matchTemplate:!operations!public! !
!CvMat categoriesFor: #matchTemplate:mode:!operations!public! !
!CvMat categoriesFor: #needsFree!initializing!private!realizing/unrealizing! !
!CvMat categoriesFor: #onStartup!private! !
!CvMat categoriesFor: #rectangle!public! !
!CvMat categoriesFor: #refcount!**compiled accessors**!public! !
!CvMat categoriesFor: #refcount:!**compiled accessors**!public! !
!CvMat categoriesFor: #rows!**compiled accessors**!public! !
!CvMat categoriesFor: #rows:!**compiled accessors**!public! !
!CvMat categoriesFor: #saveImage:!operations!public! !
!CvMat categoriesFor: #scaleBy:!public! !
!CvMat categoriesFor: #show!operations!public! !
!CvMat categoriesFor: #signature!accessing!public! !
!CvMat categoriesFor: #step!**compiled accessors**!public! !
!CvMat categoriesFor: #step:!**compiled accessors**!public! !
!CvMat categoriesFor: #type!accessing!public! !
!CvMat categoriesFor: #typeDesc!accessing!public! !

!CvMat class methodsFor!

defineFields
	"Define the fields of the CvMat structure.

	CvMat  compileDefinition
"

	self
		defineField: #_type type: SDWORDField new;
		defineField: #step type: SDWORDField new;
		defineField: #refcount type: (PointerField type: SDWORD);
		defineField: #hdrRefCount type: SDWORDField new;
		defineField: #data type: LPVOIDField new;
		defineField: #rows type: SDWORDField new;
		defineField: #cols type: SDWORDField new!

fromBitmap: aBitmap
	^self fromCanvas1: aBitmap canvas rect: (Point zero extent: aBitmap extent)!

fromCanvas: aCanvas rect: aRectangle
	| mat bitmapinfo bitmap |
	bitmap := Bitmap displayCompatibleWithExtent: aRectangle extent.
	bitmap canvas
		bitBlt: aCanvas
		rectangle: aRectangle
		to: Point zero
		rop: SRCCOPY.
	bitmapinfo := BITMAPINFOHEADER new.
	bitmapinfo
		dwSize: BITMAPINFOHEADER basicByteSize;
		biWidth: aRectangle width;
		biHeight: aRectangle height negated;
		biPlanes: 1;
		biBitCount: 32.
	mat := self withExtent: aRectangle extent type: CV_8UC4.
	GDILibrary default
		getDIBits: bitmap canvas handle
		hbm: bitmap handle
		uStartScan: 0
		cScanLines: aRectangle height
		lpvBits: mat data
		lpbi: bitmapinfo
		uUsage: DIB_RGB_COLORS.
	^mat!

fromCanvas1: aCanvas rect: aRectangle
	| mat bitmapinfo bitmap data ret byteSize width height |
	bitmap := Bitmap displayCompatibleWithExtent: aRectangle extent.
	bitmap canvas
		bitBlt: aCanvas
		rectangle: aRectangle
		to: Point zero
		rop: SRCCOPY.

	width := aRectangle width.
	height := aRectangle height.
	byteSize := 4 * width * height.
	bitmapinfo := BITMAPINFO new.
	(bitmapinfo bmiHeader)
		biWidth: width ;
		biHeight: -1 * height;
		biPlanes: 1;
		biBitCount: 32;
		biCompression: BI_RGB;
		biSizeImage: byteSize.

	mat := self withExtent: aRectangle extent type: CV_8UC4.
	data := mat data.
	ret := GDILibrary default
				getDIBits: bitmap canvas handle
				hbm: bitmap handle
				uStartScan: 0
				cScanLines:  height
				lpvBits: data
				lpbi: bitmapinfo
				uUsage: DIB_RGB_COLORS.
	ret isZero ifTrue: [Win32Error signal].
	^mat!

fromDC: hdc rect: aRectangle
	| matBitmap hBitmap hdcSys hdcMem bi bih width height ptrBitmapPixels |
	hdcSys := UserLibrary default getDC.
	hdcMem := GDILibrary default createCompatibleDC: hdcSys.
	width := aRectangle width.
	height := aRectangle height.

self halt.
	hBitmap := GDILibrary default
				createCompatibleBitmap: hdc
				nWidth: width
				nHeight: height.
	bih := BITMAPINFOHEADER new.
	bih
		dwSize: BITMAPFILEHEADER basicSize;
		biWidth: width;
		biHeight: height negated;
		biPlanes: 1;
		biBitCount: 32.
	bi := BITMAPINFO new.
	bi bmiHeader: bih.
self halt.
	matBitmap := self withExtent: aRectangle extent type: CV_8UC4.
	ptrBitmapPixels := ExternalAddress  fromAddress: matBitmap data.
	hBitmap := GDILibrary default
				createDIBSection: hdc
				pbmi: bi
				iUsage: DIB_RGB_COLORS
				ppvBits: ptrBitmapPixels
				hSection: nil
				dwOffset: 0.
	GDILibrary default selectObject: hdcMem hgdiobj: hBitmap.
	GDILibrary default bitBlt: hdcMem nXDest: 0 nYDest: 0 nWidth: width nHeight: height hdcSrc: hdcSys nXSrc: 0 nYSrc: 0 dwRop: SRCCOPY.
	^matBitmap!

fromDesktop
	^self fromCanvas1: View desktop canvas rect: (Point zero extent: View desktop extent)!

initialize
	"Private - 
	self initialize.	
	"
	SessionManager current
		when: #sessionStarted
		send: #onStartup
		to: self!

loadImage: aFilename
	| newOne |
	newOne := OpenCVHighGuiLibrary default cvLoadImageM: aFilename iscolor: CV_LOAD_IMAGE_UNCHANGED.
	newOne isNull ifTrue: [^nil].
	^newOne initialize!

onStartup
	self primAllSubinstances do: [:i | i onStartup].!

withExtent: extent type: type
	| newOne |
	newOne := OpenCVCoreLibrary default
				cvCreateMat: extent y
				cols: extent x
				type: type.
	^newOne initialize! !
!CvMat class categoriesFor: #defineFields!initializing!public! !
!CvMat class categoriesFor: #fromBitmap:!initializing!instance creation!public! !
!CvMat class categoriesFor: #fromCanvas:rect:!initializing!instance creation!public! !
!CvMat class categoriesFor: #fromCanvas1:rect:!initializing!instance creation!public! !
!CvMat class categoriesFor: #fromDC:rect:!initializing!instance creation!public! !
!CvMat class categoriesFor: #fromDesktop!initializing!instance creation!public! !
!CvMat class categoriesFor: #initialize!private! !
!CvMat class categoriesFor: #loadImage:!instance creation!public! !
!CvMat class categoriesFor: #onStartup!private! !
!CvMat class categoriesFor: #withExtent:type:!instance creation!public! !

