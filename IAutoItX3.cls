"Filed out from Dolphin Smalltalk 7"!

IDispatch subclass: #IAutoItX3
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
IAutoItX3 guid: (IID fromString: '{3D54C6B8-D283-40E0-8FAB-C97F05947EE8}')!
IAutoItX3 comment: '<IAutoItX3> is a wrapper class for the COM interface ''AutoItX3Lib.IAutoItX3'' generated from type information in the ''AutoItX3 1.0 Type Library'' library. It contains methods to invoke the member functions exposed by that interface.

The type library contains the following helpstring for this interface
	"IAutoItX3 Interface"

Warning: This comment was automatically generated from the interface''s type information, but any changes made here will not be overwritten if the wrapper class is regenerated.

IDL definition follows:

[
	object, 
	uuid(3D54C6B8-D283-40E0-8FAB-C97F05947EE8), 
	helpstring("IAutoItX3 Interface"), 
	nonextensible, 
	dual
]
interface IAutoItX3 : IDispatch
 {
	[id(0x00000001), propget, helpstring("property error")]
	HRESULT __stdcall error(
		[out, retval]long* pVal);
	[id(0x00000002), propget, helpstring("property SW_HIDE")]
	HRESULT __stdcall SW_HIDE(
		[out, retval]long* pVal);
	[id(0x00000003), propget, helpstring("property SW_MAXIMIZE")]
	HRESULT __stdcall SW_MAXIMIZE(
		[out, retval]long* pVal);
	[id(0x00000004), propget, helpstring("property SW_MINIMIZE")]
	HRESULT __stdcall SW_MINIMIZE(
		[out, retval]long* pVal);
	[id(0x00000005), propget, helpstring("property SW_RESTORE")]
	HRESULT __stdcall SW_RESTORE(
		[out, retval]long* pVal);
	[id(0x00000006), propget, helpstring("property SW_SHOW")]
	HRESULT __stdcall SW_SHOW(
		[out, retval]long* pVal);
	[id(0x00000007), propget, helpstring("property SW_SHOWDEFAULT")]
	HRESULT __stdcall SW_SHOWDEFAULT(
		[out, retval]long* pVal);
	[id(0x00000008), propget, helpstring("property SW_SHOWMAXIMIZED")]
	HRESULT __stdcall SW_SHOWMAXIMIZED(
		[out, retval]long* pVal);
	[id(0x00000009), propget, helpstring("property SW_SHOWMINIMIZED")]
	HRESULT __stdcall SW_SHOWMINIMIZED(
		[out, retval]long* pVal);
	[id(0x0000000a), propget, helpstring("property SW_SHOWMINNOACTIVE")]
	HRESULT __stdcall SW_SHOWMINNOACTIVE(
		[out, retval]long* pVal);
	[id(0x0000000b), propget, helpstring("property SW_SHOWNA")]
	HRESULT __stdcall SW_SHOWNA(
		[out, retval]long* pVal);
	[id(0x0000000c), propget, helpstring("property SW_SHOWNOACTIVATE")]
	HRESULT __stdcall SW_SHOWNOACTIVATE(
		[out, retval]long* pVal);
	[id(0x0000000d), propget, helpstring("property SW_SHOWNORMAL")]
	HRESULT __stdcall SW_SHOWNORMAL(
		[out, retval]long* pVal);
	[id(0x0000000e), helpstring("method Init")]
	HRESULT __stdcall Init();
	[id(0x0000000f), helpstring("method AutoItSetOption")]
	HRESULT __stdcall AutoItSetOption(
		[in]BSTR strOption,
		[in]long nValue,
		[out, retval]long* nRes);
	[id(0x00000012), helpstring("method ClipGet")]
	HRESULT __stdcall ClipGet(
		[out, retval]BSTR* strClip);
	[id(0x00000013), helpstring("method ClipPut")]
	HRESULT __stdcall ClipPut(
		[in]BSTR strClip);
	[id(0x00000014), helpstring("method ControlClick")]
	HRESULT __stdcall ControlClick(
		[in]BSTR strTitle,
		[in]BSTR strText,
		[in]BSTR strControl,
		[in, defaultvalue("LEFT")]BSTR strButton,
		[in, defaultvalue(1)]long nNumClicks,
		[in, defaultvalue(-2147483647)]long nX,
		[in, defaultvalue(-2147483647)]long nY,
		[out, retval]long* nRes);
	[id(0x00000015), helpstring("method ControlCommand")]
	HRESULT __stdcall ControlCommand(
		[in]BSTR strTitle,
		[in]BSTR strText,
		[in]BSTR strControl,
		[in]BSTR strCommand,
		[in]BSTR strExtra,
		[out, retval]BSTR* strResult);
	[id(0x00000016), helpstring("method ControlDisable")]
	HRESULT __stdcall ControlDisable(
		[in]BSTR strTitle,
		[in]BSTR strText,
		[in]BSTR strControl,
		[out, retval]long* nRes);
	[id(0x00000017), helpstring("method ControlEnable")]
	HRESULT __stdcall ControlEnable(
		[in]BSTR strTitle,
		[in]BSTR strText,
		[in]BSTR strControl,
		[out, retval]long* nRes);
	[id(0x00000018), helpstring("method ControlFocus")]
	HRESULT __stdcall ControlFocus(
		[in]BSTR strTitle,
		[in]BSTR strText,
		[in]BSTR strControl,
		[out, retval]long* nRes);
	[id(0x00000019), helpstring("method ControlGetFocus")]
	HRESULT __stdcall ControlGetFocus(
		[in]BSTR strTitle,
		[in, defaultvalue("")]BSTR strText,
		[out, retval]BSTR* strControlWithFocus);
	[id(0x0000001a), helpstring("method ControlGetHandle")]
	HRESULT __stdcall ControlGetHandle(
		[in]BSTR strTitle,
		[in]BSTR strText,
		[in]BSTR strControl,
		[out, retval]BSTR* strRetText);
	[id(0x0000001b), helpstring("method ControlGetPosX")]
	HRESULT __stdcall ControlGetPosX(
		[in]BSTR strTitle,
		[in]BSTR strText,
		[in]BSTR strControl,
		[out, retval]long* nRes);
	[id(0x0000001c), helpstring("method ControlGetPosY")]
	HRESULT __stdcall ControlGetPosY(
		[in]BSTR strTitle,
		[in]BSTR strText,
		[in]BSTR strControl,
		[out, retval]long* nRes);
	[id(0x0000001d), helpstring("method ControlGetPosHeight")]
	HRESULT __stdcall ControlGetPosHeight(
		[in]BSTR strTitle,
		[in]BSTR strText,
		[in]BSTR strControl,
		[out, retval]long* nRes);
	[id(0x0000001e), helpstring("method ControlGetPosWidth")]
	HRESULT __stdcall ControlGetPosWidth(
		[in]BSTR strTitle,
		[in]BSTR strText,
		[in]BSTR strControl,
		[out, retval]long* nRes);
	[id(0x0000001f), helpstring("method ControlGetText")]
	HRESULT __stdcall ControlGetText(
		[in]BSTR strTitle,
		[in]BSTR strText,
		[in]BSTR strControl,
		[out, retval]BSTR* strControlText);
	[id(0x00000020), helpstring("method ControlHide")]
	HRESULT __stdcall ControlHide(
		[in]BSTR strTitle,
		[in]BSTR strText,
		[in]BSTR strControl,
		[out, retval]long* nRes);
	[id(0x00000021), helpstring("method ControlListView")]
	HRESULT __stdcall ControlListView(
		[in]BSTR strTitle,
		[in]BSTR strText,
		[in]BSTR strControl,
		[in]BSTR strCommand,
		[in]BSTR strExtra1,
		[in]BSTR strExtra2,
		[out, retval]BSTR* strResult);
	[id(0x00000022), helpstring("method ControlMove")]
	HRESULT __stdcall ControlMove(
		[in]BSTR strTitle,
		[in]BSTR strText,
		[in]BSTR strControl,
		[in]long nX,
		[in]long nY,
		[in, defaultvalue(-1)]long nWidth,
		[in, defaultvalue(-1)]long nHeight,
		[out, retval]long* nRes);
	[id(0x00000023), helpstring("method ControlSend")]
	HRESULT __stdcall ControlSend(
		[in]BSTR strTitle,
		[in]BSTR strText,
		[in]BSTR strControl,
		[in]BSTR strSendText,
		[in, defaultvalue(0)]long nMode,
		[out, retval]long* nRes);
	[id(0x00000024), helpstring("method ControlSetText")]
	HRESULT __stdcall ControlSetText(
		[in]BSTR strTitle,
		[in]BSTR strText,
		[in]BSTR strControl,
		[in]BSTR strControlText,
		[out, retval]long* nRes);
	[id(0x00000025), helpstring("method ControlShow")]
	HRESULT __stdcall ControlShow(
		[in]BSTR strTitle,
		[in]BSTR strText,
		[in]BSTR strControl,
		[out, retval]long* nRes);
	[id(0x00000026), helpstring("method ControlTreeView")]
	HRESULT __stdcall ControlTreeView(
		[in]BSTR strTitle,
		[in]BSTR strText,
		[in]BSTR strControl,
		[in]BSTR strCommand,
		[in]BSTR strExtra1,
		[in]BSTR strExtra2,
		[out, retval]BSTR* strResult);
	[id(0x00000027), helpstring("method DriveMapAdd")]
	HRESULT __stdcall DriveMapAdd(
		[in]BSTR strDevice,
		[in]BSTR strShare,
		[in, defaultvalue(0)]long nFlags,
		[in, defaultvalue("")]BSTR strUser,
		[in, defaultvalue("")]BSTR strPwd,
		[out, retval]BSTR* strResult);
	[id(0x00000028), helpstring("method DriveMapDel")]
	HRESULT __stdcall DriveMapDel(
		[in]BSTR strDevice,
		[out, retval]long* nRes);
	[id(0x00000029), helpstring("method DriveMapGet")]
	HRESULT __stdcall DriveMapGet(
		[in]BSTR strDevice,
		[out, retval]BSTR* strMapping);
	[id(0x0000002d), helpstring("method IsAdmin")]
	HRESULT __stdcall IsAdmin(
		[out, retval]long* nRes);
	[id(0x0000002e), helpstring("method MouseClick")]
	HRESULT __stdcall MouseClick(
		[in, defaultvalue("LEFT")]BSTR strButton,
		[in, defaultvalue(-2147483647)]long nX,
		[in, defaultvalue(-2147483647)]long nY,
		[in, defaultvalue(1)]long nClicks,
		[in, defaultvalue(-1)]long nSpeed,
		[out, retval]long* nRes);
	[id(0x0000002f), helpstring("method MouseClickDrag")]
	HRESULT __stdcall MouseClickDrag(
		[in]BSTR strButton,
		[in]long nX1,
		[in]long nY1,
		[in]long nX2,
		[in]long nY2,
		[in, defaultvalue(-1)]long nSpeed,
		[out, retval]long* nRes);
	[id(0x00000030), helpstring("method MouseDown")]
	HRESULT __stdcall MouseDown(
		[in, defaultvalue("LEFT")]BSTR strButton);
	[id(0x00000031), helpstring("method MouseGetCursor")]
	HRESULT __stdcall MouseGetCursor(
		[out, retval]long* nRes);
	[id(0x00000032), helpstring("method MouseGetPosX")]
	HRESULT __stdcall MouseGetPosX(
		[out, retval]long* nRes);
	[id(0x00000033), helpstring("method MouseGetPosY")]
	HRESULT __stdcall MouseGetPosY(
		[out, retval]long* nRes);
	[id(0x00000034), helpstring("method MouseMove")]
	HRESULT __stdcall MouseMove(
		[in]long nX,
		[in]long nY,
		[in, defaultvalue(-1)]long nSpeed,
		[out, retval]long* nRes);
	[id(0x00000035), helpstring("method MouseUp")]
	HRESULT __stdcall MouseUp(
		[in, defaultvalue("LEFT")]BSTR strButton);
	[id(0x00000036), helpstring("method MouseWheel")]
	HRESULT __stdcall MouseWheel(
		[in]BSTR strDirection,
		[in, defaultvalue(1)]long nClicks);
	[id(0x00000037), helpstring("method Opt")]
	HRESULT __stdcall Opt(
		[in]BSTR strOption,
		[in]long nValue,
		[out, retval]long* nRes);
	[id(0x00000038), helpstring("method PixelChecksum")]
	HRESULT __stdcall PixelChecksum(
		[in]long nLeft,
		[in]long nTop,
		[in]long nRight,
		[in]long nBottom,
		[in, defaultvalue(1)]long nStep,
		[out, retval]double* nRes);
	[id(0x00000039), helpstring("method PixelGetColor")]
	HRESULT __stdcall PixelGetColor(
		[in]long nX,
		[in]long nY,
		[out, retval]long* nRes);
	[id(0x0000003a), helpstring("method PixelSearch")]
	HRESULT __stdcall PixelSearch(
		[in]long nLeft,
		[in]long nTop,
		[in]long nRight,
		[in]long nBottom,
		[in]long nCol,
		[in, defaultvalue(0)]long nVar,
		[in, defaultvalue(1)]long nStep,
		[out, retval]VARIANT* vOutResult);
	[id(0x0000003b), helpstring("method ProcessClose")]
	HRESULT __stdcall ProcessClose(
		[in]BSTR strProcess,
		[out, retval]long* nRes);
	[id(0x0000003c), helpstring("method ProcessExists")]
	HRESULT __stdcall ProcessExists(
		[in]BSTR strProcess,
		[out, retval]long* nRes);
	[id(0x0000003d), helpstring("method ProcessSetPriority")]
	HRESULT __stdcall ProcessSetPriority(
		[in]BSTR strProcess,
		[in]long nPriority,
		[out, retval]long* nRes);
	[id(0x0000003e), helpstring("method ProcessWait")]
	HRESULT __stdcall ProcessWait(
		[in]BSTR strProcess,
		[in, defaultvalue(0)]long nTimeout,
		[out, retval]long* nRes);
	[id(0x0000003f), helpstring("method ProcessWaitClose")]
	HRESULT __stdcall ProcessWaitClose(
		[in]BSTR strProcess,
		[in, defaultvalue(0)]long nTimeout,
		[out, retval]long* nRes);
	[id(0x00000046), helpstring("method Run")]
	HRESULT __stdcall Run(
		[in]BSTR strRun,
		[in, defaultvalue("")]BSTR strDir,
		[in, defaultvalue(13)]long nShowFlag,
		[out, retval]long* nRes);
	[id(0x00000047), helpstring("method RunAs")]
	HRESULT __stdcall RunAs(
		[in]BSTR strUser,
		[in]BSTR strDomain,
		[in]BSTR strPassword,
		[in]long nLogonFlag,
		[in]BSTR strRun,
		[in, defaultvalue("")]BSTR strDir,
		[in, defaultvalue(13)]long nShowFlag,
		[out, retval]long* nRes);
	[id(0x00000040), helpstring("method RunAsWait")]
	HRESULT __stdcall RunAsWait(
		[in]BSTR strUser,
		[in]BSTR strDomain,
		[in]BSTR strPassword,
		[in]long nLogonFlag,
		[in]BSTR strRun,
		[in, defaultvalue("")]BSTR strDir,
		[in, defaultvalue(13)]long nShowFlag,
		[out, retval]long* nRes);
	[id(0x00000048), helpstring("method RunWait")]
	HRESULT __stdcall RunWait(
		[in]BSTR strRun,
		[in, defaultvalue("")]BSTR strDir,
		[in, defaultvalue(13)]long nShowFlag,
		[out, retval]long* nRes);
	[id(0x00000049), helpstring("method Send")]
	HRESULT __stdcall Send(
		[in]BSTR strSendText,
		[in, defaultvalue(0)]long nMode);
	[id(0x0000004a), helpstring("method Shutdown")]
	HRESULT __stdcall Shutdown(
		[in]long nFlags,
		[out, retval]long* nRes);
	[id(0x0000004b), helpstring("method Sleep")]
	HRESULT __stdcall Sleep(
		[in]long nMilliseconds);
	[id(0x0000004c), helpstring("method StatusbarGetText")]
	HRESULT __stdcall StatusbarGetText(
		[in]BSTR strTitle,
		[in, defaultvalue("")]BSTR strText,
		[in, defaultvalue(1)]long nPart,
		[out, retval]BSTR* strStatusText);
	[id(0x0000004d), helpstring("method ToolTip")]
	HRESULT __stdcall ToolTip(
		[in]BSTR strTip,
		[in, defaultvalue(-2147483647)]long nX,
		[in, defaultvalue(-2147483647)]long nY);
	[id(0x0000004e), helpstring("method WinActivate")]
	HRESULT __stdcall WinActivate(
		[in]BSTR strTitle,
		[in, defaultvalue("")]BSTR strText);
	[id(0x0000004f), helpstring("method WinActive")]
	HRESULT __stdcall WinActive(
		[in]BSTR strTitle,
		[in, defaultvalue("")]BSTR strText,
		[out, retval]long* nRes);
	[id(0x00000050), helpstring("method WinClose")]
	HRESULT __stdcall WinClose(
		[in]BSTR strTitle,
		[in, defaultvalue("")]BSTR strText,
		[out, retval]long* nRes);
	[id(0x00000051), helpstring("method WinExists")]
	HRESULT __stdcall WinExists(
		[in]BSTR strTitle,
		[in, defaultvalue("")]BSTR strText,
		[out, retval]long* nRes);
	[id(0x00000052), helpstring("method WinGetCaretPosX")]
	HRESULT __stdcall WinGetCaretPosX(
		[out, retval]long* nRes);
	[id(0x00000053), helpstring("method WinGetCaretPosY")]
	HRESULT __stdcall WinGetCaretPosY(
		[out, retval]long* nRes);
	[id(0x00000054), helpstring("method WinGetClassList")]
	HRESULT __stdcall WinGetClassList(
		[in]BSTR strTitle,
		[in, defaultvalue("")]BSTR strText,
		[out, retval]BSTR* strRetText);
	[id(0x00000055), helpstring("method WinGetClientSizeHeight")]
	HRESULT __stdcall WinGetClientSizeHeight(
		[in]BSTR strTitle,
		[in, defaultvalue("")]BSTR strText,
		[out, retval]long* nRes);
	[id(0x00000056), helpstring("method WinGetClientSizeWidth")]
	HRESULT __stdcall WinGetClientSizeWidth(
		[in]BSTR strTitle,
		[in, defaultvalue("")]BSTR strText,
		[out, retval]long* nRes);
	[id(0x00000057), helpstring("method WinGetHandle")]
	HRESULT __stdcall WinGetHandle(
		[in]BSTR strTitle,
		[in, defaultvalue("")]BSTR strText,
		[out, retval]BSTR* strRetText);
	[id(0x00000058), helpstring("method WinGetPosX")]
	HRESULT __stdcall WinGetPosX(
		[in]BSTR strTitle,
		[in, defaultvalue("")]BSTR strText,
		[out, retval]long* nRes);
	[id(0x00000059), helpstring("method WinGetPosY")]
	HRESULT __stdcall WinGetPosY(
		[in]BSTR strTitle,
		[in, defaultvalue("")]BSTR strText,
		[out, retval]long* nRes);
	[id(0x0000005a), helpstring("method WinGetPosHeight")]
	HRESULT __stdcall WinGetPosHeight(
		[in]BSTR strTitle,
		[in, defaultvalue("")]BSTR strText,
		[out, retval]long* nRes);
	[id(0x0000005b), helpstring("method WinGetPosWidth")]
	HRESULT __stdcall WinGetPosWidth(
		[in]BSTR strTitle,
		[in, defaultvalue("")]BSTR strText,
		[out, retval]long* nRes);
	[id(0x0000005c), helpstring("method WinGetProcess")]
	HRESULT __stdcall WinGetProcess(
		[in]BSTR strTitle,
		[in, defaultvalue("")]BSTR strText,
		[out, retval]BSTR* strResult);
	[id(0x0000005d), helpstring("method WinGetState")]
	HRESULT __stdcall WinGetState(
		[in]BSTR strTitle,
		[in, defaultvalue("")]BSTR strText,
		[out, retval]long* nRes);
	[id(0x0000005e), helpstring("method WinGetText")]
	HRESULT __stdcall WinGetText(
		[in]BSTR strTitle,
		[in, defaultvalue("")]BSTR strText,
		[out, retval]BSTR* strRetText);
	[id(0x0000005f), helpstring("method WinGetTitle")]
	HRESULT __stdcall WinGetTitle(
		[in]BSTR strTitle,
		[in, defaultvalue("")]BSTR strText,
		[out, retval]BSTR* strRetText);
	[id(0x00000060), helpstring("method WinKill")]
	HRESULT __stdcall WinKill(
		[in]BSTR strTitle,
		[in, defaultvalue("")]BSTR strText,
		[out, retval]long* nRes);
	[id(0x00000061), helpstring("method WinList")]
	HRESULT __stdcall WinList(
		[in]BSTR strTitle,
		[in, defaultvalue("")]BSTR strText,
		[out, retval]VARIANT* vOutResult);
	[id(0x00000062), helpstring("method WinMenuSelectItem")]
	HRESULT __stdcall WinMenuSelectItem(
		[in]BSTR strTitle,
		[in]BSTR strText,
		[in]BSTR strItem1,
		[in, defaultvalue("")]BSTR strItem2,
		[in, defaultvalue("")]BSTR strItem3,
		[in, defaultvalue("")]BSTR strItem4,
		[in, defaultvalue("")]BSTR strItem5,
		[in, defaultvalue("")]BSTR strItem6,
		[in, defaultvalue("")]BSTR strItem7,
		[in, defaultvalue("")]BSTR strItem8,
		[out, retval]long* nRes);
	[id(0x00000063), helpstring("method WinMinimizeAll")]
	HRESULT __stdcall WinMinimizeAll();
	[id(0x00000064), helpstring("method WinMinimizeAllUndo")]
	HRESULT __stdcall WinMinimizeAllUndo();
	[id(0x00000065), helpstring("method WinMove")]
	HRESULT __stdcall WinMove(
		[in]BSTR strTitle,
		[in]BSTR strText,
		[in]long nX,
		[in]long nY,
		[in, defaultvalue(-1)]long nWidth,
		[in, defaultvalue(-1)]long nHeight,
		[out, retval]long* nRes);
	[id(0x00000066), helpstring("method WinSetOnTop")]
	HRESULT __stdcall WinSetOnTop(
		[in]BSTR strTitle,
		[in]BSTR strText,
		[in]long nFlag,
		[out, retval]long* nRes);
	[id(0x00000067), helpstring("method WinSetState")]
	HRESULT __stdcall WinSetState(
		[in]BSTR strTitle,
		[in]BSTR strText,
		[in]long nFlags,
		[out, retval]long* nRes);
	[id(0x00000068), helpstring("method WinSetTitle")]
	HRESULT __stdcall WinSetTitle(
		[in]BSTR strTitle,
		[in]BSTR strText,
		[in]BSTR strNewTitle,
		[out, retval]long* nRes);
	[id(0x00000069), helpstring("method WinSetTrans")]
	HRESULT __stdcall WinSetTrans(
		[in]BSTR strTitle,
		[in]BSTR strText,
		[in]long nTrans,
		[out, retval]long* nRes);
	[id(0x0000006a), helpstring("method WinWait")]
	HRESULT __stdcall WinWait(
		[in]BSTR strTitle,
		[in, defaultvalue("")]BSTR strText,
		[in, defaultvalue(0)]long nTimeout,
		[out, retval]long* nRes);
	[id(0x0000006b), helpstring("method WinWaitActive")]
	HRESULT __stdcall WinWaitActive(
		[in]BSTR strTitle,
		[in, defaultvalue("")]BSTR strText,
		[in, defaultvalue(0)]long nTimeout,
		[out, retval]long* nRes);
	[id(0x0000006c), helpstring("method WinWaitClose")]
	HRESULT __stdcall WinWaitClose(
		[in]BSTR strTitle,
		[in, defaultvalue("")]BSTR strText,
		[in, defaultvalue(0)]long nTimeout,
		[out, retval]long* nRes);
	[id(0x0000006d), helpstring("method WinWaitNotActive")]
	HRESULT __stdcall WinWaitNotActive(
		[in]BSTR strTitle,
		[in, defaultvalue("")]BSTR strText,
		[in, defaultvalue(0)]long nTimeout,
		[out, retval]long* nRes);
	[id(0x0000006e), propget, helpstring("property version")]
	HRESULT __stdcall version(
		[out, retval]BSTR* strRetVer);
};
'!
!IAutoItX3 categoriesForClass!AutoItX3Lib-Interfaces!COM-Interfaces! !
!IAutoItX3 methodsFor!

autoItSetOption: strOption nValue: nValue
	"Answer the <SDWORD> result of invoking the AutoItSetOption() method of the COM object.
	Helpstring: method AutoItSetOption"

	| answer |
	answer := (SDWORD new).
	self
		AutoItSetOption: strOption
		nValue: nValue
		nRes: answer.
	^answer asObject
!

AutoItSetOption: strOption nValue: nValue nRes: nRes
	"Private - Invoke the AutoItSetOption() method of the COM object.
	Helpstring: method AutoItSetOption

		HRESULT __stdcall AutoItSetOption(
			[in]BSTR strOption,
			[in]long nValue,
			[out, retval]long* nRes);"

	<virtual stdcall: hresult 22 bstr sdword sdword*>
	^self invalidCall!

clipGet
	"Answer the <BSTR> result of invoking the ClipGet() method of the COM object.
	Helpstring: method ClipGet"

	| answer |
	answer := BSTR new.
	self ClipGet: answer.
	^answer asObject
!

ClipGet: strClip
	"Private - Invoke the ClipGet() method of the COM object.
	Helpstring: method ClipGet

		HRESULT __stdcall ClipGet(
			[out, retval]BSTR* strClip);"

	<virtual stdcall: hresult 23 bstr*>
	^self invalidCall!

clipPut: strClip
	"Invoke the ClipPut() method of the COM object.
	Helpstring: method ClipPut"

	^self ClipPut: strClip
!

ClipPut: strClip
	"Private - Invoke the ClipPut() method of the COM object.
	Helpstring: method ClipPut

		HRESULT __stdcall ClipPut(
			[in]BSTR strClip);"

	<virtual stdcall: hresult 24 bstr>
	^self invalidCall!

controlClick: strTitle strText: strText strControl: strControl
	"Answer the <SDWORD> result of invoking the ControlClick() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 controlClick: strTitle
		 strText: strText
		 strControl: strControl
		 strButton: 'LEFT'
		 nNumClicks: 1
		 nX: -2147483647
		 nY: -2147483647!

controlClick: strTitle strText: strText strControl: strControl strButton: strButton nNumClicks: nNumClicks nX: nX nY: nY
	"Answer the <SDWORD> result of invoking the ControlClick() method of the COM object.
	Helpstring: method ControlClick"

	| answer |
	answer := (SDWORD new).
	self
		ControlClick: strTitle
		strText: strText
		strControl: strControl
		strButton: strButton
		nNumClicks: nNumClicks
		nX: nX
		nY: nY
		nRes: answer.
	^answer asObject
!

ControlClick: strTitle strText: strText strControl: strControl strButton: strButton nNumClicks: nNumClicks nX: nX nY: nY nRes: nRes
	"Private - Invoke the ControlClick() method of the COM object.
	Helpstring: method ControlClick

		HRESULT __stdcall ControlClick(
			[in]BSTR strTitle,
			[in]BSTR strText,
			[in]BSTR strControl,
			[in, defaultvalue('LEFT')]BSTR strButton,
			[in, defaultvalue(1)]long nNumClicks,
			[in, defaultvalue(-2147483647)]long nX,
			[in, defaultvalue(-2147483647)]long nY,
			[out, retval]long* nRes);"

	<virtual stdcall: hresult 25 bstr bstr bstr bstr sdword sdword sdword sdword*>
	^self invalidCall!

controlCommand: strTitle strText: strText strControl: strControl strCommand: strCommand strExtra: strExtra
	"Answer the <BSTR> result of invoking the ControlCommand() method of the COM object.
	Helpstring: method ControlCommand"

	| answer |
	answer := BSTR new.
	self
		ControlCommand: strTitle
		strText: strText
		strControl: strControl
		strCommand: strCommand
		strExtra: strExtra
		strResult: answer.
	^answer asObject
!

ControlCommand: strTitle strText: strText strControl: strControl strCommand: strCommand strExtra: strExtra strResult: strResult
	"Private - Invoke the ControlCommand() method of the COM object.
	Helpstring: method ControlCommand

		HRESULT __stdcall ControlCommand(
			[in]BSTR strTitle,
			[in]BSTR strText,
			[in]BSTR strControl,
			[in]BSTR strCommand,
			[in]BSTR strExtra,
			[out, retval]BSTR* strResult);"

	<virtual stdcall: hresult 26 bstr bstr bstr bstr bstr bstr*>
	^self invalidCall!

controlDisable: strTitle strText: strText strControl: strControl
	"Answer the <SDWORD> result of invoking the ControlDisable() method of the COM object.
	Helpstring: method ControlDisable"

	| answer |
	answer := (SDWORD new).
	self
		ControlDisable: strTitle
		strText: strText
		strControl: strControl
		nRes: answer.
	^answer asObject
!

ControlDisable: strTitle strText: strText strControl: strControl nRes: nRes
	"Private - Invoke the ControlDisable() method of the COM object.
	Helpstring: method ControlDisable

		HRESULT __stdcall ControlDisable(
			[in]BSTR strTitle,
			[in]BSTR strText,
			[in]BSTR strControl,
			[out, retval]long* nRes);"

	<virtual stdcall: hresult 27 bstr bstr bstr sdword*>
	^self invalidCall!

controlEnable: strTitle strText: strText strControl: strControl
	"Answer the <SDWORD> result of invoking the ControlEnable() method of the COM object.
	Helpstring: method ControlEnable"

	| answer |
	answer := (SDWORD new).
	self
		ControlEnable: strTitle
		strText: strText
		strControl: strControl
		nRes: answer.
	^answer asObject
!

ControlEnable: strTitle strText: strText strControl: strControl nRes: nRes
	"Private - Invoke the ControlEnable() method of the COM object.
	Helpstring: method ControlEnable

		HRESULT __stdcall ControlEnable(
			[in]BSTR strTitle,
			[in]BSTR strText,
			[in]BSTR strControl,
			[out, retval]long* nRes);"

	<virtual stdcall: hresult 28 bstr bstr bstr sdword*>
	^self invalidCall!

controlFocus: strTitle strText: strText strControl: strControl
	"Answer the <SDWORD> result of invoking the ControlFocus() method of the COM object.
	Helpstring: method ControlFocus"

	| answer |
	answer := (SDWORD new).
	self
		ControlFocus: strTitle
		strText: strText
		strControl: strControl
		nRes: answer.
	^answer asObject
!

ControlFocus: strTitle strText: strText strControl: strControl nRes: nRes
	"Private - Invoke the ControlFocus() method of the COM object.
	Helpstring: method ControlFocus

		HRESULT __stdcall ControlFocus(
			[in]BSTR strTitle,
			[in]BSTR strText,
			[in]BSTR strControl,
			[out, retval]long* nRes);"

	<virtual stdcall: hresult 29 bstr bstr bstr sdword*>
	^self invalidCall!

controlGetFocus: strTitle
	"Answer the <BSTR> result of invoking the ControlGetFocus() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 controlGetFocus: strTitle
		 strText: ''!

controlGetFocus: strTitle strText: strText
	"Answer the <BSTR> result of invoking the ControlGetFocus() method of the COM object.
	Helpstring: method ControlGetFocus"

	| answer |
	answer := BSTR new.
	self
		ControlGetFocus: strTitle
		strText: strText
		strControlWithFocus: answer.
	^answer asObject
!

ControlGetFocus: strTitle strText: strText strControlWithFocus: strControlWithFocus
	"Private - Invoke the ControlGetFocus() method of the COM object.
	Helpstring: method ControlGetFocus

		HRESULT __stdcall ControlGetFocus(
			[in]BSTR strTitle,
			[in, defaultvalue('')]BSTR strText,
			[out, retval]BSTR* strControlWithFocus);"

	<virtual stdcall: hresult 30 bstr bstr bstr*>
	^self invalidCall!

controlGetHandle: strTitle strText: strText strControl: strControl
	"Answer the <BSTR> result of invoking the ControlGetHandle() method of the COM object.
	Helpstring: method ControlGetHandle"

	| answer |
	answer := BSTR new.
	self
		ControlGetHandle: strTitle
		strText: strText
		strControl: strControl
		strRetText: answer.
	^answer asObject
!

ControlGetHandle: strTitle strText: strText strControl: strControl strRetText: strRetText
	"Private - Invoke the ControlGetHandle() method of the COM object.
	Helpstring: method ControlGetHandle

		HRESULT __stdcall ControlGetHandle(
			[in]BSTR strTitle,
			[in]BSTR strText,
			[in]BSTR strControl,
			[out, retval]BSTR* strRetText);"

	<virtual stdcall: hresult 31 bstr bstr bstr bstr*>
	^self invalidCall!

controlGetPosHeight: strTitle strText: strText strControl: strControl
	"Answer the <SDWORD> result of invoking the ControlGetPosHeight() method of the COM object.
	Helpstring: method ControlGetPosHeight"

	| answer |
	answer := (SDWORD new).
	self
		ControlGetPosHeight: strTitle
		strText: strText
		strControl: strControl
		nRes: answer.
	^answer asObject
!

ControlGetPosHeight: strTitle strText: strText strControl: strControl nRes: nRes
	"Private - Invoke the ControlGetPosHeight() method of the COM object.
	Helpstring: method ControlGetPosHeight

		HRESULT __stdcall ControlGetPosHeight(
			[in]BSTR strTitle,
			[in]BSTR strText,
			[in]BSTR strControl,
			[out, retval]long* nRes);"

	<virtual stdcall: hresult 34 bstr bstr bstr sdword*>
	^self invalidCall!

controlGetPosWidth: strTitle strText: strText strControl: strControl
	"Answer the <SDWORD> result of invoking the ControlGetPosWidth() method of the COM object.
	Helpstring: method ControlGetPosWidth"

	| answer |
	answer := (SDWORD new).
	self
		ControlGetPosWidth: strTitle
		strText: strText
		strControl: strControl
		nRes: answer.
	^answer asObject
!

ControlGetPosWidth: strTitle strText: strText strControl: strControl nRes: nRes
	"Private - Invoke the ControlGetPosWidth() method of the COM object.
	Helpstring: method ControlGetPosWidth

		HRESULT __stdcall ControlGetPosWidth(
			[in]BSTR strTitle,
			[in]BSTR strText,
			[in]BSTR strControl,
			[out, retval]long* nRes);"

	<virtual stdcall: hresult 35 bstr bstr bstr sdword*>
	^self invalidCall!

controlGetPosX: strTitle strText: strText strControl: strControl
	"Answer the <SDWORD> result of invoking the ControlGetPosX() method of the COM object.
	Helpstring: method ControlGetPosX"

	| answer |
	answer := (SDWORD new).
	self
		ControlGetPosX: strTitle
		strText: strText
		strControl: strControl
		nRes: answer.
	^answer asObject
!

ControlGetPosX: strTitle strText: strText strControl: strControl nRes: nRes
	"Private - Invoke the ControlGetPosX() method of the COM object.
	Helpstring: method ControlGetPosX

		HRESULT __stdcall ControlGetPosX(
			[in]BSTR strTitle,
			[in]BSTR strText,
			[in]BSTR strControl,
			[out, retval]long* nRes);"

	<virtual stdcall: hresult 32 bstr bstr bstr sdword*>
	^self invalidCall!

controlGetPosY: strTitle strText: strText strControl: strControl
	"Answer the <SDWORD> result of invoking the ControlGetPosY() method of the COM object.
	Helpstring: method ControlGetPosY"

	| answer |
	answer := (SDWORD new).
	self
		ControlGetPosY: strTitle
		strText: strText
		strControl: strControl
		nRes: answer.
	^answer asObject
!

ControlGetPosY: strTitle strText: strText strControl: strControl nRes: nRes
	"Private - Invoke the ControlGetPosY() method of the COM object.
	Helpstring: method ControlGetPosY

		HRESULT __stdcall ControlGetPosY(
			[in]BSTR strTitle,
			[in]BSTR strText,
			[in]BSTR strControl,
			[out, retval]long* nRes);"

	<virtual stdcall: hresult 33 bstr bstr bstr sdword*>
	^self invalidCall!

controlGetText: strTitle strText: strText strControl: strControl
	"Answer the <BSTR> result of invoking the ControlGetText() method of the COM object.
	Helpstring: method ControlGetText"

	| answer |
	answer := BSTR new.
	self
		ControlGetText: strTitle
		strText: strText
		strControl: strControl
		strControlText: answer.
	^answer asObject
!

ControlGetText: strTitle strText: strText strControl: strControl strControlText: strControlText
	"Private - Invoke the ControlGetText() method of the COM object.
	Helpstring: method ControlGetText

		HRESULT __stdcall ControlGetText(
			[in]BSTR strTitle,
			[in]BSTR strText,
			[in]BSTR strControl,
			[out, retval]BSTR* strControlText);"

	<virtual stdcall: hresult 36 bstr bstr bstr bstr*>
	^self invalidCall!

controlHide: strTitle strText: strText strControl: strControl
	"Answer the <SDWORD> result of invoking the ControlHide() method of the COM object.
	Helpstring: method ControlHide"

	| answer |
	answer := (SDWORD new).
	self
		ControlHide: strTitle
		strText: strText
		strControl: strControl
		nRes: answer.
	^answer asObject
!

ControlHide: strTitle strText: strText strControl: strControl nRes: nRes
	"Private - Invoke the ControlHide() method of the COM object.
	Helpstring: method ControlHide

		HRESULT __stdcall ControlHide(
			[in]BSTR strTitle,
			[in]BSTR strText,
			[in]BSTR strControl,
			[out, retval]long* nRes);"

	<virtual stdcall: hresult 37 bstr bstr bstr sdword*>
	^self invalidCall!

controlListView: strTitle strText: strText strControl: strControl strCommand: strCommand strExtra1: strExtra1 strExtra2: strExtra2
	"Answer the <BSTR> result of invoking the ControlListView() method of the COM object.
	Helpstring: method ControlListView"

	| answer |
	answer := BSTR new.
	self
		ControlListView: strTitle
		strText: strText
		strControl: strControl
		strCommand: strCommand
		strExtra1: strExtra1
		strExtra2: strExtra2
		strResult: answer.
	^answer asObject
!

ControlListView: strTitle strText: strText strControl: strControl strCommand: strCommand strExtra1: strExtra1 strExtra2: strExtra2 strResult: strResult
	"Private - Invoke the ControlListView() method of the COM object.
	Helpstring: method ControlListView

		HRESULT __stdcall ControlListView(
			[in]BSTR strTitle,
			[in]BSTR strText,
			[in]BSTR strControl,
			[in]BSTR strCommand,
			[in]BSTR strExtra1,
			[in]BSTR strExtra2,
			[out, retval]BSTR* strResult);"

	<virtual stdcall: hresult 38 bstr bstr bstr bstr bstr bstr bstr*>
	^self invalidCall!

controlMove: strTitle strText: strText strControl: strControl nX: nX nY: nY
	"Answer the <SDWORD> result of invoking the ControlMove() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 controlMove: strTitle
		 strText: strText
		 strControl: strControl
		 nX: nX
		 nY: nY
		 nWidth: -1
		 nHeight: -1!

controlMove: strTitle strText: strText strControl: strControl nX: nX nY: nY nWidth: nWidth nHeight: nHeight
	"Answer the <SDWORD> result of invoking the ControlMove() method of the COM object.
	Helpstring: method ControlMove"

	| answer |
	answer := (SDWORD new).
	self
		ControlMove: strTitle
		strText: strText
		strControl: strControl
		nX: nX
		nY: nY
		nWidth: nWidth
		nHeight: nHeight
		nRes: answer.
	^answer asObject
!

ControlMove: strTitle strText: strText strControl: strControl nX: nX nY: nY nWidth: nWidth nHeight: nHeight nRes: nRes
	"Private - Invoke the ControlMove() method of the COM object.
	Helpstring: method ControlMove

		HRESULT __stdcall ControlMove(
			[in]BSTR strTitle,
			[in]BSTR strText,
			[in]BSTR strControl,
			[in]long nX,
			[in]long nY,
			[in, defaultvalue(-1)]long nWidth,
			[in, defaultvalue(-1)]long nHeight,
			[out, retval]long* nRes);"

	<virtual stdcall: hresult 39 bstr bstr bstr sdword sdword sdword sdword sdword*>
	^self invalidCall!

controlSend: strTitle strText: strText strControl: strControl strSendText: strSendText
	"Answer the <SDWORD> result of invoking the ControlSend() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 controlSend: strTitle
		 strText: strText
		 strControl: strControl
		 strSendText: strSendText
		 nMode: 0!

controlSend: strTitle strText: strText strControl: strControl strSendText: strSendText nMode: nMode
	"Answer the <SDWORD> result of invoking the ControlSend() method of the COM object.
	Helpstring: method ControlSend"

	| answer |
	answer := (SDWORD new).
	self
		ControlSend: strTitle
		strText: strText
		strControl: strControl
		strSendText: strSendText
		nMode: nMode
		nRes: answer.
	^answer asObject
!

ControlSend: strTitle strText: strText strControl: strControl strSendText: strSendText nMode: nMode nRes: nRes
	"Private - Invoke the ControlSend() method of the COM object.
	Helpstring: method ControlSend

		HRESULT __stdcall ControlSend(
			[in]BSTR strTitle,
			[in]BSTR strText,
			[in]BSTR strControl,
			[in]BSTR strSendText,
			[in, defaultvalue(0)]long nMode,
			[out, retval]long* nRes);"

	<virtual stdcall: hresult 40 bstr bstr bstr bstr sdword sdword*>
	^self invalidCall!

controlSetText: strTitle strText: strText strControl: strControl strControlText: strControlText
	"Answer the <SDWORD> result of invoking the ControlSetText() method of the COM object.
	Helpstring: method ControlSetText"

	| answer |
	answer := (SDWORD new).
	self
		ControlSetText: strTitle
		strText: strText
		strControl: strControl
		strControlText: strControlText
		nRes: answer.
	^answer asObject
!

ControlSetText: strTitle strText: strText strControl: strControl strControlText: strControlText nRes: nRes
	"Private - Invoke the ControlSetText() method of the COM object.
	Helpstring: method ControlSetText

		HRESULT __stdcall ControlSetText(
			[in]BSTR strTitle,
			[in]BSTR strText,
			[in]BSTR strControl,
			[in]BSTR strControlText,
			[out, retval]long* nRes);"

	<virtual stdcall: hresult 41 bstr bstr bstr bstr sdword*>
	^self invalidCall!

controlShow: strTitle strText: strText strControl: strControl
	"Answer the <SDWORD> result of invoking the ControlShow() method of the COM object.
	Helpstring: method ControlShow"

	| answer |
	answer := (SDWORD new).
	self
		ControlShow: strTitle
		strText: strText
		strControl: strControl
		nRes: answer.
	^answer asObject
!

ControlShow: strTitle strText: strText strControl: strControl nRes: nRes
	"Private - Invoke the ControlShow() method of the COM object.
	Helpstring: method ControlShow

		HRESULT __stdcall ControlShow(
			[in]BSTR strTitle,
			[in]BSTR strText,
			[in]BSTR strControl,
			[out, retval]long* nRes);"

	<virtual stdcall: hresult 42 bstr bstr bstr sdword*>
	^self invalidCall!

controlTreeView: strTitle strText: strText strControl: strControl strCommand: strCommand strExtra1: strExtra1 strExtra2: strExtra2
	"Answer the <BSTR> result of invoking the ControlTreeView() method of the COM object.
	Helpstring: method ControlTreeView"

	| answer |
	answer := BSTR new.
	self
		ControlTreeView: strTitle
		strText: strText
		strControl: strControl
		strCommand: strCommand
		strExtra1: strExtra1
		strExtra2: strExtra2
		strResult: answer.
	^answer asObject
!

ControlTreeView: strTitle strText: strText strControl: strControl strCommand: strCommand strExtra1: strExtra1 strExtra2: strExtra2 strResult: strResult
	"Private - Invoke the ControlTreeView() method of the COM object.
	Helpstring: method ControlTreeView

		HRESULT __stdcall ControlTreeView(
			[in]BSTR strTitle,
			[in]BSTR strText,
			[in]BSTR strControl,
			[in]BSTR strCommand,
			[in]BSTR strExtra1,
			[in]BSTR strExtra2,
			[out, retval]BSTR* strResult);"

	<virtual stdcall: hresult 43 bstr bstr bstr bstr bstr bstr bstr*>
	^self invalidCall!

driveMapAdd: strDevice strShare: strShare
	"Answer the <BSTR> result of invoking the DriveMapAdd() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 driveMapAdd: strDevice
		 strShare: strShare
		 nFlags: 0
		 strUser: ''
		 strPwd: ''!

driveMapAdd: strDevice strShare: strShare nFlags: nFlags strUser: strUser strPwd: strPwd
	"Answer the <BSTR> result of invoking the DriveMapAdd() method of the COM object.
	Helpstring: method DriveMapAdd"

	| answer |
	answer := BSTR new.
	self
		DriveMapAdd: strDevice
		strShare: strShare
		nFlags: nFlags
		strUser: strUser
		strPwd: strPwd
		strResult: answer.
	^answer asObject
!

DriveMapAdd: strDevice strShare: strShare nFlags: nFlags strUser: strUser strPwd: strPwd strResult: strResult
	"Private - Invoke the DriveMapAdd() method of the COM object.
	Helpstring: method DriveMapAdd

		HRESULT __stdcall DriveMapAdd(
			[in]BSTR strDevice,
			[in]BSTR strShare,
			[in, defaultvalue(0)]long nFlags,
			[in, defaultvalue('')]BSTR strUser,
			[in, defaultvalue('')]BSTR strPwd,
			[out, retval]BSTR* strResult);"

	<virtual stdcall: hresult 44 bstr bstr sdword bstr bstr bstr*>
	^self invalidCall!

driveMapDel: strDevice
	"Answer the <SDWORD> result of invoking the DriveMapDel() method of the COM object.
	Helpstring: method DriveMapDel"

	| answer |
	answer := (SDWORD new).
	self
		DriveMapDel: strDevice
		nRes: answer.
	^answer asObject
!

DriveMapDel: strDevice nRes: nRes
	"Private - Invoke the DriveMapDel() method of the COM object.
	Helpstring: method DriveMapDel

		HRESULT __stdcall DriveMapDel(
			[in]BSTR strDevice,
			[out, retval]long* nRes);"

	<virtual stdcall: hresult 45 bstr sdword*>
	^self invalidCall!

driveMapGet: strDevice
	"Answer the <BSTR> result of invoking the DriveMapGet() method of the COM object.
	Helpstring: method DriveMapGet"

	| answer |
	answer := BSTR new.
	self
		DriveMapGet: strDevice
		strMapping: answer.
	^answer asObject
!

DriveMapGet: strDevice strMapping: strMapping
	"Private - Invoke the DriveMapGet() method of the COM object.
	Helpstring: method DriveMapGet

		HRESULT __stdcall DriveMapGet(
			[in]BSTR strDevice,
			[out, retval]BSTR* strMapping);"

	<virtual stdcall: hresult 46 bstr bstr*>
	^self invalidCall!

error
	"Answer the <sdword> value of the 'error' property of the receiver.
	Helpstring: property error"

	| answer |
	answer := (SDWORD new).
	self get_error: answer.
	^answer asObject
!

get_error: pVal
	"Private - Get the value of the 'error' property of the receiver.

		HRESULT __stdcall error(
			[out, retval]long* pVal);"

	<virtual stdcall: hresult 8 sdword*>
	^self invalidCall!

get_SW_HIDE: pVal
	"Private - Get the value of the 'SW_HIDE' property of the receiver.

		HRESULT __stdcall SW_HIDE(
			[out, retval]long* pVal);"

	<virtual stdcall: hresult 9 sdword*>
	^self invalidCall!

get_SW_MAXIMIZE: pVal
	"Private - Get the value of the 'SW_MAXIMIZE' property of the receiver.

		HRESULT __stdcall SW_MAXIMIZE(
			[out, retval]long* pVal);"

	<virtual stdcall: hresult 10 sdword*>
	^self invalidCall!

get_SW_MINIMIZE: pVal
	"Private - Get the value of the 'SW_MINIMIZE' property of the receiver.

		HRESULT __stdcall SW_MINIMIZE(
			[out, retval]long* pVal);"

	<virtual stdcall: hresult 11 sdword*>
	^self invalidCall!

get_SW_RESTORE: pVal
	"Private - Get the value of the 'SW_RESTORE' property of the receiver.

		HRESULT __stdcall SW_RESTORE(
			[out, retval]long* pVal);"

	<virtual stdcall: hresult 12 sdword*>
	^self invalidCall!

get_SW_SHOW: pVal
	"Private - Get the value of the 'SW_SHOW' property of the receiver.

		HRESULT __stdcall SW_SHOW(
			[out, retval]long* pVal);"

	<virtual stdcall: hresult 13 sdword*>
	^self invalidCall!

get_SW_SHOWDEFAULT: pVal
	"Private - Get the value of the 'SW_SHOWDEFAULT' property of the receiver.

		HRESULT __stdcall SW_SHOWDEFAULT(
			[out, retval]long* pVal);"

	<virtual stdcall: hresult 14 sdword*>
	^self invalidCall!

get_SW_SHOWMAXIMIZED: pVal
	"Private - Get the value of the 'SW_SHOWMAXIMIZED' property of the receiver.

		HRESULT __stdcall SW_SHOWMAXIMIZED(
			[out, retval]long* pVal);"

	<virtual stdcall: hresult 15 sdword*>
	^self invalidCall!

get_SW_SHOWMINIMIZED: pVal
	"Private - Get the value of the 'SW_SHOWMINIMIZED' property of the receiver.

		HRESULT __stdcall SW_SHOWMINIMIZED(
			[out, retval]long* pVal);"

	<virtual stdcall: hresult 16 sdword*>
	^self invalidCall!

get_SW_SHOWMINNOACTIVE: pVal
	"Private - Get the value of the 'SW_SHOWMINNOACTIVE' property of the receiver.

		HRESULT __stdcall SW_SHOWMINNOACTIVE(
			[out, retval]long* pVal);"

	<virtual stdcall: hresult 17 sdword*>
	^self invalidCall!

get_SW_SHOWNA: pVal
	"Private - Get the value of the 'SW_SHOWNA' property of the receiver.

		HRESULT __stdcall SW_SHOWNA(
			[out, retval]long* pVal);"

	<virtual stdcall: hresult 18 sdword*>
	^self invalidCall!

get_SW_SHOWNOACTIVATE: pVal
	"Private - Get the value of the 'SW_SHOWNOACTIVATE' property of the receiver.

		HRESULT __stdcall SW_SHOWNOACTIVATE(
			[out, retval]long* pVal);"

	<virtual stdcall: hresult 19 sdword*>
	^self invalidCall!

get_SW_SHOWNORMAL: pVal
	"Private - Get the value of the 'SW_SHOWNORMAL' property of the receiver.

		HRESULT __stdcall SW_SHOWNORMAL(
			[out, retval]long* pVal);"

	<virtual stdcall: hresult 20 sdword*>
	^self invalidCall!

get_version: strRetVer
	"Private - Get the value of the 'version' property of the receiver.

		HRESULT __stdcall version(
			[out, retval]BSTR* strRetVer);"

	<virtual stdcall: hresult 107 bstr*>
	^self invalidCall!

init
	"Invoke the Init() method of the COM object.
	Helpstring: method Init"

	^self Init
!

Init
	"Private - Invoke the Init() method of the COM object.
	Helpstring: method Init

		HRESULT __stdcall Init();"

	<virtual stdcall: hresult 21>
	^self invalidCall!

isAdmin
	"Answer the <SDWORD> result of invoking the IsAdmin() method of the COM object.
	Helpstring: method IsAdmin"

	| answer |
	answer := (SDWORD new).
	self IsAdmin: answer.
	^answer asObject
!

IsAdmin: nRes
	"Private - Invoke the IsAdmin() method of the COM object.
	Helpstring: method IsAdmin

		HRESULT __stdcall IsAdmin(
			[out, retval]long* nRes);"

	<virtual stdcall: hresult 47 sdword*>
	^self invalidCall!

isExtensible
	"Answer whether the receiver may add methods at run-time."

	^false!

isVBCollection
	"Answer whether the receiver is a VB style collection."

	^false!

mouseClick
	"Answer the <SDWORD> result of invoking the MouseClick() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 mouseClick: 'LEFT'
		 nX: -2147483647
		 nY: -2147483647
		 nClicks: 1
		 nSpeed: -1!

mouseClick: strButton nX: nX nY: nY nClicks: nClicks nSpeed: nSpeed
	"Answer the <SDWORD> result of invoking the MouseClick() method of the COM object.
	Helpstring: method MouseClick"

	| answer |
	answer := (SDWORD new).
	self
		MouseClick: strButton
		nX: nX
		nY: nY
		nClicks: nClicks
		nSpeed: nSpeed
		nRes: answer.
	^answer asObject
!

MouseClick: strButton nX: nX nY: nY nClicks: nClicks nSpeed: nSpeed nRes: nRes
	"Private - Invoke the MouseClick() method of the COM object.
	Helpstring: method MouseClick

		HRESULT __stdcall MouseClick(
			[in, defaultvalue('LEFT')]BSTR strButton,
			[in, defaultvalue(-2147483647)]long nX,
			[in, defaultvalue(-2147483647)]long nY,
			[in, defaultvalue(1)]long nClicks,
			[in, defaultvalue(-1)]long nSpeed,
			[out, retval]long* nRes);"

	<virtual stdcall: hresult 48 bstr sdword sdword sdword sdword sdword*>
	^self invalidCall!

mouseClickDrag: strButton nX1: nX1 nY1: nY1 nX2: nX2 nY2: nY2
	"Answer the <SDWORD> result of invoking the MouseClickDrag() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 mouseClickDrag: strButton
		 nX1: nX1
		 nY1: nY1
		 nX2: nX2
		 nY2: nY2
		 nSpeed: -1!

mouseClickDrag: strButton nX1: nX1 nY1: nY1 nX2: nX2 nY2: nY2 nSpeed: nSpeed
	"Answer the <SDWORD> result of invoking the MouseClickDrag() method of the COM object.
	Helpstring: method MouseClickDrag"

	| answer |
	answer := (SDWORD new).
	self
		MouseClickDrag: strButton
		nX1: nX1
		nY1: nY1
		nX2: nX2
		nY2: nY2
		nSpeed: nSpeed
		nRes: answer.
	^answer asObject
!

MouseClickDrag: strButton nX1: nX1 nY1: nY1 nX2: nX2 nY2: nY2 nSpeed: nSpeed nRes: nRes
	"Private - Invoke the MouseClickDrag() method of the COM object.
	Helpstring: method MouseClickDrag

		HRESULT __stdcall MouseClickDrag(
			[in]BSTR strButton,
			[in]long nX1,
			[in]long nY1,
			[in]long nX2,
			[in]long nY2,
			[in, defaultvalue(-1)]long nSpeed,
			[out, retval]long* nRes);"

	<virtual stdcall: hresult 49 bstr sdword sdword sdword sdword sdword sdword*>
	^self invalidCall!

mouseDown
	"Invoke the MouseDown() method of the COM object.
	Default values are passed for all optional parameters."

	^self mouseDown: 'LEFT'!

mouseDown: strButton
	"Invoke the MouseDown() method of the COM object.
	Helpstring: method MouseDown"

	^self MouseDown: strButton
!

MouseDown: strButton
	"Private - Invoke the MouseDown() method of the COM object.
	Helpstring: method MouseDown

		HRESULT __stdcall MouseDown(
			[in, defaultvalue('LEFT')]BSTR strButton);"

	<virtual stdcall: hresult 50 bstr>
	^self invalidCall!

mouseGetCursor
	"Answer the <SDWORD> result of invoking the MouseGetCursor() method of the COM object.
	Helpstring: method MouseGetCursor"

	| answer |
	answer := (SDWORD new).
	self MouseGetCursor: answer.
	^answer asObject
!

MouseGetCursor: nRes
	"Private - Invoke the MouseGetCursor() method of the COM object.
	Helpstring: method MouseGetCursor

		HRESULT __stdcall MouseGetCursor(
			[out, retval]long* nRes);"

	<virtual stdcall: hresult 51 sdword*>
	^self invalidCall!

mouseGetPosX
	"Answer the <SDWORD> result of invoking the MouseGetPosX() method of the COM object.
	Helpstring: method MouseGetPosX"

	| answer |
	answer := (SDWORD new).
	self MouseGetPosX: answer.
	^answer asObject
!

MouseGetPosX: nRes
	"Private - Invoke the MouseGetPosX() method of the COM object.
	Helpstring: method MouseGetPosX

		HRESULT __stdcall MouseGetPosX(
			[out, retval]long* nRes);"

	<virtual stdcall: hresult 52 sdword*>
	^self invalidCall!

mouseGetPosY
	"Answer the <SDWORD> result of invoking the MouseGetPosY() method of the COM object.
	Helpstring: method MouseGetPosY"

	| answer |
	answer := (SDWORD new).
	self MouseGetPosY: answer.
	^answer asObject
!

MouseGetPosY: nRes
	"Private - Invoke the MouseGetPosY() method of the COM object.
	Helpstring: method MouseGetPosY

		HRESULT __stdcall MouseGetPosY(
			[out, retval]long* nRes);"

	<virtual stdcall: hresult 53 sdword*>
	^self invalidCall!

mouseMove: nX nY: nY
	"Answer the <SDWORD> result of invoking the MouseMove() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 mouseMove: nX
		 nY: nY
		 nSpeed: -1!

mouseMove: nX nY: nY nSpeed: nSpeed
	"Answer the <SDWORD> result of invoking the MouseMove() method of the COM object.
	Helpstring: method MouseMove"

	| answer |
	answer := (SDWORD new).
	self
		MouseMove: nX
		nY: nY
		nSpeed: nSpeed
		nRes: answer.
	^answer asObject
!

MouseMove: nX nY: nY nSpeed: nSpeed nRes: nRes
	"Private - Invoke the MouseMove() method of the COM object.
	Helpstring: method MouseMove

		HRESULT __stdcall MouseMove(
			[in]long nX,
			[in]long nY,
			[in, defaultvalue(-1)]long nSpeed,
			[out, retval]long* nRes);"

	<virtual stdcall: hresult 54 sdword sdword sdword sdword*>
	^self invalidCall!

mouseUp
	"Invoke the MouseUp() method of the COM object.
	Default values are passed for all optional parameters."

	^self mouseUp: 'LEFT'!

mouseUp: strButton
	"Invoke the MouseUp() method of the COM object.
	Helpstring: method MouseUp"

	^self MouseUp: strButton
!

MouseUp: strButton
	"Private - Invoke the MouseUp() method of the COM object.
	Helpstring: method MouseUp

		HRESULT __stdcall MouseUp(
			[in, defaultvalue('LEFT')]BSTR strButton);"

	<virtual stdcall: hresult 55 bstr>
	^self invalidCall!

mouseWheel: strDirection
	"Invoke the MouseWheel() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 mouseWheel: strDirection
		 nClicks: 1!

mouseWheel: strDirection nClicks: nClicks
	"Invoke the MouseWheel() method of the COM object.
	Helpstring: method MouseWheel"

	^self
		MouseWheel: strDirection
		nClicks: nClicks
!

MouseWheel: strDirection nClicks: nClicks
	"Private - Invoke the MouseWheel() method of the COM object.
	Helpstring: method MouseWheel

		HRESULT __stdcall MouseWheel(
			[in]BSTR strDirection,
			[in, defaultvalue(1)]long nClicks);"

	<virtual stdcall: hresult 56 bstr sdword>
	^self invalidCall!

opt: strOption nValue: nValue
	"Answer the <SDWORD> result of invoking the Opt() method of the COM object.
	Helpstring: method Opt"

	| answer |
	answer := (SDWORD new).
	self
		Opt: strOption
		nValue: nValue
		nRes: answer.
	^answer asObject
!

Opt: strOption nValue: nValue nRes: nRes
	"Private - Invoke the Opt() method of the COM object.
	Helpstring: method Opt

		HRESULT __stdcall Opt(
			[in]BSTR strOption,
			[in]long nValue,
			[out, retval]long* nRes);"

	<virtual stdcall: hresult 57 bstr sdword sdword*>
	^self invalidCall!

pixelChecksum: nLeft nTop: nTop nRight: nRight nBottom: nBottom
	"Answer the <DOUBLE> result of invoking the PixelChecksum() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 pixelChecksum: nLeft
		 nTop: nTop
		 nRight: nRight
		 nBottom: nBottom
		 nStep: 1!

pixelChecksum: nLeft nTop: nTop nRight: nRight nBottom: nBottom nStep: nStep
	"Answer the <DOUBLE> result of invoking the PixelChecksum() method of the COM object.
	Helpstring: method PixelChecksum"

	| answer |
	answer := (DOUBLE new).
	self
		PixelChecksum: nLeft
		nTop: nTop
		nRight: nRight
		nBottom: nBottom
		nStep: nStep
		nRes: answer.
	^answer asObject
!

PixelChecksum: nLeft nTop: nTop nRight: nRight nBottom: nBottom nStep: nStep nRes: nRes
	"Private - Invoke the PixelChecksum() method of the COM object.
	Helpstring: method PixelChecksum

		HRESULT __stdcall PixelChecksum(
			[in]long nLeft,
			[in]long nTop,
			[in]long nRight,
			[in]long nBottom,
			[in, defaultvalue(1)]long nStep,
			[out, retval]double* nRes);"

	<virtual stdcall: hresult 58 sdword sdword sdword sdword sdword double*>
	^self invalidCall!

pixelGetColor: nX nY: nY
	"Answer the <SDWORD> result of invoking the PixelGetColor() method of the COM object.
	Helpstring: method PixelGetColor"

	| answer |
	answer := (SDWORD new).
	self
		PixelGetColor: nX
		nY: nY
		nRes: answer.
	^answer asObject
!

PixelGetColor: nX nY: nY nRes: nRes
	"Private - Invoke the PixelGetColor() method of the COM object.
	Helpstring: method PixelGetColor

		HRESULT __stdcall PixelGetColor(
			[in]long nX,
			[in]long nY,
			[out, retval]long* nRes);"

	<virtual stdcall: hresult 59 sdword sdword sdword*>
	^self invalidCall!

pixelSearch: nLeft nTop: nTop nRight: nRight nBottom: nBottom nCol: nCol
	"Answer the <VARIANT> result of invoking the PixelSearch() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 pixelSearch: nLeft
		 nTop: nTop
		 nRight: nRight
		 nBottom: nBottom
		 nCol: nCol
		 nVar: 0
		 nStep: 1!

pixelSearch: nLeft nTop: nTop nRight: nRight nBottom: nBottom nCol: nCol nVar: nVar nStep: nStep
	"Answer the <VARIANT> result of invoking the PixelSearch() method of the COM object.
	Helpstring: method PixelSearch"

	| answer |
	answer := VARIANT new.
	self
		PixelSearch: nLeft
		nTop: nTop
		nRight: nRight
		nBottom: nBottom
		nCol: nCol
		nVar: nVar
		nStep: nStep
		vOutResult: answer.
	^answer asObject
!

PixelSearch: nLeft nTop: nTop nRight: nRight nBottom: nBottom nCol: nCol nVar: nVar nStep: nStep vOutResult: vOutResult
	"Private - Invoke the PixelSearch() method of the COM object.
	Helpstring: method PixelSearch

		HRESULT __stdcall PixelSearch(
			[in]long nLeft,
			[in]long nTop,
			[in]long nRight,
			[in]long nBottom,
			[in]long nCol,
			[in, defaultvalue(0)]long nVar,
			[in, defaultvalue(1)]long nStep,
			[out, retval]VARIANT* vOutResult);"

	<virtual stdcall: hresult 60 sdword sdword sdword sdword sdword sdword sdword variant*>
	^self invalidCall!

processClose: strProcess
	"Answer the <SDWORD> result of invoking the ProcessClose() method of the COM object.
	Helpstring: method ProcessClose"

	| answer |
	answer := (SDWORD new).
	self
		ProcessClose: strProcess
		nRes: answer.
	^answer asObject
!

ProcessClose: strProcess nRes: nRes
	"Private - Invoke the ProcessClose() method of the COM object.
	Helpstring: method ProcessClose

		HRESULT __stdcall ProcessClose(
			[in]BSTR strProcess,
			[out, retval]long* nRes);"

	<virtual stdcall: hresult 61 bstr sdword*>
	^self invalidCall!

processExists: strProcess
	"Answer the <SDWORD> result of invoking the ProcessExists() method of the COM object.
	Helpstring: method ProcessExists"

	| answer |
	answer := (SDWORD new).
	self
		ProcessExists: strProcess
		nRes: answer.
	^answer asObject
!

ProcessExists: strProcess nRes: nRes
	"Private - Invoke the ProcessExists() method of the COM object.
	Helpstring: method ProcessExists

		HRESULT __stdcall ProcessExists(
			[in]BSTR strProcess,
			[out, retval]long* nRes);"

	<virtual stdcall: hresult 62 bstr sdword*>
	^self invalidCall!

processSetPriority: strProcess nPriority: nPriority
	"Answer the <SDWORD> result of invoking the ProcessSetPriority() method of the COM object.
	Helpstring: method ProcessSetPriority"

	| answer |
	answer := (SDWORD new).
	self
		ProcessSetPriority: strProcess
		nPriority: nPriority
		nRes: answer.
	^answer asObject
!

ProcessSetPriority: strProcess nPriority: nPriority nRes: nRes
	"Private - Invoke the ProcessSetPriority() method of the COM object.
	Helpstring: method ProcessSetPriority

		HRESULT __stdcall ProcessSetPriority(
			[in]BSTR strProcess,
			[in]long nPriority,
			[out, retval]long* nRes);"

	<virtual stdcall: hresult 63 bstr sdword sdword*>
	^self invalidCall!

processWait: strProcess
	"Answer the <SDWORD> result of invoking the ProcessWait() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 processWait: strProcess
		 nTimeout: 0!

processWait: strProcess nTimeout: nTimeout
	"Answer the <SDWORD> result of invoking the ProcessWait() method of the COM object.
	Helpstring: method ProcessWait"

	| answer |
	answer := (SDWORD new).
	self
		ProcessWait: strProcess
		nTimeout: nTimeout
		nRes: answer.
	^answer asObject
!

ProcessWait: strProcess nTimeout: nTimeout nRes: nRes
	"Private - Invoke the ProcessWait() method of the COM object.
	Helpstring: method ProcessWait

		HRESULT __stdcall ProcessWait(
			[in]BSTR strProcess,
			[in, defaultvalue(0)]long nTimeout,
			[out, retval]long* nRes);"

	<virtual stdcall: hresult 64 bstr sdword sdword*>
	^self invalidCall!

processWaitClose: strProcess
	"Answer the <SDWORD> result of invoking the ProcessWaitClose() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 processWaitClose: strProcess
		 nTimeout: 0!

processWaitClose: strProcess nTimeout: nTimeout
	"Answer the <SDWORD> result of invoking the ProcessWaitClose() method of the COM object.
	Helpstring: method ProcessWaitClose"

	| answer |
	answer := (SDWORD new).
	self
		ProcessWaitClose: strProcess
		nTimeout: nTimeout
		nRes: answer.
	^answer asObject
!

ProcessWaitClose: strProcess nTimeout: nTimeout nRes: nRes
	"Private - Invoke the ProcessWaitClose() method of the COM object.
	Helpstring: method ProcessWaitClose

		HRESULT __stdcall ProcessWaitClose(
			[in]BSTR strProcess,
			[in, defaultvalue(0)]long nTimeout,
			[out, retval]long* nRes);"

	<virtual stdcall: hresult 65 bstr sdword sdword*>
	^self invalidCall!

run: strRun
	"Answer the <SDWORD> result of invoking the Run() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 run: strRun
		 strDir: ''
		 nShowFlag: 13!

run: strRun strDir: strDir nShowFlag: nShowFlag
	"Answer the <SDWORD> result of invoking the Run() method of the COM object.
	Helpstring: method Run"

	| answer |
	answer := (SDWORD new).
	self
		Run: strRun
		strDir: strDir
		nShowFlag: nShowFlag
		nRes: answer.
	^answer asObject
!

Run: strRun strDir: strDir nShowFlag: nShowFlag nRes: nRes
	"Private - Invoke the Run() method of the COM object.
	Helpstring: method Run

		HRESULT __stdcall Run(
			[in]BSTR strRun,
			[in, defaultvalue('')]BSTR strDir,
			[in, defaultvalue(13)]long nShowFlag,
			[out, retval]long* nRes);"

	<virtual stdcall: hresult 66 bstr bstr sdword sdword*>
	^self invalidCall!

runAs: strUser strDomain: strDomain strPassword: strPassword nLogonFlag: nLogonFlag strRun: strRun
	"Answer the <SDWORD> result of invoking the RunAs() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 runAs: strUser
		 strDomain: strDomain
		 strPassword: strPassword
		 nLogonFlag: nLogonFlag
		 strRun: strRun
		 strDir: ''
		 nShowFlag: 13!

runAs: strUser strDomain: strDomain strPassword: strPassword nLogonFlag: nLogonFlag strRun: strRun strDir: strDir nShowFlag: nShowFlag
	"Answer the <SDWORD> result of invoking the RunAs() method of the COM object.
	Helpstring: method RunAs"

	| answer |
	answer := (SDWORD new).
	self
		RunAs: strUser
		strDomain: strDomain
		strPassword: strPassword
		nLogonFlag: nLogonFlag
		strRun: strRun
		strDir: strDir
		nShowFlag: nShowFlag
		nRes: answer.
	^answer asObject
!

RunAs: strUser strDomain: strDomain strPassword: strPassword nLogonFlag: nLogonFlag strRun: strRun strDir: strDir nShowFlag: nShowFlag nRes: nRes
	"Private - Invoke the RunAs() method of the COM object.
	Helpstring: method RunAs

		HRESULT __stdcall RunAs(
			[in]BSTR strUser,
			[in]BSTR strDomain,
			[in]BSTR strPassword,
			[in]long nLogonFlag,
			[in]BSTR strRun,
			[in, defaultvalue('')]BSTR strDir,
			[in, defaultvalue(13)]long nShowFlag,
			[out, retval]long* nRes);"

	<virtual stdcall: hresult 67 bstr bstr bstr sdword bstr bstr sdword sdword*>
	^self invalidCall!

runAsWait: strUser strDomain: strDomain strPassword: strPassword nLogonFlag: nLogonFlag strRun: strRun
	"Answer the <SDWORD> result of invoking the RunAsWait() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 runAsWait: strUser
		 strDomain: strDomain
		 strPassword: strPassword
		 nLogonFlag: nLogonFlag
		 strRun: strRun
		 strDir: ''
		 nShowFlag: 13!

runAsWait: strUser strDomain: strDomain strPassword: strPassword nLogonFlag: nLogonFlag strRun: strRun strDir: strDir nShowFlag: nShowFlag
	"Answer the <SDWORD> result of invoking the RunAsWait() method of the COM object.
	Helpstring: method RunAsWait"

	| answer |
	answer := (SDWORD new).
	self
		RunAsWait: strUser
		strDomain: strDomain
		strPassword: strPassword
		nLogonFlag: nLogonFlag
		strRun: strRun
		strDir: strDir
		nShowFlag: nShowFlag
		nRes: answer.
	^answer asObject
!

RunAsWait: strUser strDomain: strDomain strPassword: strPassword nLogonFlag: nLogonFlag strRun: strRun strDir: strDir nShowFlag: nShowFlag nRes: nRes
	"Private - Invoke the RunAsWait() method of the COM object.
	Helpstring: method RunAsWait

		HRESULT __stdcall RunAsWait(
			[in]BSTR strUser,
			[in]BSTR strDomain,
			[in]BSTR strPassword,
			[in]long nLogonFlag,
			[in]BSTR strRun,
			[in, defaultvalue('')]BSTR strDir,
			[in, defaultvalue(13)]long nShowFlag,
			[out, retval]long* nRes);"

	<virtual stdcall: hresult 68 bstr bstr bstr sdword bstr bstr sdword sdword*>
	^self invalidCall!

runWait: strRun
	"Answer the <SDWORD> result of invoking the RunWait() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 runWait: strRun
		 strDir: ''
		 nShowFlag: 13!

runWait: strRun strDir: strDir nShowFlag: nShowFlag
	"Answer the <SDWORD> result of invoking the RunWait() method of the COM object.
	Helpstring: method RunWait"

	| answer |
	answer := (SDWORD new).
	self
		RunWait: strRun
		strDir: strDir
		nShowFlag: nShowFlag
		nRes: answer.
	^answer asObject
!

RunWait: strRun strDir: strDir nShowFlag: nShowFlag nRes: nRes
	"Private - Invoke the RunWait() method of the COM object.
	Helpstring: method RunWait

		HRESULT __stdcall RunWait(
			[in]BSTR strRun,
			[in, defaultvalue('')]BSTR strDir,
			[in, defaultvalue(13)]long nShowFlag,
			[out, retval]long* nRes);"

	<virtual stdcall: hresult 69 bstr bstr sdword sdword*>
	^self invalidCall!

send: strSendText
	"Invoke the Send() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 send: strSendText
		 nMode: 0!

send: strSendText nMode: nMode
	"Invoke the Send() method of the COM object.
	Helpstring: method Send"

	^self
		Send: strSendText
		nMode: nMode
!

Send: strSendText nMode: nMode
	"Private - Invoke the Send() method of the COM object.
	Helpstring: method Send

		HRESULT __stdcall Send(
			[in]BSTR strSendText,
			[in, defaultvalue(0)]long nMode);"

	<virtual stdcall: hresult 70 bstr sdword>
	^self invalidCall!

shutdown: nFlags
	"Answer the <SDWORD> result of invoking the Shutdown() method of the COM object.
	Helpstring: method Shutdown"

	| answer |
	answer := (SDWORD new).
	self
		Shutdown: nFlags
		nRes: answer.
	^answer asObject
!

Shutdown: nFlags nRes: nRes
	"Private - Invoke the Shutdown() method of the COM object.
	Helpstring: method Shutdown

		HRESULT __stdcall Shutdown(
			[in]long nFlags,
			[out, retval]long* nRes);"

	<virtual stdcall: hresult 71 sdword sdword*>
	^self invalidCall!

sleep: nMilliseconds
	"Invoke the Sleep() method of the COM object.
	Helpstring: method Sleep"

	^self Sleep: nMilliseconds
!

Sleep: nMilliseconds
	"Private - Invoke the Sleep() method of the COM object.
	Helpstring: method Sleep

		HRESULT __stdcall Sleep(
			[in]long nMilliseconds);"

	<virtual stdcall: hresult 72 sdword>
	^self invalidCall!

statusbarGetText: strTitle
	"Answer the <BSTR> result of invoking the StatusbarGetText() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 statusbarGetText: strTitle
		 strText: ''
		 nPart: 1!

statusbarGetText: strTitle strText: strText nPart: nPart
	"Answer the <BSTR> result of invoking the StatusbarGetText() method of the COM object.
	Helpstring: method StatusbarGetText"

	| answer |
	answer := BSTR new.
	self
		StatusbarGetText: strTitle
		strText: strText
		nPart: nPart
		strStatusText: answer.
	^answer asObject
!

StatusbarGetText: strTitle strText: strText nPart: nPart strStatusText: strStatusText
	"Private - Invoke the StatusbarGetText() method of the COM object.
	Helpstring: method StatusbarGetText

		HRESULT __stdcall StatusbarGetText(
			[in]BSTR strTitle,
			[in, defaultvalue('')]BSTR strText,
			[in, defaultvalue(1)]long nPart,
			[out, retval]BSTR* strStatusText);"

	<virtual stdcall: hresult 73 bstr bstr sdword bstr*>
	^self invalidCall!

sw_hide
	"Answer the <sdword> value of the 'SW_HIDE' property of the receiver.
	Helpstring: property SW_HIDE"

	| answer |
	answer := (SDWORD new).
	self get_SW_HIDE: answer.
	^answer asObject
!

sw_maximize
	"Answer the <sdword> value of the 'SW_MAXIMIZE' property of the receiver.
	Helpstring: property SW_MAXIMIZE"

	| answer |
	answer := (SDWORD new).
	self get_SW_MAXIMIZE: answer.
	^answer asObject
!

sw_minimize
	"Answer the <sdword> value of the 'SW_MINIMIZE' property of the receiver.
	Helpstring: property SW_MINIMIZE"

	| answer |
	answer := (SDWORD new).
	self get_SW_MINIMIZE: answer.
	^answer asObject
!

sw_restore
	"Answer the <sdword> value of the 'SW_RESTORE' property of the receiver.
	Helpstring: property SW_RESTORE"

	| answer |
	answer := (SDWORD new).
	self get_SW_RESTORE: answer.
	^answer asObject
!

sw_show
	"Answer the <sdword> value of the 'SW_SHOW' property of the receiver.
	Helpstring: property SW_SHOW"

	| answer |
	answer := (SDWORD new).
	self get_SW_SHOW: answer.
	^answer asObject
!

sw_showdefault
	"Answer the <sdword> value of the 'SW_SHOWDEFAULT' property of the receiver.
	Helpstring: property SW_SHOWDEFAULT"

	| answer |
	answer := (SDWORD new).
	self get_SW_SHOWDEFAULT: answer.
	^answer asObject
!

sw_showmaximized
	"Answer the <sdword> value of the 'SW_SHOWMAXIMIZED' property of the receiver.
	Helpstring: property SW_SHOWMAXIMIZED"

	| answer |
	answer := (SDWORD new).
	self get_SW_SHOWMAXIMIZED: answer.
	^answer asObject
!

sw_showminimized
	"Answer the <sdword> value of the 'SW_SHOWMINIMIZED' property of the receiver.
	Helpstring: property SW_SHOWMINIMIZED"

	| answer |
	answer := (SDWORD new).
	self get_SW_SHOWMINIMIZED: answer.
	^answer asObject
!

sw_showminnoactive
	"Answer the <sdword> value of the 'SW_SHOWMINNOACTIVE' property of the receiver.
	Helpstring: property SW_SHOWMINNOACTIVE"

	| answer |
	answer := (SDWORD new).
	self get_SW_SHOWMINNOACTIVE: answer.
	^answer asObject
!

sw_showna
	"Answer the <sdword> value of the 'SW_SHOWNA' property of the receiver.
	Helpstring: property SW_SHOWNA"

	| answer |
	answer := (SDWORD new).
	self get_SW_SHOWNA: answer.
	^answer asObject
!

sw_shownoactivate
	"Answer the <sdword> value of the 'SW_SHOWNOACTIVATE' property of the receiver.
	Helpstring: property SW_SHOWNOACTIVATE"

	| answer |
	answer := (SDWORD new).
	self get_SW_SHOWNOACTIVATE: answer.
	^answer asObject
!

sw_shownormal
	"Answer the <sdword> value of the 'SW_SHOWNORMAL' property of the receiver.
	Helpstring: property SW_SHOWNORMAL"

	| answer |
	answer := (SDWORD new).
	self get_SW_SHOWNORMAL: answer.
	^answer asObject
!

toolTip: strTip
	"Invoke the ToolTip() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 toolTip: strTip
		 nX: -2147483647
		 nY: -2147483647!

toolTip: strTip nX: nX nY: nY
	"Invoke the ToolTip() method of the COM object.
	Helpstring: method ToolTip"

	^self
		ToolTip: strTip
		nX: nX
		nY: nY
!

ToolTip: strTip nX: nX nY: nY
	"Private - Invoke the ToolTip() method of the COM object.
	Helpstring: method ToolTip

		HRESULT __stdcall ToolTip(
			[in]BSTR strTip,
			[in, defaultvalue(-2147483647)]long nX,
			[in, defaultvalue(-2147483647)]long nY);"

	<virtual stdcall: hresult 74 bstr sdword sdword>
	^self invalidCall!

version
	"Answer the <bstr> value of the 'version' property of the receiver.
	Helpstring: property version"

	| answer |
	answer := BSTR new.
	self get_version: answer.
	^answer asObject
!

winActivate: strTitle
	"Invoke the WinActivate() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 winActivate: strTitle
		 strText: ''!

winActivate: strTitle strText: strText
	"Invoke the WinActivate() method of the COM object.
	Helpstring: method WinActivate"

	^self
		WinActivate: strTitle
		strText: strText
!

WinActivate: strTitle strText: strText
	"Private - Invoke the WinActivate() method of the COM object.
	Helpstring: method WinActivate

		HRESULT __stdcall WinActivate(
			[in]BSTR strTitle,
			[in, defaultvalue('')]BSTR strText);"

	<virtual stdcall: hresult 75 bstr bstr>
	^self invalidCall!

winActive: strTitle
	"Answer the <SDWORD> result of invoking the WinActive() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 winActive: strTitle
		 strText: ''!

winActive: strTitle strText: strText
	"Answer the <SDWORD> result of invoking the WinActive() method of the COM object.
	Helpstring: method WinActive"

	| answer |
	answer := (SDWORD new).
	self
		WinActive: strTitle
		strText: strText
		nRes: answer.
	^answer asObject
!

WinActive: strTitle strText: strText nRes: nRes
	"Private - Invoke the WinActive() method of the COM object.
	Helpstring: method WinActive

		HRESULT __stdcall WinActive(
			[in]BSTR strTitle,
			[in, defaultvalue('')]BSTR strText,
			[out, retval]long* nRes);"

	<virtual stdcall: hresult 76 bstr bstr sdword*>
	^self invalidCall!

winClose: strTitle
	"Answer the <SDWORD> result of invoking the WinClose() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 winClose: strTitle
		 strText: ''!

winClose: strTitle strText: strText
	"Answer the <SDWORD> result of invoking the WinClose() method of the COM object.
	Helpstring: method WinClose"

	| answer |
	answer := (SDWORD new).
	self
		WinClose: strTitle
		strText: strText
		nRes: answer.
	^answer asObject
!

WinClose: strTitle strText: strText nRes: nRes
	"Private - Invoke the WinClose() method of the COM object.
	Helpstring: method WinClose

		HRESULT __stdcall WinClose(
			[in]BSTR strTitle,
			[in, defaultvalue('')]BSTR strText,
			[out, retval]long* nRes);"

	<virtual stdcall: hresult 77 bstr bstr sdword*>
	^self invalidCall!

winExists: strTitle
	"Answer the <SDWORD> result of invoking the WinExists() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 winExists: strTitle
		 strText: ''!

winExists: strTitle strText: strText
	"Answer the <SDWORD> result of invoking the WinExists() method of the COM object.
	Helpstring: method WinExists"

	| answer |
	answer := (SDWORD new).
	self
		WinExists: strTitle
		strText: strText
		nRes: answer.
	^answer asObject
!

WinExists: strTitle strText: strText nRes: nRes
	"Private - Invoke the WinExists() method of the COM object.
	Helpstring: method WinExists

		HRESULT __stdcall WinExists(
			[in]BSTR strTitle,
			[in, defaultvalue('')]BSTR strText,
			[out, retval]long* nRes);"

	<virtual stdcall: hresult 78 bstr bstr sdword*>
	^self invalidCall!

winGetCaretPosX
	"Answer the <SDWORD> result of invoking the WinGetCaretPosX() method of the COM object.
	Helpstring: method WinGetCaretPosX"

	| answer |
	answer := (SDWORD new).
	self WinGetCaretPosX: answer.
	^answer asObject
!

WinGetCaretPosX: nRes
	"Private - Invoke the WinGetCaretPosX() method of the COM object.
	Helpstring: method WinGetCaretPosX

		HRESULT __stdcall WinGetCaretPosX(
			[out, retval]long* nRes);"

	<virtual stdcall: hresult 79 sdword*>
	^self invalidCall!

winGetCaretPosY
	"Answer the <SDWORD> result of invoking the WinGetCaretPosY() method of the COM object.
	Helpstring: method WinGetCaretPosY"

	| answer |
	answer := (SDWORD new).
	self WinGetCaretPosY: answer.
	^answer asObject
!

WinGetCaretPosY: nRes
	"Private - Invoke the WinGetCaretPosY() method of the COM object.
	Helpstring: method WinGetCaretPosY

		HRESULT __stdcall WinGetCaretPosY(
			[out, retval]long* nRes);"

	<virtual stdcall: hresult 80 sdword*>
	^self invalidCall!

winGetClassList: strTitle
	"Answer the <BSTR> result of invoking the WinGetClassList() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 winGetClassList: strTitle
		 strText: ''!

winGetClassList: strTitle strText: strText
	"Answer the <BSTR> result of invoking the WinGetClassList() method of the COM object.
	Helpstring: method WinGetClassList"

	| answer |
	answer := BSTR new.
	self
		WinGetClassList: strTitle
		strText: strText
		strRetText: answer.
	^answer asObject
!

WinGetClassList: strTitle strText: strText strRetText: strRetText
	"Private - Invoke the WinGetClassList() method of the COM object.
	Helpstring: method WinGetClassList

		HRESULT __stdcall WinGetClassList(
			[in]BSTR strTitle,
			[in, defaultvalue('')]BSTR strText,
			[out, retval]BSTR* strRetText);"

	<virtual stdcall: hresult 81 bstr bstr bstr*>
	^self invalidCall!

winGetClientSizeHeight: strTitle
	"Answer the <SDWORD> result of invoking the WinGetClientSizeHeight() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 winGetClientSizeHeight: strTitle
		 strText: ''!

winGetClientSizeHeight: strTitle strText: strText
	"Answer the <SDWORD> result of invoking the WinGetClientSizeHeight() method of the COM object.
	Helpstring: method WinGetClientSizeHeight"

	| answer |
	answer := (SDWORD new).
	self
		WinGetClientSizeHeight: strTitle
		strText: strText
		nRes: answer.
	^answer asObject
!

WinGetClientSizeHeight: strTitle strText: strText nRes: nRes
	"Private - Invoke the WinGetClientSizeHeight() method of the COM object.
	Helpstring: method WinGetClientSizeHeight

		HRESULT __stdcall WinGetClientSizeHeight(
			[in]BSTR strTitle,
			[in, defaultvalue('')]BSTR strText,
			[out, retval]long* nRes);"

	<virtual stdcall: hresult 82 bstr bstr sdword*>
	^self invalidCall!

winGetClientSizeWidth: strTitle
	"Answer the <SDWORD> result of invoking the WinGetClientSizeWidth() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 winGetClientSizeWidth: strTitle
		 strText: ''!

winGetClientSizeWidth: strTitle strText: strText
	"Answer the <SDWORD> result of invoking the WinGetClientSizeWidth() method of the COM object.
	Helpstring: method WinGetClientSizeWidth"

	| answer |
	answer := (SDWORD new).
	self
		WinGetClientSizeWidth: strTitle
		strText: strText
		nRes: answer.
	^answer asObject
!

WinGetClientSizeWidth: strTitle strText: strText nRes: nRes
	"Private - Invoke the WinGetClientSizeWidth() method of the COM object.
	Helpstring: method WinGetClientSizeWidth

		HRESULT __stdcall WinGetClientSizeWidth(
			[in]BSTR strTitle,
			[in, defaultvalue('')]BSTR strText,
			[out, retval]long* nRes);"

	<virtual stdcall: hresult 83 bstr bstr sdword*>
	^self invalidCall!

winGetHandle: strTitle
	"Answer the <BSTR> result of invoking the WinGetHandle() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 winGetHandle: strTitle
		 strText: ''!

winGetHandle: strTitle strText: strText
	"Answer the <BSTR> result of invoking the WinGetHandle() method of the COM object.
	Helpstring: method WinGetHandle"

	| answer |
	answer := BSTR new.
	self
		WinGetHandle: strTitle
		strText: strText
		strRetText: answer.
	^answer asObject
!

WinGetHandle: strTitle strText: strText strRetText: strRetText
	"Private - Invoke the WinGetHandle() method of the COM object.
	Helpstring: method WinGetHandle

		HRESULT __stdcall WinGetHandle(
			[in]BSTR strTitle,
			[in, defaultvalue('')]BSTR strText,
			[out, retval]BSTR* strRetText);"

	<virtual stdcall: hresult 84 bstr bstr bstr*>
	^self invalidCall!

winGetPosHeight: strTitle
	"Answer the <SDWORD> result of invoking the WinGetPosHeight() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 winGetPosHeight: strTitle
		 strText: ''!

winGetPosHeight: strTitle strText: strText
	"Answer the <SDWORD> result of invoking the WinGetPosHeight() method of the COM object.
	Helpstring: method WinGetPosHeight"

	| answer |
	answer := (SDWORD new).
	self
		WinGetPosHeight: strTitle
		strText: strText
		nRes: answer.
	^answer asObject
!

WinGetPosHeight: strTitle strText: strText nRes: nRes
	"Private - Invoke the WinGetPosHeight() method of the COM object.
	Helpstring: method WinGetPosHeight

		HRESULT __stdcall WinGetPosHeight(
			[in]BSTR strTitle,
			[in, defaultvalue('')]BSTR strText,
			[out, retval]long* nRes);"

	<virtual stdcall: hresult 87 bstr bstr sdword*>
	^self invalidCall!

winGetPosWidth: strTitle
	"Answer the <SDWORD> result of invoking the WinGetPosWidth() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 winGetPosWidth: strTitle
		 strText: ''!

winGetPosWidth: strTitle strText: strText
	"Answer the <SDWORD> result of invoking the WinGetPosWidth() method of the COM object.
	Helpstring: method WinGetPosWidth"

	| answer |
	answer := (SDWORD new).
	self
		WinGetPosWidth: strTitle
		strText: strText
		nRes: answer.
	^answer asObject
!

WinGetPosWidth: strTitle strText: strText nRes: nRes
	"Private - Invoke the WinGetPosWidth() method of the COM object.
	Helpstring: method WinGetPosWidth

		HRESULT __stdcall WinGetPosWidth(
			[in]BSTR strTitle,
			[in, defaultvalue('')]BSTR strText,
			[out, retval]long* nRes);"

	<virtual stdcall: hresult 88 bstr bstr sdword*>
	^self invalidCall!

winGetPosX: strTitle
	"Answer the <SDWORD> result of invoking the WinGetPosX() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 winGetPosX: strTitle
		 strText: ''!

winGetPosX: strTitle strText: strText
	"Answer the <SDWORD> result of invoking the WinGetPosX() method of the COM object.
	Helpstring: method WinGetPosX"

	| answer |
	answer := (SDWORD new).
	self
		WinGetPosX: strTitle
		strText: strText
		nRes: answer.
	^answer asObject
!

WinGetPosX: strTitle strText: strText nRes: nRes
	"Private - Invoke the WinGetPosX() method of the COM object.
	Helpstring: method WinGetPosX

		HRESULT __stdcall WinGetPosX(
			[in]BSTR strTitle,
			[in, defaultvalue('')]BSTR strText,
			[out, retval]long* nRes);"

	<virtual stdcall: hresult 85 bstr bstr sdword*>
	^self invalidCall!

winGetPosY: strTitle
	"Answer the <SDWORD> result of invoking the WinGetPosY() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 winGetPosY: strTitle
		 strText: ''!

winGetPosY: strTitle strText: strText
	"Answer the <SDWORD> result of invoking the WinGetPosY() method of the COM object.
	Helpstring: method WinGetPosY"

	| answer |
	answer := (SDWORD new).
	self
		WinGetPosY: strTitle
		strText: strText
		nRes: answer.
	^answer asObject
!

WinGetPosY: strTitle strText: strText nRes: nRes
	"Private - Invoke the WinGetPosY() method of the COM object.
	Helpstring: method WinGetPosY

		HRESULT __stdcall WinGetPosY(
			[in]BSTR strTitle,
			[in, defaultvalue('')]BSTR strText,
			[out, retval]long* nRes);"

	<virtual stdcall: hresult 86 bstr bstr sdword*>
	^self invalidCall!

winGetProcess: strTitle
	"Answer the <BSTR> result of invoking the WinGetProcess() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 winGetProcess: strTitle
		 strText: ''!

winGetProcess: strTitle strText: strText
	"Answer the <BSTR> result of invoking the WinGetProcess() method of the COM object.
	Helpstring: method WinGetProcess"

	| answer |
	answer := BSTR new.
	self
		WinGetProcess: strTitle
		strText: strText
		strResult: answer.
	^answer asObject
!

WinGetProcess: strTitle strText: strText strResult: strResult
	"Private - Invoke the WinGetProcess() method of the COM object.
	Helpstring: method WinGetProcess

		HRESULT __stdcall WinGetProcess(
			[in]BSTR strTitle,
			[in, defaultvalue('')]BSTR strText,
			[out, retval]BSTR* strResult);"

	<virtual stdcall: hresult 89 bstr bstr bstr*>
	^self invalidCall!

winGetState: strTitle
	"Answer the <SDWORD> result of invoking the WinGetState() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 winGetState: strTitle
		 strText: ''!

winGetState: strTitle strText: strText
	"Answer the <SDWORD> result of invoking the WinGetState() method of the COM object.
	Helpstring: method WinGetState"

	| answer |
	answer := (SDWORD new).
	self
		WinGetState: strTitle
		strText: strText
		nRes: answer.
	^answer asObject
!

WinGetState: strTitle strText: strText nRes: nRes
	"Private - Invoke the WinGetState() method of the COM object.
	Helpstring: method WinGetState

		HRESULT __stdcall WinGetState(
			[in]BSTR strTitle,
			[in, defaultvalue('')]BSTR strText,
			[out, retval]long* nRes);"

	<virtual stdcall: hresult 90 bstr bstr sdword*>
	^self invalidCall!

winGetText: strTitle
	"Answer the <BSTR> result of invoking the WinGetText() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 winGetText: strTitle
		 strText: ''!

winGetText: strTitle strText: strText
	"Answer the <BSTR> result of invoking the WinGetText() method of the COM object.
	Helpstring: method WinGetText"

	| answer |
	answer := BSTR new.
	self
		WinGetText: strTitle
		strText: strText
		strRetText: answer.
	^answer asObject
!

WinGetText: strTitle strText: strText strRetText: strRetText
	"Private - Invoke the WinGetText() method of the COM object.
	Helpstring: method WinGetText

		HRESULT __stdcall WinGetText(
			[in]BSTR strTitle,
			[in, defaultvalue('')]BSTR strText,
			[out, retval]BSTR* strRetText);"

	<virtual stdcall: hresult 91 bstr bstr bstr*>
	^self invalidCall!

winGetTitle: strTitle
	"Answer the <BSTR> result of invoking the WinGetTitle() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 winGetTitle: strTitle
		 strText: ''!

winGetTitle: strTitle strText: strText
	"Answer the <BSTR> result of invoking the WinGetTitle() method of the COM object.
	Helpstring: method WinGetTitle"

	| answer |
	answer := BSTR new.
	self
		WinGetTitle: strTitle
		strText: strText
		strRetText: answer.
	^answer asObject
!

WinGetTitle: strTitle strText: strText strRetText: strRetText
	"Private - Invoke the WinGetTitle() method of the COM object.
	Helpstring: method WinGetTitle

		HRESULT __stdcall WinGetTitle(
			[in]BSTR strTitle,
			[in, defaultvalue('')]BSTR strText,
			[out, retval]BSTR* strRetText);"

	<virtual stdcall: hresult 92 bstr bstr bstr*>
	^self invalidCall!

winKill: strTitle
	"Answer the <SDWORD> result of invoking the WinKill() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 winKill: strTitle
		 strText: ''!

winKill: strTitle strText: strText
	"Answer the <SDWORD> result of invoking the WinKill() method of the COM object.
	Helpstring: method WinKill"

	| answer |
	answer := (SDWORD new).
	self
		WinKill: strTitle
		strText: strText
		nRes: answer.
	^answer asObject
!

WinKill: strTitle strText: strText nRes: nRes
	"Private - Invoke the WinKill() method of the COM object.
	Helpstring: method WinKill

		HRESULT __stdcall WinKill(
			[in]BSTR strTitle,
			[in, defaultvalue('')]BSTR strText,
			[out, retval]long* nRes);"

	<virtual stdcall: hresult 93 bstr bstr sdword*>
	^self invalidCall!

winList: strTitle
	"Answer the <VARIANT> result of invoking the WinList() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 winList: strTitle
		 strText: ''!

winList: strTitle strText: strText
	"Answer the <VARIANT> result of invoking the WinList() method of the COM object.
	Helpstring: method WinList"

	| answer |
	answer := VARIANT new.
	self
		WinList: strTitle
		strText: strText
		vOutResult: answer.
	^answer asObject
!

WinList: strTitle strText: strText vOutResult: vOutResult
	"Private - Invoke the WinList() method of the COM object.
	Helpstring: method WinList

		HRESULT __stdcall WinList(
			[in]BSTR strTitle,
			[in, defaultvalue('')]BSTR strText,
			[out, retval]VARIANT* vOutResult);"

	<virtual stdcall: hresult 94 bstr bstr variant*>
	^self invalidCall!

winMenuSelectItem: strTitle strText: strText strItem1: strItem1
	"Answer the <SDWORD> result of invoking the WinMenuSelectItem() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 winMenuSelectItem: strTitle
		 strText: strText
		 strItem1: strItem1
		 strItem2: ''
		 strItem3: ''
		 strItem4: ''
		 strItem5: ''
		 strItem6: ''
		 strItem7: ''
		 strItem8: ''!

winMenuSelectItem: strTitle strText: strText strItem1: strItem1 strItem2: strItem2 strItem3: strItem3 strItem4: strItem4 strItem5: strItem5 strItem6: strItem6 strItem7: strItem7 strItem8: strItem8
	"Answer the <SDWORD> result of invoking the WinMenuSelectItem() method of the COM object.
	Helpstring: method WinMenuSelectItem"

	| answer |
	answer := (SDWORD new).
	self
		WinMenuSelectItem: strTitle
		strText: strText
		strItem1: strItem1
		strItem2: strItem2
		strItem3: strItem3
		strItem4: strItem4
		strItem5: strItem5
		strItem6: strItem6
		strItem7: strItem7
		strItem8: strItem8
		nRes: answer.
	^answer asObject
!

WinMenuSelectItem: strTitle strText: strText strItem1: strItem1 strItem2: strItem2 strItem3: strItem3 strItem4: strItem4 strItem5: strItem5 strItem6: strItem6 strItem7: strItem7 strItem8: strItem8 nRes: nRes
	"Private - Invoke the WinMenuSelectItem() method of the COM object.
	Helpstring: method WinMenuSelectItem

		HRESULT __stdcall WinMenuSelectItem(
			[in]BSTR strTitle,
			[in]BSTR strText,
			[in]BSTR strItem1,
			[in, defaultvalue('')]BSTR strItem2,
			[in, defaultvalue('')]BSTR strItem3,
			[in, defaultvalue('')]BSTR strItem4,
			[in, defaultvalue('')]BSTR strItem5,
			[in, defaultvalue('')]BSTR strItem6,
			[in, defaultvalue('')]BSTR strItem7,
			[in, defaultvalue('')]BSTR strItem8,
			[out, retval]long* nRes);"

	<virtual stdcall: hresult 95 bstr bstr bstr bstr bstr bstr bstr bstr bstr bstr sdword*>
	^self invalidCall!

winMinimizeAll
	"Invoke the WinMinimizeAll() method of the COM object.
	Helpstring: method WinMinimizeAll"

	^self WinMinimizeAll
!

WinMinimizeAll
	"Private - Invoke the WinMinimizeAll() method of the COM object.
	Helpstring: method WinMinimizeAll

		HRESULT __stdcall WinMinimizeAll();"

	<virtual stdcall: hresult 96>
	^self invalidCall!

winMinimizeAllUndo
	"Invoke the WinMinimizeAllUndo() method of the COM object.
	Helpstring: method WinMinimizeAllUndo"

	^self WinMinimizeAllUndo
!

WinMinimizeAllUndo
	"Private - Invoke the WinMinimizeAllUndo() method of the COM object.
	Helpstring: method WinMinimizeAllUndo

		HRESULT __stdcall WinMinimizeAllUndo();"

	<virtual stdcall: hresult 97>
	^self invalidCall!

winMove: strTitle strText: strText nX: nX nY: nY
	"Answer the <SDWORD> result of invoking the WinMove() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 winMove: strTitle
		 strText: strText
		 nX: nX
		 nY: nY
		 nWidth: -1
		 nHeight: -1!

winMove: strTitle strText: strText nX: nX nY: nY nWidth: nWidth nHeight: nHeight
	"Answer the <SDWORD> result of invoking the WinMove() method of the COM object.
	Helpstring: method WinMove"

	| answer |
	answer := (SDWORD new).
	self
		WinMove: strTitle
		strText: strText
		nX: nX
		nY: nY
		nWidth: nWidth
		nHeight: nHeight
		nRes: answer.
	^answer asObject
!

WinMove: strTitle strText: strText nX: nX nY: nY nWidth: nWidth nHeight: nHeight nRes: nRes
	"Private - Invoke the WinMove() method of the COM object.
	Helpstring: method WinMove

		HRESULT __stdcall WinMove(
			[in]BSTR strTitle,
			[in]BSTR strText,
			[in]long nX,
			[in]long nY,
			[in, defaultvalue(-1)]long nWidth,
			[in, defaultvalue(-1)]long nHeight,
			[out, retval]long* nRes);"

	<virtual stdcall: hresult 98 bstr bstr sdword sdword sdword sdword sdword*>
	^self invalidCall!

winSetOnTop: strTitle strText: strText nFlag: nFlag
	"Answer the <SDWORD> result of invoking the WinSetOnTop() method of the COM object.
	Helpstring: method WinSetOnTop"

	| answer |
	answer := (SDWORD new).
	self
		WinSetOnTop: strTitle
		strText: strText
		nFlag: nFlag
		nRes: answer.
	^answer asObject
!

WinSetOnTop: strTitle strText: strText nFlag: nFlag nRes: nRes
	"Private - Invoke the WinSetOnTop() method of the COM object.
	Helpstring: method WinSetOnTop

		HRESULT __stdcall WinSetOnTop(
			[in]BSTR strTitle,
			[in]BSTR strText,
			[in]long nFlag,
			[out, retval]long* nRes);"

	<virtual stdcall: hresult 99 bstr bstr sdword sdword*>
	^self invalidCall!

winSetState: strTitle strText: strText nFlags: nFlags
	"Answer the <SDWORD> result of invoking the WinSetState() method of the COM object.
	Helpstring: method WinSetState"

	| answer |
	answer := (SDWORD new).
	self
		WinSetState: strTitle
		strText: strText
		nFlags: nFlags
		nRes: answer.
	^answer asObject
!

WinSetState: strTitle strText: strText nFlags: nFlags nRes: nRes
	"Private - Invoke the WinSetState() method of the COM object.
	Helpstring: method WinSetState

		HRESULT __stdcall WinSetState(
			[in]BSTR strTitle,
			[in]BSTR strText,
			[in]long nFlags,
			[out, retval]long* nRes);"

	<virtual stdcall: hresult 100 bstr bstr sdword sdword*>
	^self invalidCall!

winSetTitle: strTitle strText: strText strNewTitle: strNewTitle
	"Answer the <SDWORD> result of invoking the WinSetTitle() method of the COM object.
	Helpstring: method WinSetTitle"

	| answer |
	answer := (SDWORD new).
	self
		WinSetTitle: strTitle
		strText: strText
		strNewTitle: strNewTitle
		nRes: answer.
	^answer asObject
!

WinSetTitle: strTitle strText: strText strNewTitle: strNewTitle nRes: nRes
	"Private - Invoke the WinSetTitle() method of the COM object.
	Helpstring: method WinSetTitle

		HRESULT __stdcall WinSetTitle(
			[in]BSTR strTitle,
			[in]BSTR strText,
			[in]BSTR strNewTitle,
			[out, retval]long* nRes);"

	<virtual stdcall: hresult 101 bstr bstr bstr sdword*>
	^self invalidCall!

winSetTrans: strTitle strText: strText nTrans: nTrans
	"Answer the <SDWORD> result of invoking the WinSetTrans() method of the COM object.
	Helpstring: method WinSetTrans"

	| answer |
	answer := (SDWORD new).
	self
		WinSetTrans: strTitle
		strText: strText
		nTrans: nTrans
		nRes: answer.
	^answer asObject
!

WinSetTrans: strTitle strText: strText nTrans: nTrans nRes: nRes
	"Private - Invoke the WinSetTrans() method of the COM object.
	Helpstring: method WinSetTrans

		HRESULT __stdcall WinSetTrans(
			[in]BSTR strTitle,
			[in]BSTR strText,
			[in]long nTrans,
			[out, retval]long* nRes);"

	<virtual stdcall: hresult 102 bstr bstr sdword sdword*>
	^self invalidCall!

winWait: strTitle
	"Answer the <SDWORD> result of invoking the WinWait() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 winWait: strTitle
		 strText: ''
		 nTimeout: 0!

winWait: strTitle strText: strText nTimeout: nTimeout
	"Answer the <SDWORD> result of invoking the WinWait() method of the COM object.
	Helpstring: method WinWait"

	| answer |
	answer := (SDWORD new).
	self
		WinWait: strTitle
		strText: strText
		nTimeout: nTimeout
		nRes: answer.
	^answer asObject
!

WinWait: strTitle strText: strText nTimeout: nTimeout nRes: nRes
	"Private - Invoke the WinWait() method of the COM object.
	Helpstring: method WinWait

		HRESULT __stdcall WinWait(
			[in]BSTR strTitle,
			[in, defaultvalue('')]BSTR strText,
			[in, defaultvalue(0)]long nTimeout,
			[out, retval]long* nRes);"

	<virtual stdcall: hresult 103 bstr bstr sdword sdword*>
	^self invalidCall!

winWaitActive: strTitle
	"Answer the <SDWORD> result of invoking the WinWaitActive() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 winWaitActive: strTitle
		 strText: ''
		 nTimeout: 0!

winWaitActive: strTitle strText: strText nTimeout: nTimeout
	"Answer the <SDWORD> result of invoking the WinWaitActive() method of the COM object.
	Helpstring: method WinWaitActive"

	| answer |
	answer := (SDWORD new).
	self
		WinWaitActive: strTitle
		strText: strText
		nTimeout: nTimeout
		nRes: answer.
	^answer asObject
!

WinWaitActive: strTitle strText: strText nTimeout: nTimeout nRes: nRes
	"Private - Invoke the WinWaitActive() method of the COM object.
	Helpstring: method WinWaitActive

		HRESULT __stdcall WinWaitActive(
			[in]BSTR strTitle,
			[in, defaultvalue('')]BSTR strText,
			[in, defaultvalue(0)]long nTimeout,
			[out, retval]long* nRes);"

	<virtual stdcall: hresult 104 bstr bstr sdword sdword*>
	^self invalidCall!

winWaitClose: strTitle
	"Answer the <SDWORD> result of invoking the WinWaitClose() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 winWaitClose: strTitle
		 strText: ''
		 nTimeout: 0!

winWaitClose: strTitle strText: strText nTimeout: nTimeout
	"Answer the <SDWORD> result of invoking the WinWaitClose() method of the COM object.
	Helpstring: method WinWaitClose"

	| answer |
	answer := (SDWORD new).
	self
		WinWaitClose: strTitle
		strText: strText
		nTimeout: nTimeout
		nRes: answer.
	^answer asObject
!

WinWaitClose: strTitle strText: strText nTimeout: nTimeout nRes: nRes
	"Private - Invoke the WinWaitClose() method of the COM object.
	Helpstring: method WinWaitClose

		HRESULT __stdcall WinWaitClose(
			[in]BSTR strTitle,
			[in, defaultvalue('')]BSTR strText,
			[in, defaultvalue(0)]long nTimeout,
			[out, retval]long* nRes);"

	<virtual stdcall: hresult 105 bstr bstr sdword sdword*>
	^self invalidCall!

winWaitNotActive: strTitle
	"Answer the <SDWORD> result of invoking the WinWaitNotActive() method of the COM object.
	Default values are passed for all optional parameters."

	^self
		 winWaitNotActive: strTitle
		 strText: ''
		 nTimeout: 0!

winWaitNotActive: strTitle strText: strText nTimeout: nTimeout
	"Answer the <SDWORD> result of invoking the WinWaitNotActive() method of the COM object.
	Helpstring: method WinWaitNotActive"

	| answer |
	answer := (SDWORD new).
	self
		WinWaitNotActive: strTitle
		strText: strText
		nTimeout: nTimeout
		nRes: answer.
	^answer asObject
!

WinWaitNotActive: strTitle strText: strText nTimeout: nTimeout nRes: nRes
	"Private - Invoke the WinWaitNotActive() method of the COM object.
	Helpstring: method WinWaitNotActive

		HRESULT __stdcall WinWaitNotActive(
			[in]BSTR strTitle,
			[in, defaultvalue('')]BSTR strText,
			[in, defaultvalue(0)]long nTimeout,
			[out, retval]long* nRes);"

	<virtual stdcall: hresult 106 bstr bstr sdword sdword*>
	^self invalidCall! !
!IAutoItX3 categoriesFor: #autoItSetOption:nValue:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #AutoItSetOption:nValue:nRes:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #clipGet!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #ClipGet:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #clipPut:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #ClipPut:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #controlClick:strText:strControl:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #controlClick:strText:strControl:strButton:nNumClicks:nX:nY:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #ControlClick:strText:strControl:strButton:nNumClicks:nX:nY:nRes:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #controlCommand:strText:strControl:strCommand:strExtra:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #ControlCommand:strText:strControl:strCommand:strExtra:strResult:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #controlDisable:strText:strControl:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #ControlDisable:strText:strControl:nRes:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #controlEnable:strText:strControl:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #ControlEnable:strText:strControl:nRes:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #controlFocus:strText:strControl:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #ControlFocus:strText:strControl:nRes:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #controlGetFocus:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #controlGetFocus:strText:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #ControlGetFocus:strText:strControlWithFocus:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #controlGetHandle:strText:strControl:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #ControlGetHandle:strText:strControl:strRetText:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #controlGetPosHeight:strText:strControl:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #ControlGetPosHeight:strText:strControl:nRes:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #controlGetPosWidth:strText:strControl:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #ControlGetPosWidth:strText:strControl:nRes:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #controlGetPosX:strText:strControl:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #ControlGetPosX:strText:strControl:nRes:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #controlGetPosY:strText:strControl:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #ControlGetPosY:strText:strControl:nRes:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #controlGetText:strText:strControl:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #ControlGetText:strText:strControl:strControlText:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #controlHide:strText:strControl:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #ControlHide:strText:strControl:nRes:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #controlListView:strText:strControl:strCommand:strExtra1:strExtra2:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #ControlListView:strText:strControl:strCommand:strExtra1:strExtra2:strResult:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #controlMove:strText:strControl:nX:nY:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #controlMove:strText:strControl:nX:nY:nWidth:nHeight:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #ControlMove:strText:strControl:nX:nY:nWidth:nHeight:nRes:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #controlSend:strText:strControl:strSendText:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #controlSend:strText:strControl:strSendText:nMode:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #ControlSend:strText:strControl:strSendText:nMode:nRes:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #controlSetText:strText:strControl:strControlText:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #ControlSetText:strText:strControl:strControlText:nRes:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #controlShow:strText:strControl:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #ControlShow:strText:strControl:nRes:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #controlTreeView:strText:strControl:strCommand:strExtra1:strExtra2:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #ControlTreeView:strText:strControl:strCommand:strExtra1:strExtra2:strResult:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #driveMapAdd:strShare:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #driveMapAdd:strShare:nFlags:strUser:strPwd:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #DriveMapAdd:strShare:nFlags:strUser:strPwd:strResult:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #driveMapDel:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #DriveMapDel:nRes:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #driveMapGet:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #DriveMapGet:strMapping:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #error!**auto generated**!properties!public! !
!IAutoItX3 categoriesFor: #get_error:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #get_SW_HIDE:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #get_SW_MAXIMIZE:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #get_SW_MINIMIZE:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #get_SW_RESTORE:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #get_SW_SHOW:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #get_SW_SHOWDEFAULT:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #get_SW_SHOWMAXIMIZED:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #get_SW_SHOWMINIMIZED:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #get_SW_SHOWMINNOACTIVE:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #get_SW_SHOWNA:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #get_SW_SHOWNOACTIVATE:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #get_SW_SHOWNORMAL:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #get_version:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #init!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #Init!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #isAdmin!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #IsAdmin:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #isExtensible!**auto generated**!public!testing! !
!IAutoItX3 categoriesFor: #isVBCollection!**auto generated**!public!testing! !
!IAutoItX3 categoriesFor: #mouseClick!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #mouseClick:nX:nY:nClicks:nSpeed:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #MouseClick:nX:nY:nClicks:nSpeed:nRes:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #mouseClickDrag:nX1:nY1:nX2:nY2:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #mouseClickDrag:nX1:nY1:nX2:nY2:nSpeed:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #MouseClickDrag:nX1:nY1:nX2:nY2:nSpeed:nRes:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #mouseDown!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #mouseDown:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #MouseDown:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #mouseGetCursor!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #MouseGetCursor:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #mouseGetPosX!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #MouseGetPosX:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #mouseGetPosY!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #MouseGetPosY:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #mouseMove:nY:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #mouseMove:nY:nSpeed:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #MouseMove:nY:nSpeed:nRes:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #mouseUp!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #mouseUp:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #MouseUp:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #mouseWheel:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #mouseWheel:nClicks:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #MouseWheel:nClicks:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #opt:nValue:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #Opt:nValue:nRes:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #pixelChecksum:nTop:nRight:nBottom:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #pixelChecksum:nTop:nRight:nBottom:nStep:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #PixelChecksum:nTop:nRight:nBottom:nStep:nRes:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #pixelGetColor:nY:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #PixelGetColor:nY:nRes:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #pixelSearch:nTop:nRight:nBottom:nCol:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #pixelSearch:nTop:nRight:nBottom:nCol:nVar:nStep:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #PixelSearch:nTop:nRight:nBottom:nCol:nVar:nStep:vOutResult:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #processClose:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #ProcessClose:nRes:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #processExists:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #ProcessExists:nRes:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #processSetPriority:nPriority:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #ProcessSetPriority:nPriority:nRes:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #processWait:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #processWait:nTimeout:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #ProcessWait:nTimeout:nRes:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #processWaitClose:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #processWaitClose:nTimeout:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #ProcessWaitClose:nTimeout:nRes:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #run:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #run:strDir:nShowFlag:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #Run:strDir:nShowFlag:nRes:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #runAs:strDomain:strPassword:nLogonFlag:strRun:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #runAs:strDomain:strPassword:nLogonFlag:strRun:strDir:nShowFlag:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #RunAs:strDomain:strPassword:nLogonFlag:strRun:strDir:nShowFlag:nRes:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #runAsWait:strDomain:strPassword:nLogonFlag:strRun:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #runAsWait:strDomain:strPassword:nLogonFlag:strRun:strDir:nShowFlag:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #RunAsWait:strDomain:strPassword:nLogonFlag:strRun:strDir:nShowFlag:nRes:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #runWait:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #runWait:strDir:nShowFlag:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #RunWait:strDir:nShowFlag:nRes:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #send:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #send:nMode:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #Send:nMode:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #shutdown:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #Shutdown:nRes:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #sleep:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #Sleep:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #statusbarGetText:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #statusbarGetText:strText:nPart:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #StatusbarGetText:strText:nPart:strStatusText:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #sw_hide!**auto generated**!properties!public! !
!IAutoItX3 categoriesFor: #sw_maximize!**auto generated**!properties!public! !
!IAutoItX3 categoriesFor: #sw_minimize!**auto generated**!properties!public! !
!IAutoItX3 categoriesFor: #sw_restore!**auto generated**!properties!public! !
!IAutoItX3 categoriesFor: #sw_show!**auto generated**!properties!public! !
!IAutoItX3 categoriesFor: #sw_showdefault!**auto generated**!properties!public! !
!IAutoItX3 categoriesFor: #sw_showmaximized!**auto generated**!properties!public! !
!IAutoItX3 categoriesFor: #sw_showminimized!**auto generated**!properties!public! !
!IAutoItX3 categoriesFor: #sw_showminnoactive!**auto generated**!properties!public! !
!IAutoItX3 categoriesFor: #sw_showna!**auto generated**!properties!public! !
!IAutoItX3 categoriesFor: #sw_shownoactivate!**auto generated**!properties!public! !
!IAutoItX3 categoriesFor: #sw_shownormal!**auto generated**!properties!public! !
!IAutoItX3 categoriesFor: #toolTip:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #toolTip:nX:nY:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #ToolTip:nX:nY:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #version!**auto generated**!properties!public! !
!IAutoItX3 categoriesFor: #winActivate:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #winActivate:strText:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #WinActivate:strText:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #winActive:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #winActive:strText:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #WinActive:strText:nRes:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #winClose:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #winClose:strText:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #WinClose:strText:nRes:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #winExists:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #winExists:strText:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #WinExists:strText:nRes:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #winGetCaretPosX!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #WinGetCaretPosX:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #winGetCaretPosY!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #WinGetCaretPosY:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #winGetClassList:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #winGetClassList:strText:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #WinGetClassList:strText:strRetText:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #winGetClientSizeHeight:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #winGetClientSizeHeight:strText:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #WinGetClientSizeHeight:strText:nRes:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #winGetClientSizeWidth:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #winGetClientSizeWidth:strText:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #WinGetClientSizeWidth:strText:nRes:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #winGetHandle:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #winGetHandle:strText:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #WinGetHandle:strText:strRetText:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #winGetPosHeight:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #winGetPosHeight:strText:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #WinGetPosHeight:strText:nRes:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #winGetPosWidth:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #winGetPosWidth:strText:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #WinGetPosWidth:strText:nRes:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #winGetPosX:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #winGetPosX:strText:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #WinGetPosX:strText:nRes:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #winGetPosY:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #winGetPosY:strText:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #WinGetPosY:strText:nRes:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #winGetProcess:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #winGetProcess:strText:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #WinGetProcess:strText:strResult:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #winGetState:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #winGetState:strText:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #WinGetState:strText:nRes:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #winGetText:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #winGetText:strText:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #WinGetText:strText:strRetText:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #winGetTitle:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #winGetTitle:strText:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #WinGetTitle:strText:strRetText:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #winKill:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #winKill:strText:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #WinKill:strText:nRes:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #winList:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #winList:strText:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #WinList:strText:vOutResult:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #winMenuSelectItem:strText:strItem1:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #winMenuSelectItem:strText:strItem1:strItem2:strItem3:strItem4:strItem5:strItem6:strItem7:strItem8:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #WinMenuSelectItem:strText:strItem1:strItem2:strItem3:strItem4:strItem5:strItem6:strItem7:strItem8:nRes:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #winMinimizeAll!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #WinMinimizeAll!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #winMinimizeAllUndo!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #WinMinimizeAllUndo!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #winMove:strText:nX:nY:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #winMove:strText:nX:nY:nWidth:nHeight:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #WinMove:strText:nX:nY:nWidth:nHeight:nRes:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #winSetOnTop:strText:nFlag:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #WinSetOnTop:strText:nFlag:nRes:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #winSetState:strText:nFlags:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #WinSetState:strText:nFlags:nRes:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #winSetTitle:strText:strNewTitle:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #WinSetTitle:strText:strNewTitle:nRes:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #winSetTrans:strText:nTrans:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #WinSetTrans:strText:nTrans:nRes:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #winWait:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #winWait:strText:nTimeout:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #WinWait:strText:nTimeout:nRes:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #winWaitActive:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #winWaitActive:strText:nTimeout:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #WinWaitActive:strText:nTimeout:nRes:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #winWaitClose:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #winWaitClose:strText:nTimeout:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #WinWaitClose:strText:nTimeout:nRes:!**auto generated**!COM Interfaces-IAutoItX3!private! !
!IAutoItX3 categoriesFor: #winWaitNotActive:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #winWaitNotActive:strText:nTimeout:!**auto generated**!methods!public! !
!IAutoItX3 categoriesFor: #WinWaitNotActive:strText:nTimeout:nRes:!**auto generated**!COM Interfaces-IAutoItX3!private! !

!IAutoItX3 class methodsFor!

clsid
	"Private - Answer the CLSID of the coclass (AutoItX3) for which the receiver is the default interface."

	^CLSID fromString: '{1A671297-FA74-4422-80FA-6C5D8CE4DE04}'
!

defineFunctions
	"Declare the virtual function table for the COM interface 'AutoItX3Lib.IAutoItX3'
		IAutoItX3 defineTemplate"

	self
		defineFunction: #get_error:
			argumentTypes: 'sdword*';
		defineFunction: #get_SW_HIDE:
			argumentTypes: 'sdword*';
		defineFunction: #get_SW_MAXIMIZE:
			argumentTypes: 'sdword*';
		defineFunction: #get_SW_MINIMIZE:
			argumentTypes: 'sdword*';
		defineFunction: #get_SW_RESTORE:
			argumentTypes: 'sdword*';
		defineFunction: #get_SW_SHOW:
			argumentTypes: 'sdword*';
		defineFunction: #get_SW_SHOWDEFAULT:
			argumentTypes: 'sdword*';
		defineFunction: #get_SW_SHOWMAXIMIZED:
			argumentTypes: 'sdword*';
		defineFunction: #get_SW_SHOWMINIMIZED:
			argumentTypes: 'sdword*';
		defineFunction: #get_SW_SHOWMINNOACTIVE:
			argumentTypes: 'sdword*';
		defineFunction: #get_SW_SHOWNA:
			argumentTypes: 'sdword*';
		defineFunction: #get_SW_SHOWNOACTIVATE:
			argumentTypes: 'sdword*';
		defineFunction: #get_SW_SHOWNORMAL:
			argumentTypes: 'sdword*';
		defineFunction: #Init;
		defineFunction: #AutoItSetOption:nValue:nRes:
			argumentTypes: 'bstr sdword sdword*';
		defineFunction: #ClipGet:
			argumentTypes: 'bstr*';
		defineFunction: #ClipPut:
			argumentTypes: 'bstr';
		defineFunction: #ControlClick:strText:strControl:strButton:nNumClicks:nX:nY:nRes:
			argumentTypes: 'bstr bstr bstr bstr sdword sdword sdword sdword*';
		defineFunction: #ControlCommand:strText:strControl:strCommand:strExtra:strResult:
			argumentTypes: 'bstr bstr bstr bstr bstr bstr*';
		defineFunction: #ControlDisable:strText:strControl:nRes:
			argumentTypes: 'bstr bstr bstr sdword*';
		defineFunction: #ControlEnable:strText:strControl:nRes:
			argumentTypes: 'bstr bstr bstr sdword*';
		defineFunction: #ControlFocus:strText:strControl:nRes:
			argumentTypes: 'bstr bstr bstr sdword*';
		defineFunction: #ControlGetFocus:strText:strControlWithFocus:
			argumentTypes: 'bstr bstr bstr*';
		defineFunction: #ControlGetHandle:strText:strControl:strRetText:
			argumentTypes: 'bstr bstr bstr bstr*';
		defineFunction: #ControlGetPosX:strText:strControl:nRes:
			argumentTypes: 'bstr bstr bstr sdword*';
		defineFunction: #ControlGetPosY:strText:strControl:nRes:
			argumentTypes: 'bstr bstr bstr sdword*';
		defineFunction: #ControlGetPosHeight:strText:strControl:nRes:
			argumentTypes: 'bstr bstr bstr sdword*';
		defineFunction: #ControlGetPosWidth:strText:strControl:nRes:
			argumentTypes: 'bstr bstr bstr sdword*';
		defineFunction: #ControlGetText:strText:strControl:strControlText:
			argumentTypes: 'bstr bstr bstr bstr*';
		defineFunction: #ControlHide:strText:strControl:nRes:
			argumentTypes: 'bstr bstr bstr sdword*';
		defineFunction: #ControlListView:strText:strControl:strCommand:strExtra1:strExtra2:strResult:
			argumentTypes: 'bstr bstr bstr bstr bstr bstr bstr*';
		defineFunction: #ControlMove:strText:strControl:nX:nY:nWidth:nHeight:nRes:
			argumentTypes: 'bstr bstr bstr sdword sdword sdword sdword sdword*';
		defineFunction: #ControlSend:strText:strControl:strSendText:nMode:nRes:
			argumentTypes: 'bstr bstr bstr bstr sdword sdword*';
		defineFunction: #ControlSetText:strText:strControl:strControlText:nRes:
			argumentTypes: 'bstr bstr bstr bstr sdword*';
		defineFunction: #ControlShow:strText:strControl:nRes:
			argumentTypes: 'bstr bstr bstr sdword*';
		defineFunction: #ControlTreeView:strText:strControl:strCommand:strExtra1:strExtra2:strResult:
			argumentTypes: 'bstr bstr bstr bstr bstr bstr bstr*';
		defineFunction: #DriveMapAdd:strShare:nFlags:strUser:strPwd:strResult:
			argumentTypes: 'bstr bstr sdword bstr bstr bstr*';
		defineFunction: #DriveMapDel:nRes:
			argumentTypes: 'bstr sdword*';
		defineFunction: #DriveMapGet:strMapping:
			argumentTypes: 'bstr bstr*';
		defineFunction: #IsAdmin:
			argumentTypes: 'sdword*';
		defineFunction: #MouseClick:nX:nY:nClicks:nSpeed:nRes:
			argumentTypes: 'bstr sdword sdword sdword sdword sdword*';
		defineFunction: #MouseClickDrag:nX1:nY1:nX2:nY2:nSpeed:nRes:
			argumentTypes: 'bstr sdword sdword sdword sdword sdword sdword*';
		defineFunction: #MouseDown:
			argumentTypes: 'bstr';
		defineFunction: #MouseGetCursor:
			argumentTypes: 'sdword*';
		defineFunction: #MouseGetPosX:
			argumentTypes: 'sdword*';
		defineFunction: #MouseGetPosY:
			argumentTypes: 'sdword*';
		defineFunction: #MouseMove:nY:nSpeed:nRes:
			argumentTypes: 'sdword sdword sdword sdword*';
		defineFunction: #MouseUp:
			argumentTypes: 'bstr';
		defineFunction: #MouseWheel:nClicks:
			argumentTypes: 'bstr sdword';
		defineFunction: #Opt:nValue:nRes:
			argumentTypes: 'bstr sdword sdword*';
		defineFunction: #PixelChecksum:nTop:nRight:nBottom:nStep:nRes:
			argumentTypes: 'sdword sdword sdword sdword sdword double*';
		defineFunction: #PixelGetColor:nY:nRes:
			argumentTypes: 'sdword sdword sdword*';
		defineFunction: #PixelSearch:nTop:nRight:nBottom:nCol:nVar:nStep:vOutResult:
			argumentTypes: 'sdword sdword sdword sdword sdword sdword sdword variant*';
		defineFunction: #ProcessClose:nRes:
			argumentTypes: 'bstr sdword*';
		defineFunction: #ProcessExists:nRes:
			argumentTypes: 'bstr sdword*';
		defineFunction: #ProcessSetPriority:nPriority:nRes:
			argumentTypes: 'bstr sdword sdword*';
		defineFunction: #ProcessWait:nTimeout:nRes:
			argumentTypes: 'bstr sdword sdword*';
		defineFunction: #ProcessWaitClose:nTimeout:nRes:
			argumentTypes: 'bstr sdword sdword*';
		defineFunction: #Run:strDir:nShowFlag:nRes:
			argumentTypes: 'bstr bstr sdword sdword*';
		defineFunction: #RunAs:strDomain:strPassword:nLogonFlag:strRun:strDir:nShowFlag:nRes:
			argumentTypes: 'bstr bstr bstr sdword bstr bstr sdword sdword*';
		defineFunction: #RunAsWait:strDomain:strPassword:nLogonFlag:strRun:strDir:nShowFlag:nRes:
			argumentTypes: 'bstr bstr bstr sdword bstr bstr sdword sdword*';
		defineFunction: #RunWait:strDir:nShowFlag:nRes:
			argumentTypes: 'bstr bstr sdword sdword*';
		defineFunction: #Send:nMode:
			argumentTypes: 'bstr sdword';
		defineFunction: #Shutdown:nRes:
			argumentTypes: 'sdword sdword*';
		defineFunction: #Sleep:
			argumentTypes: 'sdword';
		defineFunction: #StatusbarGetText:strText:nPart:strStatusText:
			argumentTypes: 'bstr bstr sdword bstr*';
		defineFunction: #ToolTip:nX:nY:
			argumentTypes: 'bstr sdword sdword';
		defineFunction: #WinActivate:strText:
			argumentTypes: 'bstr bstr';
		defineFunction: #WinActive:strText:nRes:
			argumentTypes: 'bstr bstr sdword*';
		defineFunction: #WinClose:strText:nRes:
			argumentTypes: 'bstr bstr sdword*';
		defineFunction: #WinExists:strText:nRes:
			argumentTypes: 'bstr bstr sdword*';
		defineFunction: #WinGetCaretPosX:
			argumentTypes: 'sdword*';
		defineFunction: #WinGetCaretPosY:
			argumentTypes: 'sdword*';
		defineFunction: #WinGetClassList:strText:strRetText:
			argumentTypes: 'bstr bstr bstr*';
		defineFunction: #WinGetClientSizeHeight:strText:nRes:
			argumentTypes: 'bstr bstr sdword*';
		defineFunction: #WinGetClientSizeWidth:strText:nRes:
			argumentTypes: 'bstr bstr sdword*';
		defineFunction: #WinGetHandle:strText:strRetText:
			argumentTypes: 'bstr bstr bstr*';
		defineFunction: #WinGetPosX:strText:nRes:
			argumentTypes: 'bstr bstr sdword*';
		defineFunction: #WinGetPosY:strText:nRes:
			argumentTypes: 'bstr bstr sdword*';
		defineFunction: #WinGetPosHeight:strText:nRes:
			argumentTypes: 'bstr bstr sdword*';
		defineFunction: #WinGetPosWidth:strText:nRes:
			argumentTypes: 'bstr bstr sdword*';
		defineFunction: #WinGetProcess:strText:strResult:
			argumentTypes: 'bstr bstr bstr*';
		defineFunction: #WinGetState:strText:nRes:
			argumentTypes: 'bstr bstr sdword*';
		defineFunction: #WinGetText:strText:strRetText:
			argumentTypes: 'bstr bstr bstr*';
		defineFunction: #WinGetTitle:strText:strRetText:
			argumentTypes: 'bstr bstr bstr*';
		defineFunction: #WinKill:strText:nRes:
			argumentTypes: 'bstr bstr sdword*';
		defineFunction: #WinList:strText:vOutResult:
			argumentTypes: 'bstr bstr variant*';
		defineFunction: #WinMenuSelectItem:strText:strItem1:strItem2:strItem3:strItem4:strItem5:strItem6:strItem7:strItem8:nRes:
			argumentTypes: 'bstr bstr bstr bstr bstr bstr bstr bstr bstr bstr sdword*';
		defineFunction: #WinMinimizeAll;
		defineFunction: #WinMinimizeAllUndo;
		defineFunction: #WinMove:strText:nX:nY:nWidth:nHeight:nRes:
			argumentTypes: 'bstr bstr sdword sdword sdword sdword sdword*';
		defineFunction: #WinSetOnTop:strText:nFlag:nRes:
			argumentTypes: 'bstr bstr sdword sdword*';
		defineFunction: #WinSetState:strText:nFlags:nRes:
			argumentTypes: 'bstr bstr sdword sdword*';
		defineFunction: #WinSetTitle:strText:strNewTitle:nRes:
			argumentTypes: 'bstr bstr bstr sdword*';
		defineFunction: #WinSetTrans:strText:nTrans:nRes:
			argumentTypes: 'bstr bstr sdword sdword*';
		defineFunction: #WinWait:strText:nTimeout:nRes:
			argumentTypes: 'bstr bstr sdword sdword*';
		defineFunction: #WinWaitActive:strText:nTimeout:nRes:
			argumentTypes: 'bstr bstr sdword sdword*';
		defineFunction: #WinWaitClose:strText:nTimeout:nRes:
			argumentTypes: 'bstr bstr sdword sdword*';
		defineFunction: #WinWaitNotActive:strText:nTimeout:nRes:
			argumentTypes: 'bstr bstr sdword sdword*';
		defineFunction: #get_version:
			argumentTypes: 'bstr*'
!

initializeTypeLib
	"Private - Establish a connection to the receiver's type library.
		IAutoItX3 initializeTypeLib"

	typeLib := AutoItX3Lib! !
!IAutoItX3 class categoriesFor: #clsid!**auto generated**!constants!private! !
!IAutoItX3 class categoriesFor: #defineFunctions!**auto generated**!initializing!public! !
!IAutoItX3 class categoriesFor: #initializeTypeLib!**auto generated**!initializing!private! !

