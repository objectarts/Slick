"Filed out from Dolphin Smalltalk 7"!

ExternalStructure subclass: #PngData
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PngData guid: (GUID fromString: '{08E7F100-73F1-466F-82EB-2F2DECE3C956}')!
PngData comment: ''!
!PngData categoriesForClass!Unclassified! !
!PngData methodsFor!

backData
	"Answer the receiver's backData field as a Smalltalk object."

	^PNGTRANSINFO fromAddress: bytes yourAddress + ##(self offsetOf: #backData)!

backData: anObject
	"Set the receiver's backData field to the value of anObject."

	anObject
		replaceBytesOf: bytes
		from: ##((self offsetOf: #backData) + 1)
		to: ##((self offsetOf: #backData) + PNGTRANSINFO basicByteSize)
		startingAt: 1!

bitDepth
	"Answer the receiver's bitDepth field as a Smalltalk object."

	^bytes sdwordAtOffset: ##(self offsetOf: #bitDepth)!

bitDepth: anObject
	"Set the receiver's bitDepth field to the value of anObject."

	bytes sdwordAtOffset: ##(self offsetOf: #bitDepth) put: anObject!

channels
	"Answer the receiver's channels field as a Smalltalk object."

	^bytes sdwordAtOffset: ##(self offsetOf: #channels)!

channels: anObject
	"Set the receiver's channels field to the value of anObject."

	bytes sdwordAtOffset: ##(self offsetOf: #channels) put: anObject!

colorType
	"Answer the receiver's colorType field as a Smalltalk object."

	^bytes sdwordAtOffset: ##(self offsetOf: #colorType)!

colorType: anObject
	"Set the receiver's colorType field to the value of anObject."

	bytes sdwordAtOffset: ##(self offsetOf: #colorType) put: anObject!

igamma
	"Answer the receiver's igamma field as a Smalltalk object."

	^bytes dwordAtOffset: ##(self offsetOf: #igamma)!

igamma: anObject
	"Set the receiver's igamma field to the value of anObject."

	bytes dwordAtOffset: ##(self offsetOf: #igamma) put: anObject!

imageId
	"Answer the receiver's imageId field as a Smalltalk object."

	^bytes sdwordAtOffset: ##(self offsetOf: #imageId)!

imageId: anObject
	"Set the receiver's imageId field to the value of anObject."

	bytes sdwordAtOffset: ##(self offsetOf: #imageId) put: anObject!

interlaced
	"Answer the receiver's interlaced field as a Smalltalk object."

	^bytes sdwordAtOffset: ##(self offsetOf: #interlaced)!

interlaced: anObject
	"Set the receiver's interlaced field to the value of anObject."

	bytes sdwordAtOffset: ##(self offsetOf: #interlaced) put: anObject!

length
	"Answer the receiver's length field as a Smalltalk object."

	^bytes dwordAtOffset: ##(self offsetOf: #length)!

length: anObject
	"Set the receiver's length field to the value of anObject."

	bytes dwordAtOffset: ##(self offsetOf: #length) put: anObject!

offsUnits
	"Answer the receiver's offsUnits field as a Smalltalk object."

	^bytes byteAtOffset: ##(self offsetOf: #offsUnits)!

offsUnits: anObject
	"Set the receiver's offsUnits field to the value of anObject."

	bytes byteAtOffset: ##(self offsetOf: #offsUnits) put: anObject!

offsXoffset
	"Answer the receiver's offsXoffset field as a Smalltalk object."

	^bytes dwordAtOffset: ##(self offsetOf: #offsXoffset)!

offsXoffset: anObject
	"Set the receiver's offsXoffset field to the value of anObject."

	bytes dwordAtOffset: ##(self offsetOf: #offsXoffset) put: anObject!

offsYoffset
	"Answer the receiver's offsYoffset field as a Smalltalk object."

	^bytes dwordAtOffset: ##(self offsetOf: #offsYoffset)!

offsYoffset: anObject
	"Set the receiver's offsYoffset field to the value of anObject."

	bytes dwordAtOffset: ##(self offsetOf: #offsYoffset) put: anObject!

physUnits
	"Answer the receiver's physUnits field as a Smalltalk object."

	^bytes dwordAtOffset: ##(self offsetOf: #physUnits)!

physUnits: anObject
	"Set the receiver's physUnits field to the value of anObject."

	bytes dwordAtOffset: ##(self offsetOf: #physUnits) put: anObject!

physXres
	"Answer the receiver's physXres field as a Smalltalk object."

	^bytes dwordAtOffset: ##(self offsetOf: #physXres)!

physXres: anObject
	"Set the receiver's physXres field to the value of anObject."

	bytes dwordAtOffset: ##(self offsetOf: #physXres) put: anObject!

physYres
	"Answer the receiver's physYres field as a Smalltalk object."

	^bytes dwordAtOffset: ##(self offsetOf: #physYres)!

physYres: anObject
	"Set the receiver's physYres field to the value of anObject."

	bytes dwordAtOffset: ##(self offsetOf: #physYres) put: anObject!

pixelDepth
	"Answer the receiver's pixelDepth field as a Smalltalk object."

	^bytes sdwordAtOffset: ##(self offsetOf: #pixelDepth)!

pixelDepth: anObject
	"Set the receiver's pixelDepth field to the value of anObject."

	bytes sdwordAtOffset: ##(self offsetOf: #pixelDepth) put: anObject!

rowBytes
	"Answer the receiver's rowBytes field as a Smalltalk object."

	^bytes dwordAtOffset: ##(self offsetOf: #rowBytes)!

rowBytes: anObject
	"Set the receiver's rowBytes field to the value of anObject."

	bytes dwordAtOffset: ##(self offsetOf: #rowBytes) put: anObject!

sigBit
	"Answer the receiver's sigBit field as a Smalltalk object."

	^PNGSIGBITS fromAddress: bytes yourAddress + ##(self offsetOf: #sigBit)!

sigBit: anObject
	"Set the receiver's sigBit field to the value of anObject."

	anObject
		replaceBytesOf: bytes
		from: ##((self offsetOf: #sigBit) + 1)
		to: ##((self offsetOf: #sigBit) + PNGSIGBITS basicByteSize)
		startingAt: 1!

transData
	"Answer the receiver's transData field as a Smalltalk object."

	^PNGTRANSINFO fromAddress: bytes yourAddress + ##(self offsetOf: #transData)!

transData: anObject
	"Set the receiver's transData field to the value of anObject."

	anObject
		replaceBytesOf: bytes
		from: ##((self offsetOf: #transData) + 1)
		to: ##((self offsetOf: #transData) + PNGTRANSINFO basicByteSize)
		startingAt: 1!

vbitcount
	"Answer the receiver's vbitcount field as a Smalltalk object."

	^bytes sdwordAtOffset: ##(self offsetOf: #vbitcount)!

vbitcount: anObject
	"Set the receiver's vbitcount field to the value of anObject."

	bytes sdwordAtOffset: ##(self offsetOf: #vbitcount) put: anObject!

width
	"Answer the receiver's width field as a Smalltalk object."

	^bytes dwordAtOffset: 0!

width: anObject
	"Set the receiver's width field to the value of anObject."

	bytes dwordAtOffset: 0 put: anObject! !
!PngData categoriesFor: #backData!**compiled accessors**!public! !
!PngData categoriesFor: #backData:!**compiled accessors**!public! !
!PngData categoriesFor: #bitDepth!**compiled accessors**!public! !
!PngData categoriesFor: #bitDepth:!**compiled accessors**!public! !
!PngData categoriesFor: #channels!**compiled accessors**!public! !
!PngData categoriesFor: #channels:!**compiled accessors**!public! !
!PngData categoriesFor: #colorType!**compiled accessors**!public! !
!PngData categoriesFor: #colorType:!**compiled accessors**!public! !
!PngData categoriesFor: #igamma!**compiled accessors**!public! !
!PngData categoriesFor: #igamma:!**compiled accessors**!public! !
!PngData categoriesFor: #imageId!**compiled accessors**!public! !
!PngData categoriesFor: #imageId:!**compiled accessors**!public! !
!PngData categoriesFor: #interlaced!**compiled accessors**!public! !
!PngData categoriesFor: #interlaced:!**compiled accessors**!public! !
!PngData categoriesFor: #length!**compiled accessors**!public! !
!PngData categoriesFor: #length:!**compiled accessors**!public! !
!PngData categoriesFor: #offsUnits!**compiled accessors**!public! !
!PngData categoriesFor: #offsUnits:!**compiled accessors**!public! !
!PngData categoriesFor: #offsXoffset!**compiled accessors**!public! !
!PngData categoriesFor: #offsXoffset:!**compiled accessors**!public! !
!PngData categoriesFor: #offsYoffset!**compiled accessors**!public! !
!PngData categoriesFor: #offsYoffset:!**compiled accessors**!public! !
!PngData categoriesFor: #physUnits!**compiled accessors**!public! !
!PngData categoriesFor: #physUnits:!**compiled accessors**!public! !
!PngData categoriesFor: #physXres!**compiled accessors**!public! !
!PngData categoriesFor: #physXres:!**compiled accessors**!public! !
!PngData categoriesFor: #physYres!**compiled accessors**!public! !
!PngData categoriesFor: #physYres:!**compiled accessors**!public! !
!PngData categoriesFor: #pixelDepth!**compiled accessors**!public! !
!PngData categoriesFor: #pixelDepth:!**compiled accessors**!public! !
!PngData categoriesFor: #rowBytes!**compiled accessors**!public! !
!PngData categoriesFor: #rowBytes:!**compiled accessors**!public! !
!PngData categoriesFor: #sigBit!**compiled accessors**!public! !
!PngData categoriesFor: #sigBit:!**compiled accessors**!public! !
!PngData categoriesFor: #transData!**compiled accessors**!public! !
!PngData categoriesFor: #transData:!**compiled accessors**!public! !
!PngData categoriesFor: #vbitcount!**compiled accessors**!public! !
!PngData categoriesFor: #vbitcount:!**compiled accessors**!public! !
!PngData categoriesFor: #width!**compiled accessors**!public! !
!PngData categoriesFor: #width:!**compiled accessors**!public! !

!PngData class methodsFor!

defineFields
	"Define the fields of the PngData structure.

	PngData  compileDefinition

	typedef struct {
		   unsigned width;  // PNG image width, length
		   unsigned length;
		   int bitDepth;    // Bits per pixel, 1, 2, 4, 8, or 16
		   int vbitcount;   // Victor bits per pixel
		   int colorType;   // Color types: 0=GS, 2=RGB, 3=PalCol, 4=GS+alpha, 6=RGB+alpha
		   int interlaced;  // 0 => non-interlaced, 1 => interlaced
		   int imageId;     // Unique identifier for colorType/bitDepth
		   int channels;    // Number of channels of data per pixel
		   int pixelDepth;  // Number of bits per pixel
		   unsigned rowBytes;  // Bytes in one image row
		   PNGTRANSINFO transData; // Transparency data
		   PNGTRANSINFO backData;  // Background color data
		   DWORD igamma;    // Gamma as float = igamma / 100000   
		   DWORD physXres;  // X,Y axis pixels per unit
		   DWORD physYres;
		   DWORD physUnits;
		   PNGSIGBITS sigBit;  // Significant bits in file
		   DWORD offsXoffset; // X,Y axis offset
		   DWORD offsYoffset;
		   UCHAR offsUnits;
		   } PngData;
"

	self
		defineField: #width type: DWORDField new;
		defineField: #length type: DWORDField new;
		defineField: #bitDepth type: SDWORDField new;
		defineField: #vbitcount type: SDWORDField new;
		defineField: #colorType type: SDWORDField new;
		defineField: #interlaced type: SDWORDField new;
		defineField: #imageId type: SDWORDField new;
		defineField: #channels type: SDWORDField new;
		defineField: #pixelDepth type: SDWORDField new;
		defineField: #rowBytes type: DWORDField new;
		defineField: #transData type: (StructureField type: PNGTRANSINFO);
		defineField: #backData type: (StructureField type: PNGTRANSINFO);
		defineField: #igamma type: DWORDField new;
		defineField: #physXres type: DWORDField new;
		defineField: #physYres type: DWORDField new;
		defineField: #physUnits type: DWORDField new;
		defineField: #sigBit type: (StructureField type: PNGSIGBITS);
		defineField: #offsXoffset type: DWORDField new;
		defineField: #offsYoffset type: DWORDField new;
		defineField: #offsUnits type: BYTEField new





! !
!PngData class categoriesFor: #defineFields!**auto generated**!initializing!public! !

