"Filed out from Dolphin Smalltalk 7"!

ExternalLibrary subclass: #OpenCVLibraryAbstract
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
OpenCVLibraryAbstract guid: (GUID fromString: '{DE5E969C-5AC8-4762-B984-5FDDEC9D3D24}')!
OpenCVLibraryAbstract comment: ''!
!OpenCVLibraryAbstract categoriesForClass!External-Libraries! !
!OpenCVLibraryAbstract class methodsFor!

cvVersion
	^2413!

fileName
	"Answer the host system file name of the external library which
	the receiver represents."

	| basicName |
	basicName := self rootFileName , self cvVersion displayString.
	^(SessionManager current getenv: 'OPENCV_DIR')
		ifNotNil: [:cvDir | cvDir , '\x86\vc14\bin\' , basicName , 'd']
		ifNil: [basicName]!

rootFileName
	"Private - Answer the host system file name of the external library which the receiver represents."

	self subclassResponsibility! !
!OpenCVLibraryAbstract class categoriesFor: #cvVersion!constants!public! !
!OpenCVLibraryAbstract class categoriesFor: #fileName!constants!public! !
!OpenCVLibraryAbstract class categoriesFor: #rootFileName!constants!private! !

