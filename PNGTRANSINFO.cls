"Filed out from Dolphin Smalltalk 7"!

ExternalStructure subclass: #PNGTRANSINFO
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
PNGTRANSINFO guid: (GUID fromString: '{6AF15DD4-F3FB-4044-A883-DBD552AA5CD2}')!
PNGTRANSINFO comment: ''!
!PNGTRANSINFO categoriesForClass!External-Data-Structured! !
!PNGTRANSINFO methodsFor!

byteCount
	"Answer the receiver's byteCount field as a Smalltalk object."

	^bytes dwordAtOffset: ##(self offsetOf: #byteCount)!

byteCount: anObject
	"Set the receiver's byteCount field to the value of anObject."

	bytes dwordAtOffset: ##(self offsetOf: #byteCount) put: anObject!

data
	"Answer the receiver's data field as a Smalltalk object."

	^String fromAddress: bytes yourAddress + ##(self offsetOf: #data)!

data: anObject
	"Set the receiver's data field to the value of anObject."

	| size |
	size := anObject byteSize - 1 min: 5.
	anObject
		replaceBytesOf: bytes
		from: ##((self offsetOf: #data) + 1)
		to: ##(self offsetOf: #data) + size
		startingAt: 1.
	bytes byteAtOffset: ##(self offsetOf: #data) + size put: 0!

isPresent
	"Answer the receiver's isPresent field as a Smalltalk object."

	^(bytes dwordAtOffset: 0) asBoolean!

isPresent: anObject
	"Set the receiver's isPresent field to the value of anObject."

	bytes dwordAtOffset: 0 put: anObject asParameter! !
!PNGTRANSINFO categoriesFor: #byteCount!**compiled accessors**!public! !
!PNGTRANSINFO categoriesFor: #byteCount:!**compiled accessors**!public! !
!PNGTRANSINFO categoriesFor: #data!**compiled accessors**!public! !
!PNGTRANSINFO categoriesFor: #data:!**compiled accessors**!public! !
!PNGTRANSINFO categoriesFor: #isPresent!**compiled accessors**!public! !
!PNGTRANSINFO categoriesFor: #isPresent:!**compiled accessors**!public! !

!PNGTRANSINFO class methodsFor!

defineFields
	"Define the fields of the PNGTRANSINFO structure.

	PNGTRANSINFO  compileDefinition

	typedef struct {
		BOOL isPresent; // TRUE if transparency data is present
		UCHAR data[6]; // Up to 6 bytes of transparency data
		int byteCount; // Bytes of transparency data
		} PNGTRANSINFO;
"

	self
		defineField: #isPresent type: BOOLField new;
		defineField: #data type: (StringField length: 6);
		defineField: #byteCount type: DWORDField new.


! !
!PNGTRANSINFO class categoriesFor: #defineFields!**auto generated**!initializing!public! !

