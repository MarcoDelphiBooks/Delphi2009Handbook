unit RadioGroupDemo_MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFormRadioGroupDemo = class(TForm)
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    RadioGroup3: TRadioGroup;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRadioGroupDemo: TFormRadioGroupDemo;

implementation

{$R *.dfm}

end.
