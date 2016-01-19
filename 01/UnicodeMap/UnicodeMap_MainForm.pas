unit UnicodeMap_MainForm;

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
  end;

var
  Form30: TForm30;

implementation

{$R *.dfm}

// helper function
function GetCharDescr (nChar: Integer): string;
begin
  if nChar < 32 then
    Result := 'Char #' + IntToStr (nChar) + ' [  ]'
  else
    Result := 'Char #' + IntToStr (nChar) + ' [' + Char (nChar) + ']';
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
end;

function ReadToSemicolon (strData: string; var nPos: Integer): string;
var
  nSemiPos: Integer;
begin
  nSemiPos := PosEx (';', strData, nPos);
  Result := Copy (strData, nPos, nSemiPos - nPos);
  nPos := nSemiPos + 1;
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

procedure TForm30.StringGrid1DblClick(Sender: TObject);
begin
  if FontDialog1.Execute then
    Font := FontDialog1.Font;
end;

procedure TForm30.StringGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
  gc: TGridCoord;
  nChar: Integer;
begin
  gc := StringGrid1.MouseCoord(X, Y);
  nChar := (gc.Y - 1) * 16 + (gc.X - 1);
  StatusBar1.SimpleText := GetCharDescr (nCurrentTab * 256 + nChar);
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
