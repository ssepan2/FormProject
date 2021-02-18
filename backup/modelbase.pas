unit ModelBase;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils,contnrs, fgl, ssepan_laz_utility;

type
  TProcArgString = procedure(propertyName : String);// of object;
  THandlers = specialize TFPGList<TProcArgString>;
  TModelBase=class//(TObject)
  private
    {
    Fields
    }

    FDirty: Boolean;
    FKey : String;
    FHandlers: THandlers;
    {
    Properties
    }
  protected
    {
    Events
    }
    {
    Properties
    }

    function GetDirty():Boolean;
    procedure SetDirty(Value: Boolean);
    function GetKey():String;
    procedure SetKey(Value: String);
  public

    {
    ctor
    }
    constructor Create(); virtual;
    destructor Destroy; override;
    {
    Events
    }
    procedure NotifyPropertyChanged(propertyName : String);


    {
    Methods
    }
    procedure AddHandler(f:TProcArgString);
    procedure RemoveHandler(f:TProcArgString);
    procedure OnNotifyPropertyChanged(propertyName:String);

    {
    Properties
    }
    property Dirty : Boolean read GetDirty write SetDirty;
    Property Key : String read GetKey write SetKey;
end;

const
 KEY_NEW = '(new)';

//var
//  test1:string;
implementation

  {
  ctor
  }
  //default constructor
  constructor TModelBase.Create();
  begin
     FDirty := false;
     FKey := KEY_NEW;
     FHandlers := THandlers.Create;
  end;

  destructor TModelBase.Destroy;
  begin
       FHandlers.Free;
  end;
  {
  Events
  }
  //re-visit http://docwiki.appmethod.com/appmethod/1.13/topics/en/Events
  //to sort out its event alternative;
  procedure TModelBase.NotifyPropertyChanged(propertyName : String);
  var
    sErrorMessage, formatResult:String;
    bResult : Boolean;
  begin
    try
      try
         bResult := False;

         //FmtStr(formatResult,'PropertyChanged firing: ''%s''',[propertyName]);
         //WriteLn(formatResult);

         OnNotifyPropertyChanged(propertyName);//SIGSEV

       finally

          //FmtStr(formatResult,'PropertyChanged fired: ''%s''',[propertyName]);
          //WriteLn(formatResult);
       end;
       except
         on E: Exception do
         begin
            sErrorMessage:=FormatErrorForLog(E.Message , 'NotifyPropertyChanged' , E.HelpContext.ToString);
            LogErrorToFile(sErrorMessage);
         end;
       end;
  end;

  {
  Properties
  }
  function TModelBase.GetDirty():Boolean;
  begin
    GetDirty := FDirty;
  end;
  procedure TModelBase.SetDirty(Value: Boolean);
  begin
    FDirty := Value;
    NotifyPropertyChanged('Dirty');
  end;

  function TModelBase.GetKey():String;
  begin
    GetKey := FKey;
  end;
  procedure TModelBase.SetKey(Value: String);
  begin
    FKey := Value;
    NotifyPropertyChanged('Key');
    Dirty := true;
  end;

  {
  Methods
  }

  procedure TModelBase.AddHandler(f:TProcArgString);
  var
    sErrorMessage, formatResult:String;
  begin
    try
      try
        FmtStr(formatResult,'FHandlers.Count (before): ''%d''',[FHandlers.Count]);
        WriteLn(formatResult);

        f('Key');//TODO:passed function worked BEFORE being stuffed into list, but not AFTER being retrieved (SIGSEGV)
        if FHandlers.IndexOf(f) = -1 then
        begin
             FHandlers.Add(f);
        end;

        FmtStr(formatResult,'FHandlers.Count (after): ''%d''',[FHandlers.Count]);
        WriteLn(formatResult);
      finally
           //
      end;
      except
        on E: Exception do
        begin
           sErrorMessage:=FormatErrorForLog(E.Message , 'AddHandler' , E.HelpContext.ToString);
           LogErrorToFile(sErrorMessage);
        end;
      end;
  end;

  procedure TModelBase.RemoveHandler(f:TProcArgString);
  var
    sErrorMessage, formatResult:String;
    extracted: Pointer;
  begin
    try
      try
          FmtStr(formatResult,'FHandlers.Count (before): ''%d''',[FHandlers.Count]);
          WriteLn(formatResult);

          extracted := FHandlers.Extract(f);
          if extracted=nil Then
          begin
            FmtStr(formatResult,'item not extracted from FHandlers: ''%d''',[FHandlers.Count]);
            WriteLn(formatResult);
          end
          else
          begin
            FmtStr(formatResult,'FHandlers.Count (after): ''%d''',[FHandlers.Count]);
            WriteLn(formatResult);
          end;
      finally
           //
      end;
      except
        on E: Exception do
        begin
           sErrorMessage:=FormatErrorForLog(E.Message , 'RemoveHandler' , E.HelpContext.ToString);
           LogErrorToFile(sErrorMessage);
        end;
      end;
  end;


  procedure TModelBase.OnNotifyPropertyChanged(propertyName : String);
  var
    sErrorMessage, formatResult:String;
    proc:  TProcArgString;
  begin
    try
      try
        //if (propertyName='SomeInteger') Then
        //begin
        //  FmtStr(formatResult,'OnNotifyPropertyChanged: propertyName (before): ''%s''',[propertyName]);
        //  WriteLn(formatResult);
        //end;

        for proc in FHandlers do
        begin
             proc(propertyName);
        end;
      finally
         //if (propertyName='SomeInteger') Then
         //begin
         //  FmtStr(formatResult,'OnNotifyPropertyChanged: propertyName (after): ''%s''',[propertyName]);
         //  WriteLn(formatResult);
         //end;
      end;
      except
        on E: Exception do
        begin
           WriteLn(sErrorMessage);
           sErrorMessage:=FormatErrorForLog(E.Message , 'OnNotifyPropertyChanged' , E.HelpContext.ToString);
           LogErrorToFile(sErrorMessage);
        end;
      end;
  end;


end.

