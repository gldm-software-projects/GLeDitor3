(**
Configuration of the external calls...

@author De Michelis Gian Luca
@todo I'd like to heavily refactor this unit...(maybe, in the future)
*)

Unit Preferences;

{$MODE Delphi}

// GLeDitor v.3 for Apple Mac architecture

Interface

Uses 
LCLIntf, LCLType, LMessages, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, ShellCtrls, MyLocalConsts,
inifiles, Menus;

Type 
  (**
  configuration panel
  *)

  { TConfigurationForm }

  TConfigurationForm = Class(TForm)
    TitleLabel: TLabel;
    OpenDialog1: TOpenDialog;
    Panel1: TPanel;
    MyPageControl: TPageControl;
    TabCpp: TTabSheet;
    C_CompLabel: TLabel;
    CCompilerBtn: TSpeedButton;
    C_ParLabel: TLabel;
    C_HelpLabel: TLabel;
    CHelpBtn: TSpeedButton;
    C_CompEdit: TEdit;
    C_ParEdit: TEdit;
    C_HelpEdit: TEdit;
    TabPascal: TTabSheet;
    Pas_compLabel: TLabel;
    PascalCompilerBtn: TSpeedButton;
    Pas_ParLabel: TLabel;
    PascalHelpBtn: TSpeedButton;
    Pas_HelpLabel: TLabel;
    Pas_CompEdit: TEdit;
    Pas_ParEdit: TEdit;
    Pas_HelpEdit: TEdit;
    TabSql: TTabSheet;
    SqlCompilerBtn: TSpeedButton;
    Sql_CompLabel: TLabel;
    Sql_parLabel: TLabel;
    Sql_HelpLabel: TLabel;
    SqlHelpBtn: TSpeedButton;
    SQL_CompEdit: TEdit;
    SQL_ParEdit: TEdit;
    TabJava: TTabSheet;
    Java_CompLabel: TLabel;
    JavaCompilerBtn: TSpeedButton;
    Java_ParLabel: TLabel;
    Java_HelpLabel: TLabel;
    JavaHelpBtn: TSpeedButton;
    Java_CompEdit: TEdit;
    Java_ParEdit: TEdit;
    Java_HelpEdit: TEdit;
    TabBasic: TTabSheet;
    Bas_CompLabel: TLabel;
    BasicCompilerBtn: TSpeedButton;
    Bas_ParLabel: TLabel;
    Bas_HelpLabel: TLabel;
    BasicHelpBtn: TSpeedButton;
    Bas_CompEdit: TEdit;
    Bas_ParEdit: TEdit;
    Bas_HelpEdit: TEdit;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    SQL_HelpEdit: TEdit;
    TabPython: TTabSheet;
    GeneralSheet: TTabSheet;
    Py_CompLabel: TLabel;
    Py_CompEdit: TEdit;
    PythonCompilerBtn: TSpeedButton;
    Py_ParLabel: TLabel;
    Py_ParEdit: TEdit;
    Py_helpLabel: TLabel;
    Py_HelpEdit: TEdit;
    PythonHelpBtn: TSpeedButton;
    Py_dirLabel: TLabel;
    Py_DirEdit: TEdit;
    Bas_dirLabel: TLabel;
    Bas_DirEdit: TEdit;
    Java_dirLabel: TLabel;
    Java_DirEdit: TEdit;
    Sql_dirLabel: TLabel;
    SQL_DirEdit: TEdit;
    Pas_dirLabel: TLabel;
    Pas_DirEdit: TEdit;
    C_dirLabel: TLabel;
    C_DirEdit: TEdit;
    PopupMenu1: TPopupMenu;
    Filecorrente1: TMenuItem;
    Directorydelfilecorrente1: TMenuItem;
    BrowserEdit: TEdit;
    BrowserLabel: TLabel;
    BrowserDirEdit: TEdit;
    BrowserDirLabel: TLabel;
    BrowserParEdit: TEdit;
    BrowserParLabel: TLabel;
    GeneralBrowserBtn: TSpeedButton;
    GeneralBrowserDir: TSpeedButton;
    Procedure BitBtn1Click(Sender: TObject);
    procedure MyPageControlChange(Sender: TObject);
    Procedure WriteToCfg();
    /// save on the inifile the current configuration
    Procedure CCompilerBtnClick(Sender: TObject);
    Procedure PascalCompilerBtnClick(Sender: TObject);
    Procedure SqlCompilerBtnClick(Sender: TObject);
    Procedure JavaCompilerBtnClick(Sender: TObject);
    Procedure BasicCompilerBtnClick(Sender: TObject);
    Procedure FormCreate(Sender: TObject);
    Procedure CHelpBtnClick(Sender: TObject);
    Procedure PascalHelpBtnClick(Sender: TObject);
    Procedure SqlHelpBtnClick(Sender: TObject);
    Procedure JavaHelpBtnClick(Sender: TObject);
    Procedure BasicHelpBtnClick(Sender: TObject);
    Procedure SetLocale(locale:TLocalizedConstContainer);
    Procedure CsCompilerBtnClick(Sender: TObject);
    Procedure CsHelpBtnClick(Sender: TObject);
    procedure PythonCompilerBtnClick(Sender: TObject);
    procedure PythonHelpBtnClick(Sender: TObject);
    procedure Filecorrente1Click(Sender: TObject);
    procedure Directorydelfilecorrente1Click(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure GeneralBrowserBtnClick(Sender: TObject);
    Private 
    { Private declarations }
    selCmp: TComponent;
    Procedure LoadLocale();
    Public
    { Public declarations }
      //lingua: TLocalizedConstContainer;
  End;

Implementation

Uses Main, Utility;

{$R *.lfm}

Procedure TConfigurationForm.BitBtn1Click(Sender: TObject);
Begin
  // cosa faccio prima di chiudere? Salvo il file di configurazione!
  writetocfg;
End;

procedure TConfigurationForm.MyPageControlChange(Sender: TObject);
begin

end;

Procedure TConfigurationForm.WriteToCfg();
Var
  MyConf: TIniFile;
Begin
  if (directoryexists(EditorMainForm.cfgdir)) then begin

  MyConf := TIniFile.Create(EditorMainForm.cfgfile);
  // configurazione compilatori
  MyConf.WriteString('Calls', 'c_compiler', C_Compedit.Text);
  MyConf.WriteString('Calls', 'pascal_compiler', Pas_compedit.Text);
  MyConf.WriteString('Calls', 'sql_engine', SQL_Compedit.Text);
  MyConf.WriteString('Calls', 'java_compiler', Java_compedit.Text);
  MyConf.WriteString('Calls', 'basic_compiler', Bas_Compedit.Text);
  //MyConf.WriteString('Calls', 'csharp_compiler', Cs_Compedit.Text);
  MyConf.WriteString('Calls', 'python_engine', Py_Compedit.Text);
  
  // parametri
  MyConf.WriteString('Calls', 'c_params', trim(C_Paredit.Text));
  MyConf.WriteString('Calls', 'pascal_params', trim(Pas_Paredit.Text));
  MyConf.WriteString('Calls', 'sql_params', trim(Sql_Paredit.Text));
  MyConf.WriteString('Calls', 'java_params', trim(Java_Paredit.Text));
  MyConf.WriteString('Calls', 'basic_params', trim(Bas_Paredit.Text));
  //MyConf.WriteString('Calls', 'csharp_params', trim(Cs_Paredit.Text));
  MyConf.WriteString('Calls', 'python_params', trim(Py_Paredit.Text));

  // directory
  MyConf.WriteString('Calls', 'c_dir', c_DirEdit.Text);
  MyConf.WriteString('Calls', 'pascal_dir', Pas_DirEdit.Text);
  MyConf.WriteString('Calls', 'sql_dir', Sql_DirEdit.Text);
  MyConf.WriteString('Calls', 'java_dir', Java_DirEdit.Text);
  MyConf.WriteString('Calls', 'basic_dir', Bas_DirEdit.Text);
 // MyConf.WriteString('Calls', 'csharp_dir', Cs_DirEdit.Text);
  MyConf.WriteString('Calls', 'python_dir', Py_Helpedit.Text);

  // file di help
  MyConf.WriteString('Calls', 'c_help', c_Helpedit.Text);
  MyConf.WriteString('Calls', 'pascal_help', Pas_Helpedit.Text);
  MyConf.WriteString('Calls', 'sql_help', Sql_Helpedit.Text);
  MyConf.WriteString('Calls', 'java_help', Java_Helpedit.Text);
  MyConf.WriteString('Calls', 'basic_help', Bas_Helpedit.Text);
//  MyConf.WriteString('Calls', 'csharp_help', Cs_Helpedit.Text);
  MyConf.WriteString('Calls', 'python_help', Py_Helpedit.Text);
  
  myconf.WriteDate('Date','Calls_conf_date',now);
  MyConf.Free;
  end;
End;

Procedure TConfigurationForm.CCompilerBtnClick(Sender: TObject);
Begin
  If OpenDialog1.Execute Then Begin
    //C_Compedit.readonly := false;
    C_Compedit.text := OpenDialog1.FileName;
    C_DirEdit.Text :=  extractfilepath(OpenDialog1.FileName);
    //c_compedit.readonly := true;
  End;
End;

Procedure TConfigurationForm.LoadLocale();
Var MyConf : TIniFile;
Begin
 if (fileexists(EditorMainForm.cfgfile)) then begin
  MyConf := TIniFile.Create(EditorMainform.cfgfile);
  With MyConf Do Begin
    C_Compedit.Text    := readstring('Calls', 'c_compiler','');
    Pas_Compedit.Text  := readstring('Calls', 'pascal_compiler','');
    Sql_Compedit.Text  := readstring('Calls', 'sql_engine','');
    Java_Compedit.Text := readstring('Calls', 'java_compiler','');
    Bas_Compedit.Text  := readstring('Calls', 'basic_compiler','');
    //Cs_Compedit.Text   := readstring('Calls', 'csharp_compiler','');
    Py_Compedit.Text   := readstring('Calls', 'python_engine','');

    C_Paredit.Text    := readstring('Calls', 'c_params','');
    Pas_Paredit.Text  := readstring('Calls', 'pascal_params','');
    Sql_Paredit.Text  := readstring('Calls', 'sql_params','');
    Java_Paredit.Text := readstring('Calls', 'java_params','');
    Bas_Paredit.Text  := readstring('Calls', 'basic_params','');
    //Cs_Paredit.Text   := readstring('Calls', 'csharp_params','');
    Py_Paredit.Text   := readstring('Calls', 'python_params','');

    C_DirEdit.Text    := readstring('Calls', 'c_dir','');
    Pas_DirEdit.Text  := readstring('Calls', 'pascal_dir','');
    Sql_DirEdit.Text  := readstring('Calls', 'sql_dir','');
    Java_DirEdit.Text := readstring('Calls', 'java_dir','');
    Bas_DirEdit.Text  := readstring('Calls', 'basic_dir','');
    //Cs_DirEdit.Text   := readstring('Calls', 'csharp_dir','');
    Py_DirEdit.Text   := readstring('Calls', 'python_dir','');

    C_Helpedit.Text    := readstring('Calls', 'c_help','');
    Pas_Helpedit.Text  := readstring('Calls', 'pascal_help','');
    Sql_Helpedit.Text  := readstring('Calls', 'sql_help','');
    Java_Helpedit.Text := readstring('Calls', 'java_help','');
    Bas_Helpedit.Text  := readstring('Calls', 'basic_help','');
    //Cs_Helpedit.Text   := readstring('Calls', 'csharp_help','');
    Py_Helpedit.Text   := readstring('Calls', 'python_help','');
  End;
  MyConf.Free;
 end;
End;

Procedure TConfigurationForm.PascalCompilerBtnClick(Sender: TObject);
Begin
  If OpenDialog1.Execute Then Begin
    //Pas_Compedit.readonly := false;
    Pas_Compedit.text := OpenDialog1.FileName;
    Pas_DirEdit.Text :=  extractfilepath(OpenDialog1.FileName);
    //Pas_Compedit.readonly := true;
  End;
End;

Procedure TConfigurationForm.SqlCompilerBtnClick(Sender: TObject);
Begin
  If OpenDialog1.Execute Then Begin
    //Sql_Compedit.readonly := false;
    Sql_Compedit.text := OpenDialog1.FileName;
    SQL_DirEdit.Text :=  extractfilepath(OpenDialog1.FileName);
    //Sql_Compedit.readonly := true;
  End;
End;

Procedure TConfigurationForm.JavaCompilerBtnClick(Sender: TObject);
Begin
  If OpenDialog1.Execute Then Begin
    //Java_Compedit.readonly := false;
    Java_Compedit.text := OpenDialog1.FileName;
    Java_DirEdit.Text :=  extractfilepath(OpenDialog1.FileName);
    //Java_Compedit.readonly := true;
  End;
End;

Procedure TConfigurationForm.BasicCompilerBtnClick(Sender: TObject);
Begin
  If OpenDialog1.Execute Then Begin
    //Bas_Compedit.readonly := false;
    Bas_Compedit.text := OpenDialog1.FileName;
    Bas_DirEdit.Text :=  extractfilepath(OpenDialog1.FileName);
    //Bas_Compedit.readonly := true;
  End;
End;

Procedure TConfigurationForm.FormCreate(Sender: TObject);
Begin
  //   setLocale(lingua);
  Utility.SetVistaFonts(self);
  color := tcolor(strtoint(EditorMainForm.lightcol));
  TitleLabel.Color:= tcolor(strtoint(EditorMainForm.darkcol));
  panel1.color := tcolor(strtoint(EditorMainForm.darkcol));
  panel2.color := tcolor(strtoint(EditorMainForm.darkcol));
  LoadLocale();
End;

procedure TConfigurationForm.GeneralBrowserBtnClick(Sender: TObject);
begin
 If OpenDialog1.Execute Then Begin
    //c_Helpedit.readonly:=false;
    BrowserEdit.text := OpenDialog1.FileName;
    //c_Helpedit.readonly:=true;
  End;
end;

Procedure TConfigurationForm.CHelpBtnClick(Sender: TObject);
Begin
  If OpenDialog1.Execute Then Begin
    //c_Helpedit.readonly:=false;
    c_Helpedit.text := OpenDialog1.FileName;
    //c_Helpedit.readonly:=true;
  End;
End;

Procedure TConfigurationForm.PascalHelpBtnClick(Sender: TObject);
Begin
  If OpenDialog1.Execute Then Begin
    //Pas_Helpedit.readonly:=false;
    Pas_Helpedit.text := OpenDialog1.FileName;
    //Pas_Helpedit.readonly:=true;
  End;
End;

Procedure TConfigurationForm.SqlHelpBtnClick(Sender: TObject);
Begin
  If OpenDialog1.Execute Then Begin
    //SQL_Helpedit.readonly:=false;
    SQL_Helpedit.text := OpenDialog1.FileName;
    //SQL_Helpedit.readonly:=true;
  End;
End;

Procedure TConfigurationForm.JavaHelpBtnClick(Sender: TObject);
Begin
  If OpenDialog1.Execute Then Begin
    //Java_Helpedit.readonly:=false;
    Java_Helpedit.text := OpenDialog1.FileName;
    //Java_Helpedit.readonly:=true;
  End;
End;

Procedure TConfigurationForm.BasicHelpBtnClick(Sender: TObject);
Begin
  If OpenDialog1.Execute Then Begin
    //Bas_Helpedit.readonly:=false;
    Bas_Helpedit.text := OpenDialog1.FileName;
    //Bas_Helpedit.readonly:=true;
  End;
End;


Procedure TConfigurationForm.CsCompilerBtnClick(Sender: TObject);
Begin
  //If OpenDialog1.Execute Then Begin
  //  //cs_Compedit.readonly := false;
  //  cs_Compedit.text := OpenDialog1.FileName;
  //  cs_DirEdit.Text :=  extractfilepath(OpenDialog1.FileName);
  //  //cs_Compedit.readonly := true;
  //End;
End;

Procedure TConfigurationForm.CsHelpBtnClick(Sender: TObject);
Begin
  //If OpenDialog1.Execute Then Begin
  //  //cs_Helpedit.readonly:=false;
  //  cs_Helpedit.text := OpenDialog1.FileName;
  //  //cs_Helpedit.readonly:=true;
  //End;
End;

procedure TConfigurationForm.PythonCompilerBtnClick(Sender: TObject);
begin
If OpenDialog1.Execute Then Begin
    //Py_Compedit.readonly := false;
    Py_Compedit.text := OpenDialog1.FileName;
    Py_DirEdit.Text :=  extractfilepath(OpenDialog1.FileName);
    //Py_Compedit.readonly := true;
  End;
end;

procedure TConfigurationForm.PythonHelpBtnClick(Sender: TObject);
begin
  If OpenDialog1.Execute Then Begin
    //py_Helpedit.readonly:=false;
    py_Helpedit.text := OpenDialog1.FileName;
    //py_Helpedit.readonly:=true;
  End;
end;


Procedure TConfigurationForm.SetLocale(locale: TLocalizedConstContainer);
Begin
  caption := locale.S_Configuration_Caption;
  Bitbtn1.Caption := locale.S_Btn_Save;
  Bitbtn2.Caption := locale.S_Btn_Cancel;
  titlelabel.Caption := locale.S_Configuration_Title;
  // help files
  C_HelpLabel.Caption := locale.S_Help_Label;
  Pas_HelpLabel.Caption := locale.S_Help_Label;
  Bas_HelpLabel.Caption := locale.S_Help_Label;
  Java_HelpLabel.Caption := locale.S_Help_Label;
  SQL_HelpLabel.Caption := locale.S_Help_Label;
  //Cs_HelpLabel.Caption := locale.S_Help_Label;
  Py_HelpLabel.Caption := locale.S_Help_Label;
  // parameter strings
  C_ParLabel.caption      := locale.S_Parameters_Label;
  //Cs_ParLabel.caption     := locale.S_Parameters_Label;
  Py_ParLabel.caption     := locale.S_Parameters_Label;
  Bas_ParLabel.caption    := locale.S_Parameters_Label;
  Pas_ParLabel.caption    := locale.S_Parameters_Label;
  Java_ParLabel.caption   := locale.S_Parameters_Label;
  SQL_ParLabel.caption    := locale.S_Parameters_Label;
  BrowserParLabel.Caption := locale.S_Parameters_Label;
  // directory strings
  C_DirLabel.caption      := locale.S_Directory_Label;
  //Cs_DirLabel.caption     := locale.S_Directory_Label;
  Py_DirLabel.caption     := locale.S_Directory_Label;
  Bas_DirLabel.caption    := locale.S_Directory_Label;
  Pas_DirLabel.caption    := locale.S_Directory_Label;
  Java_DirLabel.caption   := locale.S_Directory_Label;
  SQL_DirLabel.caption    := locale.S_Directory_Label;
  BrowserDirLabel.caption := locale.S_Directory_Label;
  // compilator strings
  Java_CompLabel.Caption  := locale.S_Java_Comp_Label;
  Bas_CompLabel.Caption  := locale.S_Basic_Comp_Label;
  Pas_CompLabel.Caption := locale.S_Pascal_Comp_Label;
  C_CompLabel.Caption := locale.S_C_Comp_Label;
  //Cs_CompLabel.Caption := locale.S_Csharp_Comp_Label;
  Py_CompLabel.Caption := locale.S_Python_Comp_Label;
  SQL_CompLabel.Caption := locale.S_SQL_Comp_Label;
  // PopupMenu
  Filecorrente1.Caption := locale.S_Pop_FileName;
  Directorydelfilecorrente1.Caption := locale.S_Pop_FileDir;
End;


procedure TConfigurationForm.Filecorrente1Click(Sender: TObject);
var MyCaretPosition, myLength: integer;
begin
  MyCaretPosition:=(selCmp as TEdit).SelStart;
  myLength:=Length((selCmp as TEdit).Text);
  (selCmp as TEdit).text := copy((selCmp as TEdit).text,1,MyCaretPosition)+'%FILENAME'+copy((selCmp as TEdit).text,MyCaretPosition,myLength);
end;

procedure TConfigurationForm.Directorydelfilecorrente1Click(
  Sender: TObject);
var MyCaretPosition, myLength: integer;
begin
  MyCaretPosition:=(selCmp as TEdit).SelStart;
  myLength:=Length((selCmp as TEdit).Text);
  (selCmp as TEdit).text := copy((selCmp as TEdit).text,1,MyCaretPosition)+'%FILEDIR'+copy((selCmp as TEdit).text,MyCaretPosition,myLength);
end;

procedure TConfigurationForm.PopupMenu1Popup(Sender: TObject);
begin
  selCmp:=(sender as TPopupMenu).PopupComponent;
end;

End.
