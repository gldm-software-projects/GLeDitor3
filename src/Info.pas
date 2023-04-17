(**
 a simple "about box"

 @author De Michelis Gian Luca
 @todo keep it updated!
*)

Unit Info;

{$MODE Delphi}

// GLeDitor v.3 for Apple Mac architecture

Interface

Uses LCLIntf, LCLType, LMessages, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
Buttons, ExtCtrls;

Type 
  (**
  the "about box" form
  *)
  TAboutBox = Class(TForm)
    Panel1: TPanel;
    ProductName: TLabel;   /// application name string, i.e. gleditor
    Version: TLabel;       /// gleditor version string
    OKButton: TButton;     /// close this window
    Label1: TLabel;
    Image1: TImage;
    Label2: TLabel;        /// an atom: as you may know, is the mascotte of the gleditor project
    Procedure FormCreate(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label2MouseEnter(Sender: TObject);
    procedure Label2MouseLeave(Sender: TObject);

    Private 
    { Private declarations }
      Function GetFileVersion(Const FileName: String; Const Fmt: String = '%d.%d.%d.%d'): String;
    Public 
    { Public declarations }
  End;

Implementation

{$R *.lfm}

Uses Main;

Procedure TAboutBox.FormCreate(Sender: TObject);
Begin
  caption := EditorMainForm.lingua.S_About_Caption;
  version.Caption := 'V. '+GetFileVersion(application.exename)+' '+version.Caption;
  label1.Caption := EditorMainForm.lingua.S_About_1+#13+EditorMainForm.lingua.S_About_2;//+#13+
  label2.Caption :=  EditorMainForm.lingua.S_About_3;
  label1.Width := 210;
  label1.height := 70;
  label2.Width := 210;   
  label2.height := 20;
End;

Function TAboutBox.GetFileVersion(Const FileName: String; Const Fmt: String = '%d.%d.%d.%d'): String;
Var
  iBufferSize: DWORD;
  iDummy: DWORD;
  pBuffer: Pointer;
  pFileInfo: Pointer;
  iVer: Array[1..4] Of Word;
Begin
  // set default value
  Result := '';
  //// get size of version info (0 if no version info exists)
  //iBufferSize := GetFileVersionInfoSize(PChar(FileName), iDummy);
  //If (iBufferSize > 0) Then  Begin
  //  GetMem(pBuffer, iBufferSize);
  //  Try
  //    // get fixed file info
  //    GetFileVersionInfo(PChar(FileName), 0, iBufferSize, pBuffer);
  //    VerQueryValue(pBuffer, '\', pFileInfo, iDummy);
  //    // read version blocks
  //    iVer[1] := HiWord(PVSFixedFileInfo(pFileInfo)^.dwFileVersionMS);
  //    iVer[2] := LoWord(PVSFixedFileInfo(pFileInfo)^.dwFileVersionMS);
  //    iVer[3] := HiWord(PVSFixedFileInfo(pFileInfo)^.dwFileVersionLS);
  //    iVer[4] := LoWord(PVSFixedFileInfo(pFileInfo)^.dwFileVersionLS);
  //  Finally
  //    FreeMem(pBuffer);
  //  End;
  //  // format result string
  //  Result := Format(Fmt, [iVer[1], iVer[2], iVer[3], iVer[4]]);
  //End;
End;

procedure TAboutBox.Label2Click(Sender: TObject);
begin
// lancio del sito delle icone
    OpenDocument(PChar(EditorMainForm.lingua.S_About_link)); { *Converted from ShellExecute* }
end;

procedure TAboutBox.Label2MouseEnter(Sender: TObject);
begin
  Screen.Cursor:=crHandPoint;
end;

procedure TAboutBox.Label2MouseLeave(Sender: TObject);
begin  
  Screen.Cursor:=crDefault;  
end;

procedure TAboutBox.Label4Click(Sender: TObject);
begin
 // lancio del sito  di progetto
 // OpenDocument(PChar(label4.Caption)); { *Converted from ShellExecute* }
end;

End.
