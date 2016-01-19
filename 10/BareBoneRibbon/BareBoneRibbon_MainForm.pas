unit BareBoneRibbon_MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RibbonLunaStyleActnCtrls, Ribbon, ScreenTips, ToolWin,
  ActnMan, ActnCtrls, RibbonActnCtrls;

type
  TFormBareBoneRibbon = class(TForm)
    Ribbon1: TRibbon;
    RibbonPage1: TRibbonPage;
    RibbonGroup1: TRibbonGroup;
    RibbonGroup2: TRibbonGroup;
    cbShowBorder: TCheckBox;
    RibbonPage2: TRibbonPage;
    RibbonGroup3: TRibbonGroup;
    RibbonSpinEdit1: TRibbonSpinEdit;
    Button2: TButton;
    RibbonGroup4: TRibbonGroup;
    RibbonGroup5: TRibbonGroup;
    procedure cbShowBorderClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBareBoneRibbon: TFormBareBoneRibbon;

implementation

{$R *.dfm}

procedure TFormBareBoneRibbon.Button2Click(Sender: TObject);
begin
  RibbonSpinEdit1.Value := 100;
end;

procedure TFormBareBoneRibbon.cbShowBorderClick(Sender: TObject);
begin
  Ribbon1.UseCustomFrame := cbShowBorder.Checked;
  self.RecreateWnd;
end;

end.
