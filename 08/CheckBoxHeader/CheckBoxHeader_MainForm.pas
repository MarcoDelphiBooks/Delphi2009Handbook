unit CheckBoxHeader_MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls;

type
  TFormCheckBoxHeader = class(TForm)
    HeaderControl1: THeaderControl;
    Memo1: TMemo;
    procedure HeaderControl1SectionCheck(HeaderControl: TCustomHeaderControl;
      Section: THeaderSection);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCheckBoxHeader: TFormCheckBoxHeader;

implementation

{$R *.dfm}

uses
  StrUtils;

procedure TFormCheckBoxHeader.HeaderControl1SectionCheck(
  HeaderControl: TCustomHeaderControl; Section: THeaderSection);
begin
  Memo1.Lines.Add (Section.Text +
    IfThen (Section.Checked, ' checked', ' unchecked'));
end;

end.
