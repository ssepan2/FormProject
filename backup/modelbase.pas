unit ModelBase;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils,contnrs, ssepan_laz_utility;

type
  TModelBase=class//(TObject)
  private
    {
    Properties
    }
    FDirty: Boolean;
    FKey : String;
    FHandlers: TObjectList;
  protected
    {
    Events
    }
    //Event PropertyChanged(propertyName : String) //: Boolean
    procedure NotifyPropertyChanged(propertyName : String);
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
    constructor Create();
    destructor Destroy; override;

    {
    Methods
    }
    procedure AddHandler(obj: TObject);
    procedure RemoveHandler(obj: TObject);
    procedure OnNotifyPropertyChanged( var msg );

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
     FHandlers := TObjectList.Create;
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

         FmtStr(formatResult,'PropertyChanged fired: ''%s''',[propertyName]);
         WriteLn(formatResult);

         OnNotifyPropertyChanged(propertyName);
         //bResult := Raise PropertyChanged(propertyName); //: BResult
         //WriteLn(bResult);

         If bResult Then
         begin
           FmtStr(formatResult,'PropertyChanged cancelled: ''%s''',[propertyName]);
           WriteLn(formatResult);
         End;
       finally

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
  end;

  {
  Methods
  }

  procedure TModelBase.AddHandler(obj: TObject);
  var
    sErrorMessage, formatResult:String;
  begin
    try
      try
        if FHandlers.IndexOf(obj) = -1 then
        begin
             FHandlers.Add(obj);
        end;

        FmtStr(formatResult,'FHandlers.Count: ''%s''',[FHandlers.Count]);
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

  procedure TModelBase.RemoveHandler(obj: TObject);
  var
    sErrorMessage, formatResult:String;
  begin
    try
      try
        FHandlers.Extract(obj);

        FmtStr(formatResult,'FHandlers.Count: ''%s''',[FHandlers.Count]);
        WriteLn(formatResult);
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


  procedure TModelBase.OnNotifyPropertyChanged( var msg );
  var handler : Pointer;
  begin
    for handler in FHandlers do
    begin
        TObject(handler).DispatchStr( msg );
    end;
  end;


end.

