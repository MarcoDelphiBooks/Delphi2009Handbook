unit ButtonsDemo_MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, ImgList;

type
  TFormButtonsDemo = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    ImageList1: TImageList;
    PopupMenu1: TPopupMenu;
    one1: TMenuItem;
    two1: TMenuItem;
    three1: TMenuItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormButtonsDemo: TFormButtonsDemo;

implementation

{$R *.dfm}

end.
