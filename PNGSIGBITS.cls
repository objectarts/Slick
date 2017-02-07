"Filed out from Dolphin Smalltalk 7"!

ExternalStructure subclass: #PNGSIGBITS
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PNGSIGBITS guid: (GUID fromString: '{93DDFC8C-1B8B-484B-9582-1F5C2335101B}')!
PNGSIGBITS comment: ''!
!PNGSIGBITS categoriesForClass!External-Data-Structured! !
!PNGSIGBITS methodsFor!

sb_long
	"Answer the receiver's sb_long field as a Smalltalk object."

	^bytes dwordAtOffset: 0!

sb_long: anObject
	"Set the receiver's sb_long field to the value of anObject."

	bytes dwordAtOffset: 0 put: anObject! !
!PNGSIGBITS categoriesFor: #sb_long!**compiled accessors**!public! !
!PNGSIGBITS categoriesFor: #sb_long:!**compiled accessors**!public! !

!PNGSIGBITS class methodsFor!

defineFields
	"Define the fields of the PNGSIGBITS structure.

	PNGSIGBITS  compileDefinition

	typedef union { 
		char sb_char[4]; 
		DWORD sb_long; 
		} PNGSIGBITS;
"

	self
		defineField: #sb_long type: DWORDField new.


! !
!PNGSIGBITS class categoriesFor: #defineFields!**auto generated**!initializing!public! !

