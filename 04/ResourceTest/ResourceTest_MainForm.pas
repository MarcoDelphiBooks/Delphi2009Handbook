unit ResourceTest_MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFormResourceTest = class(TForm)
    Image1: TImage;
    btnIcon: TButton;
    btnGif: TButton;
    btnResString: TButton;
    procedure btnIconClick(Sender: TObject);
    procedure btnGifClick(Sender: TObject);
    procedure btnResStringClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormResourceTest: TFormResourceTest;

implementation

{$R *.dfm}

procedure TFormResourceTest.btnGifClick(Sender: TObject);
begin
  Image1.Picture.Bitmap.LoadFromResourceName(hInstance, 'Bitmap_Shipping');
end;

procedure TFormResourceTest.btnIconClick(Sender: TObject);
begin
  Icon.LoadFromResourceName(hInstance, 'Icon_Factory');
  Application.Icon.LoadFromResourceName(hInstance, 'Icon_Factory');
end;

resourcestring
  strFolder = 'C:\Users';

procedure TFormResourceTest.btnResStringClick(Sender: TObject);
begin
  // just to prove it keeps working
  ShowMessage (strFolder);
end;

end.
