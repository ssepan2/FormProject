unit Ssepan.Laz.Utility;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

//type

procedure x();
function z():Boolean;
Procedure StartProgressBarWithPicture();

implementation

//initialization
//begin
//end;
//
//finalization
//begin
//end;

procedure x() ;
var
  y:String;
begin
  WriteLn('x');
end;

function z():Boolean ;
var
  q:String;
begin
  WriteLn('z');
  z:=True;
end;


//''' <summary>
//''' Use for Marquee-style progress bar, or when percentages must be indicated.
//''' Picture.
//''' </summary>
//''' <param name="sStatusMessage"></param>
//''' <param name="errorMessage"></param>
//''' <param name="objImage"></param>
//''' <param name="isMarqueeProgressBarStyle"></param>
//''' <param name="fProgressBarValue"></param>
Procedure StartProgressBarWithPicture();//sStatusMessage : String, sErrorMessage : String, objImage : TImage, isMarqueeProgressBarStyle : Boolean, fProgressBarValue : Float);//,ctlProgressBar : TProgressBar,ctlActionIconTTImage)
//var
begin
//    {$ctlProgressBar.Pulse = isMarqueeProgressBarStyle
//    'set to blocks if actual percentage was used.
//    $ctlProgressBar.Value = fProgressBarValue
//    'set to value if percentage used.
//    'if Style is not Marquee, then we are marking either a count or percentage
//    If fProgressBarValue > 1 Then '$ctlProgressBar.Maximum
//        '$ctlProgressBar.Step = 1
//        $ctlProgressBar.Value = 1
//    Endif
//
//    $ctlStatusMessage.Text = sStatusMessage
//    $ctlErrorMessage.Text = sErrorMessage
//    $ctlErrorMessage.ToolTip = sErrorMessage
//
//    $ctlProgressBar.Visible = True
//
//    $ctlActionIcon.Picture = objImage
//    $ctlActionIcon.Tooltip = sStatusMessage
//    $ctlActionIcon.Visible = True
//
//    'give the app time to draw the eye-candy, even if its only for an instant
//    Wait
//Catch 'ex As Exception
//    Debug Log.FormatError(Error.Text, Error.Where, Error.BackTrace)
//
//    Error.Propagate 'Throw  }
//
//
End; //Sub

end.

