unit MainFormUnit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, ComCtrls,
  StdCtrls, ExtCtrls, ActnList, Buttons, IniPropStorage, CheckLst, ExtDlgs,
  EditBtn, DividerBevel, RTTICtrls, ssepan_laz_utility, ssepan_laz_application,
  SomeModel,DefaultTranslator ;

type

  { TMainForm }

  TMainForm = class(TForm)
    ActionWindowNewWindow: TAction;
    ActionHelpLicenceInformation: TAction;
    ActionHelpCheckForUpdates: TAction;
    ActionHelpAbout: TAction;
    ActionWindowTile: TAction;
    ActionWindowCascade: TAction;
    ActionWindowArrangeAll: TAction;
    ActionWindowHide: TAction;
    ActionWindowShow: TAction;
    ActionHelpHelpContents: TAction;
    ActionHelpHelpIndex: TAction;
    ActionHelpOnlineHelp: TAction;
    ActionEditPreferences: TAction;
    ActionEditRefresh: TAction;
    ActionEditGoTo: TAction;
    ActionEditReplace: TAction;
    ActionEditFind: TAction;
    ActionFileExit: TAction;
    ActionFilePrintSetup: TAction;
    ActionEditPasteSpecial: TAction;
    ActionEditSelectAll: TAction;
    ActionEditPaste: TAction;
    ActionEditCopy: TAction;
    ActionEditCut: TAction;
    ActionEditRedo: TAction;
    ActionEditUndo: TAction;
    ActionFilePrint: TAction;
    ActionFileSaveAs: TAction;
    ActionFileSave: TAction;
    ActionFileOpen: TAction;
    ActionFileNew: TAction;
    ActionList1: TActionList;
    SomeBooleanCheckBox: TCheckBox;
    SomeDateDateEdit: TDateEdit;
    DividerBevel1: TDividerBevel;
    DividerBevel2: TDividerBevel;
    SomeStringEdit: TEdit;
    SomeIntegerEdit: TEdit;
    IniPropStorage1: TIniPropStorage;
    SomeStringLabel: TLabel;
    SomeIntegerLabel: TLabel;
    SomeDateLabel: TLabel;
    sbEditCopy: TSpeedButton;
    sbEditCut: TSpeedButton;
    sbEditFind: TSpeedButton;
    sbEditPaste: TSpeedButton;
    sbEditPreferences: TSpeedButton;
    sbHelpContents: TSpeedButton;
    sbEditRedo: TSpeedButton;
    ImageList1: TImageList;
    sbEditRefresh: TSpeedButton;
    sbEditReplace: TSpeedButton;
    sbEditUndo: TSpeedButton;
    sbFileOpen: TSpeedButton;
    sbFilePrint: TSpeedButton;
    sbFileSave: TSpeedButton;
    sbFileSaveAs: TSpeedButton;
    sbFileNew: TSpeedButton;
    imgActionIcon: TImage;
    imgDirtyIcon: TImage;
    lblErrorMessage: TLabel;
    lblStatusMessage: TLabel;
    MainMenu: TMainMenu;
    MenuEditRefresh: TMenuItem;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuFileExit: TMenuItem;
    MenuEdit: TMenuItem;
    MenuEditUndo: TMenuItem;
    MenuEditRedo: TMenuItem;
    MenuItem15: TMenuItem;
    MenuEditSelectAll: TMenuItem;
    MenuEditCut: TMenuItem;
    MenuEditCopy: TMenuItem;
    MenuEditPaste: TMenuItem;
    MenuFile: TMenuItem;
    MenuEditPasteSpecial: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem21: TMenuItem;
    MenuEditFind: TMenuItem;
    MenuEditReplace: TMenuItem;
    MenuEditGoTo: TMenuItem;
    MenuEditPreferences: TMenuItem;
    MenuWindow: TMenuItem;
    MenuWindowNewWindow: TMenuItem;
    MenuWindowTile: TMenuItem;
    MenuWindowCascade: TMenuItem;
    MenuWindowArrangeAll: TMenuItem;
    MenuFileNew: TMenuItem;
    MenuItem30: TMenuItem;
    MenuWindowHide: TMenuItem;
    MenuWindowShow: TMenuItem;
    MenuHelp: TMenuItem;
    MenuHelpContents: TMenuItem;
    MenuHelpIndex: TMenuItem;
    MenuHelpOnlineHelp: TMenuItem;
    MenuItem37: TMenuItem;
    MenuHelpLicenceInfo: TMenuItem;
    MenuHelpCheckForUpdates: TMenuItem;
    MenuFileOpen: TMenuItem;
    MenuItem40: TMenuItem;
    MenuHelpAbout: TMenuItem;
    MenuFileSave: TMenuItem;
    MenuFileSaveAs: TMenuItem;
    MenuItem7: TMenuItem;
    MenuFilePrint: TMenuItem;
    MenuFilePrintSetup: TMenuItem;
    pnlStatusBar: TPanel;
    ProgressBar: TProgressBar;
    Toolbar: TToolBar;
    procedure ActionEditCopyOnExecute(Sender: TObject);
    procedure ActionEditCutOnExecute(Sender: TObject);
    procedure ActionEditFindOnExecute(Sender: TObject);
    procedure ActionEditGoToOnExecute(Sender: TObject);
    procedure ActionEditPasteExecute(Sender: TObject);
    procedure ActionEditPasteSpecialOnExecute(Sender: TObject);
    procedure ActionEditPreferencesOnExecute(Sender: TObject);
    procedure ActionEditRedoOnExecute(Sender: TObject);
    procedure ActionEditRefreshOnExecute(Sender: TObject);
    procedure ActionEditReplaceOnExecute(Sender: TObject);
    procedure ActionEditSelectAllOnExecute(Sender: TObject);
    procedure ActionEditUndoOnExecute(Sender: TObject);
    procedure ActionFileExitOnExecute(Sender: TObject);
    procedure ActionFileOpenOnExecute(Sender: TObject);
    procedure ActionFilePrintOnExecute(Sender: TObject);
    procedure ActionFilePrintSetupOnExecute(Sender: TObject);
    procedure ActionFileSaveAsOnExecute(Sender: TObject);
    procedure ActionFileSaveOnExecute(Sender: TObject);
    procedure ActionFileNewOnExecute(Sender: TObject);
    procedure ActionHelpAboutOnExecute(Sender: TObject);
    procedure ActionHelpCheckForUpdatesOnExecute(Sender: TObject);
    procedure ActionHelpHelpContentsOnExecute(Sender: TObject);
    procedure ActionHelpHelpIndexOnExecute(Sender: TObject);
    procedure ActionHelpLicenceInformationOnExecute(Sender: TObject);
    procedure ActionHelpOnlineHelpOnExecute(Sender: TObject);
    procedure ActionWindowArrangeAllExecute(Sender: TObject);
    procedure ActionWindowCascadeOnExecute(Sender: TObject);
    procedure ActionWindowHideExecute(Sender: TObject);
    procedure ActionWindowNewWindowOnExecute(Sender: TObject);
    procedure ActionWindowShowExecute(Sender: TObject);
    procedure ActionWindowTileOnExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IniPropStorage1RestoreProperties(Sender: TObject);
    procedure IniPropStorageSaveProperties(Sender: TObject);
  private

  public

  end;

var
  MainForm: TMainForm;

implementation

{$R *.lfm}

{ TMainForm }
procedure TMainForm.FormCreate(Sender: TObject);
begin

end;

procedure TMainForm.FormDestroy(Sender: TObject);
begin

end;

procedure TMainForm.FormShow(Sender: TObject);
var
   //objIniFile:TIniPropStorage;
   sSomeString:String;
begin

        //IniPropStorage1.IniFileName:=ExtractFilePath(Application.ExeName)+'.ini';
        //IniPropStorage1.IniSection:='SomeSection';
        //sSomeString:=objIniFile.StoredValue['SomeString'];
        //ShowMessage(sSomeString);
end;

procedure TMainForm.IniPropStorage1RestoreProperties(Sender: TObject);
begin
  try
    //MainForm.Left   := StrToInt(IniPropStorage1.StoredValue['Left']);
    //MainForm.Top   := StrToInt(IniPropStorage1.StoredValue['Top']);
    //MainForm.Width   := StrToInt(IniPropStorage1.StoredValue['Width']);
    //MainForm.Height   := StrToInt(IniPropStorage1.StoredValue['Height']);
  except
      //not a critical error of values missing (""), as they will be the first time;
      on E: Exception do
        LogErrorToFile(FormatErrorForLog(E.Message , 'IniPropStorage1RestoreProperties' , E.HelpContext.ToString));
  end;
end;

procedure TMainForm.IniPropStorageSaveProperties(Sender: TObject);
begin
  try
  //IniPropStorage1.StoredValue['Left'] := MainForm.Left.ToString();
  //IniPropStorage1.StoredValue['Top'] := MainForm.Top.ToString();
  //IniPropStorage1.StoredValue['Width'] := MainForm.Width.ToString();
  //IniPropStorage1.StoredValue['Height'] := MainForm.Height.ToString();
  except
      on E: Exception do
        LogErrorToFile(FormatErrorForLog(E.Message , 'IniPropStorageSaveProperties' , E.HelpContext.ToString));
  end;
end;

procedure TMainForm.FormClose(Sender: TObject; var CloseAction: TCloseAction);
var
   //objIniFile:TIniPropStorage;
   sSomeString:String;
begin
    // sSomeString:=sSomeString+'*';
    //IniPropStorage1.IniFileName:=ExtractFilePath(Application.ExeName)+'.ini';
    //IniPropStorage1.IniSection:='SomeSection';
    //IniPropStorage1.StoredValue['SomeString']:=sSomeString;
    //IniPropStorage1.Save;
end;

{ ViewModel  }

{Utility}
procedure delayFor(dt: DWORD);
var
  tc : DWORD;
begin
  tc := GetTickCount64;
  repeat
    application.ProcessMessages;
  until (GetTickCount64 > tc + dt) or (Application.Terminated);
end;

function Something():Boolean;
begin
    Application.ProcessMessages;
    delayFor(3000);
    Something:=True;
end;


{Actions}

{File}
procedure TMainForm.ActionFileNewOnExecute(Sender: TObject);
var
   sStatusMessage:String;
   sErrorMessage:String;
begin
   try
       try
           //clear status, error messages at beginning of every action
          sStatusMessage:='FileNew...';
          sErrorMessage:='';

          //use progress bar (marquee) with action icon (where available) in status bar
          StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon, sbFileNew.Glyph);

          //perform sender disable/enable in all actions
          TAction(Sender).Enabled := False;

          If Something() Then
          begin
             sStatusMessage := 'FileNew done.'  ;
          end
          Else
          begin
             sStatusMessage := 'FileNew cancelled.' ;
          End;
       finally
         //always do something
         TAction(Sender).Enabled := True;
         ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
       end;
     except
         on E: Exception do
         begin
            sErrorMessage:=FormatErrorForLog(E.Message , 'FileNew' , E.HelpContext.ToString);
            StopProgressBar('', sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
            LogErrorToFile(sErrorMessage);
         end;
     end;
end;

procedure TMainForm.ActionFileOpenOnExecute(Sender: TObject);
var
   sStatusMessage:String;
   sErrorMessage:String;
begin
   try
     try
         //clear status, error messages at beginning of every action
        sStatusMessage:='FileOpen...';
        sErrorMessage:='';

        //use progress bar (marquee) with action icon (where available) in status bar
        StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon, sbFileOpen.Glyph);//, sbFileNew.Images[0].Image, True, 33);

        //perform sender disable/enable in all actions
        TAction(Sender).Enabled := False;

        If Something() Then
        begin
           sStatusMessage := 'FileOpen done.'  ;
        end
        Else
        begin
           sStatusMessage := 'FileOpen cancelled.' ;
        End;
     finally
       //always do something
       TAction(Sender).Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
     end;
   except
       on E: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(E.Message , 'FileOpen' , E.HelpContext.ToString);
          StopProgressBar('', sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
          LogErrorToFile(sErrorMessage);
       end;
   end;

end;

procedure TMainForm.ActionFileSaveOnExecute(Sender: TObject);
var
   sStatusMessage:String;
   sErrorMessage:String;
begin
   try
     try
       //clear status, error messages at beginning of every action
      sStatusMessage:='FileSave...';
      sErrorMessage:='';

      //use progress bar (marquee) with action icon (where available) in status bar
      StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon, sbFileSave.Glyph);//, sbFileNew.Images[0].Image, True, 33);

      //perform sender disable/enable in all actions
      TAction(Sender).Enabled := False;

        If Something() Then
        begin
           sStatusMessage := 'FileSave done.'  ;
        end
        Else
        begin
           sStatusMessage := 'FileSave cancelled.' ;
        End;
     finally
       //always do something
       TAction(Sender).Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
     end;
   except
       on E: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(E.Message , 'FileSave' , E.HelpContext.ToString);
          StopProgressBar('', sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
          LogErrorToFile(sErrorMessage);
       end;

   end;

end;

procedure TMainForm.ActionFileSaveAsOnExecute(Sender: TObject);
var
   sStatusMessage:String;
   sErrorMessage:String;
begin
   try
     try
     //clear status, error messages at beginning of every action
    sStatusMessage:='FileSaveAs...';
    sErrorMessage:='';

    //use progress bar (marquee) with action icon (where available) in status bar
    StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon, sbFileSaveAs.Glyph);//, sbFileNew.Images[0].Image, True, 33);

    //perform sender disable/enable in all actions
    TAction(Sender).Enabled := False;

        If Something() Then
        begin
           sStatusMessage := 'FileSaveAs done.'  ;
        end
        Else
        begin
           sStatusMessage := 'FileSaveAs cancelled.' ;
        End;
     finally
       //always do something
       TAction(Sender).Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
     end;
   except
       on E: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(E.Message , 'FileSaveAs' , E.HelpContext.ToString);
          StopProgressBar('', sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
          LogErrorToFile(sErrorMessage);
       end;

   end;

end;

procedure TMainForm.ActionFilePrintOnExecute(Sender: TObject);
var
   sStatusMessage:String;
   sErrorMessage:String;
begin

   try
     try
         //clear status, error messages at beginning of every action
        sStatusMessage:='FilePrint...';
        sErrorMessage:='';

        //use progress bar (marquee) with action icon (where available) in status bar
        StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon, sbFilePrint.Glyph);//, sbFileNew.Images[0].Image, True, 33);

        //perform sender disable/enable in all actions
        TAction(Sender).Enabled := False;

        If Something() Then
        begin
           sStatusMessage := 'FilePrint done.'  ;
        end
        Else
        begin
           sStatusMessage := 'FilePrint cancelled.' ;
        End;
     finally
       //always do something
       TAction(Sender).Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
     end;
   except
       on E: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(E.Message , 'FilePrint' , E.HelpContext.ToString);
          StopProgressBar('', sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
          LogErrorToFile(sErrorMessage);
       end;

   end;

end;

procedure TMainForm.ActionFilePrintSetupOnExecute(Sender: TObject);
var
   sStatusMessage:String;
   sErrorMessage:String;
begin
   try
     try
     //clear status, error messages at beginning of every action
    sStatusMessage:='FilePrintSetup...';
    sErrorMessage:='';

    //use progress bar (marquee) with action icon (where available) in status bar
    StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon, Nil);//, sbFileNew.Images[0].Image, True, 33);

    //perform sender disable/enable in all actions
    TAction(Sender).Enabled := False;

        If Something() Then
        begin
           sStatusMessage := 'FilePrintSetup done.'  ;
        end
        Else
        begin
           sStatusMessage := 'FilePrintSetup cancelled.' ;
        End;
     finally
       //always do something
       TAction(Sender).Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
     end;
   except
       on E: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(E.Message , 'FilePrintSetup' , E.HelpContext.ToString);
          StopProgressBar('', sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
          LogErrorToFile(sErrorMessage);
       end;

   end;

end;

procedure TMainForm.ActionFileExitOnExecute(Sender: TObject);
var
   sStatusMessage:String;
   sErrorMessage:String;
begin
   try
     try
         //clear status, error messages at beginning of every action
        sStatusMessage:='FileExit...';
        sErrorMessage:='';

        //use progress bar (marquee) with action icon (where available) in status bar
        StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon, Nil);//, sbFileNew.Images[0].Image, True, 33);

        //perform sender disable/enable in all actions
        TAction(Sender).Enabled := False;

        Self.Close();
        //If Something() Then
        //begin
        //   sStatusMessage := 'FileExit done.'  ;
        //end
        //Else
        //begin
        //   sStatusMessage := 'FileExit cancelled.' ;
        //End;
     finally
       //always do something
       TAction(Sender).Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
     end;
   except
       on E: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(E.Message , 'FileExit' , E.HelpContext.ToString);
          StopProgressBar('', sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
          LogErrorToFile(sErrorMessage);
       end;

   end;

end;

{Edit}
procedure TMainForm.ActionEditUndoOnExecute(Sender: TObject);
var
   sStatusMessage:String;
   sErrorMessage:String;
begin
   try
     try
     //clear status, error messages at beginning of every action
    sStatusMessage:='EditUndo...';
    sErrorMessage:='';

    //use progress bar (marquee) with action icon (where available) in status bar
    StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon, sbEditUndo.Glyph);//, sbFileNew.Images[0].Image, True, 33);

    //perform sender disable/enable in all actions
    TAction(Sender).Enabled := False;

        If Something() Then
        begin
           sStatusMessage := 'EditUndo done.'  ;
        end
        Else
        begin
           sStatusMessage := 'EditUndo cancelled.' ;
        End;
     finally
       //always do something
       TAction(Sender).Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
     end;
   except
       on E: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(E.Message , 'EditUndo' , E.HelpContext.ToString);
          StopProgressBar('', sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
          LogErrorToFile(sErrorMessage);
       end;

   end;

end;

procedure TMainForm.ActionEditRedoOnExecute(Sender: TObject);
var
   sStatusMessage:String;
   sErrorMessage:String;
begin
   try
     try
     //clear status, error messages at beginning of every action
    sStatusMessage:='EditRedo...';
    sErrorMessage:='';

    //use progress bar (marquee) with action icon (where available) in status bar
    StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon, sbEditRedo.Glyph);//, sbFileNew.Images[0].Image, True, 33);

    //perform sender disable/enable in all actions
    TAction(Sender).Enabled := False;

        If Something() Then
        begin
           sStatusMessage := 'EditRedo done.'  ;
        end
        Else
        begin
           sStatusMessage := 'EditRedo cancelled.' ;
        End;
     finally
       //always do something
       TAction(Sender).Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
     end;
   except
       on E: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(E.Message , 'EditRedo' , E.HelpContext.ToString);
          StopProgressBar('', sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
          LogErrorToFile(sErrorMessage);
       end;

   end;

end;

procedure TMainForm.ActionEditSelectAllOnExecute(Sender: TObject);
var
   sStatusMessage:String;
   sErrorMessage:String;
begin
   try
     try
     //clear status, error messages at beginning of every action
    sStatusMessage:='EditSelectAll...';
    sErrorMessage:='';

    //use progress bar (marquee) with action icon (where available) in status bar
    StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon, Nil);//, sbFileNew.Images[0].Image, True, 33);

    //perform sender disable/enable in all actions
    TAction(Sender).Enabled := False;

        If Something() Then
        begin
           sStatusMessage := 'EditSelectAll done.'  ;
        end
        Else
        begin
           sStatusMessage := 'EditSelectAll cancelled.' ;
        End;
     finally
       //always do something
       TAction(Sender).Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
     end;
   except
       on E: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(E.Message , 'EditSelectAll' , E.HelpContext.ToString);
          StopProgressBar('', sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
          LogErrorToFile(sErrorMessage);
       end;

   end;

end;

procedure TMainForm.ActionEditCutOnExecute(Sender: TObject);
var
   sStatusMessage:String;
   sErrorMessage:String;
begin
    try
     try
     //clear status, error messages at beginning of every action
    sStatusMessage:='EditCut...';
    sErrorMessage:='';

    //use progress bar (marquee) with action icon (where available) in status bar
    StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon, sbEditCut.Glyph);//, sbFileNew.Images[0].Image, True, 33);

    //perform sender disable/enable in all actions
    TAction(Sender).Enabled := False;

        If Something() Then
        begin
           sStatusMessage := 'EditCut done.'  ;
        end
        Else
        begin
           sStatusMessage := 'EditCut cancelled.' ;
        End;
     finally
       //always do something
       TAction(Sender).Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
     end;
   except
       on E: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(E.Message , 'EditCut' , E.HelpContext.ToString);
          StopProgressBar('', sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
          LogErrorToFile(sErrorMessage);
       end;

   end;

end;

procedure TMainForm.ActionEditCopyOnExecute(Sender: TObject);
var
   sStatusMessage:String;
   sErrorMessage:String;
begin
   try
     try
     //clear status, error messages at beginning of every action
    sStatusMessage:='EditCopy...';
    sErrorMessage:='';

    //use progress bar (marquee) with action icon (where available) in status bar
    StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon, sbEditCopy.Glyph);//, sbFileNew.Images[0].Image, True, 33);

    //perform sender disable/enable in all actions
    TAction(Sender).Enabled := False;

        If Something() Then
        begin
           sStatusMessage := 'EditCopy done.'  ;
        end
        Else
        begin
           sStatusMessage := 'EditCopy cancelled.' ;
        End;
     finally
       //always do something
       TAction(Sender).Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
     end;
   except
       on E: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(E.Message , 'EditCopy' , E.HelpContext.ToString);
          StopProgressBar('', sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
          LogErrorToFile(sErrorMessage);
       end;

   end;

end;

procedure TMainForm.ActionEditPasteExecute(Sender: TObject);
var
   sStatusMessage:String;
   sErrorMessage:String;
begin
    try
     try
     //clear status, error messages at beginning of every action
    sStatusMessage:='EditPaste...';
    sErrorMessage:='';

    //use progress bar (marquee) with action icon (where available) in status bar
    StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon, sbEditPaste.Glyph);//, sbFileNew.Images[0].Image, True, 33);

    //perform sender disable/enable in all actions
    TAction(Sender).Enabled := False;

        If Something() Then
        begin
           sStatusMessage := 'EditPaste done.'  ;
        end
        Else
        begin
           sStatusMessage := 'EditPaste cancelled.' ;
        End;
     finally
       //always do something
       TAction(Sender).Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
     end;
   except
       on E: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(E.Message , 'EditPaste' , E.HelpContext.ToString);
          StopProgressBar('', sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
          LogErrorToFile(sErrorMessage);
       end;

   end;

end;

procedure TMainForm.ActionEditPasteSpecialOnExecute(Sender: TObject);
var
   sStatusMessage:String;
   sErrorMessage:String;
begin
   try
     try
     //clear status, error messages at beginning of every action
    sStatusMessage:='EditPasteSpecial...';
    sErrorMessage:='';

    //use progress bar (marquee) with action icon (where available) in status bar
    StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon, Nil);//, sbFileNew.Images[0].Image, True, 33);

    //perform sender disable/enable in all actions
    TAction(Sender).Enabled := False;

        If Something() Then
        begin
           sStatusMessage := 'EditPasteSpecial done.'  ;
        end
        Else
        begin
           sStatusMessage := 'EditPasteSpecial cancelled.' ;
        End;
     finally
       //always do something
       TAction(Sender).Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
     end;
   except
       on E: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(E.Message , 'EditPasteSpecial' , E.HelpContext.ToString);
          StopProgressBar('', sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
          LogErrorToFile(sErrorMessage);
       end;

   end;

end;

procedure TMainForm.ActionEditFindOnExecute(Sender: TObject);
var
   sStatusMessage:String;
   sErrorMessage:String;
begin
    try
     try
     //clear status, error messages at beginning of every action
    sStatusMessage:='EditFind...';
    sErrorMessage:='';

    //use progress bar (marquee) with action icon (where available) in status bar
    StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon, sbEditFind.Glyph);//, sbFileNew.Images[0].Image, True, 33);

    //perform sender disable/enable in all actions
    TAction(Sender).Enabled := False;

        If Something() Then
        begin
           sStatusMessage := 'EditFind done.'  ;
        end
        Else
        begin
           sStatusMessage := 'EditFind cancelled.' ;
        End;
     finally
       //always do something
       TAction(Sender).Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
     end;
   except
       on E: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(E.Message , 'EditFind' , E.HelpContext.ToString);
          StopProgressBar('', sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
          LogErrorToFile(sErrorMessage);
       end;

   end;

end;

procedure TMainForm.ActionEditReplaceOnExecute(Sender: TObject);
var
   sStatusMessage:String;
   sErrorMessage:String;
begin
   try
     try
     //clear status, error messages at beginning of every action
    sStatusMessage:='EditReplace...';
    sErrorMessage:='';

    //use progress bar (marquee) with action icon (where available) in status bar
    StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon, sbEditReplace.Glyph);//, sbFileNew.Images[0].Image, True, 33);

    //perform sender disable/enable in all actions
    TAction(Sender).Enabled := False;

        If Something() Then
        begin
           sStatusMessage := 'EditReplace done.'  ;
        end
        Else
        begin
           sStatusMessage := 'EditReplace cancelled.' ;
        End;
     finally
       //always do something
       TAction(Sender).Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
     end;
   except
       on E: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(E.Message , 'EditReplace' , E.HelpContext.ToString);
          StopProgressBar('', sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
          LogErrorToFile(sErrorMessage);
       end;

   end;

end;

procedure TMainForm.ActionEditGoToOnExecute(Sender: TObject);
var
   sStatusMessage:String;
   sErrorMessage:String;
begin
    try
     try
     //clear status, error messages at beginning of every action
    sStatusMessage:='EditGoTo...';
    sErrorMessage:='';

    //use progress bar (marquee) with action icon (where available) in status bar
    StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon, Nil);//, sbFileNew.Images[0].Image, True, 33);

    //perform sender disable/enable in all actions
    TAction(Sender).Enabled := False;

        If Something() Then
        begin
           sStatusMessage := 'EditGoTo done.'  ;
        end
        Else
        begin
           sStatusMessage := 'EditGoTo cancelled.' ;
        End;
     finally
       //always do something
       TAction(Sender).Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
     end;
   except
       on E: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(E.Message , 'EditGoTo' , E.HelpContext.ToString);
          StopProgressBar('', sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
          LogErrorToFile(sErrorMessage);
       end;

   end;

end;

procedure TMainForm.ActionEditRefreshOnExecute(Sender: TObject);
var
   sStatusMessage:String;
   sErrorMessage:String;
begin
   try
     try
     //clear status, error messages at beginning of every action
    sStatusMessage:='EditRefresh...';
    sErrorMessage:='';

    //use progress bar (marquee) with action icon (where available) in status bar
    StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon, sbEditRefresh.Glyph);//, sbFileNew.Images[0].Image, True, 33);

    //perform sender disable/enable in all actions
    TAction(Sender).Enabled := False;

        If Something() Then
        begin
           sStatusMessage := 'EditRefresh done.'  ;
        end
        Else
        begin
           sStatusMessage := 'EditRefresh cancelled.' ;
        End;
     finally
       //always do something
       TAction(Sender).Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
     end;
   except
       on E: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(E.Message , 'EditRefresh' , E.HelpContext.ToString);
          StopProgressBar('', sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
          LogErrorToFile(sErrorMessage);
       end;

   end;

end;

procedure TMainForm.ActionEditPreferencesOnExecute(Sender: TObject);
var
   sStatusMessage:String;
   sErrorMessage:String;
begin
    try
     try
     //clear status, error messages at beginning of every action
    sStatusMessage:='EditPreferences...';
    sErrorMessage:='';

    //use progress bar (marquee) with action icon (where available) in status bar
    StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon, sbEditPreferences.Glyph);//, sbFileNew.Images[0].Image, True, 33);

    //perform sender disable/enable in all actions
    TAction(Sender).Enabled := False;

        If Something() Then
        begin
           sStatusMessage := 'EditPreferences done.'  ;
        end
        Else
        begin
           sStatusMessage := 'EditPreferences cancelled.' ;
        End;
     finally
       //always do something
       TAction(Sender).Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
     end;
   except
       on E: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(E.Message , 'EditPreferences' , E.HelpContext.ToString);
          StopProgressBar('', sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
          LogErrorToFile(sErrorMessage);
       end;

   end;

end;

{Window}
procedure TMainForm.ActionWindowCascadeOnExecute(Sender: TObject);
var
   sStatusMessage:String;
   sErrorMessage:String;
begin
   try
     try
     //clear status, error messages at beginning of every action
    sStatusMessage:='WindowCascade...';
    sErrorMessage:='';

    //use progress bar (marquee) with action icon (where available) in status bar
    StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon, Nil);//, sbFileNew.Images[0].Image, True, 33);

    //perform sender disable/enable in all actions
    TAction(Sender).Enabled := False;

        If Something() Then
        begin
           sStatusMessage := 'WindowCascade done.'  ;
        end
        Else
        begin
           sStatusMessage := 'WindowCascade cancelled.' ;
        End;
     finally
       //always do something
       TAction(Sender).Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
     end;
   except
       on E: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(E.Message , 'WindowCascade' , E.HelpContext.ToString);
          StopProgressBar('', sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
          LogErrorToFile(sErrorMessage);
       end;

   end;

end;

procedure TMainForm.ActionWindowHideExecute(Sender: TObject);
var
   sStatusMessage:String;
   sErrorMessage:String;
begin
   try
     try
     //clear status, error messages at beginning of every action
    sStatusMessage:='WindowHide...';
    sErrorMessage:='';

    //use progress bar (marquee) with action icon (where available) in status bar
    StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon, Nil);//, sbFileNew.Images[0].Image, True, 33);

    //perform sender disable/enable in all actions
    TAction(Sender).Enabled := False;

        If Something() Then
        begin
           sStatusMessage := 'WindowHide done.'  ;
        end
        Else
        begin
           sStatusMessage := 'WindowHide cancelled.' ;
        End;
     finally
       //always do something
       TAction(Sender).Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
     end;
   except
       on E: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(E.Message , 'WindowHide' , E.HelpContext.ToString);
          StopProgressBar('', sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
          LogErrorToFile(sErrorMessage);
       end;

   end;

end;

procedure TMainForm.ActionWindowNewWindowOnExecute(Sender: TObject);
var
   sStatusMessage:String;
   sErrorMessage:String;
begin
   try
     try
     //clear status, error messages at beginning of every action
    sStatusMessage:='WindowNewWindow...';
    sErrorMessage:='';

    //use progress bar (marquee) with action icon (where available) in status bar
    StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon, Nil);//, sbFileNew.Images[0].Image, True, 33);

    //perform sender disable/enable in all actions
    TAction(Sender).Enabled := False;

        If Something() Then
        begin
           sStatusMessage := 'WindowNewWindow done.'  ;
        end
        Else
        begin
           sStatusMessage := 'WindowNewWindow cancelled.' ;
        End;
     finally
       //always do something
       TAction(Sender).Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
     end;
   except
       on E: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(E.Message , 'WindowNewWindow' , E.HelpContext.ToString);
          StopProgressBar('', sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
          LogErrorToFile(sErrorMessage);
       end;

   end;

end;

procedure TMainForm.ActionWindowShowExecute(Sender: TObject);
var
   sStatusMessage:String;
   sErrorMessage:String;
begin
    try
     try
     //clear status, error messages at beginning of every action
    sStatusMessage:='WindowShow...';
    sErrorMessage:='';

    //use progress bar (marquee) with action icon (where available) in status bar
    StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon, Nil);//, sbFileNew.Images[0].Image, True, 33);

    //perform sender disable/enable in all actions
    TAction(Sender).Enabled := False;

        If Something() Then
        begin
           sStatusMessage := 'WindowShow done.'  ;
        end
        Else
        begin
           sStatusMessage := 'WindowShow cancelled.' ;
        End;
     finally
       //always do something
       TAction(Sender).Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
     end;
   except
       on E: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(E.Message , 'WindowShow' , E.HelpContext.ToString);
          StopProgressBar('', sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
          LogErrorToFile(sErrorMessage);
       end;

   end;

end;

procedure TMainForm.ActionWindowTileOnExecute(Sender: TObject);
var
   sStatusMessage:String;
   sErrorMessage:String;
begin
   try
     try
     //clear status, error messages at beginning of every action
    sStatusMessage:='WindowTile...';
    sErrorMessage:='';

    //use progress bar (marquee) with action icon (where available) in status bar
    StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon, Nil);//, sbFileNew.Images[0].Image, True, 33);

    //perform sender disable/enable in all actions
    TAction(Sender).Enabled := False;

        If Something() Then
        begin
           sStatusMessage := 'WindowTile done.'  ;
        end
        Else
        begin
           sStatusMessage := 'WindowTile cancelled.' ;
        End;
     finally
       //always do something
       TAction(Sender).Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
     end;
   except
       on E: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(E.Message , 'WindowTile' , E.HelpContext.ToString);
          StopProgressBar('', sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
          LogErrorToFile(sErrorMessage);
       end;

   end;

end;

procedure TMainForm.ActionWindowArrangeAllExecute(Sender: TObject);
var
   sStatusMessage:String;
   sErrorMessage:String;
begin
   try
     try
     //clear status, error messages at beginning of every action
    sStatusMessage:='WindowArrangeAll...';
    sErrorMessage:='';

    //use progress bar (marquee) with action icon (where available) in status bar
    StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon, Nil);//, sbFileNew.Images[0].Image, True, 33);

    //perform sender disable/enable in all actions
    TAction(Sender).Enabled := False;

        If Something() Then
        begin
           sStatusMessage := 'WindowArrangeAll done.'  ;
        end
        Else
        begin
           sStatusMessage := 'WindowArrangeAll cancelled.' ;
        End;
     finally
       //always do something
       TAction(Sender).Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
     end;
   except
       on E: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(E.Message , 'WindowArrangeAll' , E.HelpContext.ToString);
          StopProgressBar('', sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
          LogErrorToFile(sErrorMessage);
       end;

   end;

end;

{Help}
procedure TMainForm.ActionHelpHelpContentsOnExecute(Sender: TObject);
var
   sStatusMessage:String;
   sErrorMessage:String;
begin
   try
     try
     //clear status, error messages at beginning of every action
    sStatusMessage:='HelpHelpContents...';
    sErrorMessage:='';

    //use progress bar (marquee) with action icon (where available) in status bar
    StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon, sbHelpContents.Glyph);//, sbFileNew.Images[0].Image, True, 33);

    //perform sender disable/enable in all actions
    TAction(Sender).Enabled := False;

        If Something() Then
        begin
           sStatusMessage := 'HelpHelpContents done.'  ;
        end
        Else
        begin
           sStatusMessage := 'HelpHelpContents cancelled.' ;
        End;
     finally
       //always do something
       TAction(Sender).Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
     end;
   except
       on E: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(E.Message , 'HelpHelpContents' , E.HelpContext.ToString);
          StopProgressBar('', sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
          LogErrorToFile(sErrorMessage);
       end;

   end;
end;

procedure TMainForm.ActionHelpHelpIndexOnExecute(Sender: TObject);
var
   sStatusMessage:String;
   sErrorMessage:String;
begin
   try
     try
     //clear status, error messages at beginning of every action
    sStatusMessage:='HelpHelpIndex...';
    sErrorMessage:='';

    //use progress bar (marquee) with action icon (where available) in status bar
    StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon, Nil);//, sbFileNew.Images[0].Image, True, 33);

    //perform sender disable/enable in all actions
    TAction(Sender).Enabled := False;

        If Something() Then
        begin
           sStatusMessage := 'HelpHelpIndex done.'  ;
        end
        Else
        begin
           sStatusMessage := 'HelpHelpIndex cancelled.' ;
        End;
     finally
       //always do something
       TAction(Sender).Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
     end;
   except
       on E: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(E.Message , 'HelpHelpIndex' , E.HelpContext.ToString);
          StopProgressBar('', sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
          LogErrorToFile(sErrorMessage);
       end;

   end;
end;

procedure TMainForm.ActionHelpLicenceInformationOnExecute(Sender: TObject);
var
   sStatusMessage:String;
   sErrorMessage:String;
begin
   try
     try
     //clear status, error messages at beginning of every action
    sStatusMessage:='HelpLicenceInformation...';
    sErrorMessage:='';

    //use progress bar (marquee) with action icon (where available) in status bar
    StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon, Nil);//, sbFileNew.Images[0].Image, True, 33);

    //perform sender disable/enable in all actions
    TAction(Sender).Enabled := False;

        If Something() Then
        begin
           sStatusMessage := 'HelpLicenceInformation done.'  ;
        end
        Else
        begin
           sStatusMessage := 'HelpLicenceInformation cancelled.' ;
        End;
     finally
       //always do something
       TAction(Sender).Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
     end;
   except
       on E: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(E.Message , 'HelpLicenceInformation' , E.HelpContext.ToString);
          StopProgressBar('', sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
          LogErrorToFile(sErrorMessage);
       end;

   end;
end;

procedure TMainForm.ActionHelpOnlineHelpOnExecute(Sender: TObject);
var
   sStatusMessage:String;
   sErrorMessage:String;
begin
   try
     try
     //clear status, error messages at beginning of every action
    sStatusMessage:='HelpOnlineHelp...';
    sErrorMessage:='';

    //use progress bar (marquee) with action icon (where available) in status bar
    StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon, Nil);//, sbFileNew.Images[0].Image, True, 33);

    //perform sender disable/enable in all actions
    TAction(Sender).Enabled := False;

        If Something() Then
        begin
           sStatusMessage := 'HelpOnlineHelp done.'  ;
        end
        Else
        begin
           sStatusMessage := 'HelpOnlineHelp cancelled.' ;
        End;
     finally
       //always do something
       TAction(Sender).Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
     end;
   except
       on E: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(E.Message , 'HelpOnlineHelp' , E.HelpContext.ToString);
          StopProgressBar('', sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
          LogErrorToFile(sErrorMessage);
       end;

   end;
end;

procedure TMainForm.ActionHelpCheckForUpdatesOnExecute(Sender: TObject);
var
   sStatusMessage:String;
   sErrorMessage:String;
begin
   try
     try
     //clear status, error messages at beginning of every action
    sStatusMessage:='HelpCheckForUpdates...';
    sErrorMessage:='';

    //use progress bar (marquee) with action icon (where available) in status bar
    StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon, Nil);//, sbFileNew.Images[0].Image, True, 33);

    //perform sender disable/enable in all actions
    TAction(Sender).Enabled := False;

        If Something() Then
        begin
           sStatusMessage := 'HelpCheckForUpdates done.'  ;
        end
        Else
        begin
           sStatusMessage := 'HelpCheckForUpdates cancelled.' ;
        End;
     finally
       //always do something
       TAction(Sender).Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
     end;
   except
       on E: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(E.Message , 'HelpCheckForUpdates' , E.HelpContext.ToString);
          StopProgressBar('', sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
          LogErrorToFile(sErrorMessage);
       end;

   end;

end;

procedure TMainForm.ActionHelpAboutOnExecute(Sender: TObject);
var
   sStatusMessage:String;
   sErrorMessage:String;
begin
   try
     try
     //clear status, error messages at beginning of every action
    sStatusMessage:='HelpAbout...';
    sErrorMessage:='';

    //use progress bar (marquee) with action icon (where available) in status bar
    StartProgressBarWithPicture
    (
     sStatusMessage,
     sErrorMessage,
     True,
     False,
     0,
     100,
     lblStatusMessage,
     lblErrorMessage,
     ProgressBar,
     imgActionIcon,
     MenuHelpAbout.Bitmap
     );//, sbFileNew.Images[0].Image, True, 33);

    //perform sender disable/enable in all actions
    TAction(Sender).Enabled := False;

        If Something() Then
        begin
           sStatusMessage := 'HelpAbout done.'  ;
        end
        Else
        begin
           sStatusMessage := 'HelpAbout cancelled.' ;
        End;
     finally
       //always do something
       TAction(Sender).Enabled := True;
       StopProgressBar
       (
        sStatusMessage,
        sErrorMessage,
        lblStatusMessage,
        lblErrorMessage,
        ProgressBar,
        imgActionIcon
        );
     end;
   except
         on E: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(E.Message , 'HelpAbout' , E.HelpContext.ToString);
          StopProgressBar
          (
           '',
           sErrorMessage,
           lblStatusMessage,
           lblErrorMessage,
           ProgressBar,
           imgActionIcon
           );
          LogErrorToFile(sErrorMessage);
       end;

   end;
end;


end.

