Unit Utility;

{$MODE Delphi}

Interface

Uses Forms;
Function EndsWith(filename:String; desinenza:String): Boolean;
Procedure SetVistaFonts(Const AForm: TCustomForm);
Function IsWindowsVista: Boolean;
Function CompositingEnabled: Boolean;

Implementation

Uses SysUtils, LCLIntf, LCLType, LMessages;

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

Function IsWindowsVista: Boolean;
Begin
  Result := false;
End;

Procedure SetVistaFonts(Const AForm: TCustomForm);
Begin
  //nothing
End;

Function CompositingEnabled: Boolean;

Begin
  Result := False;
End;

End.
