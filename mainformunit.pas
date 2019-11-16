unit MainFormUnit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, ComCtrls,
  StdCtrls, ExtCtrls, ActnList,   Buttons, DividerBevel, RTTICtrls;

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
    procedure FormCreate(Sender: TObject);
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

{Actions}

{File}
procedure TMainForm.ActionFileNewOnExecute(Sender: TObject);
begin

end;

procedure TMainForm.ActionFileOpenOnExecute(Sender: TObject);
begin

end;

procedure TMainForm.ActionFileSaveOnExecute(Sender: TObject);
begin

end;

procedure TMainForm.ActionFileSaveAsOnExecute(Sender: TObject);
begin

end;

procedure TMainForm.ActionFilePrintOnExecute(Sender: TObject);
begin

end;

procedure TMainForm.ActionFilePrintSetupOnExecute(Sender: TObject);
begin

end;

procedure TMainForm.ActionFileExitOnExecute(Sender: TObject);
begin

end;

{Edit}
procedure TMainForm.ActionEditUndoOnExecute(Sender: TObject);
begin

end;

procedure TMainForm.ActionEditRedoOnExecute(Sender: TObject);
begin

end;

procedure TMainForm.ActionEditRefreshOnExecute(Sender: TObject);
begin

end;

procedure TMainForm.ActionEditReplaceOnExecute(Sender: TObject);
begin

end;

procedure TMainForm.ActionEditSelectAllOnExecute(Sender: TObject);
begin

end;

procedure TMainForm.ActionEditCutOnExecute(Sender: TObject);
begin

end;

procedure TMainForm.ActionEditFindOnExecute(Sender: TObject);
begin

end;

procedure TMainForm.ActionEditGoToOnExecute(Sender: TObject);
begin

end;

procedure TMainForm.ActionEditPasteExecute(Sender: TObject);
begin

end;

procedure TMainForm.ActionEditPasteSpecialOnExecute(Sender: TObject);
begin

end;

procedure TMainForm.ActionEditPreferencesOnExecute(Sender: TObject);
begin

end;

procedure TMainForm.ActionEditCopyOnExecute(Sender: TObject);
begin

end;

{Window}
procedure TMainForm.ActionWindowCascadeOnExecute(Sender: TObject);
begin

end;

procedure TMainForm.ActionWindowHideExecute(Sender: TObject);
begin

end;

procedure TMainForm.ActionWindowNewWindowOnExecute(Sender: TObject);
begin

end;

procedure TMainForm.ActionWindowShowExecute(Sender: TObject);
begin

end;

procedure TMainForm.ActionWindowTileOnExecute(Sender: TObject);
begin

end;

procedure TMainForm.ActionWindowArrangeAllExecute(Sender: TObject);
begin

end;

{Help}
procedure TMainForm.ActionHelpHelpContentsOnExecute(Sender: TObject);
begin
end;

procedure TMainForm.ActionHelpHelpIndexOnExecute(Sender: TObject);
begin

end;

procedure TMainForm.ActionHelpLicenceInformationOnExecute(Sender: TObject);
begin

end;

procedure TMainForm.ActionHelpOnlineHelpOnExecute(Sender: TObject);
begin

end;

procedure TMainForm.ActionHelpAboutOnExecute(Sender: TObject);
begin
       try
         try
         ShowMessage('About');
         //WriteLn('About');

         except
           ShowMessage('Error:About');
         end;
       finally
         //always do something
       end;
end;

procedure TMainForm.ActionHelpCheckForUpdatesOnExecute(Sender: TObject);
begin

end;

{MainMenu}

{File}

{Edit}

{Window}

 {Help}

end.

