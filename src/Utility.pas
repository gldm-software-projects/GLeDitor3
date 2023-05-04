Unit Utility;

{$MODE objfpc}{$H+}
{$IFDEF DARWIN}
{$modeswitch objectivec1}
{$ENDIF}

Interface

Uses Forms;
function EndsWith(filename:String; desinenza:String): Boolean;
function CompositingEnabled: Boolean;
function GetMainBundlePath: string;
function GetAppPath: string;

Implementation

Uses SysUtils, LCLIntf, LCLType, LMessages
{$IFDEF DARWIN}
  ,CocoaAll,CocoaUtils
{$ENDIF}
;

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
{$IFDEF DARWIN}
  Result := NSStringToString(NSBundle.mainBundle.bundlePath);  
{$ENDIF}
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
