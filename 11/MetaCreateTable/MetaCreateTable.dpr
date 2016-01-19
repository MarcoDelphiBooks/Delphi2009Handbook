program MetaCreateTable;

uses
  Forms,
  MetaCreateTableForm in 'MetaCreateTableForm.pas' {FormMetaCreateTable};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMetaCreateTable, FormMetaCreateTable);
  Application.Run;
end.
