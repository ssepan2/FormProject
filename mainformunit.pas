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
     ShowMessage('FileOpen');
     //WriteLn('About');

     except
       ShowMessage('Error:FileOpen');
     end;
   finally
     //always do something
   end;

end;

procedure TMainForm.ActionFileSaveOnExecute(Sender: TObject);
begin
   try
     try
     ShowMessage('FileSave');
     //WriteLn('About');

     except
       ShowMessage('Error:FileSave');
     end;
   finally
     //always do something
   end;

end;

procedure TMainForm.ActionFileSaveAsOnExecute(Sender: TObject);
begin
   try
     try
     ShowMessage('FileSaveAs');
     //WriteLn('About');

     except
       ShowMessage('Error:FileSaveAs');
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
     //ShowMessage('FilePrint');
     //WriteLn('About');
     lblStatusMessage.Caption:='FilePrint';

     except
       ShowMessage('Error:FilePrint');
     end;
   finally
     //always do something
   end;

end;

procedure TMainForm.ActionFilePrintSetupOnExecute(Sender: TObject);
begin
   try
     try
     ShowMessage('FilePrintSetup');
     //WriteLn('About');

     except
       ShowMessage('Error:FilePrintSetup');
     end;
   finally
     //always do something
   end;

end;

procedure TMainForm.ActionFileExitOnExecute(Sender: TObject);
begin
   try
     try
     ShowMessage('FileExit');
     //WriteLn('About');

     except
       ShowMessage('Error:FileExit');
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
     ShowMessage('EditUndo');
     //WriteLn('About');

     except
       ShowMessage('Error:EditUndo');
     end;
   finally
     //always do something
   end;

end;

procedure TMainForm.ActionEditRedoOnExecute(Sender: TObject);
begin
   try
     try
     ShowMessage('EditRedo');
     //WriteLn('About');

     except
       ShowMessage('Error:EditRedo');
     end;
   finally
     //always do something
   end;

end;

procedure TMainForm.ActionEditRefreshOnExecute(Sender: TObject);
begin
   try
     try
     ShowMessage('EditRefresh');
     //WriteLn('About');

     except
       ShowMessage('Error:EditRefresh');
     end;
   finally
     //always do something
   end;

end;

procedure TMainForm.ActionEditReplaceOnExecute(Sender: TObject);
begin
   try
     try
     ShowMessage('EditReplace');
     //WriteLn('About');

     except
       ShowMessage('Error:EditReplace');
     end;
   finally
     //always do something
   end;

end;

procedure TMainForm.ActionEditSelectAllOnExecute(Sender: TObject);
begin
   try
     try
     ShowMessage('EditSelectAll');
     //WriteLn('About');

     except
       ShowMessage('Error:EditSelectAll');
     end;
   finally
     //always do something
   end;

end;

procedure TMainForm.ActionEditCutOnExecute(Sender: TObject);
begin
    try
     try
     ShowMessage('EditCut');
     //WriteLn('About');

     except
       ShowMessage('Error:EditCut');
     end;
   finally
     //always do something
   end;

end;

procedure TMainForm.ActionEditFindOnExecute(Sender: TObject);
begin
    try
     try
     ShowMessage('EditFind');
     //WriteLn('About');

     except
       ShowMessage('Error:EditFind');
     end;
   finally
     //always do something
   end;

end;

procedure TMainForm.ActionEditGoToOnExecute(Sender: TObject);
begin
    try
     try
     ShowMessage('EditGoTo');
     //WriteLn('About');

     except
       ShowMessage('Error:EditGoTo');
     end;
   finally
     //always do something
   end;

end;

procedure TMainForm.ActionEditPasteExecute(Sender: TObject);
begin
    try
     try
     ShowMessage('EditPaste');
     //WriteLn('About');

     except
       ShowMessage('Error:EditPaste');
     end;
   finally
     //always do something
   end;

end;

procedure TMainForm.ActionEditPasteSpecialOnExecute(Sender: TObject);
begin
   try
     try
     ShowMessage('EditPasteSpecial');
     //WriteLn('About');

     except
       ShowMessage('Error:EditPasteSpecial');
     end;
   finally
     //always do something
   end;

end;

procedure TMainForm.ActionEditPreferencesOnExecute(Sender: TObject);
begin
    try
     try
     ShowMessage('EditPreferences');
     //WriteLn('About');

     except
       ShowMessage('Error:EditPreferences');
     end;
   finally
     //always do something
   end;

end;

procedure TMainForm.ActionEditCopyOnExecute(Sender: TObject);
begin
   try
     try
     ShowMessage('EditCopy');
     //WriteLn('About');

     except
       ShowMessage('Error:EditCopy');
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
     ShowMessage('WindowCascade');
     //WriteLn('About');

     except
       ShowMessage('Error:WindowCascade');
     end;
   finally
     //always do something
   end;

end;

procedure TMainForm.ActionWindowHideExecute(Sender: TObject);
begin
   try
     try
     ShowMessage('WindowHide');
     //WriteLn('About');

     except
       ShowMessage('Error:WindowHide');
     end;
   finally
     //always do something
   end;

end;

procedure TMainForm.ActionWindowNewWindowOnExecute(Sender: TObject);
begin
   try
     try
     ShowMessage('WindowNewWindow');
     //WriteLn('About');

     except
       ShowMessage('Error:WindowNewWindow');
     end;
   finally
     //always do something
   end;

end;

procedure TMainForm.ActionWindowShowExecute(Sender: TObject);
begin
    try
     try
     ShowMessage('WindowShow');
     //WriteLn('About');

     except
       ShowMessage('Error:WindowShow');
     end;
   finally
     //always do something
   end;

end;

procedure TMainForm.ActionWindowTileOnExecute(Sender: TObject);
begin
   try
     try
     ShowMessage('WindowTile');
     //WriteLn('About');

     except
       ShowMessage('Error:WindowTile');
     end;
   finally
     //always do something
   end;

end;


procedure TMainForm.ActionWindowArrangeAllExecute(Sender: TObject);
begin
   try
     try
     ShowMessage('WindowArrangeAll');
     //WriteLn('About');

     except
       ShowMessage('Error:WindowArrangeAll');
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
     ShowMessage('HelpHelpContents');
     //WriteLn('About');

     except
       ShowMessage('Error:HelpHelpContents');
     end;
   finally
     //always do something
   end;
end;

procedure TMainForm.ActionHelpHelpIndexOnExecute(Sender: TObject);
begin
   try
     try
     ShowMessage('HelpHelpIndex');
     //WriteLn('About');

     except
       ShowMessage('Error:HelpHelpIndex');
     end;
   finally
     //always do something
   end;
end;

procedure TMainForm.ActionHelpLicenceInformationOnExecute(Sender: TObject);
begin
   try
     try
     ShowMessage('HelpLicenceInformation');
     //WriteLn('About');

     except
       ShowMessage('Error:HelpLicenceInformation');
     end;
   finally
     //always do something
   end;
end;

procedure TMainForm.ActionHelpOnlineHelpOnExecute(Sender: TObject);
begin
   try
     try
     ShowMessage('HelpOnlineHelp');
     //WriteLn('About');

     except
       ShowMessage('Error:HelpOnlineHelp');
     end;
   finally
     //always do something
   end;
end;

procedure TMainForm.ActionHelpAboutOnExecute(Sender: TObject);
begin
   try
     try
     ShowMessage('HelpAbout');
     //WriteLn('About');

     except
       ShowMessage('Error:HelpAbout');
     end;
   finally
     //always do something
   end;
end;

procedure TMainForm.ActionHelpCheckForUpdatesOnExecute(Sender: TObject);
begin
   try
     try
     ShowMessage('HelpCheckForUpdates');
     //WriteLn('About');

     except
       ShowMessage('Error:HelpCheckForUpdates');
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

