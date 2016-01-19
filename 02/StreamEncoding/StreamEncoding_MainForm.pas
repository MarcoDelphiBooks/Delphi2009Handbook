unit StreamEncoding_MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormStreamEncoding = class(TForm)
    ListBox1: TListBox;
    btnPlain: TButton;
    btnUtf8: TButton;
    btnAsNeeded: TButton;
    btnUtf8Default: TButton;
    btnAsNeeded2: TButton;
    procedure btnPlainClick(Sender: TObject);
    procedure btnUtf8Click(Sender: TObject);
    procedure btnAsNeededClick(Sender: TObject);
    procedure btnUtf8DefaultClick(Sender: TObject);
    procedure btnAsNeeded2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormStreamEncoding: TFormStreamEncoding;

implementation

{$R *.dfm}

procedure TFormStreamEncoding.btnAsNeeded2Click(Sender: TObject);
begin
  // make it so it is not needed!
  ListBox1.Clear;
  ListBox1.Items.Add ('one');
  ListBox1.Items.Add ('two');
  ListBox1.Items.Add ('three');
  btnAsNeededClick(Sender);
end;

procedure TFormStreamEncoding.btnAsNeededClick(Sender: TObject);
var
  strFileName: string;
  encoding1: TEncoding;
//  ch: Char;
begin
  strFileName := 'AsNeededText.txt';
  encoding1 := TEncoding.Default;

  if ListBox1.Items.Text <> UnicodeString (AnsiString(ListBox1.Items.Text)) then
    encoding1 := TEncoding.UTF8;

//  for ch in ListBox1.Items.Text do
//    if Ord (ch) > 256 then
//    begin
//      encoding1 := TEncoding.UTF8;
//      break;
//    end;

  if encoding1 = TEncoding.UTF8 then
  begin
    ShowMessage ('Saving as UTF8');
  end
  else
    ShowMessage ('Saving as Ascii');

  ListBox1.Items.SaveToFile(strFileName, Encoding1);
  ListBox1.Clear;
  ListBox1.Items.LoadFromFile(strFileName); // load depending on the BOM
end;

procedure TFormStreamEncoding.btnPlainClick(Sender: TObject);
var
  strFileName: string;
begin
  strFileName := 'AnsiText.txt';
  ListBox1.Items.SaveToFile(strFileName);
  ListBox1.Clear;
  ListBox1.Items.LoadFromFile(strFileName);
end;

procedure TFormStreamEncoding.btnUtf8Click(Sender: TObject);
var
  strFileName: string;
begin
  strFileName := 'Utf8Text.txt';
  ListBox1.Items.SaveToFile(strFileName, TEncoding.UTF8);
  ListBox1.Clear;
  ListBox1.Items.LoadFromFile(strFileName);
end;

type
  TStringsHelper = class helper for TStrings
    procedure SaveToFile (const strFileName: string);
  end;

procedure TFormStreamEncoding.btnUtf8DefaultClick(Sender: TObject);
var
  strFileName: string;
begin
  strFileName := 'Utf8Default.txt';
  ListBox1.Items.SaveToFile(strFileName);
  ListBox1.Clear;
  ListBox1.Items.LoadFromFile(strFileName);
end;

{ TStringsHelper }

procedure TStringsHelper.SaveToFile(const strFileName: string);
begin
  inherited SaveToFile (strFileName, TEncoding.UTF8);
end;

end.
