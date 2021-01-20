unit ssepan_laz_application;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils,Controls,Forms,ComCtrls,
  StdCtrls, ExtCtrls,  Ssepan_Laz_Utility;

//type

//procedure x();
//function z():Boolean;
Procedure StartProgressBarWithPicture(sStatusMessage, sErrorMessage : String; var ctlStatusMessage, ctlErrorMessage: TLabel);
procedure UpdateProgressBar(sStatusMessage : String; var ctlStatusMessage: TLabel);
procedure UpdateStatusBarMessages(sStatusMessage, sErrorMessage : String; var ctlStatusMessage, ctlErrorMessage: TLabel);
procedure StopProgressBar(sStatusMessage, sErrorMessage : String; var ctlStatusMessage, ctlErrorMessage: TLabel);

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
// <param name="errorMessage"></param>
// <param name="objImage"></param>
// <param name="isMarqueeProgressBarStyle"></param>
// <param name="fProgressBarValue"></param>
Procedure StartProgressBarWithPicture(sStatusMessage, sErrorMessage : String; var ctlStatusMessage, ctlErrorMessage: TLabel);//, objImage : TImage, isMarqueeProgressBarStyle : Boolean, fProgressBarValue : Float);//,ctlProgressBar : TProgressBar,ctlActionIconTTImage)
//var
begin
  try
    try

  //    {ctlProgressBar.Pulse = isMarqueeProgressBarStyle
//    'set to blocks if actual percentage was used.
//    ctlProgressBar.Value = fProgressBarValue
//    'set to value if percentage used.
//    'if Style is not Marquee, then we are marking either a count or percentage
//    If fProgressBarValue > 1 Then 'ctlProgressBar.Maximum
//        'ctlProgressBar.Step = 1
//        ctlProgressBar.Value = 1
//    Endif
//
    If Not (sStatusMessage=Null) Then
    begin
      ctlStatusMessage.Caption := sStatusMessage;
    end
    else
    begin
      ctlStatusMessage.Caption := '';
    end;

    If Not (sErrorMessage=Null) Then
    begin
      ctlErrorMessage.Caption := sErrorMessage;
      ctlErrorMessage.Hint := sErrorMessage;
    end
    else
    begin
      ctlErrorMessage.Caption := '';
      ctlErrorMessage.Hint := '';
    end;
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
    end;
  except
    //    Debug Log.FormatError(Error.Text, Error.Where, Error.BackTrace)
    //
    //    Error.Propagate 'Throw  }
  end;
End; //Sub



// <summary>
// Update percentage changes.
// </summary>
// <param name="sStatusMessage"></param>
// <param name="fProgressBarValue"></param>
procedure UpdateProgressBar(sStatusMessage : String; var ctlStatusMessage: TLabel);//, fProgressBarValue As Float)
begin
  try
    try

    If (sStatusMessage<>Null) Then
    begin
        ctlStatusMessage.Caption := sStatusMessage;
    end
    else
    begin
      ctlStatusMessage.Caption := '';
    End;

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
    end;
  except
    //    Debug Log.FormatError(Error.Text, Error.Where, Error.BackTrace)
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
      If (sStatusMessage<>Null) then
      begin
          ctlStatusMessage.Caption := sStatusMessage;
      end
      else
      begin
        ctlStatusMessage.Caption := '';
      End;

      If (sErrorMessage<>Null)  then
      begin
          ctlErrorMessage.Caption := sErrorMessage;
          ctlErrorMessage.Hint := sErrorMessage;
      end
      else
      begin
        ctlErrorMessage.Caption := '';
        ctlErrorMessage.Hint := '';
      End;

    finally
      //    'give the app time to draw the eye-candy, even if its only for an instant
      //    Wait 'Application.DoEvents();
    end;

  except
    //Catch 'ex As Exception
    //    Debug Log.FormatError(Error.Text, Error.Where, Error.BackTrace)
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
procedure StopProgressBar(sStatusMessage, sErrorMessage : String; var ctlStatusMessage, ctlErrorMessage: TLabel);
begin
    try
       try

         If (sStatusMessage<>Null) then
         begin
             ctlStatusMessage.Caption := sStatusMessage;
         end
         else
         begin
           ctlStatusMessage.Caption := '';
         End;

        If (sErrorMessage<>Null)  then
        begin
            ctlErrorMessage.Caption := sErrorMessage;
            ctlErrorMessage.Hint := sErrorMessage;
        end
        else
        begin
             //do not clear error at end of operation, clear it at start of operation
        End;

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
          //    'give the app time to draw the eye-candy, even if its only for an instant
          //    Wait 'Application.DoEvents();
        end;

     except
       on E: Exception do
         WriteLn(FormatErrorForLog(E.Message , 'StopProgressBar' , E.HelpContext.ToString));
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

