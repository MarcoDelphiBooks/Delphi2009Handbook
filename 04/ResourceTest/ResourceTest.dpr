program ResourceTest;

{$R *.dres}

uses
  Forms,
  ResourceTest_MainForm in 'ResourceTest_MainForm.pas' {FormResourceTest};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormResourceTest, FormResourceTest);
  Application.Run;
end.
