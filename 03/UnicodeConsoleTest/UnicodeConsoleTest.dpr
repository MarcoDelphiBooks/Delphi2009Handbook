program UnicodeConsoleTest;

{$APPTYPE CONSOLE}

uses
  SysUtils, Classes, Windows;

var
  aString: string;
  textWriter1: TTextWriter;
  fileStream1: TFileStream;

begin
  aString := 'My ten Euros (10€)';
  try
    fileStream1 := TFileStream.Create(
      GetStdHandle(STD_OUTPUT_HANDLE));
    textWriter1 := TStreamWriter.Create (fileStream1, TEncoding.Unicode);
    try
      textWriter1.Write (aString);
    finally
      textWriter1.Free;
      fileStream1.Free;
    end;
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
