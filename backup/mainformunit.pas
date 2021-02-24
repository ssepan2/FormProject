unit MainFormUnit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, ComCtrls,
  StdCtrls, ExtCtrls, ActnList, Buttons, IniPropStorage, CheckLst, ExtDlgs,
  EditBtn, DividerBevel, RTTICtrls, LCLType, ssepan_laz_utility, ssepan_laz_application,
  ModelBase,SomeModel,DefaultTranslator ;

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
    DividerBevel1: TDividerBevel;
    DividerBevel2: TDividerBevel;
    SomeDateDateEdit: TDateEdit;
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
    procedure SomeBooleanCheckBoxChange(Sender: TObject);
    procedure SomeDateDateEditChange(Sender: TObject);
    procedure SomeIntegerEditChange(Sender: TObject);
    procedure SomeStringEditChange(Sender: TObject);
  private

  public

  end;

const
    APP_TITLE_FORMAT : String = '''%s'' - Lazarus FreePascal GUI Generic';

var
  MainForm: TMainForm;
  objModel : TSomeModel;
  bStopControlEvents : Boolean;

implementation
{%Region PropertyChanged Handlers}
{
<summary>
 Handler for PropertyChanged on the model field 'Dirty' and others.
</summary>
}
procedure objModel_PropertyChanged(propertyName : String);
var
     sErrorMessage, formatResult:String;
begin
  try
    try
        bStopControlEvents := True;
        //TODO:consider using Object.Lock(controlname)/Object.Unlock(controlname)
        case propertyName  of
            'Key':
            begin
                //update when Key directly edited or when new/open/save/saveas
                FmtStr(formatResult,APP_TITLE_FORMAT,[objModel.Key]);
                MainForm.Caption := formatResult;

                //FmtStr(formatResult,'handled event: ''%s'' = ''%s'' ',[propertyName,objModel.Key]);
                //WriteLn(formatResult);
            end;
            'SomeString':
            begin
                MainForm.SomeStringEdit.Text := objModel.SomeString;

                //FmtStr(formatResult,'handled event: ''%s'' = ''%s'' ',[propertyName,objModel.SomeString]);
                //WriteLn(formatResult);
            end;
            'SomeInteger':
            begin
                MainForm.SomeIntegerEdit.Text := IntToStr(objModel.SomeInteger);

                //FmtStr(formatResult,'handled event: ''%s'' = ''%s'' ',[propertyName,objModel.SomeInteger.ToString()]);
                //WriteLn(formatResult);
            end;
            'SomeBoolean':
            begin
                MainForm.SomeBooleanCheckBox.Checked := objModel.SomeBoolean;

                //FmtStr(formatResult,'handled event: ''%s'' = ''%s'' ',[propertyName,objModel.SomeBoolean.ToString()]);
                //WriteLn(formatResult);
            end;
            'SomeDateTime':
            begin
                formatResult := FormatDateTime('c',objModel.SomeDateTime);
                MainForm.SomeDateDateEdit.Text := formatResult;

                //FmtStr(formatResult,'handled event: ''%s'' = ''%s'' ',[propertyName,formatResult]);
                //WriteLn(formatResult);
            end;
            'Dirty':
            begin
                MainForm.imgDirtyIcon.Visible := objModel.Dirty; //use wrapper sub in viewmodel

                //FmtStr(formatResult,'handled event: ''%s'' = ''%s'' ',[propertyName,objModel.Dirty.ToString()]);
                //WriteLn(formatResult);
            end;
            Else
            begin
                FmtStr(formatResult,'unhandled event: ''%s''',[propertyName]);
                WriteLn(formatResult);
            end;
        End; //case

    finally
           bStopControlEvents := False;
    end;
    except
      on E: Exception do
      begin
         sErrorMessage:=FormatErrorForLog(E.Message , 'objModel_PropertyChanged' , E.HelpContext.ToString);
         LogErrorToFile(sErrorMessage);
      end;
    end;
End;
{%EndRegion}


function FileNew() : Boolean;
var
   sErrorMessage:String;
   proc:  TProcArgString;
begin
  try
      try
        Application.ProcessMessages;

        proc := @objModel_PropertyChanged;

        if (objModel<>nil) then
        begin
           objModel.RemoveHandler(proc);
           objModel.Free;
        end;
        objModel := TSomeModel.Create();
        objModel.AddHandler(proc);

        objModel.RefreshModel(False); //to update view

        FileNew := True;
      finally
        //always do this
      end;
    except
        on E: Exception do
        begin
           sErrorMessage:=FormatErrorForLog(E.Message , 'FileNew' , E.HelpContext.ToString);
           LogErrorToFile(sErrorMessage);
        end;
    end;
end;

// <summary>
// Write model to settings
// </summary>
function FileSave() : Boolean;
var
   sErrorMessage:String;
begin
  try
      try
        Application.ProcessMessages;

       //SAVE
       //save properties to INI
       If Not TSomeModel.SaveToSettings(objModel,TSomeModel.C_INI_FILE) Then
       begin
           raise Exception.Create('save failed.');
       end;
       FileSave := True;
      finally
        //always do this
      end;
    except
        on E: Exception do
        begin
           sErrorMessage:=FormatErrorForLog(E.Message , 'FileSave' , E.HelpContext.ToString);
           LogErrorToFile(sErrorMessage);
        end;
    end;
end;

function FileOpen() : Boolean;
var
   sErrorMessage,filePath:String;
begin
  try
      try
        Application.ProcessMessages;

        //OPEN
        //update properties from INI
        filePath:=TSomeModel.C_INI_FILE;
        If Not TSomeModel.OpenFromSettings(objModel,filePath) Then
        begin
          raise Exception.Create('open failed.');
        End;
        FileOpen := True;

        objModel.RefreshModel(False); //to update view

      finally
        //always do this
      end;
    except
        on E: Exception do
        begin
           sErrorMessage:=FormatErrorForLog(E.Message , 'FileOpen' , E.HelpContext.ToString);
           LogErrorToFile(sErrorMessage);
        end;
    end;
end;

function CheckForSaveOrCancel() : Boolean;
var
   sErrorMessage, formatResult:String;
   cancel : Boolean;
begin
  try
      try
          If (objModel<>nil) Then
          begin
              If objModel.Dirty Then
              begin
                   cancel := False;

                  //prompt before saving
                  FmtStr(formatResult,'Save changes?: ''%s'' ',[objModel.Key]);

                  Case MessageDlg('Save As...',formatResult, mtConfirmation, [mbYes, mbNo, mbCancel], 0) of
                       mrYes:
                       begin
                          //Yes, SAVE
                          if FileSave() Then
                          begin
                            cancel := False;
                          end
                          else
                          begin
                             cancel := True;
                             raise Exception.Create('save failed.');
                          end;
                       end;
                       mrNo:
                       begin
                          //No, skip Save-or-cancel, do target action
                          cancel := False;
                       end;
                       mrCancel:
                       begin
                          //Cancel, skip Save and target action
                          cancel := True;
                       end;
                       Else
                          raise Exception.Create('unexpected response enum');
                  End; //case
              End;
          End;
      finally
             //BUG:backwards; cancel becomes cancel
             //always do this
             CheckForSaveOrCancel := cancel;
      end;
    except
        on E: Exception do
        begin
           sErrorMessage:=FormatErrorForLog(E.Message , 'CheckSaveAndContinue' , E.HelpContext.ToString);
           LogErrorToFile(sErrorMessage);
        end;
    end;
end;{$R *.lfm}

{ TMainForm }
procedure TMainForm.FormCreate(Sender: TObject);
var
   sErrorMessage:String;
   proc:  TProcArgString;
begin
  try
      try
         bStopControlEvents := False;

          //temporary?; do in form show?
        if Not FileNew() Then
        begin
           raise Exception.Create('new failed.');
        end;
      finally
        //always do this
      end;
    except
        on E: Exception do
        begin
           sErrorMessage:=FormatErrorForLog(E.Message , 'FileNew' , E.HelpContext.ToString);
           LogErrorToFile(sErrorMessage);
        end;
    end;
end;

procedure TMainForm.FormDestroy(Sender: TObject);
var
   sErrorMessage:String;
   proc:  TProcArgString;
begin
  try
      try
        proc := @objModel_PropertyChanged;
        objModel.RemoveHandler(proc);
        objModel := Nil;
      finally
        //always do this
      end;
    except
        on E: Exception do
        begin
           sErrorMessage:=FormatErrorForLog(E.Message , 'FileNew' , E.HelpContext.ToString);
           LogErrorToFile(sErrorMessage);
        end;
    end;
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

{ Events }
  
procedure TMainForm.SomeStringEditChange(Sender: TObject);
var
     sErrorMessage, formatResult:String;
begin
  try
    try
    If not bStopControlEvents Then
    begin
        objModel.SomeString := TEdit(sender).Text;
    End;
    finally
      //Note: don't put off field assignment until finally; something fires in between and causes control to rewrite old value over model field
    end;
    except
      on E: Exception do
      begin
         sErrorMessage:=FormatErrorForLog(E.Message , 'SomeStringEditChange' , E.HelpContext.ToString);
         LogErrorToFile(sErrorMessage);
      end;
    end;
end;
  
procedure TMainForm.SomeIntegerEditChange(Sender: TObject);
var
     sErrorMessage, formatResult, blah:String;
     //BUG:removing unused 'blah' causes Sender to have value '1' in Text during New (stack corruption?)
begin
  try
    try
      If not bStopControlEvents Then
      begin
            objModel.SomeInteger := StrToInt(TEdit(sender).Text);
      End;
    finally
      //Note: don't put off field assignment until finally; something fires in between and causes control to rewrite old value over model field
    end;
    except
      on E: Exception do
      begin
         sErrorMessage:=FormatErrorForLog(E.Message , 'SomeIntegerEditChange' , E.HelpContext.ToString);
         LogErrorToFile(sErrorMessage);
      end;
    end;
end;
 
procedure TMainForm.SomeBooleanCheckBoxChange(Sender: TObject);
var
     sErrorMessage, formatResult:String;
begin
  try
    try
      If not bStopControlEvents Then
      begin
            objModel.SomeBoolean := TCheckBox(Sender).Checked;
      End;
    finally
      //Note: don't put off field assignment until finally; something fires in between and causes control to rewrite old value over model field
    end;
    except
      on E: Exception do
      begin
         sErrorMessage:=FormatErrorForLog(E.Message , 'SomeBooleanCheckBoxChange' , E.HelpContext.ToString);
         LogErrorToFile(sErrorMessage);
      end;
    end;
end;

procedure TMainForm.SomeDateDateEditChange(Sender: TObject);
var
     sErrorMessage, formatResult:String;
begin
  try
    try
      If not bStopControlEvents Then
      begin
            objModel.SomeDateTime := StrToDateTime(TDateEdit(Sender).Text);
      End;
    finally
      //Note: don't put off field assignment until finally; something fires in between and causes control to rewrite old value over model field
    end;
    except
      on E: Exception do
      begin
         sErrorMessage:=FormatErrorForLog(E.Message , 'SomeDateDateEditChange' , E.HelpContext.ToString);
         LogErrorToFile(sErrorMessage);
      end;
    end;
end;

{Actions}

{File}
procedure TMainForm.ActionFileNewOnExecute(Sender: TObject);
var
   sStatusMessage,sErrorMessage, formatResult:String;
   bCancel : Boolean;
begin
   try
       try
          bCancel := False;

           //clear status, error messages at beginning of every action
          sStatusMessage:='FileNew...';
          sErrorMessage:='';

          //use progress bar (marquee) with action icon (where available) in status bar
          StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon, sbFileNew.Glyph);

          //perform sender disable/enable in all actions
          TAction(Sender).Enabled := False;

          bCancel := CheckForSaveOrCancel();

          If bCancel Then
          begin
              sStatusMessage := 'New cancelled.';
          end
          Else
          begin
              //NEW
             if Not FileNew() Then
             begin
                raise Exception.Create('new failed.');
             end;
             sStatusMessage := 'FileNew done.';
          End;
       finally
         //always do this
         TAction(Sender).Enabled := True;
         ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
       end;
     except
         on E: Exception do
         begin
            sErrorMessage:=FormatErrorForLog(E.Message , 'ActionFileNewOnExecute' , E.HelpContext.ToString);
            StopProgressBar('', sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
            LogErrorToFile(sErrorMessage);
         end;
     end;
end;

procedure TMainForm.ActionFileOpenOnExecute(Sender: TObject);
var
   sStatusMessage,sErrorMessage,formatResult,sResponse:String;
   bCancel : Boolean;
begin
   try
     try
        bCancel := False;

         //clear status, error messages at beginning of every action
        sStatusMessage:='Opening...';
        sErrorMessage:='';

        //use progress bar (marquee) with action icon (where available) in status bar
        StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon, sbFileOpen.Glyph);//, sbFileNew.Images[0].Image, True, 33);

        //perform sender disable/enable in all actions
        TAction(Sender).Enabled := False;

        bCancel := CheckForSaveOrCancel();

         If bCancel Then
         begin
             sStatusMessage := 'Open cancelled during Save.';
         end
         Else
         begin
            sResponse := InputBox('Open...', 'Please enter model name:', '');
            if (Not String.IsNullOrWhiteSpace(sResponse) And (sResponse <> TModelBase.KEY_NEW)) then
            begin
                //If Not objModel.VerifyKey(nil, sResponse, 'TODO:Path') Then
                //begin
                //  FmtStr(formatResult,'ID not found in settings: Slot =''%s''', [sResponse]);
                //  raise Exception.Create(formatResult);
                //end
                //Else
                //begin
                    objModel.Key := sResponse;
                //End;
            end
            Else
            begin
                bCancel := True;
            End;

            If bCancel Then
            begin
                sStatusMessage := 'Open cancelled during model name input.';
            end
            Else
            begin
                //OPEN
               if Not FileOpen() Then
               begin
                  raise Exception.Create('open failed.');
               end;
               sStatusMessage := 'Open done.';
            End;
         End;

     finally
       //always do this
       TAction(Sender).Enabled := True;
       StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
     end;
   except
       on E: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(E.Message , 'ActionFileOpenOnExecute' , E.HelpContext.ToString);
          StopProgressBar('', sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
          LogErrorToFile(sErrorMessage);
       end;
   end;

end;

procedure TMainForm.ActionFileSaveOnExecute(Sender: TObject);
var
   sStatusMessage,sErrorMessage,sResponse:String;
   bCancel : Boolean;
begin
   try
     try
       bCancel := False;

       //clear status, error messages at beginning of every action
      sStatusMessage:='Saving...';
      sErrorMessage:='';

      //use progress bar (marquee) with action icon (where available) in status bar
      StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon, sbFileSave.Glyph);//, sbFileNew.Images[0].Image, True, 33);

      //perform sender disable/enable in all actions
      TAction(Sender).Enabled := False;

      If String.IsNullOrWhiteSpace(objModel.Key) Or (objModel.Key = TModelBase.KEY_NEW) Then
      begin
        sResponse := InputBox('Save As...', 'Please enter model name:', objModel.Key);
        if (Not String.IsNullOrWhiteSpace(sResponse) And (sResponse <> TModelBase.KEY_NEW)) then
        begin
           objModel.Key:= sResponse;
        end
         Else
         begin
            bCancel:=True;
         end;
      End;

      If (bCancel) Then
      begin
           sStatusMessage := 'Save cancelled.' ;
      end
      Else
      begin
         if Not FileSave() Then
         begin
            raise Exception.Create('save failed.');
         end;
         sStatusMessage := 'Save done.';
      end;

     finally
       //always do this
       TAction(Sender).Enabled := True;
       StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
     end;
   except
       on E: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(E.Message , 'ActionFileSaveOnExecute' , E.HelpContext.ToString);
          StopProgressBar('', sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
          LogErrorToFile(sErrorMessage);
       end;
   end;
end;

procedure TMainForm.ActionFileSaveAsOnExecute(Sender: TObject);
var
   sStatusMessage,sErrorMessage,sResponse:String;
   bCancel : Boolean;
begin
   try
     try
         bCancel := False;

         //clear status, error messages at beginning of every action
         sStatusMessage:='Saving As...';
         sErrorMessage:='';

        //use progress bar (marquee) with action icon (where available) in status bar
        StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon, sbFileSaveAs.Glyph);//, sbFileNew.Images[0].Image, True, 33);

        //perform sender disable/enable in all actions
        TAction(Sender).Enabled := False;

        sResponse := InputBox('Save As...', 'Please enter model name:', objModel.Key);
        if (Not String.IsNullOrWhiteSpace(sResponse) And (sResponse <> TModelBase.KEY_NEW)) then
        begin
           objModel.Key:= sResponse;
        end
         Else
         begin
            bCancel:=True;
         end;

        If (bCancel) Then
        begin
             sStatusMessage := 'Save As cancelled.' ;
        end
        Else
        begin
           if Not FileSave() Then
           begin
              raise Exception.Create('save failed.');
           end;
           sStatusMessage := 'Save As done.';
        end;
     finally
       //always do this
       TAction(Sender).Enabled := True;
       StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
     end;
   except
       on E: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(E.Message , 'ActionFileSaveAsOnExecute' , E.HelpContext.ToString);
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

        If Something() Then //TODO:TPrintDialog
        begin
           sStatusMessage := 'FilePrint done.'  ;
        end
        Else
        begin
           sStatusMessage := 'FilePrint cancelled.' ;
        End;
     finally
       //always do this
       TAction(Sender).Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
     end;
   except
       on E: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(E.Message , 'ActionFilePrintOnExecute' , E.HelpContext.ToString);
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

        If Something() Then  //TODO:TPrinterSetupDialog
        begin
           sStatusMessage := 'FilePrintSetup done.'  ;
        end
        Else
        begin
           sStatusMessage := 'FilePrintSetup cancelled.' ;
        End;
     finally
       //always do this
       TAction(Sender).Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
     end;
   except
       on E: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(E.Message , 'ActionFilePrintSetupOnExecute' , E.HelpContext.ToString);
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

        //TODO:check for save or cancel
        //?

        Self.Close();
     finally
       //always do this
       TAction(Sender).Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
     end;
   except
       on E: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(E.Message , 'ActionFileExitOnExecute' , E.HelpContext.ToString);
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
       //always do this
       TAction(Sender).Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
     end;
   except
       on E: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(E.Message , 'ActionEditUndoOnExecute' , E.HelpContext.ToString);
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
       //always do this
       TAction(Sender).Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
     end;
   except
       on E: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(E.Message , 'ActionEditRedoOnExecute' , E.HelpContext.ToString);
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
       //always do this
       TAction(Sender).Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
     end;
   except
       on E: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(E.Message , 'ActionEditSelectAllOnExecute' , E.HelpContext.ToString);
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
       //always do this
       TAction(Sender).Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
     end;
   except
       on E: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(E.Message , 'ActionEditCutOnExecute' , E.HelpContext.ToString);
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
       //always do this
       TAction(Sender).Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
     end;
   except
       on E: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(E.Message , 'ActionEditCopyOnExecute' , E.HelpContext.ToString);
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
       //always do this
       TAction(Sender).Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
     end;
   except
       on E: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(E.Message , 'ActionEditPasteExecute' , E.HelpContext.ToString);
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
       //always do this
       TAction(Sender).Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
     end;
   except
       on E: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(E.Message , 'ActionEditPasteSpecialOnExecute' , E.HelpContext.ToString);
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

        If Something() Then //TODO:TFindDialog
        begin
           sStatusMessage := 'EditFind done.'  ;
        end
        Else
        begin
           sStatusMessage := 'EditFind cancelled.' ;
        End;
     finally
       //always do this
       TAction(Sender).Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
     end;
   except
       on E: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(E.Message , 'ActionEditFindOnExecute' , E.HelpContext.ToString);
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

        If Something() Then    //TODO:TReplaceDialog
        begin
           sStatusMessage := 'EditReplace done.'  ;
        end
        Else
        begin
           sStatusMessage := 'EditReplace cancelled.' ;
        End;
     finally
       //always do this
       TAction(Sender).Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
     end;
   except
       on E: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(E.Message , 'ActionEditReplaceOnExecute' , E.HelpContext.ToString);
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
       //always do this
       TAction(Sender).Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
     end;
   except
       on E: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(E.Message , 'ActionEditGoToOnExecute' , E.HelpContext.ToString);
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

        //TODO:replace Something() with this?
        objModel.RefreshModel(False); //to update view

        If Something() Then
        begin
           sStatusMessage := 'EditRefresh done.'  ;
        end
        Else
        begin
           sStatusMessage := 'EditRefresh cancelled.' ;
        End;
     finally
       //always do this
       TAction(Sender).Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
     end;
   except
       on E: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(E.Message , 'ActionEditRefreshOnExecute' , E.HelpContext.ToString);
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
       //always do this
       TAction(Sender).Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
     end;
   except
       on E: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(E.Message , 'ActionEditPreferencesOnExecute' , E.HelpContext.ToString);
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
       //always do this
       TAction(Sender).Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
     end;
   except
       on E: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(E.Message , 'ActionWindowCascadeOnExecute' , E.HelpContext.ToString);
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
       //always do this
       TAction(Sender).Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
     end;
   except
       on E: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(E.Message , 'ActionWindowHideExecute' , E.HelpContext.ToString);
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
       //always do this
       TAction(Sender).Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
     end;
   except
       on E: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(E.Message , 'ActionWindowNewWindowOnExecute' , E.HelpContext.ToString);
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
       //always do this
       TAction(Sender).Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
     end;
   except
       on E: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(E.Message , 'ActionWindowShowExecute' , E.HelpContext.ToString);
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
       //always do this
       TAction(Sender).Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
     end;
   except
       on E: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(E.Message , 'ActionWindowTileOnExecute' , E.HelpContext.ToString);
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
       //always do this
       TAction(Sender).Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
     end;
   except
       on E: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(E.Message , 'ActionWindowArrangeAllExecute' , E.HelpContext.ToString);
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
       //always do this
       TAction(Sender).Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
     end;
   except
       on E: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(E.Message , 'ActionHelpHelpContentsOnExecute' , E.HelpContext.ToString);
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
       //always do this
       TAction(Sender).Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
     end;
   except
       on E: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(E.Message , 'ActionHelpHelpIndexOnExecute' , E.HelpContext.ToString);
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
       //always do this
       TAction(Sender).Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
     end;
   except
       on E: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(E.Message , 'ActionHelpLicenceInformationOnExecute' , E.HelpContext.ToString);
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
       //always do this
       TAction(Sender).Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
     end;
   except
       on E: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(E.Message , 'ActionHelpOnlineHelpOnExecute' , E.HelpContext.ToString);
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
       //always do this
       TAction(Sender).Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatusMessage, lblErrorMessage, ProgressBar, imgActionIcon);
     end;
   except
       on E: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(E.Message , 'ActionHelpCheckForUpdatesOnExecute' , E.HelpContext.ToString);
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
       //always do this
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
          sErrorMessage:=FormatErrorForLog(E.Message , 'ActionHelpAboutOnExecute' , E.HelpContext.ToString);
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

