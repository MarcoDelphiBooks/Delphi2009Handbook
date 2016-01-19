program ProjManagerTest;

uses
  Forms,
  MainForm in 'MainForm.pas' {Form30},
  HelperUnit in '..\Shared\HelperUnit.pas',
  MyUtils in '..\Shared\MyUtils.pas',
  DialogBox in 'DialogBox.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm30, Form30);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
