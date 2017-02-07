"Filed out from Dolphin Smalltalk 7"!

ExternalStructure subclass: #IplImage
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
IplImage guid: (GUID fromString: '{895DB263-BD7F-4D02-B625-939CA13777F3}')!
IplImage comment: ''!
!IplImage categoriesForClass!External-Data-Structured! !
!IplImage methodsFor!

align
	"Answer the receiver's align field as a Smalltalk object."

	^bytes sdwordAtOffset: ##(self offsetOf: #align)!

align: anObject
	"Set the receiver's align field to the value of anObject."

	bytes sdwordAtOffset: ##(self offsetOf: #align) put: anObject!

alphaChannel
	"Answer the receiver's alphaChannel field as a Smalltalk object."

	^bytes sdwordAtOffset: ##(self offsetOf: #alphaChannel)!

alphaChannel: anObject
	"Set the receiver's alphaChannel field to the value of anObject."

	bytes sdwordAtOffset: ##(self offsetOf: #alphaChannel) put: anObject!

asCvMat
	| mat |
	mat := CvMat withExtent: 0@0 type: 0.
	OpenCVCoreLibrary default cvGetMat: self mat: mat coi: 0 allowND: 0.
	^mat!

basicFree	
	OpenCVCoreLibrary default cvReleaseImage: self.!

dataOrder
	"Answer the receiver's dataOrder field as a Smalltalk object."

	^bytes sdwordAtOffset: ##(self offsetOf: #dataOrder)!

dataOrder: anObject
	"Set the receiver's dataOrder field to the value of anObject."

	bytes sdwordAtOffset: ##(self offsetOf: #dataOrder) put: anObject!

depth
	"Answer the receiver's depth field as a Smalltalk object."

	^bytes sdwordAtOffset: ##(self offsetOf: #depth)!

depth: anObject
	"Set the receiver's depth field to the value of anObject."

	bytes sdwordAtOffset: ##(self offsetOf: #depth) put: anObject!

height
	"Answer the receiver's height field as a Smalltalk object."

	^bytes sdwordAtOffset: ##(self offsetOf: #height)!

height: anObject
	"Set the receiver's height field to the value of anObject."

	bytes sdwordAtOffset: ##(self offsetOf: #height) put: anObject!

ID
	"Answer the receiver's ID field as a Smalltalk object."

	^bytes sdwordAtOffset: ##(self offsetOf: #ID)!

ID: anObject
	"Set the receiver's ID field to the value of anObject."

	bytes sdwordAtOffset: ##(self offsetOf: #ID) put: anObject!

imageData
	"Answer the receiver's imageData field as a Smalltalk object."

	^(bytes uintPtrAtOffset: ##(self offsetOf: #imageData)) asExternalAddress!

imageDataOrigin
	"Answer the receiver's imageDataOrigin field as a Smalltalk object."

	^(bytes uintPtrAtOffset: ##(self offsetOf: #imageDataOrigin)) asExternalAddress!

imageDataOrigin: anObject
	"Set the receiver's imageDataOrigin field to the value of anObject."

	bytes uintPtrAtOffset: ##(self offsetOf: #imageDataOrigin) put: anObject!

imageSize
	"Answer the receiver's imageSize field as a Smalltalk object."

	^bytes sdwordAtOffset: ##(self offsetOf: #imageSize)!

imageSize: anObject
	"Set the receiver's imageSize field to the value of anObject."

	bytes sdwordAtOffset: ##(self offsetOf: #imageSize) put: anObject!

initialize
	"Private - Initialize the receiver (common to internal [value] and
	external [reference] buffers.
	These objects are finalizable since they may reference owned external
	resources."

	self beFinalizable!

maxValueAndPosition
	| minVal maxVal minPos maxPos |
	minVal := DOUBLE new.
	maxVal := DOUBLE new.
	minPos := POINTL new.
	maxPos := POINTL new.
	OpenCVCoreLibrary default
		cvMinMaxLoc: self
		minVal: minVal
		maxVal: maxVal
		minLoc: minPos
		maxLoc: maxPos
		mask: nil.
	^maxVal asFloat -> maxPos asPoint!

minValueAndPosition
	| minVal maxVal minPos maxPos |
	minVal := DOUBLE new.
	maxVal := DOUBLE new.
	minPos := POINTL new.
	maxPos := POINTL new.
	OpenCVCoreLibrary default
		cvMinMaxLoc: self
		minVal: minVal
		maxVal: maxVal
		minLoc: minPos
		maxLoc: maxPos
		mask: nil.
	^minVal asFloat -> minPos asPoint!

nChannels
	"Answer the receiver's nChannels field as a Smalltalk object."

	^bytes sdwordAtOffset: ##(self offsetOf: #nChannels)!

nChannels: anObject
	"Set the receiver's nChannels field to the value of anObject."

	bytes sdwordAtOffset: ##(self offsetOf: #nChannels) put: anObject!

needsFree
	^true!

onStartup
	self beUnfinalizable !

origin
	"Answer the receiver's origin field as a Smalltalk object."

	^bytes sdwordAtOffset: ##(self offsetOf: #origin)!

origin: anObject
	"Set the receiver's origin field to the value of anObject."

	bytes sdwordAtOffset: ##(self offsetOf: #origin) put: anObject!

roi
	"Answer the receiver's roi field as a Smalltalk object."

	^(bytes uintPtrAtOffset: ##(self offsetOf: #roi)) asExternalAddress!

roi: anObject
	"Set the receiver's roi field to the value of anObject."

	bytes uintPtrAtOffset: ##(self offsetOf: #roi) put: anObject!

size
	"Answer the receiver's size field as a Smalltalk object."

	^bytes sdwordAtOffset: 0!

size: anObject
	"Set the receiver's size field to the value of anObject."

	bytes sdwordAtOffset: 0 put: anObject!

width
	"Answer the receiver's width field as a Smalltalk object."

	^bytes sdwordAtOffset: ##(self offsetOf: #width)!

width: anObject
	"Set the receiver's width field to the value of anObject."

	bytes sdwordAtOffset: ##(self offsetOf: #width) put: anObject!

widthStep
	"Answer the receiver's widthStep field as a Smalltalk object."

	^bytes sdwordAtOffset: ##(self offsetOf: #widthStep)!

widthStep: anObject
	"Set the receiver's widthStep field to the value of anObject."

	bytes sdwordAtOffset: ##(self offsetOf: #widthStep) put: anObject! !
!IplImage categoriesFor: #align!**compiled accessors**!public! !
!IplImage categoriesFor: #align:!**compiled accessors**!public! !
!IplImage categoriesFor: #alphaChannel!**compiled accessors**!public! !
!IplImage categoriesFor: #alphaChannel:!**compiled accessors**!public! !
!IplImage categoriesFor: #asCvMat!converting!public! !
!IplImage categoriesFor: #basicFree!private! !
!IplImage categoriesFor: #dataOrder!**compiled accessors**!public! !
!IplImage categoriesFor: #dataOrder:!**compiled accessors**!public! !
!IplImage categoriesFor: #depth!**compiled accessors**!public! !
!IplImage categoriesFor: #depth:!**compiled accessors**!public! !
!IplImage categoriesFor: #height!**compiled accessors**!public! !
!IplImage categoriesFor: #height:!**compiled accessors**!public! !
!IplImage categoriesFor: #ID!**compiled accessors**!public! !
!IplImage categoriesFor: #ID:!**compiled accessors**!public! !
!IplImage categoriesFor: #imageData!**compiled accessors**!public! !
!IplImage categoriesFor: #imageDataOrigin!**compiled accessors**!public! !
!IplImage categoriesFor: #imageDataOrigin:!**compiled accessors**!public! !
!IplImage categoriesFor: #imageSize!**compiled accessors**!public! !
!IplImage categoriesFor: #imageSize:!**compiled accessors**!public! !
!IplImage categoriesFor: #initialize!initializing!private! !
!IplImage categoriesFor: #maxValueAndPosition!public! !
!IplImage categoriesFor: #minValueAndPosition!public! !
!IplImage categoriesFor: #nChannels!**compiled accessors**!public! !
!IplImage categoriesFor: #nChannels:!**compiled accessors**!public! !
!IplImage categoriesFor: #needsFree!initializing!private!realizing/unrealizing! !
!IplImage categoriesFor: #onStartup!private! !
!IplImage categoriesFor: #origin!**compiled accessors**!public! !
!IplImage categoriesFor: #origin:!**compiled accessors**!public! !
!IplImage categoriesFor: #roi!**compiled accessors**!public! !
!IplImage categoriesFor: #roi:!**compiled accessors**!public! !
!IplImage categoriesFor: #size!**compiled accessors**!public! !
!IplImage categoriesFor: #size:!**compiled accessors**!public! !
!IplImage categoriesFor: #width!**compiled accessors**!public! !
!IplImage categoriesFor: #width:!**compiled accessors**!public! !
!IplImage categoriesFor: #widthStep!**compiled accessors**!public! !
!IplImage categoriesFor: #widthStep:!**compiled accessors**!public! !

!IplImage class methodsFor!

defineFields
	"Define the fields of the IplImage structure.

	http://docs.opencv.org/2.4/modules/core/doc/old_basic_structures.html#iplimage

	IplImage  compileDefinition
"

	self
		defineField: #size type: SDWORDField new;
		defineField: #ID type: SDWORDField new;
		defineField: #nChannels type: SDWORDField new;
		defineField: #alphaChannel type: SDWORDField new;
		defineField: #depth type: SDWORDField new;
		defineField: #colorModel type: (PointerField type: BYTE) beFiller;
		defineField: #channelSeq type: (PointerField type: BYTE) beFiller;
		defineField: #dataOrder type: SDWORDField new;
		defineField: #origin type: SDWORDField new;
		defineField: #align type: SDWORDField new;
		defineField: #width type: SDWORDField new;
		defineField: #height type: SDWORDField new;
		defineField: #roi type: LPVOIDField new;
		defineField: #maskROI type: LPVOIDField new beFiller;
		defineField: #maskROI type: LPVOIDField new beFiller;
		defineField: #tileInfo type: LPVOIDField new beFiller;
		defineField: #imageSize type: SDWORDField new;
		defineField: #imageData type: LPVOIDField new beReadOnly;
		defineField: #widthStep type: SDWORDField new;
		defineField: #borderMode type: (PointerField type: SDWORD) beFiller;
		defineField: #borderConst type: (PointerField type: SDWORD) beFiller;
		defineField: #imageDataOrigin type: LPVOIDField new!

initialize
	"Private - 
	self initialize.	
	"
	SessionManager current
		when: #sessionStarted
		send: #onStartup
		to: self!

onStartup
	self primAllSubinstances do: [:i | i onStartup].!

withExtent: extent depth: depth channels: channels
	| newOne |
	newOne := OpenCVCoreLibrary default
				cvCreateImage: (extent y @ extent x) asParameter
				depth: depth
				channels: channels.
	^newOne initialize! !
!IplImage class categoriesFor: #defineFields!**auto generated**!initializing!public! !
!IplImage class categoriesFor: #initialize!private! !
!IplImage class categoriesFor: #onStartup!private! !
!IplImage class categoriesFor: #withExtent:depth:channels:!**auto generated**!initializing!instance creation!public! !

