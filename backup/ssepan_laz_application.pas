unit ssepan_laz_application;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils,Controls,Forms,ComCtrls,
  StdCtrls, ExtCtrls,  Ssepan_Laz_Utility;

//type

//procedure x();
//function z():Boolean;
Procedure StartProgressBarWithPicture(sStatusMessage, sErrorMessage : String; isMarqueeProgressBarStyle:Boolean; var ctlStatusMessage, ctlErrorMessage: TLabel;var ctlProgressBar:TProgressBar);
procedure UpdateProgressBar(sStatusMessage : String; var ctlStatusMessage: TLabel;var ctlProgressBar:TProgressBar);
procedure UpdateStatusBarMessages(sStatusMessage, sErrorMessage : String; var ctlStatusMessage, ctlErrorMessage: TLabel);
procedure StopProgressBar(sStatusMessage, sErrorMessage : String; var ctlStatusMessage, ctlErrorMessage: TLabel;var ctlProgressBar:TProgressBar);

implementation

//procedure x() ;
//var
//  y:String;
//begin
//  WriteLn('x');
//end;
//
//function z():Boolean ;
//var
//  q:String;
//begin
//  WriteLn('z');
//  z:=True;
//end;


// <summary>
// Use for Marquee-style progress bar, or when percentages must be indicated.
// Picture.
// </summary>
// <param name="sStatusMessage"></param>
// <param name="serrorMessage"></param>
// <param name="objImage"></param>
// <param name="isMarqueeProgressBarStyle"></param>
// <param name="fProgressBarValue"></param>
// <param name="ctlStatusMessage"></param>
// <param name="ctlErrorMessage"></param>
// <param name="ctlProgressBar"></param>
Procedure StartProgressBarWithPicture(sStatusMessage, sErrorMessage : String; isMarqueeProgressBarStyle:Boolean; var ctlStatusMessage, ctlErrorMessage: TLabel;var ctlProgressBar:TProgressBar);//, objImage : TImage, isMarqueeProgressBarStyle : Boolean, fProgressBarValue : Float);//,ctlProgressBar : TProgressBar,ctlActionIconTTImage)
//var
begin
  try
    try
       ctlProgressBar.Enabled:=True;
       if (isMarqueeProgressBarStyle) then ctlProgressBar.Style:=pbstMarquee else ctlProgressBar.Style:=pbstNormal;
      if not (isMarqueeProgressBarStyle) then
      begin
          //    'set to blocks if actual percentage was used.
          //    ctlProgressBar.Value = fProgressBarValue
          //    'set to value if percentage used.
          //    'if Style is not Marquee, then we are marking either a count or percentage
          //    If fProgressBarValue > 1 Then 'ctlProgressBar.Maximum
          //        'ctlProgressBar.Step = 1
          //        ctlProgressBar.Value = 1
          //    Endif
          //
      end;

    if (sStatusMessage=Null) then ctlStatusMessage.Caption := '' else ctlStatusMessage.Caption := sStatusMessage;

    if (sErrorMessage=Null) then ctlErrorMessage.Caption := '' else ctlErrorMessage.Caption := sErrorMessage;
    ctlErrorMessage.Hint := ctlErrorMessage.Caption;

    //
//    ctlProgressBar.Visible = True
//
//    ctlActionIcon.Picture = objImage
//    ctlActionIcon.Tooltip = sStatusMessage
//    ctlActionIcon.Visible = True
//
    finally
      //    'give the app time to draw the eye-candy, even if its only for an instant
      //    Wait
      Application.ProcessMessages;
    end;
  except
    on E: Exception do
      LogErrorToFile(FormatErrorForLog(E.Message , 'StartProgressBarWithPicture' , E.HelpContext.ToString));
    //
    //    Error.Propagate 'Throw  }
  end;
End; //Sub



// <summary>
// Update percentage changes.
// </summary>
// <param name="sStatusMessage"></param>
// <param name="fProgressBarValue"></param>
procedure UpdateProgressBar(sStatusMessage : String; var ctlStatusMessage: TLabel;var ctlProgressBar:TProgressBar);//, fProgressBarValue As Float)
begin
  try
    try

    if (sStatusMessage=Null) then ctlStatusMessage.Caption := '' else ctlStatusMessage.Caption := sStatusMessage;

    //if Style is not Marquee, then we are marking either a count or percentage
    //'if we are simply counting, the progress bar will periodically need to adjust the Maximum.
    //If fProgressBarValue > 1 Then 'ctlProgressBar.Maximum
    //    //'ctlProgressBar.Maximum = ctlProgressBar.Maximum * 2
    //    ctlProgressBar.Value = ctlProgressBar.Value / 2
    //Endif
    //
    //ctlProgressBar.Value = fProgressBarValue


    finally
      //'give the app time to draw the eye-candy, even if its only for an instant
      //Wait
        Application.ProcessMessages;
    end;
  except
    on E: Exception do
      LogErrorToFile(FormatErrorForLog(E.Message , 'UpdateProgressBar' , E.HelpContext.ToString));
    //
    //    Error.Propagate //Throw
  end;
end; //Sub

// <summary>
// Update message(s) only, without changing progress bar.
// Null parameter will leave a message unchanged;
// "" will clear it.
// Optional doEvents flag will determine if
// messages are processed before continuing.
// </summary>
// <param name="sStatusMessage"></param>
// <param name="errorMessage"></param>
procedure UpdateStatusBarMessages(sStatusMessage, sErrorMessage : String; var ctlStatusMessage, ctlErrorMessage: TLabel);
begin
  try
    try
       if (sStatusMessage=Null) then ctlStatusMessage.Caption := '' else ctlStatusMessage.Caption := sStatusMessage;

       if (sErrorMessage=Null) then ctlErrorMessage.Caption := '' else ctlErrorMessage.Caption := sErrorMessage;
       ctlErrorMessage.Hint := ctlErrorMessage.Caption;

    finally
      //    'give the app time to draw the eye-candy, even if its only for an instant
      //    Wait 'Application.DoEvents();
      Application.ProcessMessages;
    end;

  except
    on E: Exception do
      LogErrorToFile(FormatErrorForLog(E.Message , 'UpdateStatusBarMessages' , E.HelpContext.ToString));
    //
    //    Error.Propagate 'Throw
  end;

End; //Sub


// <summary>
// Stop progress bar and display messages.
// DoEvents will ensure messages are processed before continuing.
// </summary>
// <param name="sStatusMessage"></param>
// <param name="sErrorMessage">Null parameter will leave a message unchanged; "" will clear it.</param>
procedure StopProgressBar(sStatusMessage, sErrorMessage : String; var ctlStatusMessage, ctlErrorMessage: TLabel;var ctlProgressBar:TProgressBar);
begin
    try
       try

          if (sStatusMessage=Null) then ctlStatusMessage.Caption := '' else ctlStatusMessage.Caption := sStatusMessage;

          //do not clear error at end of operation, clear it at start of operation
          if (sErrorMessage=Null) then {do nothing} else ctlErrorMessage.Caption := sErrorMessage;
          //sync
          ctlErrorMessage.Hint := ctlErrorMessage.Caption;

        //    ctlProgressBar.Pulse = False
        //    'reset back to marquee (default) in case actual percentage was used
        //    'ctlProgressBar.Maximum = 100
        //    'ditto
        //    ' ctlProgressBar.Step = 10
        //    'ditto
        //    ctlProgressBar.Value = 0
        //    'ditto
        //    ctlProgressBar.Visible = False
        //    'false;
        //    ctlActionIcon.Visible = False
        //    ' false;
        //
        //    ctlActionIcon.Image = Null
        //    ctlActionIcon.Tooltip = Null
        //

        finally
               ctlProgressBar.Enabled:=False;

          //    'give the app time to draw the eye-candy, even if its only for an instant
          //    Wait 'Application.DoEvents();
          Application.ProcessMessages;
        end;

     except
       on E: Exception do
         LogErrorToFile(FormatErrorForLog(E.Message , 'StopProgressBar' , E.HelpContext.ToString));
         //
         //    Error.Propagate 'Throw
     end;

End; //Sub



initialization
begin
end;

finalization
begin
end;


end.

