unit ssepan_laz_application;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils,Controls,Forms,ComCtrls,
  StdCtrls, ExtCtrls, Graphics, Ssepan_Laz_Utility;

//type

//procedure x();
//function z():Boolean;
Procedure StartProgressBarWithPicture
(
          sStatusMessage, sErrorMessage : String;
          isMarqueeProgressBarStyle, isCountProgressbar:Boolean;
          iProgressBarValue, iProgressBarMax:LongInt;
          var ctlStatusMessage, ctlErrorMessage: TLabel;
          var ctlProgressBar:TProgressBar;
          var ctlActionIcon:TImage;
           objImage:TBitmap
);
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
// Use for Marquee-style progress bar, or when percentages/count must be indicated.
// </summary>
// <param name="sStatusMessage">String</param>
// <param name="serrorMessage">String</param>
// <param name="isMarqueeProgressBarStyle">Boolean</param>
// <param name="isCountProgressbar">Boolean</param>
// <param name="iProgressBarValue">LongInt</param>
// <param name="iProgressBarMax">LongInt. ignored when using marquee or using normal and not count (i.e. - percentage); defaults to 100</param>
// <param name="ctlStatusMessage">TLabel</param>
// <param name="ctlErrorMessage">TLabel</param>
// <param name="ctlProgressBar">TProgressBar</param>
// <param name="ctlActionIcon">TImage</param>
// <param name="objImage">TBitmap</param>
Procedure StartProgressBarWithPicture
(
  sStatusMessage, sErrorMessage : String;
  isMarqueeProgressBarStyle, isCountProgressbar:Boolean;
  iProgressBarValue, iProgressBarMax:LongInt;
  var ctlStatusMessage, ctlErrorMessage: TLabel;
  var ctlProgressBar:TProgressBar;
  var ctlActionIcon:TImage;
   objImage:TBitmap
);
begin
  try
    try
       ctlProgressBar.Visible:=True;
       ctlProgressBar.Enabled:=True;

       if (isMarqueeProgressBarStyle) then
       begin
            //marquee
            ctlProgressBar.Style:=pbstMarquee;
            ctlProgressBar.Max:=100;//
            ctlProgressBar.Step := 1;//
            ctlProgressBar.Position := 33;//one third
       end
       else
       begin
            //progress
            //if Style is not Marquee, then we are marking either a count or percentage
            ctlProgressBar.Style:=pbstNormal;
            if (isCountProgressbar) then
            begin
                 //count
                 //set to smooth if count is used.
                 ctlProgressBar.Smooth:=True;
                 ctlProgressBar.Max:=iProgressBarMax;

            end
            else
            begin
                 //percentage
                 //set to blocks if actual percentage is used.
                 ctlProgressBar.Smooth:=False;
                 ctlProgressBar.Max:=100;//

            end;

            //set to value if percentage or count used.
            ctlProgressBar.Step := 1;
            ctlProgressBar.Position := iProgressBarValue;
       end;

      if (sStatusMessage=Null) then ctlStatusMessage.Caption := '' else ctlStatusMessage.Caption := sStatusMessage;

      if (sErrorMessage=Null) then ctlErrorMessage.Caption := '' else ctlErrorMessage.Caption := sErrorMessage;
      ctlErrorMessage.Hint := ctlErrorMessage.Caption;

      if objImage.HandleAllocated then ctlActionIcon.Picture.Assign(objImage);
      ctlActionIcon.Hint := sStatusMessage;
      ctlActionIcon.Visible := True;
    finally
      //give the app time to draw the eye-candy, even if its only for an instant
      Application.ProcessMessages;
    end;
  except
    on E: Exception do
      LogErrorToFile(FormatErrorForLog(E.Message , 'StartProgressBarWithPicture' , E.HelpContext.ToString));
    //
    //    Error.Propagate 'Throw  }
  end;
End; //procedure



// <summary>
// Update percentage changes.
// </summary>
// <param name="sStatusMessage">String</param>
// <param name="ctlStatusMessage">TLabel</param>
// <param name="ctlProgressBar">TProgressBar</param>
procedure UpdateProgressBar
(
          sStatusMessage : String;
          var ctlStatusMessage: TLabel;
          var ctlProgressBar:TProgressBar
);//, fProgressBarValue As Float)
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
      //give the app time to draw the eye-candy, even if its only for an instant
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
// </summary>
// <param name="sStatusMessage">String</param>
// <param name="serrorMessage">String</param>
// <param name="ctlStatusMessage">TLabel</param>
// <param name="ctlErrorMessage">TLabel</param>
procedure UpdateStatusBarMessages
(
          sStatusMessage, sErrorMessage : String;
          var ctlStatusMessage, ctlErrorMessage: TLabel
);
begin
  try
    try
       if (sStatusMessage=Null) then ctlStatusMessage.Caption := '' else ctlStatusMessage.Caption := sStatusMessage;

       if (sErrorMessage=Null) then ctlErrorMessage.Caption := '' else ctlErrorMessage.Caption := sErrorMessage;
       ctlErrorMessage.Hint := ctlErrorMessage.Caption;

    finally
      //give the app time to draw the eye-candy, even if its only for an instant
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
// <param name="sStatusMessage">String</param>
// <param name="serrorMessage">String</param>
// <param name="ctlStatusMessage">TLabel</param>
// <param name="ctlErrorMessage">TLabel</param>
// <param name="ctlProgressBar">TProgressBar</param>
// <param name="ctlActionIcon">TImage</param>
procedure StopProgressBar
(
          sStatusMessage, sErrorMessage : String;
          var ctlStatusMessage, ctlErrorMessage: TLabel;
          var ctlProgressBar:TProgressBar;
          var ctlActionIcon:TImage
);
begin
    try
       try

          if (sStatusMessage=Null) then ctlStatusMessage.Caption := '' else ctlStatusMessage.Caption := sStatusMessage;

          //do not clear error at end of operation, clear it at start of operation
          if (sErrorMessage=Null) then {do nothing} else ctlErrorMessage.Caption := sErrorMessage;
          //sync
          ctlErrorMessage.Hint := ctlErrorMessage.Caption;

          ctlProgressBar.Enabled:=False;
          ctlProgressBar.Visible:=False;

          ctlActionIcon.Visible := False;

        finally
           ctlProgressBar.Enabled:=False;
           ctlProgressBar.Visible:=False;

          //give the app time to draw the eye-candy, even if its only for an instant
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

