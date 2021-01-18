unit MainFormUnit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, ComCtrls,
  StdCtrls, ExtCtrls, ActnList, Buttons, IniPropStorage, DividerBevel,
  RTTICtrls;

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
    DividerBevel1: TDividerBevel;
    DividerBevel2: TDividerBevel;
    IniPropStorage1: TIniPropStorage;
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
   objIniFile:TIniPropStorage;
   sInput:String;
begin
       {
        objIniFile.IniFileName:='TODO';
        objIniFile.IniSection:='TODO';
        sInput:=objIniFile.StoredValue['TODO'];
       }
end;

procedure TMainForm.IniPropStorage1RestoreProperties(Sender: TObject);
begin

end;

procedure TMainForm.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin

end;

{ ViewModel  }

//temp

procedure delayFor(const ms: double);
var
   delayUntil:TDateTime;
begin
   delayUntil:=now + ms;
  repeat
    application.ProcessMessages;
  until now > delayUntil;
end;

function Something():Boolean;
begin
    Sleep(1000);//delayFor(0.001);
    Something:=True;

end;

procedure StartProgressBarWithPicture(const sStatusMessage:String ; sErrorMessage : String; objImage : TImage; isMarqueeProgressBarStyle : Boolean; fProgressBarValue : Double);
begin
end;

{Actions}

{File}
procedure TMainForm.ActionFileNewOnExecute(Sender: TObject);
var
   sStatusMessage:String;
begin
   try
       try
          sStatusMessage:='FileNew...';
         {objStatusBarViewModel.}//StartProgressBarWithPicture(sStatusMessage, Null, ImageList1.GetBitmap(TODO) [0{TAction(Sender).ImageIndex}], True, 33);
         //if Sender is TAction then
         //begin
           TAction(Sender).Enabled := False;
         //end;

         If Something() Then //TODO:FileNew
         begin
             sStatusMessage := 'FileNew done.'  ;
         end
         Else
         begin
             sStatusMessage := 'FileNew cancelled.' ;
         End;


     except
       lblErrorMessage.Caption:='FileNew failed.';
       //Debug Log.FormatError(Error.Text, Error.Where, Error.BackTrace)

       {objStatusBarViewModel.}//StopProgressBar(Null, 'FileNew failed.')
     end;
   finally
     //always do something
     TAction(Sender).Enabled := True;
     lblStatusMessage.Caption:=sStatusMessage;
     {objStatusBarViewModel.}//StopProgressBar(sStatusMessage)
   end;

end;

procedure TMainForm.ActionFileOpenOnExecute(Sender: TObject);
begin
   try
     try
     lblStatusMessage.Caption:='FileOpen';

     except
       lblErrorMessage.Caption:='Error:FileOpen';
     end;
   finally
     //always do something
   end;

end;

procedure TMainForm.ActionFileSaveOnExecute(Sender: TObject);
begin
   try
     try
     lblStatusMessage.Caption:='FileSave';

     except
       lblErrorMessage.Caption:='Error:FileSave';
     end;
   finally
     //always do something
   end;

end;

procedure TMainForm.ActionFileSaveAsOnExecute(Sender: TObject);
begin
   try
     try
     lblStatusMessage.Caption:='FileSaveAs';

     except
       lblErrorMessage.Caption:='Error:FileSaveAs';
     end;
   finally
     //always do something
   end;

end;

procedure TMainForm.ActionFilePrintOnExecute(Sender: TObject);
var sStatusMessage : String;

begin

   try
     try
     lblStatusMessage.Caption:='FilePrint';

     except
       lblErrorMessage.Caption:='Error:FilePrint';
     end;
   finally
     //always do something
   end;

end;

procedure TMainForm.ActionFilePrintSetupOnExecute(Sender: TObject);
begin
   try
     try
     lblStatusMessage.Caption:='FilePrintSetup';

     except
       lblErrorMessage.Caption:='Error:FilePrintSetup';
     end;
   finally
     //always do something
   end;

end;

procedure TMainForm.ActionFileExitOnExecute(Sender: TObject);
begin
   try
     try
     lblStatusMessage.Caption:='FileExit';

     except
       lblErrorMessage.Caption:='Error:FileExit';
     end;
   finally
     //always do something
   end;

end;

{Edit}
procedure TMainForm.ActionEditUndoOnExecute(Sender: TObject);
begin
   try
     try
     lblStatusMessage.Caption:='EditUndo';

     except
       lblErrorMessage.Caption:='Error:EditUndo';
     end;
   finally
     //always do something
   end;

end;

procedure TMainForm.ActionEditRedoOnExecute(Sender: TObject);
begin
   try
     try
     lblStatusMessage.Caption:='EditRedo';

     except
       lblErrorMessage.Caption:='Error:EditRedo';
     end;
   finally
     //always do something
   end;

end;

procedure TMainForm.ActionEditRefreshOnExecute(Sender: TObject);
begin
   try
     try
     lblStatusMessage.Caption:='EditRefresh';

     except
       lblErrorMessage.Caption:='Error:EditRefresh';
     end;
   finally
     //always do something
   end;

end;

procedure TMainForm.ActionEditReplaceOnExecute(Sender: TObject);
begin
   try
     try
     lblStatusMessage.Caption:='EditReplace';

     except
       lblErrorMessage.Caption:='Error:EditReplace';
     end;
   finally
     //always do something
   end;

end;

procedure TMainForm.ActionEditSelectAllOnExecute(Sender: TObject);
begin
   try
     try
     lblStatusMessage.Caption:='EditSelectAll';

     except
       lblErrorMessage.Caption:='Error:EditSelectAll';
     end;
   finally
     //always do something
   end;

end;

procedure TMainForm.ActionEditCutOnExecute(Sender: TObject);
begin
    try
     try
     lblStatusMessage.Caption:='EditCut';

     except
       lblErrorMessage.Caption:='Error:EditCut';
     end;
   finally
     //always do something
   end;

end;

procedure TMainForm.ActionEditFindOnExecute(Sender: TObject);
begin
    try
     try
     lblStatusMessage.Caption:='EditFind';

     except
       lblErrorMessage.Caption:='Error:EditFind';
     end;
   finally
     //always do something
   end;

end;

procedure TMainForm.ActionEditGoToOnExecute(Sender: TObject);
begin
    try
     try
     lblStatusMessage.Caption:='EditGoTo';

     except
       lblErrorMessage.Caption:='Error:EditGoTo';
     end;
   finally
     //always do something
   end;

end;

procedure TMainForm.ActionEditPasteExecute(Sender: TObject);
begin
    try
     try
     lblStatusMessage.Caption:='EditPaste';

     except
       lblErrorMessage.Caption:='Error:EditPaste';
     end;
   finally
     //always do something
   end;

end;

procedure TMainForm.ActionEditPasteSpecialOnExecute(Sender: TObject);
begin
   try
     try
     lblStatusMessage.Caption:='EditPasteSpecial';

     except
       lblErrorMessage.Caption:='Error:EditPasteSpecial';
     end;
   finally
     //always do something
   end;

end;

procedure TMainForm.ActionEditPreferencesOnExecute(Sender: TObject);
begin
    try
     try
     lblStatusMessage.Caption:='EditPreferences';

     except
       lblErrorMessage.Caption:='Error:EditPreferences';
     end;
   finally
     //always do something
   end;

end;

procedure TMainForm.ActionEditCopyOnExecute(Sender: TObject);
begin
   try
     try
     lblStatusMessage.Caption:='EditCopy';

     except
       lblErrorMessage.Caption:='Error:EditCopy';
     end;
   finally
     //always do something
   end;

end;

{Window}
procedure TMainForm.ActionWindowCascadeOnExecute(Sender: TObject);
begin
   try
     try
     lblStatusMessage.Caption:='WindowCascade';

     except
       lblErrorMessage.Caption:='Error:WindowCascade';
     end;
   finally
     //always do something
   end;

end;

procedure TMainForm.ActionWindowHideExecute(Sender: TObject);
begin
   try
     try
     lblStatusMessage.Caption:='WindowHide';

     except
       lblErrorMessage.Caption:='Error:WindowHide';
     end;
   finally
     //always do something
   end;

end;

procedure TMainForm.ActionWindowNewWindowOnExecute(Sender: TObject);
begin
   try
     try
     lblStatusMessage.Caption:='WindowNewWindow';

     except
       lblErrorMessage.Caption:='Error:WindowNewWindow';
     end;
   finally
     //always do something
   end;

end;

procedure TMainForm.ActionWindowShowExecute(Sender: TObject);
begin
    try
     try
     lblStatusMessage.Caption:='WindowShow';

     except
       lblErrorMessage.Caption:='Error:WindowShow';
     end;
   finally
     //always do something
   end;

end;

procedure TMainForm.ActionWindowTileOnExecute(Sender: TObject);
begin
   try
     try
     lblStatusMessage.Caption:='WindowTile';

     except
       lblErrorMessage.Caption:='Error:WindowTile';
     end;
   finally
     //always do something
   end;

end;


procedure TMainForm.ActionWindowArrangeAllExecute(Sender: TObject);
begin
   try
     try
     lblStatusMessage.Caption:='WindowArrangeAll';

     except
       lblErrorMessage.Caption:='Error:WindowArrangeAll';
     end;
   finally
     //always do something
   end;

end;

{Help}
procedure TMainForm.ActionHelpHelpContentsOnExecute(Sender: TObject);
begin
   try
     try
     lblStatusMessage.Caption:='HelpHelpContents';

     except
       lblErrorMessage.Caption:='Error:HelpHelpContents';
     end;
   finally
     //always do something
   end;
end;

procedure TMainForm.ActionHelpHelpIndexOnExecute(Sender: TObject);
begin
   try
     try
     lblStatusMessage.Caption:='HelpHelpIndex';

     except
       lblErrorMessage.Caption:='Error:HelpHelpIndex';
     end;
   finally
     //always do something
   end;
end;

procedure TMainForm.ActionHelpLicenceInformationOnExecute(Sender: TObject);
begin
   try
     try
     lblStatusMessage.Caption:='HelpLicenceInformation';

     except
       lblErrorMessage.Caption:='Error:HelpLicenceInformation';
     end;
   finally
     //always do something
   end;
end;

procedure TMainForm.ActionHelpOnlineHelpOnExecute(Sender: TObject);
begin
   try
     try
     lblStatusMessage.Caption:='HelpOnlineHelp';

     except
       lblErrorMessage.Caption:='Error:HelpOnlineHelp';
     end;
   finally
     //always do something
   end;
end;

procedure TMainForm.ActionHelpCheckForUpdatesOnExecute(Sender: TObject);
begin
   try
     try
     lblStatusMessage.Caption:='HelpCheckForUpdates';

     except
       lblErrorMessage.Caption:='Error:HelpCheckForUpdates';
     end;
   finally
     //always do something
   end;

end;

procedure TMainForm.ActionHelpAboutOnExecute(Sender: TObject);
begin
   try
     try
     lblStatusMessage.Caption:='HelpAbout';

     except
       ShowMessage('Error:HelpAbout');
       lblErrorMessage.Caption:='Error:HelpAbout';
     end;
   finally
     //always do something
   end;
end;

{MainMenu}

{File}

{Edit}

{Window}

 {Help}

end.

