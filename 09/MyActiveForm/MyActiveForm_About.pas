unit MyActiveForm_About;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons;

type
  TMyActiveFormAbout = class(TForm)
    CtlImage: TSpeedButton;
    NameLbl: TLabel;
    OkBtn: TButton;
    CopyrightLbl: TLabel;
    DescLbl: TLabel;
  end;

procedure ShowMyActiveFormAbout;

implementation

{$R *.DFM}

procedure ShowMyActiveFormAbout;
begin
  with TMyActiveFormAbout.Create(nil) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

end.
