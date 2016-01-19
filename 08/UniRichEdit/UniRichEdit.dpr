program UniRichEdit;

uses
  Forms,
  UniRichEdit_MainForm in 'UniRichEdit_MainForm.pas' {FormUniRichEdit};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormUniRichEdit, FormUniRichEdit);
  Application.Run;
end.
