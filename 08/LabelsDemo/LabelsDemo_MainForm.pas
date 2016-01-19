unit LabelsDemo_MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFormLabelsDemo = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    LinkLabel1: TLinkLabel;
    LinkLabel2: TLinkLabel;
    procedure btnIncGlowClick(Sender: TObject);
    procedure LinkLabel1LinkClick(Sender: TObject; const Link: string;
      LinkType: TSysLinkType);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLabelsDemo: TFormLabelsDemo;

implementation

{$R *.dfm}

procedure TFormLabelsDemo.btnIncGlowClick(Sender: TObject);
begin
  Label1.GlowSize := Label1.GlowSize + 1;
end;

procedure TFormLabelsDemo.LinkLabel1LinkClick(Sender: TObject;
  const Link: string; LinkType: TSysLinkType);
begin
  ShowMessage ('Link clicked: ' + Link);
end;

end.
