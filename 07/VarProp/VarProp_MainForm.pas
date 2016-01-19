unit VarProp_MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormVarProp = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVarProp: TFormVarProp;

implementation

{$R *.dfm}

{$VARPROPSETTER ON}
type
  TMyStringClass = class
  private
    fCaption: string;
    function GetCaption: string;
    procedure SetCaption(var Value: string);
  public
    procedure Test (var Value: string);
    property Caption: string read GetCaption write SetCaption;
  end;

{$VARPROPSETTER ON}
type
  TMyIntegerClass = class
  private
   fNumber: Integer;
   function GetNumber: Integer;
   procedure SetNumber(var Value: Integer);
  public
    property Number: Integer read GetNumber write SetNumber;
  end;

{ TMyClass }


function TMyIntegerClass.GetNumber: Integer;
begin
  Result := fNumber;
end;


procedure TMyIntegerClass.SetNumber(var Value: Integer);
begin
  // side effect:
  Inc (Value);
  fNumber := Value;
end;

procedure TFormVarProp.Button1Click(Sender: TObject);
var
  mc: TMyIntegerClass;
  n: Integer;
begin
  mc := TMyIntegerClass.Create;
  try
    // mc.Number := 10; // [DCC Error] VarProp_MainForm.pas(59): E2036 Variable required
    n := 10;
    mc.Number := n;
    ShowMessage (IntToStr (n));
  finally
    mc.Free;
  end;
end;

{ TMyClass }


function TMyStringClass.GetCaption: string;
begin
  Result := fCaption;
end;

procedure TMyStringClass.SetCaption(var Value: string);
begin
  Value := fCaption + ' ' + Value;
  fCaption := Value;
end;

procedure TMyStringClass.Test(var Value: string);
begin
  Value := Value + '*';
  ShowMessage (Value);
end;

procedure TFormVarProp.Button2Click(Sender: TObject);
var
  mc: TMyStringClass;
  str1: string;
begin
  mc := TMyStringClass.Create;
  try
    // mc.Test('Hello'); error, as expected

    // correct code
    str1 := 'Hello';
    mc.Caption := str1;
    str1 := 'World';
    mc.Caption := str1;
    ShowMessage (str1);
    ShowMessage (mc.Caption);

    // wrong code
    mc.Caption := 'Hello';
//    mc.Caption := 'World';
//    ShowMessage (str1);
//    ShowMessage (mc.Caption);
  finally
    mc.Free;
  end;
end;

end.
