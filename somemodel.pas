unit SomeModel;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, ModelBase, Ssepan_Laz_Utility;
type
  TSomeModel=Class(TModelBase)
  private
    FForceNotify : Boolean; //:= False;

    {
    Properties
    }
    FSomeString : String;// := '';
    FSomeBoolean : Boolean;// := False;
    FSomeInteger : LongInt;// := 0;
    FSomeDateTime : TDateTime;// := Now();

  protected
    {
    Properties
    }
    Function GetSomeString() : String;
    procedure SetSomeString(Value : String);

    Function GetSomeBoolean() : Boolean;
    procedure SetSomeBoolean(Value : Boolean);

    Function GetSomeInteger() : LongInt;
    procedure SetSomeInteger(Value : LongInt);

    Function GetSomeDateTime() : TDateTime;
    procedure SetSomeDateTime(Value : TDateTime);

  public
    {
    ctor
    }

    {
    Properties
    }
    Property SomeString : String read GetSomeString write SetSomeString;
    Property SomeBoolean : Boolean read GetSomeBoolean write SetSomeBoolean;
    Property SomeInteger : LongInt read GetSomeInteger write SetSomeInteger;
    Property SomeDateTime : TDateTime read GetSomeDateTime write SetSomeDateTime;
    {
    Methods
    }
    procedure SaveToSettings(objSettings : TObject{Settings});
    procedure RefreshModel(bPreserveDirty : Boolean );
    {
    Static
    }
    Function VerifyKey(objSettings : TObject{Settings}; sIdParam : String) : Boolean;//Static;
    Function OpenFromSettings( objModel : TSomeModel;  objSettings : TObject{Settings}; sIdParam : String) : Boolean;//Static;
  end;

var
  test2:string;
implementation
  {
  ctor
  }

  {
  Properties
  }

  Function TSomeModel.GetSomeString() : String;
  begin

      GetSomeString :=  FSomeString;

  End;
  procedure TSomeModel.SetSomeString(Value : String);
  begin

      If (FSomeString <> Value) Or FForceNotify Then
      begin
          FSomeString := Value;
          Dirty := true;
          NotifyPropertyChanged('SomeString');
      End;

  End;

  Function TSomeModel.GetSomeBoolean() : Boolean;
  begin

      GetSomeBoolean :=  FSomeBoolean;

  End;
  procedure TSomeModel.SetSomeBoolean(Value : Boolean);
  begin

      If (FSomeBoolean <> Value) Or FForceNotify Then
      begin
          FSomeBoolean := Value;
          Dirty := true;
          NotifyPropertyChanged('SomeBoolean');
      End;

  End;

  Function TSomeModel.GetSomeInteger() : LongInt;
  begin

      GetSomeInteger :=  FSomeInteger;

  End;
  procedure TSomeModel.SetSomeInteger(Value : LongInt);
  begin

      If (FSomeInteger <> Value) Or FForceNotify Then
      begin
          FSomeInteger := Value;
          Dirty := true;
          NotifyPropertyChanged('SomeInteger');
      End;

  End;

  Function TSomeModel.GetSomeDateTime() : TDateTime;
  begin

      GetSomeDateTime :=  FSomeDateTime;

  End;
  procedure TSomeModel.SetSomeDateTime(Value : TDateTime);
  begin

      If (FSomeDateTime <> Value) Or FForceNotify Then
      begin
          FSomeDateTime := Value ;
          Dirty := true;
          NotifyPropertyChanged('SomeDateTime');
      End;

  End;


  {
  Methods
  }
  procedure TSomeModel.SaveToSettings(objSettings : TObject{Settings});
  var
     sErrorMessage, formatResult:String;
  begin
      try
        try
          If (key = Null) Then
          begin
              //TODO:Error.Raise("SaveToSettings: model.Key is null");
          End;
          //TODO:
          //objSettings[Key & "/SomeString"] := SomeString;
          //objSettings[Key & "/SomeBoolean"] := SomeBoolean;
          //objSettings[Key & "/SomeInteger"] := SomeInteger;
          //objSettings[Key & "/SomeDateTime"] := SomeDateTime;
          //objSettings.Save


        finally
               Dirty := False;
        end;
      except
        on E: Exception do
        begin
           FmtStr(formatResult,'Key: ''%s''',[key]);
           WriteLn(formatResult);
           sErrorMessage:=FormatErrorForLog(E.Message , 'SaveToSettings' , E.HelpContext.ToString);
           LogErrorToFile(sErrorMessage);
        end;
      end;
  End;

  procedure TSomeModel.RefreshModel(bPreserveDirty : Boolean );
  var
     sErrorMessage:String;
     SaveDirty : Boolean;
  begin
      try
         try
            FForceNotify := True;

            SaveDirty := Dirty;
            //setting these will set Dirty property...
            Key := Key;
            SomeString := SomeString;
            SomeBoolean := SomeBoolean;
            SomeInteger := SomeInteger;
            SomeDateTime := SomeDateTime;

            //...so clear dirty flag after refreshing values
            If (bPreserveDirty) then Dirty := SaveDirty else Dirty := False;
         finally
           FForceNotify := False;
         end;
      except
        on E: Exception do
        begin
           sErrorMessage:=FormatErrorForLog(E.Message , 'RefreshModel' , E.HelpContext.ToString);
           LogErrorToFile(sErrorMessage);
        end;
      end;
  end;

  {
  Static
  }
   Function TSomeModel.VerifyKey(objSettings : TObject{Settings}; sIdParam : String) : Boolean;//Static;
   var
     sErrorMessage:String;
      bReturnValue : Boolean;
      sSlot : String;
   begin
       try
          try
            bReturnValue := False;
            //TODO:
            //For sSlot In objSettings.Keys Do
            //begin
            //    // Print Subst(("Slot: '&1'"), sSlot)
            //    If sSlot = sIdParam Then
            //    begin
            //        bReturnValue := True;
            //        Break;
            //    End;
            //end;

          finally
            VerifyKey := bReturnValue;
          end;
       except
         on E: Exception do
         begin
            sErrorMessage:=FormatErrorForLog(E.Message , 'VerifyKey' , E.HelpContext.ToString);
            LogErrorToFile(sErrorMessage);
         end;
       end;

  End;

  Function TSomeModel.OpenFromSettings( objModel : TSomeModel;  objSettings : TObject{Settings}; sIdParam : String) : Boolean;//Static;
  var
          sErrorMessage,formatResult:String;
          returnValue : Boolean;
          readValue : Variant;
          bAllowDirty : Boolean;// := False; //model should implicitly be Not Dirty after Open (unless null/missing values were replaced with defaults)
  begin
      try
         try
          readValue := False;

          If (sIdParam = Null) Then
         begin
             //TODO:Error.Raise(('OpenFromSettings: model.Key is null'));
         End;

         //need to clear values after failure, in case an error during opening leaves data in inconsistent state; see if caller can check/handle this

         //setting these will set Dirty property...
         //TODO:readValue := objSettings[sIdParam & '/SomeString';
         If (readValue = Null) Then
         begin
             FmtStr(formatResult,'Error opening key=''%s'', SomeString=Null',[sIdParam]);
             WriteLn(formatResult);
             objModel.SomeString := ''; //String.Default
             bAllowDirty := True;
         end
         Else
         begin
             objModel.SomeString := readValue;
         End;

         //TODO:readValue = objSettings[sIdParam & '/SomeBoolean"];
         If (readValue = Null) Then
         begin
             FmtStr(formatResult,'Error opening key=''%s'', SomeBoolean=Null',[sIdParam]);
             WriteLn(formatResult);
             objModel.SomeBoolean := False; //Boolean.Default
             bAllowDirty := True;
         end
         Else
         begin
             objModel.SomeBoolean := readValue;
         End;

         //TODO:readValue := objSettings[sIdParam & '/SomeInteger'];
         If (readValue = Null) Then
         begin
             FmtStr(formatResult,'Error opening key=''%s'', SomeInteger=Null',[sIdParam]);
             WriteLn(formatResult);
             objModel.SomeInteger := 0; //Integer.Default
             bAllowDirty := True;
         end
         Else
         begin
             objModel.SomeInteger := readValue;
         End;

         //TODO:readValue := objSettings[sIdParam & '/SomeDateTime'];
         If (readValue = Null) Then
         begin
             FmtStr(formatResult,'Error opening key=''%s'', SomeDateTime=Null',[sIdParam]);
             WriteLn(formatResult);
             objModel.SomeDateTime := Date; //Date.Default
             bAllowDirty := True;
         end
         Else
         begin
             objModel.SomeDateTime := readValue;
         End;

         //...so clear dirty flag after retrieving saved values (if no Null replacements were handled)
         If Not bAllowDirty = True Then
         begin
             objModel.Dirty := False;
         End;

         finally
           returnValue := True;
           OpenFromSettings := returnValue;
         end;
      except
        on E: Exception do
        begin
           sErrorMessage:=FormatErrorForLog(E.Message , 'VerifyKey' , E.HelpContext.ToString);
           LogErrorToFile(sErrorMessage);
        end;
      end;

  End;

end.

