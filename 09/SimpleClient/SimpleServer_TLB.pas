unit SimpleServer_TLB;

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

// $Rev: 17252 $
// File generated on 11/4/2008 12:33:17 AM from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Users\Marco\Documents\books2008\tiburon\sourcecode\08\SimpleServer\SimpleServer.dll (1)
// LIBID: {6D563F05-A924-4C69-91EB-FAC149485901}
// LCID: 0
// Helpfile: 
// HelpString: SimpleServer Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\system32\stdole2.tlb)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}
interface

uses Windows, ActiveX, Classes, Graphics, OleServer, StdVCL, Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  SimpleServerMajorVersion = 1;
  SimpleServerMinorVersion = 0;

  LIBID_SimpleServer: TGUID = '{6D563F05-A924-4C69-91EB-FAC149485901}';

  IID_INumberProp: TGUID = '{4D24B32A-DE61-4EBE-AE53-6DF2D3DC80DA}';
  CLASS_NumberProp: TGUID = '{BDC9A273-A973-4DB4-ADE7-8F0A49004D29}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  INumberProp = interface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  NumberProp = INumberProp;


// *********************************************************************//
// Interface: INumberProp
// Flags:     (256) OleAutomation
// GUID:      {4D24B32A-DE61-4EBE-AE53-6DF2D3DC80DA}
// *********************************************************************//
  INumberProp = interface(IUnknown)
    ['{4D24B32A-DE61-4EBE-AE53-6DF2D3DC80DA}']
    function Get_Value: Integer; safecall;
    procedure Set_Value(New: Integer); safecall;
    procedure Increase; safecall;
    property Value: Integer read Get_Value write Set_Value;
  end;

// *********************************************************************//
// The Class CoNumberProp provides a Create and CreateRemote method to          
// create instances of the default interface INumberProp exposed by              
// the CoClass NumberProp. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoNumberProp = class
    class function Create: INumberProp;
    class function CreateRemote(const MachineName: string): INumberProp;
  end;

implementation

uses ComObj;

class function CoNumberProp.Create: INumberProp;
begin
  Result := CreateComObject(CLASS_NumberProp) as INumberProp;
end;

class function CoNumberProp.CreateRemote(const MachineName: string): INumberProp;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_NumberProp) as INumberProp;
end;

end.
