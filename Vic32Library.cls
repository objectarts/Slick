"Filed out from Dolphin Smalltalk 7"!

ExternalLibrary subclass: #Vic32Library
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Vic32Library guid: (GUID fromString: '{C6BABC01-4F57-43B2-AA45-2661081A6629}')!
Vic32Library comment: ''!
!Vic32Library categoriesForClass!External-Libraries! !
!Vic32Library methodsFor!

allocimage: imgdes width: width length: length bppixel: bppixel
	"int  _export WINAPI allocimage(imgdes far *image, int width, int length, int bppixel)"

	<stdcall: sdword allocimage ImgDes* sdword sdword sdword>
	^self invalidCall!

colortogray: imgsrc imgdes: imgdes
	"int  _export WINAPI colortogray(imgdes far *srcimg, imgdes far *desimg)"

	<stdcall: sdword colortogray ImgDes* ImgDes*>
	^self invalidCall!

convertrgbtopal: palcolors imgsrc: imgsrc imgdes: imgdes
	"int  _export WINAPI convertrgbtopal(int palcolors, imgdes far *srcimg, imgdes far *desimg);"

	<stdcall: sdword convertrgbtopal sdword ImgDes* ImgDes*>
	^self invalidCall!

copyimage: imgsrc imgdes: imgdes
	"int  _export WINAPI copyimage(imgdes far *srcimg, imgdes far *desimg);"

	<stdcall: sdword copyimage ImgDes* ImgDes*>
	^self invalidCall!

ddbtoimage: hBitmnap hPal: hPal imgdes: imgdes
	"int  _export WINAPI ddbtoimage(HBITMAP hBitmap, HPALETTE hPal, imgdes far *image);"

	<stdcall: sdword ddbtoimage handle handle ImgDes*>
	^self invalidCall!

freeimage: imgdes
	"int  _export WINAPI freeimage(imgdes far *image"

	<stdcall: void allocimage ImgDes*>
	^self invalidCall!

loadpng: filenameString
	| data img |
	data := PngData new.
	(self pnginfo: filenameString pdat: data) = 0 ifFalse: [self errorNotFound: filenameString].
	img := ImgDes new.
	(self
		allocimage: img
		width: data width
		length: data length
		bppixel: data vbitcount) = 0
		ifFalse: [self error: 'Can''t allocate memory for: ' , filenameString].
	(self loadpng: filenameString imgdes: img) = 0
		ifFalse: [self error: 'Can''t load image: ' , filenameString].
	^img!

loadpng: fname imgdes: imgdes
	"int  _export WINAPI loadpng(LPCSTR fname, imgdes far *desimg);"

	<stdcall: sdword loadpng lpstr ImgDes*>
	^self invalidCall!

pnginfo: lpstrFilename pdat: aPngData
	"int pnginfo( 
			LPCSTR fname,			// pointer to filename string	
			PngData* pdat 			// pointer to variable to receive data	
		);"

	<stdcall: sdword pnginfo lpstr PngData*>
	^self invalidCall!

rect: aRECT toImageArea: imgDes
	"void _export WINAPI recttoimagearea(RECT far *rect, imgdes far *image);"

	<stdcall: void recttoimagearea RECT* ImgDes*>
	^self invalidCall!

resizeex: srcimg destination: dstimg mode: resizeMode
	"int  _export WINAPI resizeex(imgdes far *srcimg, imgdes far *desimg, int resizeMode);"

	<stdcall: sdword resizeex ImgDes* ImgDes* sdword>
	^self invalidCall!

savepng: fname imgdes: imgdes cmp: compression
	"int  _export WINAPI savepng(LPCSTR fname, imgdes *srcimg, int cmp);"

	<stdcall: sdword savepng lpstr ImgDes* sdword>
	^self invalidCall! !
!Vic32Library categoriesFor: #allocimage:width:length:bppixel:!public! !
!Vic32Library categoriesFor: #colortogray:imgdes:!public! !
!Vic32Library categoriesFor: #convertrgbtopal:imgsrc:imgdes:!public! !
!Vic32Library categoriesFor: #copyimage:imgdes:!public! !
!Vic32Library categoriesFor: #ddbtoimage:hPal:imgdes:!public! !
!Vic32Library categoriesFor: #freeimage:!public! !
!Vic32Library categoriesFor: #loadpng:!public! !
!Vic32Library categoriesFor: #loadpng:imgdes:!public! !
!Vic32Library categoriesFor: #pnginfo:pdat:!public! !
!Vic32Library categoriesFor: #rect:toImageArea:!public! !
!Vic32Library categoriesFor: #resizeex:destination:mode:!public! !
!Vic32Library categoriesFor: #savepng:imgdes:cmp:!public! !

!Vic32Library class methodsFor!

fileName
	"Answer the host system file name of the external library which
	the receiver represents."

	^(PackageRelativeFileLocator package: self owningPackage) localFileSpecFor: 'Vic32'! !
!Vic32Library class categoriesFor: #fileName!constants!public! !

