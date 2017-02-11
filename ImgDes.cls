"Filed out from Dolphin Smalltalk 7"!

ExternalStructure subclass: #ImgDes
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
ImgDes guid: (GUID fromString: '{C7A01325-BC01-457D-AC2B-E0A9BAC9BA76}')!
ImgDes comment: ''!
!ImgDes categoriesForClass!Unclassified! !
!ImgDes methodsFor!

asBitmap
	^Bitmap fromHandle: self hBitmap.!

basicFree	
	Vic32Library default freeimage: self.!

bmh
	"Answer the receiver's bmh field as a Smalltalk object."

	^BITMAPINFOHEADER fromAddress: (bytes intPtrAtOffset: ##(self offsetOf: #bmh))!

bmh: anObject
	"Set the receiver's bmh field to the value of anObject."

	bytes uintPtrAtOffset: ##(self offsetOf: #bmh) put: anObject yourAddress!

buffwidth
	"Answer the receiver's buffwidth field as a Smalltalk object."

	^bytes dwordAtOffset: ##(self offsetOf: #buffwidth)!

buffwidth: anObject
	"Set the receiver's buffwidth field to the value of anObject."

	bytes dwordAtOffset: ##(self offsetOf: #buffwidth) put: anObject!

colors
	"Answer the receiver's colors field as a Smalltalk object."

	^bytes sdwordAtOffset: ##(self offsetOf: #colors)!

colors: anObject
	"Set the receiver's colors field to the value of anObject."

	bytes sdwordAtOffset: ##(self offsetOf: #colors) put: anObject!

copy
	| copyImage |
	copyImage := self copyEmpty.
	Vic32Library default copyimage: self imgdes: copyImage.
	^copyImage!

copyEmpty
	^self class
		width: self width
		height: self height
		pixelDepth: self pixelDepth!

copyRect: aRectangle
	| copyImage dstImage |

	copyImage := self copy.
	copyImage rectangle: aRectangle.

	dstImage := copyImage copyEmpty.
	dstImage rectangle: (Rectangle origin: Point zero extent: aRectangle extent ).

	Vic32Library default copyimage: copyImage imgdes: dstImage .
	^dstImage!

endx
	"Answer the receiver's endx field as a Smalltalk object."

	^bytes dwordAtOffset: ##(self offsetOf: #endx)!

endx: anObject
	"Set the receiver's endx field to the value of anObject."

	bytes dwordAtOffset: ##(self offsetOf: #endx) put: anObject!

endy
	"Answer the receiver's endy field as a Smalltalk object."

	^bytes dwordAtOffset: ##(self offsetOf: #endy)!

endy: anObject
	"Set the receiver's endy field to the value of anObject."

	bytes dwordAtOffset: ##(self offsetOf: #endy) put: anObject!

extent
	^self width @ self height!

hBitmap
	"Answer the receiver's hBitmap field as a Smalltalk object."

	^bytes dwordAtOffset: ##(self offsetOf: #hBitmap)!

hBitmap: anObject
	"Set the receiver's hBitmap field to the value of anObject."

	bytes dwordAtOffset: ##(self offsetOf: #hBitmap) put: anObject!

height
	^self endy - self sty +1!

ibuff
	"Answer the receiver's ibuff field as a Smalltalk object."

	^BYTE fromAddress: (bytes intPtrAtOffset: 0)!

ibuff: anObject
	"Set the receiver's ibuff field to the value of anObject."

	bytes uintPtrAtOffset: 0 put: anObject yourAddress!

imgtype
	"Answer the receiver's imgtype field as a Smalltalk object."

	^BYTE fromAddress: (bytes intPtrAtOffset: ##(self offsetOf: #imgtype))!

imgtype: anObject
	"Set the receiver's imgtype field to the value of anObject."

	bytes uintPtrAtOffset: ##(self offsetOf: #imgtype) put: anObject yourAddress!

initialize
	"Private - Initialize the receiver (common to internal [value] and
	external [reference] buffers.
	These objects are finalizable since they may reference owned external
	resources."

	self beFinalizable!

needsFree
	^self hBitmap notNil!

palette
	"Answer the receiver's palette field as a Smalltalk object."

	^RGBQUAD fromAddress: (bytes intPtrAtOffset: ##(self offsetOf: #palette))!

palette: anObject
	"Set the receiver's palette field to the value of anObject."

	bytes uintPtrAtOffset: ##(self offsetOf: #palette) put: anObject yourAddress!

pixelDepth
	^self bmh biBitCount!

rectangle
	^Rectangle
		left: self stx
		top: self sty
		right: self endx
		bottom: self endy!

rectangle: aRectangle
	Vic32Library default rect: aRectangle asParameter toImageArea: self!

savepng: aFilename
	Vic32Library default savepng: aFilename imgdes: self cmp: 0!

scaleBy: aPointOrNumber
	| scale scaledImage |
	scale := aPointOrNumber asPoint.
	scaledImage := ImgDes
				width: (self width * scale x) rounded
				height: (self height * scale y) rounded
				pixelDepth: self pixelDepth.
	Vic32Library default
		resizeex: self
		destination: scaledImage
		mode: 1.
	^scaledImage!

stx
	"Answer the receiver's stx field as a Smalltalk object."

	^bytes dwordAtOffset: ##(self offsetOf: #stx)!

stx: anObject
	"Set the receiver's stx field to the value of anObject."

	bytes dwordAtOffset: ##(self offsetOf: #stx) put: anObject!

sty
	"Answer the receiver's sty field as a Smalltalk object."

	^bytes dwordAtOffset: ##(self offsetOf: #sty)!

sty: anObject
	"Set the receiver's sty field to the value of anObject."

	bytes dwordAtOffset: ##(self offsetOf: #sty) put: anObject!

width
	^self endx - self stx +1! !
!ImgDes categoriesFor: #asBitmap!public! !
!ImgDes categoriesFor: #basicFree!public! !
!ImgDes categoriesFor: #bmh!**compiled accessors**!public! !
!ImgDes categoriesFor: #bmh:!**compiled accessors**!public! !
!ImgDes categoriesFor: #buffwidth!**compiled accessors**!public! !
!ImgDes categoriesFor: #buffwidth:!**compiled accessors**!public! !
!ImgDes categoriesFor: #colors!**compiled accessors**!public! !
!ImgDes categoriesFor: #colors:!**compiled accessors**!public! !
!ImgDes categoriesFor: #copy!public! !
!ImgDes categoriesFor: #copyEmpty!public! !
!ImgDes categoriesFor: #copyRect:!public! !
!ImgDes categoriesFor: #endx!**compiled accessors**!public! !
!ImgDes categoriesFor: #endx:!**compiled accessors**!public! !
!ImgDes categoriesFor: #endy!**compiled accessors**!public! !
!ImgDes categoriesFor: #endy:!**compiled accessors**!public! !
!ImgDes categoriesFor: #extent!accessing!public! !
!ImgDes categoriesFor: #hBitmap!**compiled accessors**!public! !
!ImgDes categoriesFor: #hBitmap:!**compiled accessors**!public! !
!ImgDes categoriesFor: #height!accessing!public! !
!ImgDes categoriesFor: #ibuff!**compiled accessors**!public! !
!ImgDes categoriesFor: #ibuff:!**compiled accessors**!public! !
!ImgDes categoriesFor: #imgtype!**compiled accessors**!public! !
!ImgDes categoriesFor: #imgtype:!**compiled accessors**!public! !
!ImgDes categoriesFor: #initialize!initializing!private! !
!ImgDes categoriesFor: #needsFree!initializing!private!realizing/unrealizing! !
!ImgDes categoriesFor: #palette!**compiled accessors**!public! !
!ImgDes categoriesFor: #palette:!**compiled accessors**!public! !
!ImgDes categoriesFor: #pixelDepth!public! !
!ImgDes categoriesFor: #rectangle!public! !
!ImgDes categoriesFor: #rectangle:!public! !
!ImgDes categoriesFor: #savepng:!public! !
!ImgDes categoriesFor: #scaleBy:!operations!public! !
!ImgDes categoriesFor: #stx!**compiled accessors**!public! !
!ImgDes categoriesFor: #stx:!**compiled accessors**!public! !
!ImgDes categoriesFor: #sty!**compiled accessors**!public! !
!ImgDes categoriesFor: #sty:!**compiled accessors**!public! !
!ImgDes categoriesFor: #width!accessing!public! !

!ImgDes class methodsFor!

defineFields
	"Define the fields of the imgdes structure.

	ImgDes  compileDefinition

	typedef struct {
		   UCHAR huge *ibuff;             /* Image buffer address */
		   unsigned stx, sty, endx, endy; /* Image area to be processed (pixel coords) */
		   unsigned buffwidth;            /* Image buffer width in bytes */
		   RGBQUAD far *palette; /* Address of palette associated with the image */
		   int colors;           /* Palette colors */
		   int imgtype;          /* Image type: bit 0 = 1 if image is grayscale */
		   BITMAPINFOHEADER far *bmh; /* BITMAPINFOHEADER header and DIB address */
		   HBITMAP hBitmap;      /* Device-independent bitmap handle */
		   } imgdes;
"

	self
		defineField: #ibuff type: (PointerField type: BYTE);
		defineField: #stx type: DWORDField new;
		defineField: #sty type: DWORDField new;
		defineField: #endx type: DWORDField new;
		defineField: #endy type: DWORDField new;
		defineField: #buffwidth type: DWORDField new;
		defineField: #palette type: (PointerField type: RGBQUAD);
		defineField: #colors type: SDWORDField new;
		defineField: #imgtype type: (PointerField type: BYTE);
		defineField: #bmh type: (PointerField type: BITMAPINFOHEADER );
		defineField: #hBitmap type: DWORDField new






!

fromBitmap: aBitmap
	| img |
	img := ImgDes new.
	Vic32Library default
		ddbtoimage: aBitmap asParameter asParameter
		hPal: 0
		imgdes: img.
	^img!

loadImage: aFilename
	^Vic32Library default loadpng: aFilename!

width: w height: h pixelDepth: d
	| err newOne |
	newOne := self new.
	err := Vic32Library default
				allocimage: newOne
				width: w
				length: h
				bppixel: d.
	err = 0 ifFalse: [self error: 'Unable to allocate image'].
	^newOne! !
!ImgDes class categoriesFor: #defineFields!**auto generated**!initializing!public! !
!ImgDes class categoriesFor: #fromBitmap:!public! !
!ImgDes class categoriesFor: #loadImage:!public! !
!ImgDes class categoriesFor: #width:height:pixelDepth:!instance creation!public! !

