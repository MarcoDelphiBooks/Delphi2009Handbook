unit NumImpl;

interface

uses
  Windows, ActiveX, Classes, ComObj, SimpleServer_TLB, StdVcl;

type
  TNumberProp = class(TTypedComObject, INumberProp)
  private
    fValue: Integer;
  public
    procedure Initialize; override;
    destructor Destroy; override;
    procedure Increase; safecall;
    function Get_Value: Integer; safecall;
    procedure Set_Value(New: Integer); safecall;
  end;

implementation

uses ComServ;

destructor TNumberProp.Destroy;
begin
  MessageBox (0, 'Object Destroyed',
    'TNumberProp', mb_OK); // API call
  inherited;
end;

function TNumberProp.Get_Value: Integer;
begin
  Result := fValue
end;

procedure TNumberProp.Increase;
begin
  Inc (fValue)
end;

procedure TNumberProp.Initialize;
begin
  inherited;
  fValue := 10
end;

procedure TNumberProp.Set_Value(New: Integer);
begin
  fValue := New
end;

initialization
  TTypedComObjectFactory.Create(ComServer, TNumberProp, Class_NumberProp,
    ciMultiInstance, tmApartment);
end.
