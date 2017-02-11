"Filed out from Dolphin Smalltalk 7"!

OpenCVLibraryAbstract subclass: #OpenCVImgProcLibrary
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
OpenCVImgProcLibrary guid: (GUID fromString: '{CFA173F3-D13D-4848-88D8-69CF13933D58}')!
OpenCVImgProcLibrary comment: ''!
!OpenCVImgProcLibrary categoriesForClass!External-Libraries! !
!OpenCVImgProcLibrary methodsFor!

cvFloodFill: img seedPt: seedPt newVal: newVal loDiff: loDiff upDiff: upDiff comp: comp flags: flags mask: mask
	"void cvFloodFill(CvArr * image, CvPoint seed_point, CvScalar new_val, 
		CvScalar lo_diff = cvScalarAll(0), CvScalar up_diff = cvScalarAll(0), 
		CvConnectedComp * comp = NULL, int flags= 4, CvArr * mask = NULL )"

	<cdecl: void cvFloodFill CvMat* POINTL CvScalar CvScalar CvScalar sdword CvMat* sdword>
	^self invalidCall!

cvMatchTemplate: image image: template result: result method: method
	"void cvMatchTemplate(const CvArr* image, const CvArr* templ, CvArr* result, int method)"

	<cdecl: void cvMatchTemplate CvMat* CvMat* CvMat* sdword>
	^self invalidCall!

cvResize: src dst: dst interpolation: interpolation
	"void cvResize(const CvArr* src, CvArr* dst, int interpolation=CV_INTER_LINEAR)"

	<cdecl: void cvResize CvMat* CvMat* sdword>
	^self invalidCall!

cvShowImage: name image: image
	"void cvShowImage(const char* name, const CvArr* image)"

	<cdecl: void cvShowImage lpstr IplImage*>
	^self invalidCall! !
!OpenCVImgProcLibrary categoriesFor: #cvFloodFill:seedPt:newVal:loDiff:upDiff:comp:flags:mask:!public! !
!OpenCVImgProcLibrary categoriesFor: #cvMatchTemplate:image:result:method:!public! !
!OpenCVImgProcLibrary categoriesFor: #cvResize:dst:interpolation:!public! !
!OpenCVImgProcLibrary categoriesFor: #cvShowImage:image:!public! !

!OpenCVImgProcLibrary class methodsFor!

rootFileName
	"Private - Answer the host system file name of the external library which the receiver represents."

	^'opencv_imgproc'! !
!OpenCVImgProcLibrary class categoriesFor: #rootFileName!constants!private! !

