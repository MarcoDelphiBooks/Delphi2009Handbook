unit NewFirstCom_TLB;

// ************************************************************************ //
// WARNING
// -------
// The types declared in this file were generated from data read from a
// Type Library. If this type library is explicitly or indirectly (via
// another type library referring to this type library) re-imported, or the
// 'Refresh' command of the Type Library Editor activated while editing the
// Type Library, the contents of this file will be regenerated and all
// manual modifications will be lost.
// ************************************************************************ //

// $Rev: 16059 $
// File generated on 10/19/2008 5:06:10 PM from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Users\Marco\Documents\books2008\tiburon\sourcecode\11\NewFirstCom\NewFirstCom (1)
// LIBID: {1D3CBA2F-D2EF-40CA-9854-8A3A600EA6CF}
// LCID: 0
// Helpfile:
// HelpString:
// DepndLst:
//   (1) v2.0 stdole, (C:\Windows\system32\stdole2.tlb)
//   (2) v4.0 StdVCL, (stdvcl40.dll)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers.
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}
interface

uses Windows, ActiveX, Classes, Graphics, StdVCL, Variants;


// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:
//   Type Libraries     : LIBID_xxxx
//   CoClasses          : CLASS_xxxx
//   DISPInterfaces     : DIID_xxxx
//   Non-DISP interfaces: IID_xxxx
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  NewFirstComMajorVersion = 1;
  NewFirstComMinorVersion = 0;

  LIBID_NewFirstCom: TGUID = '{1D3CBA2F-D2EF-40CA-9854-8A3A600EA6CF}';

  IID_IValue: TGUID = '{C518EC14-9B11-4230-BF77-6BEF82CA86B1}';
  IID_Interface1: TGUID = '{D4DD3C9D-B4D2-46C9-81F4-78543409740B}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary
// *********************************************************************//
  IValue = interface;
  IValueDisp = dispinterface;
  Interface1 = interface;
  Interface1Disp = dispinterface;

// *********************************************************************//
// Interface: IValue
// Flags:     (320) Dual OleAutomation
// GUID:      {C518EC14-9B11-4230-BF77-6BEF82CA86B1}
// *********************************************************************//
  IValue = interface(IUnknown)
    ['{C518EC14-9B11-4230-BF77-6BEF82CA86B1}']
    function GetValue: SYSINT; stdcall;
    procedure SetValue(Value: SYSINT); safecall;
  end;

// *********************************************************************//
// DispIntf:  IValueDisp
// Flags:     (320) Dual OleAutomation
// GUID:      {C518EC14-9B11-4230-BF77-6BEF82CA86B1}
// *********************************************************************//
  IValueDisp = dispinterface
    ['{C518EC14-9B11-4230-BF77-6BEF82CA86B1}']
    function GetValue: SYSINT; dispid 201;
    procedure SetValue(Value: SYSINT); dispid 202;
  end;

// *********************************************************************//
// Interface: Interface1
// Flags:     (320) Dual OleAutomation
// GUID:      {D4DD3C9D-B4D2-46C9-81F4-78543409740B}
// *********************************************************************//
  Interface1 = interface(IUnknown)
    ['{D4DD3C9D-B4D2-46C9-81F4-78543409740B}']
    function Method1: Integer; stdcall;
    procedure Method2(value: Integer); safecall;
  end;

// *********************************************************************//
// DispIntf:  Interface1Disp
// Flags:     (320) Dual OleAutomation
// GUID:      {D4DD3C9D-B4D2-46C9-81F4-78543409740B}
// *********************************************************************//
  Interface1Disp = dispinterface
    ['{D4DD3C9D-B4D2-46C9-81F4-78543409740B}']
    function Method1: Integer; dispid 101;
    procedure Method2(value: Integer); dispid 102;
  end;

implementation

uses ComObj;

end.

