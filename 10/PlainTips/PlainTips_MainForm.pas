unit PlainTips_MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ScreenTips, StdCtrls;

type
  TFormPlainTips = class(TForm)
    edText: TEdit;
    btnAdd: TButton;
    ListBox1: TListBox;
    ScreenTipsPopup1: TScreenTipsPopup;
    ScreenTipsPopup2: TScreenTipsPopup;
    ScreenTipsPopup3: TScreenTipsPopup;
    ScreenTipsManager1: TScreenTipsManager;
    procedure btnAddClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPlainTips: TFormPlainTips;

implementation

{$R *.dfm}

procedure TFormPlainTips.btnAddClick(Sender: TObject);
var
  strText: string;
begin
  strText := edText.Text;
  if ListBox1.Items.IndexOf (strText) = -1 then
    ListBox1.Items.Add (strText)
end;

end.
