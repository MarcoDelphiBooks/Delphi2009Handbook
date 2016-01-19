unit DataRibbon_MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdActns, DBClientActns, DBActns, ActnList, DB, DBClient, Grids,
  DBGrids, Ribbon, RibbonLunaStyleActnCtrls, ActnMan, ImgList, ToolWin,
  ActnCtrls;

type
  TFormDataRibbon = class(TForm)
    ImageList1: TImageList;
    ActionManager1: TActionManager;
    Ribbon1: TRibbon;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    ClientDataSet1: TClientDataSet;
    DataSetFirst1: TDataSetFirst;
    DataSetPrior1: TDataSetPrior;
    DataSetNext1: TDataSetNext;
    DataSetLast1: TDataSetLast;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    DataSetRefresh1: TDataSetRefresh;
    ClientDataSetUndo1: TClientDataSetUndo;
    FileOpen1: TFileOpen;
    FileExit1: TFileExit;
    RibbonPage1: TRibbonPage;
    RibbonGroup1: TRibbonGroup;
    RibbonGroup2: TRibbonGroup;
    RibbonGroup3: TRibbonGroup;
    procedure FormCreate(Sender: TObject);
    procedure FileOpen1Accept(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDataRibbon: TFormDataRibbon;

implementation

{$R *.dfm}

procedure TFormDataRibbon.FileOpen1Accept(Sender: TObject);
begin
  ClientDataSet1.Close;
  ClientDataSet1.FileName := FileOpen1.Dialog.FileName;
  Ribbon1.DocumentName := ClientDataSet1.FileName;
  ClientDataSet1.Open;
end;

procedure TFormDataRibbon.FormCreate(Sender: TObject);
begin
  ClientDataSet1.Open;
  Ribbon1.DocumentName := ClientDataSet1.FileName;
end;

end.
