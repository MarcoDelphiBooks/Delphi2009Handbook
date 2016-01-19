unit EditFamily_MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls;

type
  TFormEditFamily = class(TForm)
    edRightAlign: TEdit;
    edNumber: TEdit;
    memoLowercase: TMemo;
    cbTextHint: TComboBox;
    btnUpcase: TButton;
    btnAlign: TButton;
    edTextHint: TEdit;
    edPassword: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure btnUpcaseClick(Sender: TObject);
    procedure btnAlignClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEditFamily: TFormEditFamily;

implementation

{$R *.dfm}

procedure TFormEditFamily.btnAlignClick(Sender: TObject);
begin
  edRightAlign.Alignment := TAlignment (
    (Ord (edRightAlign.Alignment) + 1) mod (Ord(High(TAlignment)) + 1));
end;

procedure TFormEditFamily.btnUpcaseClick(Sender: TObject);
begin
  memoLowercase.Lines.Text := 'Mixed Case Text Added';
  ShowMessage (memoLowercase.Lines.Text);

  memoLowercase.CharCase := ecUpperCase;
  memoLowercase.Lines.Text := 'Cantù';
end;

end.
