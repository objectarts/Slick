"Filed out from Dolphin Smalltalk 7"!

RecorderTestCase subclass: #FoundationTestCase
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
FoundationTestCase guid: (GUID fromString: '{909CE36B-CA34-426B-8623-C1419B0AA02D}')!
FoundationTestCase comment: ''!
!FoundationTestCase categoriesForClass!Unclassified! !
!FoundationTestCase methodsFor!

foundationLoginSupervisor
"
	self grabPngSymbolToClipboard
"
	self wait: #FoundationLoginButton timeout: 20000.
	self click: #FoundationYourUserName.
	self type: 'su{TAB}password{ENTER}'.
	self wait: #FoundationLogout!

foundationLogOut
	self isLoggedIn
		ifTrue: 
			[self click: #FoundationLogout.
			self click: #FoundationLogoutLoginButton.
			self closeBrowserTab]!

isLoggedIn
	^(self find: #FoundationLogout) notNil!

setUp
	super setUp.
	self openUrl: 'http://nhvm-test-web-1/WS_MK_Test_1.10.18_F_V_12_12/views/loginview.aspx'!

testFoundation
	"
	self grabPngSymbolToClipboard.
	"

	self foundationLoginSupervisor!

testFoundation1
	"
	self grabPngSymbolToClipboard.
	"

	self foundationLoginSupervisor!

testFoundation2
	"
	self grabPngSymbolToClipboard.
	"

	self foundationLoginSupervisor!

testFoundation3
	"
	self grabPngSymbolToClipboard.
	"

	self foundationLoginSupervisor!

testFoundation4
	"
	self grabPngSymbolToClipboard.
	"

	self foundationLoginSupervisor!

testFoundation5
	"
	self grabPngSymbolToClipboard.
	"

	self foundationLoginSupervisor!

testFoundation6
	"
	self grabPngSymbolToClipboard.
	"

	self foundationLoginSupervisor!

testFoundation7
	"
	self grabPngSymbolToClipboard.
	"

	self foundationLoginSupervisor!

testFoundation8
	"
	self grabPngSymbolToClipboard.
	"

	self foundationLoginSupervisor! !
!FoundationTestCase categoriesFor: #foundationLoginSupervisor!public! !
!FoundationTestCase categoriesFor: #foundationLogOut!public! !
!FoundationTestCase categoriesFor: #isLoggedIn!public! !
!FoundationTestCase categoriesFor: #setUp!private! !
!FoundationTestCase categoriesFor: #testFoundation!public! !
!FoundationTestCase categoriesFor: #testFoundation1!public! !
!FoundationTestCase categoriesFor: #testFoundation2!public! !
!FoundationTestCase categoriesFor: #testFoundation3!public! !
!FoundationTestCase categoriesFor: #testFoundation4!public! !
!FoundationTestCase categoriesFor: #testFoundation5!public! !
!FoundationTestCase categoriesFor: #testFoundation6!public! !
!FoundationTestCase categoriesFor: #testFoundation7!public! !
!FoundationTestCase categoriesFor: #testFoundation8!public! !

