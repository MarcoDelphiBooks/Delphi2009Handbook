program DfmTest;

uses
  Forms,
  DfmTest_MainForm in 'DfmTest_MainForm.pas' {FormDfmTest},
  DfmTest_Second in 'DfmTest_Second.pas' {FormSecond};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormDfmTest, FormDfmTest);
  Application.CreateForm(TFormSecond, FormSecond);
  Application.Run;
end.
