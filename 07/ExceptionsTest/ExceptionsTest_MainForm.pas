unit ExceptionsTest_MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormExceptions = class(TForm)
    btnCallNested: TButton;
    Memo1: TMemo;
    btnTwoNested: TButton;
    btnRaising: TButton;
    btnNotFound: TButton;
    btnTraditional: TButton;
    procedure btnCallNestedClick(Sender: TObject);
    procedure btnTwoNestedClick(Sender: TObject);
    procedure btnRaisingClick(Sender: TObject);
    procedure btnNotFoundClick(Sender: TObject);
    procedure btnTraditionalClick(Sender: TObject);
  private
    procedure Log (const strMsg: string);
  public
    procedure ClassicReraise;
    procedure MethodWithNestedException;
    procedure MethodWithTwoNestedExceptions;
  end;

var
  FormExceptions: TFormExceptions;

implementation

{$R *.dfm}

procedure TFormExceptions.btnCallNestedClick(Sender: TObject);
begin
  try
    MethodWithNestedException;
  except
    on E: Exception do
    begin
      Log ('Message: ' + E.Message);
      Log ('ToString: ' + E.ToString);
      if Assigned (E.BaseException) then
        Log ('BaseException Message: ' + E.BaseException.Message);
      if Assigned (E.InnerException) then
        Log ('InnerException Message: ' + E.InnerException.Message);
    end;
  end;
end;

type
  ECustomException = class (Exception)
  protected
    procedure RaisingException(P: PExceptionRecord); override;
  end;

procedure TFormExceptions.btnNotFoundClick(Sender: TObject);
begin
  raise EProgrammerNotFound.Create('Who wrote this?');
end;

procedure TFormExceptions.btnRaisingClick(Sender: TObject);
begin
  raise ECustomException.Create('A message');
end;

procedure TFormExceptions.btnTraditionalClick(Sender: TObject);
begin
  try
    ClassicReraise;
  except
    on E: Exception do
      Log ('Message: ' + E.Message);
  end;
end;

procedure TFormExceptions.btnTwoNestedClick(Sender: TObject);
begin
  try
    MethodWithTwoNestedExceptions;
  except
    on E: Exception do
    begin
      Log ('Message: ' + E.Message);
      Log ('ToString: ' + E.ToString);
      if Assigned (E.BaseException) then
        Log ('BaseException Message: ' + E.BaseException.Message);
      if Assigned (E.InnerException) then
        Log ('InnerException Message: ' + E.InnerException.Message);
    end;
  end;
end;

procedure TFormExceptions.ClassicReraise;
begin
  try
    // do something...
    raise Exception.Create('Hello');
  except on E: Exception do
    // try some fix...
    raise Exception.Create('Another: ' + E.Message);
  end;
end;

procedure TFormExceptions.Log(const strMsg: string);
begin
  Memo1.Lines.Add (strMsg);
end;

procedure TFormExceptions.MethodWithNestedException;
begin
  try
    raise Exception.Create('Hello');
  except
    Exception.RaiseOuterException (Exception.Create('Another'));
  end;
end;

procedure TFormExceptions.MethodWithTwoNestedExceptions;
begin
  try
    raise Exception.Create('Hello');
  except
    begin
      try
        Exception.RaiseOuterException (Exception.Create('Another'));
      except
        Exception.RaiseOuterException (Exception.Create('A third'));
      end;
    end;
  end;
end;

{ ECustomException }

procedure ECustomException.RaisingException(P: PExceptionRecord);
begin
  // log exception information (to file would be smarter!)
  FormExceptions.Log('Exception Addr: ' + IntToHex (
    Integer(P.ExceptionAddress), 8));
  FormExceptions.Log('Exception Mess: ' + Message);

  // modify the message
  Message := Message + ' (filtered)';

  // standard processing
  inherited;
end;

end.
