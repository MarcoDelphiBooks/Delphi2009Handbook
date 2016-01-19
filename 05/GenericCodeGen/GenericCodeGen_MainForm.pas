unit GenericCodeGen_MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm30 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure Log (const strMsg: string);
  end;

var
  Form30: TForm30;

implementation

{$R *.dfm}

type
  TSampleClass <T> = class
  private
    data: T;
  public
    procedure One;
    function ReadT: T;
    procedure SetT (value: T);
  end;

procedure TForm30.Button1Click(Sender: TObject);
var
  t1: TSampleClass<Integer>;
  t2: TSampleClass<string>;
begin
  t1 := TSampleClass<Integer>.Create;
  t1.SetT (10);
  t1.One;

  t2 := TSampleClass<string>.Create;
  t2.SetT ('hello');
  t2.One;

  Log ('t1.SetT: ' + IntToHex (PInteger(@TSampleClass<Integer>.SetT)^, 8));
  Log ('t2.SetT: ' + IntToHex (PInteger(@TSampleClass<string>.SetT)^, 8));

  Log ('t1.One: ' + IntToHex (PInteger(@TSampleClass<Integer>.One)^, 8));
  Log ('t2.One: ' + IntToHex (PInteger(@TSampleClass<string>.One)^, 8));
end;

{ TSampleClass<T> }

procedure TSampleClass<T>.One;
begin
  Form30.Log ('OneT');
end;

function TSampleClass<T>.ReadT: T;
begin
  Result := data;
end;

procedure TSampleClass<T>.SetT(value: T);
begin
  data := value;
end;

procedure TForm30.Log(const strMsg: string);
begin
  Memo1.Lines.Add(strMsg); 
end;

end.
