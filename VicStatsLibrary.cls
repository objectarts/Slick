"Filed out from Dolphin Smalltalk 7"!

ExternalLibrary subclass: #VicStatsLibrary
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
VicStatsLibrary guid: (GUID fromString: '{D13CF9E9-B0CC-405D-BAF5-D54FBF9E4515}')!
VicStatsLibrary comment: ''!
!VicStatsLibrary categoriesForClass!Unclassified! !
!VicStatsLibrary methodsFor!

correlateimages: srcimg match: matchimg destination: dstimg
	"int _export WINAPI correlateimages(imgdes *srcimg, imgdes *oprimg, imgdes *desimg);"

	<stdcall: sdword correlateimages ImgDes* ImgDes* ImgDes*>
	^self invalidCall!

sortpixelsbyval: srcimg into: dstarray count: size
	"int _export WINAPI sortpixelsbyval(imgdes *srcimg, COORD_VAL *darray, int nelem);"

	<stdcall: sdword sortpixelsbyval ImgDes* COORDVAL* sdword>
	^self invalidCall! !
!VicStatsLibrary categoriesFor: #correlateimages:match:destination:!public! !
!VicStatsLibrary categoriesFor: #sortpixelsbyval:into:count:!public! !

!VicStatsLibrary class methodsFor!

fileName
	"Answer the host system file name of the external library which
	the receiver represents."

	^(PackageRelativeFileLocator package: self owningPackage) localFileSpecFor: 'VicStats'! !
!VicStatsLibrary class categoriesFor: #fileName!constants!public! !

