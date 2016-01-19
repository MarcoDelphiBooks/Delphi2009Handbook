unit RibbonEditor_MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, Ribbon, RibbonLunaStyleActnCtrls, ActnList, ActnMan,
  ToolWin, ActnCtrls, ExtActns, StdActns, StdCtrls, ComCtrls, ActnMenus,
  RibbonActnMenus, ExtCtrls;

type
  TRibbonEditorForm = class(TForm)
    ActionManager1: TActionManager;
    Ribbon1: TRibbon;
    listStandard: TImageList;
    RichEdit1: TRichEdit;
    EditCut1: TEditCut;
    EditCopy1: TEditCopy;
    EditPaste1: TEditPaste;
    EditSelectAll1: TEditSelectAll;
    EditUndo1: TEditUndo;
    EditDelete1: TEditDelete;
    RichEditBold1: TRichEditBold;
    RichEditItalic1: TRichEditItalic;
    RichEditUnderline1: TRichEditUnderline;
    RichEditStrikeOut1: TRichEditStrikeOut;
    RichEditBullets1: TRichEditBullets;
    RichEditAlignLeft1: TRichEditAlignLeft;
    RichEditAlignRight1: TRichEditAlignRight;
    RichEditAlignCenter1: TRichEditAlignCenter;
    FileOpen1: TFileOpen;
    FileOpenWith1: TFileOpenWith;
    FileSaveAs1: TFileSaveAs;
    FilePrintSetup1: TFilePrintSetup;
    FilePageSetup1: TFilePageSetup;
    FileRun1: TFileRun;
    FileExit1: TFileExit;
    BrowseForFolder1: TBrowseForFolder;
    FontEdit1: TFontEdit;
    DownLoadURL1: TDownLoadURL;
    RibbonPage1: TRibbonPage;
    RibbonPage2: TRibbonPage;
    RibbonGroup1: TRibbonGroup;
    RibbonGroup2: TRibbonGroup;
    RibbonGroup3: TRibbonGroup;
    RibbonGroup4: TRibbonGroup;
    RibbonGroup5: TRibbonGroup;
    RibbonGroup6: TRibbonGroup;
    RibbonApplicationMenuBar1: TRibbonApplicationMenuBar;
    actMRU: TAction;
    listLarge: TImageList;
    RibbonQuickAccessToolbar1: TRibbonQuickAccessToolbar;
    RibbonGroup7: TRibbonGroup;
    RibbonGroup8: TRibbonGroup;
    ButtonedEdit1: TButtonedEdit;
    TreeView1: TTreeView;
    procedure DownLoadURL1AfterDownload(Sender: TObject);
    procedure DownLoadURL1DownloadProgress(Sender: TDownLoadURL; Progress,
      ProgressMax: Cardinal; StatusCode: TURLDownloadStatus; StatusText: string;
      var Cancel: Boolean);
    procedure FileOpen1Accept(Sender: TObject);
    procedure FileSaveAs1Accept(Sender: TObject);
    procedure Ribbon1RecentItemClick(Sender: TObject; FileName: string;
      Index: Integer);
//    procedure actMRUExecute(Sender: TObject);
  private
    { Private declarations }
  public
    procedure AddToMru (const strFilename: string);
  end;

var
  RibbonEditorForm: TRibbonEditorForm;

implementation

{$R *.dfm}

uses
  RibbonActnCtrls, Menus;

// manual processing of the MRU list

//procedure TRibbonEditorForm.actMRUExecute(Sender: TObject);
//var
//  strCaption: string;
//begin
//  strCaption := (actMRU.ActionComponent as
//    TRibbonBaseButtonControl).Caption;
//  strCaption := StripHotkey (strCaption);
//  strCaption := Copy (strCaption, 4, maxint);
//
//  RichEdit1.Lines.Clear;
//  RichEdit1.Lines.LoadFromFile(strCaption);
//  Ribbon1.DocumentName := strCaption;
//end;

// manual processing of the MRU list

//procedure TRibbonEditorForm.AddToMru(const strFilename: string);
//var
//  MRUItem: TOptionItem;
//begin
//  MRUItem := RibbonApplicationMenuBar1.RecentItems.Add;
//  MRUItem.Action := actMRU;
//  MRUItem.Caption := strFilename;
//end;

// autoamtic processing of the MRU list
procedure TRibbonEditorForm.AddToMru(const strFilename: string);
begin
  Ribbon1.AddRecentItem(strFilename);
end;

procedure TRibbonEditorForm.DownLoadURL1AfterDownload(Sender: TObject);
begin
  RichEdit1.Lines.Clear;
  RichEdit1.Lines.LoadFromFile(DownLoadURL1.Filename);
end;

procedure TRibbonEditorForm.DownLoadURL1DownloadProgress(Sender: TDownLoadURL;
  Progress, ProgressMax: Cardinal; StatusCode: TURLDownloadStatus;
  StatusText: string; var Cancel: Boolean);
begin
  RichEdit1.Lines.Add (StatusText);
end;

procedure TRibbonEditorForm.FileOpen1Accept(Sender: TObject);
begin
  RichEdit1.Lines.Clear;
  RichEdit1.Lines.LoadFromFile(FileOpen1.Dialog.FileName);
  Ribbon1.DocumentName := FileOpen1.Dialog.FileName;
  AddToMru(FileOpen1.Dialog.FileName);
end;

procedure TRibbonEditorForm.FileSaveAs1Accept(Sender: TObject);
begin
  RichEdit1.Lines.SaveToFile(FileSaveAs1.Dialog.FileName);
  Ribbon1.DocumentName := FileSaveAs1.Dialog.FileName;
  AddToMru(FileSaveAs1.Dialog.FileName);
end;

// autoamtic processing of the MRU list
procedure TRibbonEditorForm.Ribbon1RecentItemClick(Sender: TObject;
  FileName: string; Index: Integer);
begin
  RichEdit1.Lines.Clear;
  RichEdit1.Lines.LoadFromFile(FileName);
  Ribbon1.DocumentName := FileName;
end;

end.
