"Filed out from Dolphin Smalltalk 7"!

ExternalStructure subclass: #COORDVAL
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
COORDVAL guid: (GUID fromString: '{52555D9F-7A9C-4895-8F24-1293EE3B5029}')!
COORDVAL comment: ''!
!COORDVAL categoriesForClass!Unclassified! !
!COORDVAL methodsFor!

val
	"Answer the receiver's val field as a Smalltalk object."

	^bytes dwordAtOffset: 0!

val: anObject
	"Set the receiver's val field to the value of anObject."

	bytes dwordAtOffset: 0 put: anObject!

x
	"Answer the receiver's x field as a Smalltalk object."

	^bytes dwordAtOffset: ##(self offsetOf: #x)!

x: anObject
	"Set the receiver's x field to the value of anObject."

	bytes dwordAtOffset: ##(self offsetOf: #x) put: anObject!

y
	"Answer the receiver's y field as a Smalltalk object."

	^bytes dwordAtOffset: ##(self offsetOf: #y)!

y: anObject
	"Set the receiver's y field to the value of anObject."

	bytes dwordAtOffset: ##(self offsetOf: #y) put: anObject! !
!COORDVAL categoriesFor: #val!**compiled accessors**!public! !
!COORDVAL categoriesFor: #val:!**compiled accessors**!public! !
!COORDVAL categoriesFor: #x!**compiled accessors**!public! !
!COORDVAL categoriesFor: #x:!**compiled accessors**!public! !
!COORDVAL categoriesFor: #y!**compiled accessors**!public! !
!COORDVAL categoriesFor: #y:!**compiled accessors**!public! !

!COORDVAL class methodsFor!

defineFields
	"Define the fields of the COORD_VAL structure.

	COORDVAL  compileDefinition

	typedef struct { unsigned val, x, y; } COORD_VAL;
"

	self
		defineField: #val type: DWORDField new;
		defineField: #x type: DWORDField new;
		defineField: #y type: DWORDField new! !
!COORDVAL class categoriesFor: #defineFields!initializing!public! !

