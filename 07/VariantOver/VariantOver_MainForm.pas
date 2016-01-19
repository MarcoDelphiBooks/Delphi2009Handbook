unit VariantOver_MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TMyRecord = record
  private
    X: Integer;
  public
    class operator Implicit(const Value: Variant): TMyRecord;
  end;

  TFormVariantOver = class(TForm)
    btnAmbigousVariant: TButton;
    btnInterface: TButton;
    btnRecordFromVariant: TButton;
    Memo1: TMemo;
    procedure btnAmbigousVariantClick(Sender: TObject);
    procedure btnInterfaceClick(Sender: TObject);
    procedure btnRecordFromVariantClick(Sender: TObject);
  private
    procedure Log (const msg: String);

    procedure ShowValue(I: Integer); overload;
    procedure ShowValue(s: string); overload;

    procedure ShowValue2(const Value: IInterface); overload;
    procedure ShowValue2(Value: TObject); overload;

    procedure ShowValue3(const R: TMyRecord); overload;
    procedure ShowValue3(X: Integer); overload;
  public
    { Public declarations }
  end;

var
  FormVariantOver: TFormVariantOver;

implementation

{$R *.dfm}

procedure TFormVariantOver.ShowValue (I: Integer);
begin
  Log ('The integer value is ' + IntToStr (I));
end;

procedure TFormVariantOver.ShowValue (s: string);
begin
  Log ('The string value is ' + s);
end;

//procedure ShowValue (v: variant); overload;
//begin
//  Log ('The variant value is ' + string(v));
//end;

procedure TFormVariantOver.btnAmbigousVariantClick(Sender: TObject);
var
  v: variant;
begin
  v := 3;
  // ShowValue (v); // compiler error in Delphi 2009, works in Delphi 2007
  ShowValue (Integer(v)); // works in Delphi 2009
  v := 'foo';
  // ShowValue (v); // compiler error in Delphi 2009, runtime error in Delphi 2007
  ShowValue (string(v)); // works in Delphi 2009
end;

procedure TFormVariantOver.ShowValue2(Value: TObject);
begin
  Log('TObject');
end;

procedure TFormVariantOver.ShowValue2(const Value: IInterface);
begin
  Log('IInterface');
end;

procedure TFormVariantOver.btnInterfaceClick(Sender: TObject);
var
  anObj: TInterfacedObject;
begin
  // same effect in both Delphi 2009 and Delphi 2007
  anObj := TInterfacedObject.Create;
  ShowValue2 (anObj);
end;

class operator TMyRecord.Implicit(const Value: Variant): TMyRecord;
begin
  Result.X := Value;
end;

procedure TFormVariantOver.ShowValue3 (X: Integer);
begin
  Log ('Integer: ' + IntToStr(X));
end;

procedure TFormVariantOver.ShowValue3 (const R: TMyRecord);
begin
  Log ('TMyRecord: ' + IntToStr(R.X));
end;

procedure TFormVariantOver.btnRecordFromVariantClick(Sender: TObject);
var
  v: Variant;
begin
  v := 10;
  ShowValue3 (v);
end;

procedure TFormVariantOver.Log (const msg: String);
begin
  Memo1.Lines.Add(msg);
end;

end.
