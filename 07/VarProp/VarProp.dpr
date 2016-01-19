program VarProp;

uses
  Forms,
  VarProp_MainForm in 'VarProp_MainForm.pas' {FormVarProp};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormVarProp, FormVarProp);
  Application.Run;
end.
