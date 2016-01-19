program BareBoneRibbon;

uses
  Forms,
  BareBoneRibbon_MainForm in 'BareBoneRibbon_MainForm.pas' {FormBareBoneRibbon};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormBareBoneRibbon, FormBareBoneRibbon);
  Application.Run;
end.
