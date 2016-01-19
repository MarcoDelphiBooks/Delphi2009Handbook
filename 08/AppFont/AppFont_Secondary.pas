unit AppFont_Secondary;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormSecondary = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    btnGetMyFont: TButton;
    procedure btnGetMyFontClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSecondary: TFormSecondary;

implementation

{$R *.dfm}

procedure TFormSecondary.btnGetMyFontClick(Sender: TObject);
begin
  Edit1.Text := btnGetMyFont.Font.Name;
end;

end.
