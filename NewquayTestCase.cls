"Filed out from Dolphin Smalltalk 7"!

RecorderTestCase subclass: #NewquayTestCase
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
NewquayTestCase guid: (GUID fromString: '{751AF9F6-810A-4390-94DF-7B121C82E7FB}')!
NewquayTestCase comment: ''!
!NewquayTestCase categoriesForClass!SUnit! !
!NewquayTestCase methodsFor!

isLoggedIn
	^(self find: #NewquayLogo) notNil!

newquayLogin: email password: password
"
	self grabPngSymbolToClipboard.
"
	self wait: #NewquayLandingPageTitle.
	self click: #LoginButton.
	self click: #UseAnotherAccountButton.
	self click: #EmailAddressOrPhoneNumber.
	self type: email,'{TAB}',password,'{TAB}'.
	Processor sleep: 500.
	self click: #SignInButton offset:  -10@0.
	self wait: #NewquayLogo timeout: 20000.!

newquayLoginSystemAdministrator
	self newquayLogin: 'John.Smith@UniversalWidgets.onmicrosoft.com' password: 'Newquay123'!

newquayLogout
	self isLoggedIn
		ifTrue: 
			[self click: #UserDropDown.
			self click: #LogoutCommand.
			self closeBrowserTab ]!

newquayUrl
	^'http://iar.azurewebsites.net'.
"	^'http://newquay.azurewebsites.net/'"!

setUp
	super setUp.
	self openUrl: self newquayUrl!

tearDown	
	self newquayLogout.
	super tearDown.!

testNewquay
	"
	self grabPngSymbolToClipboard.
	"

	self newquayLoginSystemAdministrator!

testNewquay10
	"
	self grabPngSymbolToClipboard.
	"

	self newquayLoginSystemAdministrator!

testNewquay2
	"
	self grabPngSymbolToClipboard.
	"

	self newquayLoginSystemAdministrator!

testNewquay3
	"
	self grabPngSymbolToClipboard.
	"

	self newquayLoginSystemAdministrator!

testNewquay4
	"
	self grabPngSymbolToClipboard.
	"

	self newquayLoginSystemAdministrator!

testNewquay5
	"
	self grabPngSymbolToClipboard.
	"

	self newquayLoginSystemAdministrator!

testNewquay6
	"
	self grabPngSymbolToClipboard.
	"

	self newquayLoginSystemAdministrator!

testNewquay7
	"
	self grabPngSymbolToClipboard.
	"

	self newquayLoginSystemAdministrator!

testNewquay8
	"
	self grabPngSymbolToClipboard.
	"

	self newquayLoginSystemAdministrator!

testNewquay9
	"
	self grabPngSymbolToClipboard.
	"

	self newquayLoginSystemAdministrator! !
!NewquayTestCase categoriesFor: #isLoggedIn!public! !
!NewquayTestCase categoriesFor: #newquayLogin:password:!public! !
!NewquayTestCase categoriesFor: #newquayLoginSystemAdministrator!public! !
!NewquayTestCase categoriesFor: #newquayLogout!public! !
!NewquayTestCase categoriesFor: #newquayUrl!private! !
!NewquayTestCase categoriesFor: #setUp!private! !
!NewquayTestCase categoriesFor: #tearDown!private! !
!NewquayTestCase categoriesFor: #testNewquay!public! !
!NewquayTestCase categoriesFor: #testNewquay10!public! !
!NewquayTestCase categoriesFor: #testNewquay2!public! !
!NewquayTestCase categoriesFor: #testNewquay3!public! !
!NewquayTestCase categoriesFor: #testNewquay4!public! !
!NewquayTestCase categoriesFor: #testNewquay5!public! !
!NewquayTestCase categoriesFor: #testNewquay6!public! !
!NewquayTestCase categoriesFor: #testNewquay7!public! !
!NewquayTestCase categoriesFor: #testNewquay8!public! !
!NewquayTestCase categoriesFor: #testNewquay9!public! !

