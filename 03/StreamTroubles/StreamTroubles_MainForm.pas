unit StreamTroubles_MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormStreamTroubles = class(TForm)
    Memo1: TMemo;
    Memo2: TMemo;
    btnTrouble: TButton;
    btnFix: TButton;
    procedure btnTroubleClick(Sender: TObject);
    procedure btnFixClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormStreamTroubles: TFormStreamTroubles;

implementation

{$R *.dfm}

procedure TFormStreamTroubles.btnTroubleClick(Sender: TObject);
var
  memStr: TMemoryStream;
begin
  memStr := TMemoryStream.Create;
  try
    Memo1.Lines.LoadFromFile ('StreamTroubles_MainForm.pas');
    Memo1.Lines.SaveToStream(memStr, TEncoding.UTF8);
    memStr.Position := 0; // reset
    Memo2.Lines.LoadFromStream(memStr, TEncoding.Unicode);
  finally
    memStr.Free;
  end;
end;

procedure TFormStreamTroubles.btnFixClick(Sender: TObject);
var
  memStr: TMemoryStream;
begin
  memStr := TMemoryStream.Create;
  try
    Memo1.Lines.LoadFromFile ('StreamTroubles_MainForm.pas');
    Memo1.Lines.SaveToStream(memStr, TEncoding.UTF8);
    memStr.Position := 0; // reset
    Memo2.Lines.LoadFromStream(memStr);
  finally
    memStr.Free;
  end;
end;

end.
