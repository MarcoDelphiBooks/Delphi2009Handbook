unit ClassExplorerDemo_Classes;

interface

type
  TBaseClass = class
  private
    FSomeData: Integer;
    procedure SetSomeData(const Value: Integer);
  public
    property SomeData: Integer read FSomeData write SetSomeData;
  strict private
    function GetAnotherInteger : Integer;
    procedure SetAnotherInteger(val : Integer);
  public
    property AnotherInteger : Integer read GetAnotherInteger write SetAnotherInteger;
  strict private
  var
    FAnotherInteger:Integer;
  end;

  TDerivedClass = class (TBaseClass)
  private
    FSomeText: string;
    procedure SetSomeText(const Value: string);
  public
    property SomeText: string read FSomeText write SetSomeText;
  end;

implementation

{ TBaseClass }


procedure TBaseClass.SetSomeData(const Value: Integer);
begin
  FSomeData := Value;
end;

{ TDerivedClass }


procedure TDerivedClass.SetSomeText(const Value: string);
begin
  FSomeText := Value;
end;

function TBaseClass.GetAnotherInteger: Integer;
begin
	result := FAnotherInteger;
end;

procedure TBaseClass.SetAnotherInteger(val : Integer);
begin
	FAnotherInteger := val;
end;

end.
