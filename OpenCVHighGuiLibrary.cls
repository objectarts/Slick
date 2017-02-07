"Filed out from Dolphin Smalltalk 7"!

OpenCVLibraryAbstract subclass: #OpenCVHighGuiLibrary
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
OpenCVHighGuiLibrary guid: (GUID fromString: '{8780FD13-F50C-40ED-8704-93810A7B3B3E}')!
OpenCVHighGuiLibrary comment: ''!
!OpenCVHighGuiLibrary categoriesForClass!External-Libraries! !
!OpenCVHighGuiLibrary methodsFor!

cvLoadImage: filename iscolor: iscolor
	"IplImage* cvLoadImage(const char* filename, int iscolor=CV_LOAD_IMAGE_COLOR )"

	<cdecl: void* cvLoadImage lpstr sdword>
	^self invalidCall!

cvLoadImageM: filename iscolor: iscolor
	"CvMat* cvLoadImageM(const char* filename, int iscolor=CV_LOAD_IMAGE_COLOR )"

	<cdecl: CvMat* cvLoadImageM lpstr sdword>
	^self invalidCall!

cvSaveImage: filename image: image params: params
	"int cvSaveImage(const char* filename, const CvArr* image, const int* params=0 )"

	<cdecl: sdword cvSaveImage lpstr lpvoid sdword*>
	^self invalidCall!

cvShowImage: name image: image
	"void cvShowImage(const char* name, const CvArr* image)"

	<cdecl: void cvShowImage lpstr lpvoid>
	^self invalidCall! !
!OpenCVHighGuiLibrary categoriesFor: #cvLoadImage:iscolor:!public! !
!OpenCVHighGuiLibrary categoriesFor: #cvLoadImageM:iscolor:!public! !
!OpenCVHighGuiLibrary categoriesFor: #cvSaveImage:image:params:!public! !
!OpenCVHighGuiLibrary categoriesFor: #cvShowImage:image:!public! !

!OpenCVHighGuiLibrary class methodsFor!

rootFileName
	"Private - Answer the host system file name of the external library which the receiver represents."

	^'opencv_highgui'! !
!OpenCVHighGuiLibrary class categoriesFor: #rootFileName!constants!private! !

