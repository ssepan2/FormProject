unit SomeModel;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, IniFiles, ModelBase, Ssepan_Laz_Utility;
type
  TSomeModel=Class(TModelBase)
  private
    FForceNotify : Boolean; //:= False;

    {
    Fields
    }
    FSomeString : String;// := '';
    FSomeBoolean : Boolean;// := False;
    FSomeInteger : LongInt;// := 0;
    FSomeDateTime : TDateTime;// := Now();
    {
    Properties
    }

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
    constructor Create(); override;
    destructor Destroy; //override;

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
    procedure SaveToSettings(sFilePath:String; objSettings : TObject{Settings});
    procedure RefreshModel(bPreserveDirty : Boolean );
    {
    Static
    }
    Function VerifyKey(objSettings : TObject{Settings}; sIdParam,sFilePath : String) : Boolean;//Static;
    Function OpenFromSettings( objModel : TSomeModel;  objSettings : TObject{Settings}; sIdParam,sFilePath : String) : Boolean;//Static;
  end;

const
    C_INI_FILE = 'SomeIni.ini';

//var
//  test2:string;
implementation
  {
  ctor
  }
  constructor TSomeModel.Create();
  begin
      Inherited Create();

  end;

  destructor TSomeModel.Destroy;
  begin
       Inherited Destroy;
  end;

  {
  Properties
  }

  Function TSomeModel.GetSomeString() : String;
  begin

      GetSomeString :=  FSomeString;

  End;
  procedure TSomeModel.SetSomeString(Value : String);
  var
       sErrorMessage, formatResult:String;
  begin
      try
        try

          If (FSomeString <> Value) Or FForceNotify Then
          begin
              FSomeString := Value;
              Dirty := true;
              NotifyPropertyChanged('SomeString');
          End;
      finally
        //
      end;
    except
      on E: Exception do
      begin
         sErrorMessage:=FormatErrorForLog(E.Message , 'SetSomeString' , E.HelpContext.ToString);
         LogErrorToFile(sErrorMessage);
      end;
    end;

  End;

  Function TSomeModel.GetSomeBoolean() : Boolean;
  begin

      GetSomeBoolean :=  FSomeBoolean;

  End;
  procedure TSomeModel.SetSomeBoolean(Value : Boolean);
  var
       sErrorMessage, formatResult:String;
  begin
      try
        try

          If (FSomeBoolean <> Value) Or FForceNotify Then
          begin
              FSomeBoolean := Value;
              Dirty := true;
              NotifyPropertyChanged('SomeBoolean');
          End;
      finally
        //
      end;
    except
      on E: Exception do
      begin
         sErrorMessage:=FormatErrorForLog(E.Message , 'SetSomeBoolean' , E.HelpContext.ToString);
         LogErrorToFile(sErrorMessage);
      end;
    end;

  End;

  Function TSomeModel.GetSomeInteger() : LongInt;
  begin

      GetSomeInteger :=  FSomeInteger;

  End;
  procedure TSomeModel.SetSomeInteger(Value : LongInt);
  var
       sErrorMessage, formatResult:String;
  begin
      try
        try

          If (FSomeInteger <> Value) Or FForceNotify Then
          begin
              FSomeInteger := Value;
              Dirty := true;
              NotifyPropertyChanged('SomeInteger');
          End;
      finally
        //
      end;
    except
      on E: Exception do
      begin
         sErrorMessage:=FormatErrorForLog(E.Message , 'SetSomeInteger' , E.HelpContext.ToString);
         LogErrorToFile(sErrorMessage);
      end;
    end;

  End;

  Function TSomeModel.GetSomeDateTime() : TDateTime;
  begin

      GetSomeDateTime :=  FSomeDateTime;

  End;
  procedure TSomeModel.SetSomeDateTime(Value : TDateTime);
  var
       sErrorMessage, formatResult:String;
  begin
    //Watch out for TDateEdit.DefaultToday set to True;
    //causes changed property to fire before Create of TSomeModel,
    //which causes an access violation in the corresponding set-property of the model
    try
      try
        If (FSomeDateTime <> Value) Or FForceNotify Then
        begin
            FSomeDateTime := Value ;
            Dirty := true;
            NotifyPropertyChanged('SetSomeDateTime');
        End;
      finally
        //
      end;
    except
      on E: Exception do
      begin
         sErrorMessage:=FormatErrorForLog(E.Message , 'SetSomeDateTime' , E.HelpContext.ToString);
         LogErrorToFile(sErrorMessage);
      end;
    end;

  End;


  {
  Methods
  }
  procedure TSomeModel.SaveToSettings(sFilePath:String; objSettings : TObject{Settings});
  var
     sErrorMessage, formatResult:String;
  begin
      try
        try
          If (key = Null) Then
          begin
              raise Exception.Create('model.Key is null');
          End;

          with TIniFile.Create(sFilePath) do
          begin

           WriteString(Key, 'SomeString', SomeString);
           WriteBool(Key, 'SomeBoolean', SomeBoolean);
           WriteInteger(Key, 'SomeInteger', SomeInteger);
           WritedateTime(Key, 'SomeDateTime', SomeDateTime);

           UpdateFile; // Not needed
           Free;
         end;


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
   Function TSomeModel.VerifyKey(objSettings : TObject{Settings}; sIdParam,sFilePath : String) : Boolean;//Static;
   var
     sErrorMessage,formattedString:String;
     readValue : Variant;
      bReturnValue : Boolean;
      slot : String;
      slots : TStrings;
   begin
       try
          try
            bReturnValue := False;
            readValue := False;
            slots := TStrings.Create;

          If (sIdParam = Null) Then
           begin
               raise Exception.Create('model.Key is null');
           End;

          with TIniFile.Create(sFilePath) do
          begin
             {TIniFile}ReadSections(slots);
             For slot In slots Do
             begin
                //FmtStr(formattedString,'Slot: ''%s'' ', [slot]);
                //WriteLn(formattedString);
                If slot = sIdParam Then
                 begin
                     bReturnValue := True;
                     Break;
                 End;
             end;

             //{TIniFile}UpdateFile; // Not needed
             {TIniFile}Free;
          end;

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

  Function TSomeModel.OpenFromSettings( objModel : TSomeModel;  objSettings : TObject{Settings}; sIdParam,sFilePath : String) : Boolean;//Static;
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
               raise Exception.Create('model.Key is null');
           End;

            with TIniFile.Create(sFilePath) do
            begin

             //need to clear values after failure, in case an error during opening leaves data in inconsistent state; see if caller can check/handle this

             //setting these will set Dirty property...
             readValue := {TIniFile}ReadString(sIdParam,'SomeString',Null);
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

             readValue := {TIniFile}ReadBool(sIdParam,'SomeBoolean',False);
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

             readValue := {TIniFile}ReadInteger(sIdParam,'SomeInteger',0);
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

             readValue := {TIniFile}ReadDateTime(sIdParam,'SomeDateTime',Date);
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

             //{TIniFile}UpdateFile; // Not needed
             {TIniFile}Free;
           end;

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

