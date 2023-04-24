Unit Utility;

{$MODE objfpc}{$H+}
{$modeswitch objectivec1}

Interface

Uses Forms;
function EndsWith(filename:String; desinenza:String): Boolean;
function CompositingEnabled: Boolean;
function GetMainBundlePath: string;
function GetAppPath: string;

Implementation

Uses SysUtils, LCLIntf, LCLType, LMessages, CocoaAll, CocoaUtils;

Function EndsWith(filename:String; desinenza:String): Boolean;
var i :smallint;
Begin
  result := false;
  i:= Pos(desinenza,filename);
  if i>0 then begin
    if i = (Length(filename)-length(desinenza)+1) then
      Result:=True;
  end;
End;

function GetMainBundlePath: string;
begin
  Result := NSStringToString(NSBundle.mainBundle.bundlePath);
end;

function GetAppPath: string;
begin
  Result := ExtractFileDir(GetMainBundlePath);
end;

function CompositingEnabled: Boolean;
Begin
  Result := False;
End;

End.
