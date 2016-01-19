unit MoveStrings_MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormMoveStrings = class(TForm)
    Memo1: TMemo;
    btnMoveFailure: TButton;
    btnRowByte: TButton;
    procedure btnMoveFailureClick(Sender: TObject);
    procedure btnRowByteClick(Sender: TObject);
  private
    procedure Log (const strMsg: string);
  public
    { Public declarations }
  end;

var
  FormMoveStrings: TFormMoveStrings;

implementation

{$R *.dfm}

procedure TFormMoveStrings.btnMoveFailureClick(Sender: TObject);
var
  str1, str2: string;
  buffer: TBytes;
begin
  str1 := 'Hello world';

  SetLength (buffer, Length (str1));
  Move (str1[1], buffer[1], Length (str1));

  SetLength (str2, Length (buffer));
  Move (buffer[1], str2[1], Length (buffer));

  Log (str1 + ' becomes ' + str2);
end;

procedure TFormMoveStrings.btnRowByteClick(Sender: TObject);
var
  str1, str2: RawByteString;
  buffer: TBytes;
begin
  str1 := 'Hello world';

  SetLength (buffer, Length (str1));
  Move (str1[1], buffer[1], Length (str1));

  SetLength (str2, Length (buffer));
  Move (buffer[1], str2[1], Length (buffer));

  Log (str1 + ' becomes ' + str2);
end;

procedure TFormMoveStrings.Log(const strMsg: string);
begin
  Memo1.Lines.Add (strMsg);
end;

end.
