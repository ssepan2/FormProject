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


//''' <summary>
//''' Use for Marquee-style progress bar, or when percentages must be indicated.
//''' Picture.
//''' </summary>
//''' <param name="sStatusMessage"></param>
//''' <param name="errorMessage"></param>
//''' <param name="objImage"></param>
//''' <param name="isMarqueeProgressBarStyle"></param>
//''' <param name="fProgressBarValue"></param>
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
    ctlStatusMessage.Caption := sStatusMessage;
    ctlErrorMessage.Caption := sErrorMessage;
    ctlErrorMessage.Hint := sErrorMessage;
//
//    ctlProgressBar.Visible = True
//
//    ctlActionIcon.Picture = objImage
//    ctlActionIcon.Tooltip = sStatusMessage
//    ctlActionIcon.Visible = True
//
    except
      //    Debug Log.FormatError(Error.Text, Error.Where, Error.BackTrace)
      //
      //    Error.Propagate 'Throw  }
    end;
  finally
    //    'give the app time to draw the eye-candy, even if its only for an instant
    //    Wait
  end;
End; //Sub



//''' <summary>
//''' Update percentage changes.
//''' </summary>
//''' <param name="sStatusMessage"></param>
//''' <param name="fProgressBarValue"></param>
procedure UpdateProgressBar(sStatusMessage : String; var ctlStatusMessage: TLabel);//, fProgressBarValue As Float)
begin
  try
    try

    If Not (sStatusMessage=Null) Then
    begin
        ctlStatusMessage.Caption := sStatusMessage;
    End;

    ////'if Style is not Marquee, then we are marking either a count or percentage
    ////'if we are simply counting, the progress bar will periodically need to adjust the Maximum.
    //If fProgressBarValue > 1 Then 'ctlProgressBar.Maximum
    //    //'ctlProgressBar.Maximum = ctlProgressBar.Maximum * 2
    //    ctlProgressBar.Value = ctlProgressBar.Value / 2
    //Endif
    //
    //ctlProgressBar.Value = fProgressBarValue


    except
      //    Debug Log.FormatError(Error.Text, Error.Where, Error.BackTrace)
      //
      //    Error.Propagate //Throw
    end;
  finally
  //'give the app time to draw the eye-candy, even if its only for an instant
  //Wait
  end;
end; //Sub
      {
''' <summary>
''' Update message(s) only, without changing progress bar.
''' Null parameter will leave a message unchanged;
''' "" will clear it.
''' Optional doEvents flag will determine if
''' messages are processed before continuing.
''' </summary>
''' <param name="sStatusMessage"></param>
''' <param name="errorMessage"></param>
Public Sub UpdateStatusBarMessages(sStatusMessage As String, sErrorMessage As String)

    If Not IsNull(sStatusMessage) Then
        ctlStatusMessage.Text = sStatusMessage
    Endif
    If Not IsNull(sErrorMessage) Then
        ctlErrorMessage.Text = sErrorMessage
        ctlErrorMessage.ToolTip = sErrorMessage
    Endif

    'give the app time to draw the eye-candy, even if its only for an instant
    Wait 'Application.DoEvents();
Catch 'ex As Exception
    Debug Log.FormatError(Error.Text, Error.Where, Error.BackTrace)

    Error.Propagate 'Throw

End 'Sub

''' <summary>
''' Stop progress bar and display messages.
''' DoEvents will ensure messages are processed before continuing.
''' </summary>
''' <param name="sStatusMessage"></param>
''' <param name="sErrorMessage">Null parameter will leave a message unchanged; "" will clear it.</param>
Public Sub StopProgressBar(sStatusMessage As String, Optional sErrorMessage As String = Null)

    ctlStatusMessage.Text = sStatusMessage
    'do not clear error at end of operation, clear it at start of operation
    If sErrorMessage <> Null Then
        'this.StatusBarErrorMessage.ToolTipText = errorMessage;
        ctlErrorMessage.Text = sErrorMessage
    Endif

    ctlProgressBar.Pulse = False
    'reset back to marquee (default) in case actual percentage was used
    'ctlProgressBar.Maximum = 100
    'ditto
    ' ctlProgressBar.Step = 10
    'ditto
    ctlProgressBar.Value = 0
    'ditto
    ctlProgressBar.Visible = False
    'false;
    ctlActionIcon.Visible = False
    ' false;

    ctlActionIcon.Image = Null
    ctlActionIcon.Tooltip = Null

    'give the app time to draw the eye-candy, even if its only for an instant
    Wait 'Application.DoEvents();
Catch 'ex As Exception
    Debug Log.FormatError(Error.Text, Error.Where, Error.BackTrace)

    Error.Propagate 'Throw

End 'Sub

}

initialization
begin
end;

finalization
begin
end;


end.

