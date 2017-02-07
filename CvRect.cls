"Filed out from Dolphin Smalltalk 7"!

ExternalStructure subclass: #CvRect
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CvRect guid: (GUID fromString: '{9BAC99E4-2ED7-47AB-8D22-1297301DE8C4}')!
CvRect comment: ''!
!CvRect categoriesForClass!External-Data-Structured! !
!CvRect methodsFor!

asRectangle
	^(self x @ self y) extent: (self width @ self height)!

height
	"Answer the receiver's height field as a Smalltalk object."

	^bytes sdwordAtOffset: ##(self offsetOf: #height)!

height: anObject
	"Set the receiver's height field to the value of anObject."

	bytes sdwordAtOffset: ##(self offsetOf: #height) put: anObject!

width
	"Answer the receiver's width field as a Smalltalk object."

	^bytes sdwordAtOffset: ##(self offsetOf: #width)!

width: anObject
	"Set the receiver's width field to the value of anObject."

	bytes sdwordAtOffset: ##(self offsetOf: #width) put: anObject!

x
	"Answer the receiver's x field as a Smalltalk object."

	^bytes sdwordAtOffset: 0!

x: anObject
	"Set the receiver's x field to the value of anObject."

	bytes sdwordAtOffset: 0 put: anObject!

y
	"Answer the receiver's y field as a Smalltalk object."

	^bytes sdwordAtOffset: ##(self offsetOf: #y)!

y: anObject
	"Set the receiver's y field to the value of anObject."

	bytes sdwordAtOffset: ##(self offsetOf: #y) put: anObject! !
!CvRect categoriesFor: #asRectangle!converting!public! !
!CvRect categoriesFor: #height!**compiled accessors**!public! !
!CvRect categoriesFor: #height:!**compiled accessors**!public! !
!CvRect categoriesFor: #width!**compiled accessors**!public! !
!CvRect categoriesFor: #width:!**compiled accessors**!public! !
!CvRect categoriesFor: #x!**compiled accessors**!public! !
!CvRect categoriesFor: #x:!**compiled accessors**!public! !
!CvRect categoriesFor: #y!**compiled accessors**!public! !
!CvRect categoriesFor: #y:!**compiled accessors**!public! !

!CvRect class methodsFor!

defineFields
	"Private - Define the fields of the CvRect structure.
		self compileDefinition
	"

	self
		defineField: #x type: SDWORDField new;
		defineField: #y type: SDWORDField new;
		defineField: #width type: SDWORDField new;
		defineField: #height type: SDWORDField new!

fromRectangle: r
	^self new	
		x: r left;
		y: r top;
		width: r width;
		height: r height;
		yourself! !
!CvRect class categoriesFor: #defineFields!private! !
!CvRect class categoriesFor: #fromRectangle:!public! !

