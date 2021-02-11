unit ModelBase;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, ssepan_laz_utility;

type
  TModelBase=class//(TObject)
  private
    {
    Properties
    }
    FDirty: Boolean;
    FKey : String;
  protected
    {
    Events
    }
    procedure NotifyPropertyChanged(propertyName : String);
    {
    Properties
    }
    function GetDirty():Boolean;
    procedure SetDirty(Value: Boolean);
    function GetKey():String;
    procedure SetKey(Value: String);
  public
    constructor Create();

    {
    Properties
    }
    property Dirty : Boolean read GetDirty write SetDirty;
    Property Key : String read GetKey write SetKey;
end;

const
 KEY_NEW = '(new)';

var
  test1:string;
implementation

  {
  Constructors
  }
  //default constructor
  constructor TModelBase.Create();
  begin
     FDirty := false;
     FKey := KEY_NEW;
  end;

  {
  Events
  }
  //re-visit http://docwiki.appmethod.com/appmethod/1.13/topics/en/Events
  //to sort out its event alternative;
  procedure NotifyPropertyChanged(propertyName : String);
  begin
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
  end;

  function TModelBase.GetKey():String;
  begin
    GetKey := FKey;
  end;
  procedure TModelBase.SetKey(Value: String);
  begin
    FKey := Value;
  end;

end.

