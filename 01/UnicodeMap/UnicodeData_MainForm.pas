unit UnicodeData_MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, ComCtrls, ExtCtrls, StrUtils;

type
  TForm30 = class(TForm)
    StringGrid1: TStringGrid;
    StatusBar1: TStatusBar;
    Panel2: TPanel;
    TreeView1: TTreeView;
    Splitter1: TSplitter;
    FontDialog1: TFontDialog;
    procedure StringGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure TreeView1Click(Sender: TObject);
    procedure StringGrid1DblClick(Sender: TObject);
  private
    nCurrentTab: Integer;
    sUnicodeDescr: TStringList;
  public
    procedure ParseUnicodeData (var Msg: TMessage); message wm_user + 1; 
  end;

var
  Form30: TForm30;

implementation

{$R *.dfm}

// helper function
function GetCharDescr (nChar: Integer): string;
begin
  if nChar < 32 then
    Result := 'Char #' + IntToHex (nChar, 4) + ' [  ]'
  else
    Result := 'Char #' + IntToHex (nChar, 4) + ' [' + Char (nChar) + ']';
end;

procedure TForm30.FormCreate(Sender: TObject);
var
  nTag: Integer;
  I: Integer;
  J: Integer;
  topNode: TTreeNode;
begin
  for I := 0 to 15 do // (16 blocks of 16 pages = 256 pages) * 256 characters each
  begin
    nTag := I * 16;
    topNode := TreeView1.Items.Add (nil,
      GetCharDescr (nTag * 256) + '/' + GetCharDescr ((nTag + 15)* 256));
    for J := nTag to nTag + 15 do
    begin
      if (J < 216) or (J > 223) then
      begin
        TreeView1.Items.AddChildObject (
          topNode,
          GetCharDescr(J*256) + '/' + GetCharDescr(J*256+255),
          Pointer (J));
      end
      else
      begin
        TreeView1.Items.AddChildObject (
          topNode,
          'Surrogate Code Points',
          Pointer (J));
      end;
    end;
  end;

  // refresh border
  for I := 0 to 16 do
  begin
    StringGrid1.Cells[I + 1, 0] := IntToStr (I);
    StringGrid1.Cells[0, I + 1] := IntToStr (I*16);
  end;

  PostMessage (Handle, wm_user + 1, 0, 0);
end;

function ReadToSemicolon (strData: string; var nPos: Integer): string;
var
  nSemiPos: Integer;
begin
  nSemiPos := PosEx (';', strData, nPos);
  Result := Copy (strData, nPos, nSemiPos - nPos);
  nPos := nSemiPos + 1;
end;

function ReadToSpace (strData: string): string;
var
  nSemiPos: Integer;
begin
  nSemiPos := PosEx (' ', strData);
  if nSemiPos > 0 then
    Result := Copy (strData, 1, nSemiPos)
  else
    Result := strData; // all of it
end;


function ReadToNewLine (strData: string; var nPos: Integer): string;
var
  nNewLine: Integer;
begin
  nNewLine := PosEx (#$A, strData, nPos);
  Result := Copy (strData, nPos, nNewLine - nPos);
  nPos := nNewLine + 1;
end;


procedure Skip8Semi (strData: string; var nPos: Integer);
var
  I: Integer;
begin
  for I := 1 to 8 do
  begin
    nPos := PosEx (';', strData, nPos) + 1;
  end;
end;

procedure TForm30.ParseUnicodeData (var Msg: TMessage);
var
  fStream: TFileStream;
  strNumber, strDescr1, strDescr2, strTemp, strSingleLine, strGroup: string;
  strData: AnsiString;
  nPos, nLinePos: Integer;
  sListFileData: TStringList;
  I: Integer;
begin
  StatusBar1.SimpleText := 'Parsing UnicodeData.txt';

  if not Assigned (sUnicodeDescr) then
    sUnicodeDescr := TStringList.Create
  else
    sUnicodeDescr.Clear;

  fStream := TFileStream.Create('UnicodeData.txt', fmOpenRead);
  try
    SetLength(strData, fStream.Size);
    fStream.ReadBuffer(strData[1], fStream.Size);
  finally
    fStream.Free;
  end;

  // sListFileData := TStringList.Create;
  // sListFileData.LineBreak := #$A;

//  strTemp := strData;
//  strTemp := StringReplace (strTemp, #$A, sLineBreak, [rfReplaceAll]);
//  sListFileData.Text := strTemp;
//
//  showMessage (IntToStr (sListFileData.Count));
//
//  // now we have a string list with one description per line
//  for I := 0 to sListFileData.Count - 1 do
//  begin
//    strSingleLine := sListFileData [I];
//    nPos := 1;
//    strNumber := ReadToSemicolon (strSingleLine, nPos);
//    strDescr1 := ReadToSemicolon (strSingleLine, nPos);
//    Skip8Semi (strSingleLine, nPos);
//    strDescr2 := ReadToSemicolon (strSingleLine, nPos);
//    sUnicodeDescr.Add(strNumber + '=' + strDescr1 + ' ' + strDescr2);
//    StatusBar1.SimpleText := 'Parsing UnicodeData.txt: ' + strNumber;
//  end;

//
  nPos := 1;
  // now parse the unicode data
  while nPos < Length (strData) - 2 do
  begin
    strSingleLine := ReadToNewLine (strData, nPos);
    nLinePos := 1;
    strNumber := ReadToSemicolon (strSingleLine, nLinePos);
    strDescr1 := ReadToSemicolon (strSingleLine, nLinePos);
    Skip8Semi (strSingleLine, nLinePos);
    strDescr2 := ReadToSemicolon (strSingleLine, nLinePos);
    // Inc (nPos, 4);

    if Length (strNumber) > 4 then
    begin
      StatusBar1.SimpleText := 'Exit at ' + strNumber + '=' + strDescr1 + ' ' + strDescr2;
      Break;
    end;
    sUnicodeDescr.Add(strNumber + '=' + strDescr1 + ' ' + strDescr2);

    if (nPos mod 10) = 0 then
    begin
      StatusBar1.SimpleText := 'Parsing UnicodeData.txt: ' + strNumber;
      Application.ProcessMessages;
    end;
  end;
end;

procedure TForm30.StringGrid1DblClick(Sender: TObject);
begin
  if FontDialog1.Execute then
    Font := FontDialog1.Font;
end;

procedure TForm30.StringGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
  gc: TGridCoord;
  nChar, nIndex: Integer;
  strChar: string;
begin
  gc := StringGrid1.MouseCoord(X, Y);
  nChar := nCurrentTab * 256 + (gc.Y - 1) * 16 + (gc.X - 1);
  StatusBar1.SimpleText := GetCharDescr (nChar);

  if Assigned (sUnicodeDescr) then
  begin
    strChar := IntToHex (nChar, 4);
    nIndex := sUnicodeDescr.IndexOfName(strChar);
    if nIndex >= 0 then
      StatusBar1.SimpleText := StatusBar1.SimpleText + ' -- ' +
        sUnicodeDescr.ValueFromIndex [nIndex];
  end;
end;

procedure TForm30.TreeView1Click(Sender: TObject);
var
  I, nStart: Integer;
begin
  if (TreeView1.Selected.Parent <> nil) then
  begin
    // a second level node
    nCurrentTab := Integer(TreeView1.Selected.Data); // the actual block
    nStart := nCurrentTab * 256;
    for I := 0 to 255 do
    begin
      StringGrid1.Cells [I mod 16 + 1, I div 16 + 1] :=
        IfThen (I + nStart >= 32, Char (I + nStart), '');
    end;
  end;
end;

end.
