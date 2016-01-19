program StreamDsDemo;

uses
  Forms,
  StreamDsForm in 'StreamDsForm.pas' {Form1},
  MdDsStream in 'MdDsStream.pas',
  MdDsCustom in 'MdDsCustom.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
 end.
