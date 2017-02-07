"Filed out from Dolphin Smalltalk 7"!

ExternalStructure subclass: #CvScalar
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CvScalar guid: (GUID fromString: '{7E85580A-BBB7-4821-A567-9D0C3E82353E}')!
CvScalar comment: ''!
!CvScalar categoriesForClass!External-Data-Structured! !
!CvScalar methodsFor!

s1
	"Answer the receiver's s1 field as a Smalltalk object."

	^bytes doubleAtOffset: 0!

s1: anObject
	"Set the receiver's s1 field to the value of anObject."

	bytes doubleAtOffset: 0 put: anObject!

s2
	"Answer the receiver's s2 field as a Smalltalk object."

	^bytes doubleAtOffset: ##(self offsetOf: #s2)!

s2: anObject
	"Set the receiver's s2 field to the value of anObject."

	bytes doubleAtOffset: ##(self offsetOf: #s2) put: anObject!

s3
	"Answer the receiver's s3 field as a Smalltalk object."

	^bytes doubleAtOffset: ##(self offsetOf: #s3)!

s3: anObject
	"Set the receiver's s3 field to the value of anObject."

	bytes doubleAtOffset: ##(self offsetOf: #s3) put: anObject!

s4
	"Answer the receiver's s4 field as a Smalltalk object."

	^bytes doubleAtOffset: ##(self offsetOf: #s4)!

s4: anObject
	"Set the receiver's s4 field to the value of anObject."

	bytes doubleAtOffset: ##(self offsetOf: #s4) put: anObject! !
!CvScalar categoriesFor: #s1!**compiled accessors**!public! !
!CvScalar categoriesFor: #s1:!**compiled accessors**!public! !
!CvScalar categoriesFor: #s2!**compiled accessors**!public! !
!CvScalar categoriesFor: #s2:!**compiled accessors**!public! !
!CvScalar categoriesFor: #s3!**compiled accessors**!public! !
!CvScalar categoriesFor: #s3:!**compiled accessors**!public! !
!CvScalar categoriesFor: #s4!**compiled accessors**!public! !
!CvScalar categoriesFor: #s4:!**compiled accessors**!public! !

!CvScalar class methodsFor!

defineFields
	"Private - Define the fields of the CvScalar structure.
		self compileDefinition
	"

	self
		defineField: #s1 type: DOUBLEField new;
		defineField: #s2 type: DOUBLEField new;
		defineField: #s3 type: DOUBLEField new;
		defineField: #s4 type: DOUBLEField new!

with: value
	^(self new)
		s1: value;
		yourself! !
!CvScalar class categoriesFor: #defineFields!private! !
!CvScalar class categoriesFor: #with:!instance creation!public! !

