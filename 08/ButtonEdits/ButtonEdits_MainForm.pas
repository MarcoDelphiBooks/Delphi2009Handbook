unit ButtonEdits_MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, StdCtrls, ExtCtrls, Menus;

type
  TFormButtonEdits = class(TForm)
    edUndo: TButtonedEdit;
    edClear: TButtonedEdit;
    edHistory: TButtonedEdit;
    ImageList1: TImageList;
    PopupMenu1: TPopupMenu;
    one1: TMenuItem;
    wo1: TMenuItem;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure edUndoRightButtonClick(Sender: TObject);
    procedure edClearRightButtonClick(Sender: TObject);
    procedure edHistoryExit(Sender: TObject);
    procedure RestoreText(Sender: TObject);
    procedure edClearLeftButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormButtonEdits: TFormButtonEdits;

implementation

{$R *.dfm}

procedure TFormButtonEdits.edUndoRightButtonClick(Sender: TObject);
begin
  edUndo.Undo;
end;

procedure TFormButtonEdits.edClearLeftButtonClick(Sender: TObject);
begin
  edClear.PasteFromClipboard;
end;

procedure TFormButtonEdits.edClearRightButtonClick(Sender: TObject);
begin
  edClear.Text := '';
end;

procedure TFormButtonEdits.edHistoryExit(Sender: TObject);
begin
  if (edHistory.Text <> '') and
    (PopupMenu1.Items.Find (edHistory.Text) = nil) then
  begin
    PopupMenu1.Items.Add(NewItem(
      edHistory.Text, 0, False, True, RestoreText, 0, ''));
  end;
end;

procedure TFormButtonEdits.RestoreText(Sender: TObject);
begin
  edHistory.Text := StripHotkey ((Sender as TMenuItem).Caption);
end;

end.
