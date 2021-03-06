"Filed out from Dolphin Smalltalk 7"!

OpenCVLibraryAbstract subclass: #OpenCVCoreLibrary
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
OpenCVCoreLibrary guid: (GUID fromString: '{677B9460-B121-479C-8398-65DB40039DDE}')!
OpenCVCoreLibrary comment: ''!
!OpenCVCoreLibrary categoriesForClass!Kernel-Objects! !
!OpenCVCoreLibrary methodsFor!

cvCloneMat: mat
	"CvMat* cvCloneMat(CvMat* mat)"

	<cdecl: CvMat* cvCloneMat CvMat*>
	^self invalidCall!

cvCreateData: arr
	"void cvCreateData(CvArr* arr)"

	<cdecl: void cvCreateData CvMat*>
	^self invalidCall!

cvCreateImage: size depth: depth channels: channels
	"IplImage* cvCreateImage(CvSize size, int depth, int channels"

	<cdecl: IplImage* cvCreateImage POINTL sdword sdword>
	^self invalidCall!

cvCreateMat: rows cols: cols type: type
	"CvMat* cvCreateMat(int rows, int cols, int type)"

	<cdecl: CvMat* cvCreateMat sdword sdword sdword>
	^self invalidCall!

cvCreateMatHeader: rows cols: cols type: type
	"CvMat* cvCreateMatHeader(int rows, int cols, int type)"

	<cdecl: CvMat* cvCreateMatHeader sdword sdword sdword>
	^self invalidCall!

cvDecRefData: arr
	"void cvDecRefData(CvArr* arr)"

	<cdecl: void cvDecRefData CvMat*>
	^self invalidCall!

cvErrorStr
	^self cvErrorStr: (self cvGetErrStatus)!

cvErrorStr: status
	"const char* cvErrorStr(int status)"

	<cdecl: lpstr cvErrorStr sdword>
	^self invalidCall!

cvGetErrStatus
	"int cvGetErrStatus()"

	<cdecl: sdword cvGetErrStatus>
	^self invalidCall!

cvGetMat: arr mat: mat coi: coi allowND: allowND
	"CvMat* cvGetMat( const CvArr* arr, CvMat* mat, int* coi = 0, int allowND );"

	<cdecl: void cvGetMat IplImage* CvMat* sdword* sdword>
	^self invalidCall!

cvGetSubRect: src submat: submat rect: rect
	"CvMat* cvGetSubRect(const CvArr* arr, CvMat* submat, CvRect rect)"

	<cdecl: CvMat* cvGetSubRect CvMat* CvMat* CvRect>
	^self invalidCall!

cvInitMatHeader: mat rows: rows cols: cols type: type data: data step: step
	"CvMat* cvInitMatHeader(CvMat* mat, int rows, int cols, int type, void* data=NULL, int step=CV_AUTOSTEP)"

	<cdecl: CvMat* cvInitMatHeader CvMat* sdword sdword sdword lpvoid sdword>
	^self invalidCall!

cvMinMaxLoc: image minVal: minVal maxVal: maxVal minLoc: minLoc maxLoc: maxLoc mask: mask
	"void cvMinMaxLoc( const CvArr* arr, double* min_val, double* max_val,
                  CvPoint* min_loc=NULL, CvPoint* max_loc=NULL, const CvArr* mask=NULL );"

	<cdecl: void cvMinMaxLoc lpvoid double* double* POINTL* POINTL* lpvoid>
	^self invalidCall!

cvNormalize: src dst: dst alpha: alpha beta: beta normType: normType

	<cdecl: void cvNormalize lpvoid lpvoid double double sdword >
	^self invalidCall!

cvRectangle: img pt1: pt1 pt2: pt2 color: color thickness: thickness lineType: lineType shift: shift
	"void cvRectangle(CvArr* img, CvPoint pt1, CvPoint pt2, CvScalar color, int thickness=1, int line_type=8, int shift=0 )"

	<cdecl: void cvRectangle CvMat* CvPoint CvPoint CvScalar sdword sdword sdword>
	^self invalidCall!

cvRectangleR: img rect: rect color: color thickness: thickness lineType: lineType shift: shift
	"void cvRectangle(CvArr* img, CvPoint pt1, CvPoint pt2, CvScalar color, int thickness=1, int line_type=8, int shift=0 )"

	<cdecl: void cvRectangleR CvMat* CvRect CvScalar sdword sdword sdword>
	^self invalidCall!

cvReleaseData: arr
	"void cvReleaseData(CvArr* arr)"

	<cdecl: void cvReleaseData CvMat*>
	^self invalidCall!

cvReleaseImage: image
	"void cvReleaseImage(IplImage** image)"

	<cdecl: void cvReleaseImage IplImage**>
	^self invalidCall!

cvReleaseMat: mat
	"void cvReleaseMat(CvMat** mat)"

	<cdecl: void cvReleaseMat CvMat**>
	^self invalidCall!

cvSetData: arr data: data step: step
	"void cvSetData(CvArr* arr, void* data, int step)"

	<cdecl: void cvSetData CvMat* lpvoid sdword>
	^self invalidCall! !
!OpenCVCoreLibrary categoriesFor: #cvCloneMat:!public! !
!OpenCVCoreLibrary categoriesFor: #cvCreateData:!public! !
!OpenCVCoreLibrary categoriesFor: #cvCreateImage:depth:channels:!public! !
!OpenCVCoreLibrary categoriesFor: #cvCreateMat:cols:type:!public! !
!OpenCVCoreLibrary categoriesFor: #cvCreateMatHeader:cols:type:!public! !
!OpenCVCoreLibrary categoriesFor: #cvDecRefData:!public! !
!OpenCVCoreLibrary categoriesFor: #cvErrorStr!public! !
!OpenCVCoreLibrary categoriesFor: #cvErrorStr:!public! !
!OpenCVCoreLibrary categoriesFor: #cvGetErrStatus!public! !
!OpenCVCoreLibrary categoriesFor: #cvGetMat:mat:coi:allowND:!public! !
!OpenCVCoreLibrary categoriesFor: #cvGetSubRect:submat:rect:!public! !
!OpenCVCoreLibrary categoriesFor: #cvInitMatHeader:rows:cols:type:data:step:!public! !
!OpenCVCoreLibrary categoriesFor: #cvMinMaxLoc:minVal:maxVal:minLoc:maxLoc:mask:!public! !
!OpenCVCoreLibrary categoriesFor: #cvNormalize:dst:alpha:beta:normType:!public! !
!OpenCVCoreLibrary categoriesFor: #cvRectangle:pt1:pt2:color:thickness:lineType:shift:!public! !
!OpenCVCoreLibrary categoriesFor: #cvRectangleR:rect:color:thickness:lineType:shift:!public! !
!OpenCVCoreLibrary categoriesFor: #cvReleaseData:!public! !
!OpenCVCoreLibrary categoriesFor: #cvReleaseImage:!public! !
!OpenCVCoreLibrary categoriesFor: #cvReleaseMat:!public! !
!OpenCVCoreLibrary categoriesFor: #cvSetData:data:step:!public! !

!OpenCVCoreLibrary class methodsFor!

rootFileName
	"Private - Answer the host system file name of the external library which the receiver represents."

	^'opencv_core'! !
!OpenCVCoreLibrary class categoriesFor: #rootFileName!constants!private! !

