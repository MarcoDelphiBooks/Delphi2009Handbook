unit GenericTestsForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

type
  TMyClass <T> = class
    procedure GenericHello;
  end;

  TMyRecord <T> = record
    one: string;
    two: T;
  end;

// procedure GenProc <T> (value: T);
// E2530 Type parameters not allowed on global procedure or function

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var
  obj: TMyClass<string>;
begin
  obj := TMyClass<string>.Create;
  obj.GenericHello;
  obj.Free;
end;

{ TMyClass<T> }

procedure TMyClass<T>.GenericHello;
begin
  ShowMessage ('Hello');
end;

end.
