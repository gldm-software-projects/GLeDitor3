(**
Main unit of the GLeDitor project

@author De Michelis Gian Luca
*)

Unit Main;

{$MODE Delphi}

// GLeDitor v.3 for Apple Mac architecture

Interface

Uses 
Preferences, LCLIntf, LCLType, LMessages, Messages, Classes, Graphics, Controls, Forms, Dialogs,
ComCtrls, StdCtrls, ActnList, ImgList, StdActns, Menus, ToolWin, Info, Printers,
SynEdit, SynEditMiscClasses, SynHighlighterPas, SynEditHighlighter, SynHighlighterCSS,
SynHighlighterXML, SynHighlighterCpp,  SynHighlighterJava, SynHighlighterSQL,
SynHighlighterPython,  SynHighlighterJScript, SynHighlighterPHP, SynHighlighterHTML,
SynHighlighterVB, SynCompletion, SynEditTypes, IniFiles,
MyLocalConsts, MyLocalConsts_IT, MyLocalConsts_EN,
ExtCtrls, Buttons,  ThemeEnum, SyntaxEnum, PrintersDlgs, Types;

Type 
  (**
  the editor main window
  *)

  { TEditorMainForm }

  TEditorMainForm = Class(TForm)
      Manuale1: TMenuItem;
    //SynCSSyn1: TSynCSSyn;
    SynXMLSyn1: TSynXMLSyn;       
    SynCppSyn1: TSynCppSyn;
    SynJavaSyn1: TSynJavaSyn;
    SynPasSyn1: TSynPasSyn;
    SynSQLSyn1: TSynSQLSyn;
    SynPHPSyn1: TSynPHPSyn;
    SynHTMLSyn1: TSynHTMLSyn;      
    SynVBSyn1: TSynVBSyn;
    ActionList1: TActionList;
    FileNuovo: TAction;  /// clear the editor window
    FileApri: TAction;   /// open a text file
    FileSalva: TAction;  /// save the current file
    FileSalvaConNome: TAction; /// "save as"
    FileEsci: TAction;
    HelpInfo: TAction;
    EditTaglia: TEditCut;
    EditCopia: TEditCopy;
    EditIncolla: TEditPaste;
    MainMenu1: TMainMenu;
    mnuFile: TMenuItem;
    MnuEdit: TMenuItem;
    MnuHelp: TMenuItem;
    Info1: TMenuItem;
    Nuovo1: TMenuItem;
    Apri1: TMenuItem;
    Salva1: TMenuItem;
    Salvaconnome1: TMenuItem;
    N2: TMenuItem;
    Esci1: TMenuItem;
    ToolButton19: TToolButton;
    Undo1: TMenuItem;
    Copia1: TMenuItem;
    Incolla1: TMenuItem;
    Taglia1: TMenuItem;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    FileStampa: TAction;
    Stampa1: TMenuItem;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    HelpManuale: TAction;
    MnuTools: TMenuItem;
    StrumentiCompila: TAction;
    Compila1: TMenuItem;
    StrumentiEditaConfigurazione: TAction;
    EditaConfigurazione: TMenuItem;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    N3: TMenuItem;
    EditSostituisci: TAction;
    Sostituisci: TMenuItem;
    EditRedo: TAction;
    EditUndo: TAction;
    MnuSyntax: TMenuItem;
    CC1: TMenuItem;
    Pascal1: TMenuItem;
    Java1: TMenuItem;
    Basic1: TMenuItem;
    Php1: TMenuItem;
    Html1: TMenuItem;
    Sql1: TMenuItem;
    testonormale1: TMenuItem;
    N4: TMenuItem;
    ToolButton11: TToolButton;
    EditACapo: TAction;
    acapo1: TMenuItem;
    FindDialog1: TFindDialog;
    ReplaceDialog1: TReplaceDialog;
    EditCerca: TAction;
    EditSelezionaTutto: TAction;
    Selezionatutto1: TMenuItem;
    Cerca1: TMenuItem;
    EditRedo1: TMenuItem;
    N5: TMenuItem;
    MnuTheme: TMenuItem;
    Bosco1: TMenuItem;
    Oceano1: TMenuItem;
    Sabbia1: TMenuItem;
    N6: TMenuItem;
    ModificaPersonalizzato1: TMenuItem;
    Rosa1: TMenuItem;
    Neve1: TMenuItem;
    ColorDialog1: TColorDialog;
    HelpCompilatore: TAction;
    Helpdelcompilatore1: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    XML1: TMenuItem;
    formattaxml1: TMenuItem;
    FileApriNuovaFinestra: TAction;
    FileApriNuovaFinestra1: TMenuItem;
    FileNuovaFinestra: TAction;
    HelpHomePage: TAction;
    FileNuovaFinestra1: TMenuItem;
    HelpHomePage1: TMenuItem;
    PrintDialog1: TPrintDialog;
    MnuLocale: TMenuItem;
    MnuLocaleItalian: TMenuItem;
    MnuLocaleEnglish: TMenuItem;
    EditExtendedSearch: TAction;
    N1: TMenuItem;
    EditExtendedSearch1: TMenuItem;
    FileStampaDialog: TAction;
    Custom1: TMenuItem;
    SynPythonSyn1: TSynPythonSyn;
    StatusBar1: TStatusBar;
    MainPanel: TPanel;
    synedit1: TSynEdit;
    Splitter1: TSplitter;
    SearchPanel: TPanel;
    SearchResultLabel: TLabel;
    FindLabel: TLabel;
    SearchResultList: TMemo;
    SearchBtn: TButton;
    ExtendedSearchEdit: TEdit;
    cbCaseSensitive: TCheckBox;
    cbWholeWord: TCheckBox;
    Python1: TMenuItem;
    CheckBox1: TToolButton;
    ToolButton10: TToolButton;
    SynJScriptSyn1: TSynJScriptSyn;
    JavaScript1: TMenuItem;
    btn1: TBitBtn;
    SynCssSyn1: TSynCssSyn;
    Css1: TMenuItem;
    Default1: TMenuItem;
    SynProposal: TSynCompletion;
    AddSnippet: TAction;
    Aggiungisnippet1: TMenuItem;
    ShowSnippetFile: TAction;
    N9: TMenuItem;
    ShowSnippetFile1: TMenuItem;
    CleanupSnippet: TAction;
    CleanupSnippet1: TMenuItem;
    EditComment: TAction;
    EditUncomment: TAction;
    N10: TMenuItem;
    Comment1: TMenuItem;
    Uncomment1: TMenuItem;
    ToolButton16: TToolButton;
    ToolButton17: TToolButton;
    ToolButton18: TToolButton;
    syntaxLabel: TLabel;
    FontDialog1: TFontDialog;
    SetFont: TAction;
    SetFont1: TMenuItem;
    AltImageList: TImageList;
    EditCRLF_CR: TAction;
    EditCRLF_LF: TAction;
    EditCRLF: TAction;
    N11: TMenuItem;
    CRLFCR1: TMenuItem;
    CRLFLF1: TMenuItem;
    CRLF1: TMenuItem;
    actToggleFontColor: TAction;
    actToggleFontColor1: TMenuItem;
    //testItem: TMenuItem;
    procedure FormDropFiles(Sender: TObject; const FileNames: array of string);
    Function GetNextTheme(): string;
    Function GetNextEnumTheme(): TGleditTheme;
    Function GetNextThemeBy(var ath:TGleditTheme): string;
    Procedure SetColors();
    //Procedure loadCallconf();
    Procedure LoadTotalConf();
    procedure SynProposalCodeCompletion(var Value: string; SourceValue: string;
      var SourceStart, SourceEnd: TPoint; KeyChar: TUTF8Char; Shift: TShiftState
      );
    procedure ToolBar1Click(Sender: TObject);
    Procedure UpdateEnvironmentByFilename(Nome: String);
    Procedure FileNuovoExecute(Sender: TObject);
    Procedure FileApriExecute(Sender: TObject);
    Procedure FileEsciExecute(Sender: TObject);
    Procedure FileSalvaConNomeExecute(Sender: TObject);
    Procedure FileSalvaExecute(Sender: TObject);
    Procedure HelpInfoExecute(Sender: TObject);
    Procedure FormCreate(Sender: TObject);
    Procedure SettaC(Sender: TObject);
    Procedure SettaJava(Sender: TObject);
    Procedure SettaPhp(Sender: TObject);
    Procedure SettaPascal(Sender: TObject);
    Procedure SettaSQL(Sender: TObject);
    Procedure SettaBasic(Sender: TObject);
    Procedure SettaHTML(Sender: TObject);
    Procedure SettaXML(Sender: TObject);
    Procedure SettaPython(Sender: TObject);
    procedure SettaJavaScript(Sender: TObject);
    procedure SettaCss(Sender: TObject);
    Procedure SettaTesto(Sender: TObject);
    Procedure FileStampaExecute(Sender: TObject);
    Procedure CambiaLinguaggio(Sender: TObject);
    Procedure CambiaStatoFlag(Sender: TObject);
    Procedure HelpManualeExecute(Sender: TObject);
    Procedure StrumentiCompilaExecute(Sender: TObject);
    Procedure synedit1Click(Sender: TObject);
    Procedure StrumentiEditaConfigurazioneExecute(Sender: TObject);
    Procedure ReplaceDialog1Find(Sender: TObject);
    Procedure ReplaceDialog1Replace(Sender: TObject);
    Procedure EditSostituisciExecute(Sender: TObject);
    Procedure CheckBox1Click(Sender: TObject);
    Procedure FormCloseQuery(Sender: TObject; Var CanClose: Boolean);
    Procedure synedit1Change(Sender: TObject);
    Procedure synedit1MouseDown(Sender: TObject;
                                Button: TMouseButton;
                                Shift: TShiftState;
                                X, Y: Integer);
    Procedure EditRedoExecute(Sender: TObject);
    Procedure EditUndoExecute(Sender: TObject);
    Procedure EditACapoExecute(Sender: TObject);
    Procedure EditCercaExecute(Sender: TObject);
    Procedure EditSelezionaTuttoExecute(Sender: TObject);
    Procedure FindDialog1Find(Sender: TObject);
    Procedure Bosco1Click(Sender: TObject);
    Procedure Oceano1Click(Sender: TObject);
    Procedure Sabbia1Click(Sender: TObject);
    Procedure Default1Click(Sender: TObject);
    Procedure Rosa1Click(Sender: TObject);
    Procedure Neve1Click(Sender: TObject);
    Procedure ModificaPersonalizzato1Click(Sender: TObject);
    Procedure HelpCompilatoreExecute(Sender: TObject);
    Procedure FormShow(Sender: TObject);
    Procedure SetLocale(locale: TLocalizedConstContainer);
    Procedure MakeXmlReadable();
    Procedure formattaxml1Click(Sender: TObject);
    Procedure FileApriNuovaFinestraExecute(Sender: TObject);
    Procedure HelpHomePageExecute(Sender: TObject);
    Procedure FileNuovaFinestraExecute(Sender: TObject);
    Procedure MnuLocaleEnglishClick(Sender: TObject);
    Procedure MnuLocaleItalianClick(Sender: TObject);
    Procedure EditExtendedSearchExecute(Sender: TObject);
    Procedure SearchPanelResize(Sender: TObject);
    Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
    Procedure SearchBtnClick(Sender: TObject);
    Procedure ExtendedSearchEditKeyPress(Sender: TObject; Var Key: Char);
    Procedure SearchResultListDblClick(Sender: TObject);
    Procedure SearchResultListClick(Sender: TObject);
    Procedure FileStampaDialogExecute(Sender: TObject);
    Procedure Custom1Click(Sender: TObject);
    Procedure BitBtn1Click(Sender: TObject);
    Procedure SearchPanelCanResize(Sender: TObject;
                                   Var NewWidth, NewHeight: Integer;
                                   Var Resize: Boolean);
    Procedure SearchResultListMouseEnter(Sender: TObject);
    procedure opzionale1Click(Sender: TObject);
    procedure AddSnippetExecute(Sender: TObject);
    procedure ShowSnippetFileExecute(Sender: TObject);
    procedure CleanupSnippetExecute(Sender: TObject);
    procedure EditCommentExecute(Sender: TObject);
    procedure EditUncommentExecute(Sender: TObject);
    procedure SetFontExecute(Sender: TObject);
    procedure EditCRLF_CRExecute(Sender: TObject);
    procedure EditCRLF_LFExecute(Sender: TObject);
    procedure EditCRLFExecute(Sender: TObject);
    procedure synedit1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actToggleFontColorExecute(Sender: TObject);

    Private 
    { Private declarations }
      BlackFont: boolean;
      Salvato: boolean;  /// true if the current file is just saved or unmodifyied, false otherwise
      SearchOpened : boolean;  /// true if the "extended search" is on-screen
      CustomThemeYetSelected : boolean;  /// true if the user has choosen a custom theme
      CustomThemeDarkCol : string;   /// the dark color of the current (custom) theme
      CustomThemeLightCol : string;  /// the light color of the current (custom) theme
      linguaggio : TGleditLanguage;
      estensione : string;
      commentPattern,commentPattern2 : string;
      SearchListXposition, SearchListYposition: integer;
      SearchListSelStart : integer; //Splitter: Tsplitter;
      Procedure SpeechCreation;
      Procedure SpeechDestruction;
      Procedure GoToEditorRow;
      procedure LoadSnippetForLanguage(const la:TGleditLanguage);
      Procedure HideAppFormTaskBarButton;
      Procedure SetupGlass;
      Procedure UnsetAllImages;
      Procedure UnsetAllThemeImages;
      Procedure LoadFileIntoSynEdit(afilename:string);
      Function GetThemeName(th:TGleditTheme): string;
      Function GetThemeFromString(thname:String): TGleditTheme;
      Function GetEnvVarValue(const VarName: string): string;
      Function UTF8FileBOM(const FileName: string): boolean;
      Function AnsiFileCheck(const FileName: string): boolean;
      Procedure CustomSaveTextFile(const filename:string; const source :TStrings);
      function CanSafelyCleanupCurrentDocument:Boolean;
    Public
    { Public declarations }
      darkcol, lightcol: string;
      theme: TGleditTheme;
      NomeFile, NFile: string;
      exepath, cfgfile, cfgdir: string;
      LocaleCode : string;
      inglese,italiano,lingua: TLocalizedConstContainer;
    Protected 
      Procedure CreateParams(Var Params: TCreateParams);
      override;
  End;

Var 
  EditorMainForm: TEditorMainForm; /// the running istance of the editor class form

Implementation

Uses strutils, Utility, sysutils;

{$R *.lfm}

Procedure TEditorMainForm.FileNuovaFinestraExecute(Sender: TObject);
Var Executable,OtherParameters: string;
    MyConf: TIniFile;
Begin
  Executable := extractfilename(ParamStr(0));
  OtherParameters := '-S=20 -T='+getNextTheme();
  if(directoryexists(cfgdir)) then begin
  MyConf := TIniFile.Create(cfgfile);
  Try
    If EditorMainForm.WindowState=wsMaximized Then Begin
      MyConf.writeinteger('Environment', 'left_corner',100);
      MyConf.writeinteger('Environment', 'top_corner',100);
      MyConf.writeinteger('Environment', 'win_width',700);
      MyConf.writeinteger('Environment', 'win_height',500);
    End
    Else Begin
      MyConf.writeinteger('Environment', 'left_corner',EditorMainForm.Left);
      MyConf.writeinteger('Environment', 'top_corner',EditorMainForm.Top);
      MyConf.writeinteger('Environment', 'win_width',EditorMainForm.Width);
      MyConf.writeinteger('Environment', 'win_height',EditorMainForm.Height);
    End;
    MyConf.WriteString('Environment', 'win_state', 'normalwindow');
   // MyConf.WriteString('Theme', 'theme_name', getNextTheme);
  Finally
    MyConf.Free;
  End;
  end;
   OpenDocument(PChar(Executable)); { *Converted from ShellExecute* }
End;

Procedure TEditorMainForm.FileNuovoExecute(Sender: TObject);
//un file tutto nuovo!!
Begin
  if (CanSafelyCleanupCurrentDocument) then begin
    // If (salvato = FALSE)And(trim(synedit1.Text)>'') Then
    //  FileSalvaConNomeExecute(self);
    synedit1.Clear;   
    SynEdit1.lines.LineBreak:=#13#10;
    NomeFile := 'noname';
    NFile := 'noname';
    application.Title := NFile;
    caption := 'GLeDitor - '+nFile;
    StatusBar1.Panels[2].Text := NomeFile;
    StatusBar1.Panels[0].Text := lingua.S_Row;  
    StatusBar1.Panels[1].Text := lingua.S_Col;
    salvato := TRUE;
    settatesto(self);
  end;
End;

function TEditorMainForm.UTF8FileBOM(const FileName: string): boolean;
var
  txt: file;
  bytes: array[0..2] of byte;
  amt: integer;
begin
  FileMode := fmOpenRead;
  AssignFile(txt, FileName);
  Reset(txt, 1);
  try
    BlockRead(txt, bytes, 3, amt);
    result := (amt=3) and (bytes[0] = $EF) and (bytes[1] = $BB) and (bytes[2] = $BF);
  finally    
    CloseFile(txt);
  end;
end;

function TEditorMainForm.AnsiFileCheck(const FileName: string): boolean;
var myFile : TextFile;
    text: string;
begin
  Result:=True;
  AssignFile(myFile, filename);
  try
    Reset(myFile);
    // Display the file contents
    while not Eof(myFile) do begin
      ReadLn(myFile, text);
      if (Length(text)>0) and (ord(char(text[1]))>=128 ) then  begin
        Result:=False;
        Break;
      end;
    end;
  finally  
    CloseFile(myFile);
  end;
end;

procedure TEditorMainForm.LoadFileIntoSynEdit(afilename:string);
var dlen,slen:integer;
    ms:TMemoryStream;
    s:string;
    ptr: PWideChar;
begin
  if (UTF8FileBOM(afilename)) then begin
    SynEdit1.Lines.LoadFromFile(afilename);
    s := synedit1.Lines[0];
    synedit1.Lines[0]:=Copy(s,4,Length(s)-3);
  end
  else if (AnsiFileCheck(afilename)) then  begin
    SynEdit1.Lines.LoadFromFile(afilename);
  end
  else begin
    SynEdit1.Lines.LoadFromFile(afilename);
    (*ms := TMemoryStream.Create;
    try
      ms.LoadFromFile(afilename);
      ptr := PWideChar(ms.Memory);
      dlen := ms.Size div SizeOf(WideChar);
      if (dlen >= 1) and (PWord(ptr)^ = $FEFF) then
      begin
        Inc(ptr);
        Dec(dlen);
      end;
      slen := WideCharToMultiByte(0, 0, ptr, dlen, nil, 0, nil, nil);
      if slen > 0 then begin
        SetLength(s, slen);
        WideCharToMultiByte(0, 0, ptr, dlen, PAnsiChar(s), slen, nil, nil);
      end;
      SynEdit1.Text := s;
    finally
      ms.Free;
    end;  *)
  end;
end;


Procedure TEditorMainForm.FileApriExecute(Sender: TObject);
Begin
  if CanSafelyCleanupCurrentDocument then begin
    If OpenDialog1.Execute Then Begin
      LoadFileIntoSynEdit(OpenDialog1.FileName);
      NomeFile := OpenDialog1.FileName;
      nfile := ExtractFileName(NomeFile);
      Application.Title := nFile;
      caption := 'GLeDitor - '+nFile;
      StatusBar1.Panels[2].Text := NomeFile;
      UpdateEnvironmentByFilename(NFile);
      salvato := TRUE;
      FileSalva.Enabled := false;
    End;
  end;
End;

Procedure TEditorMainForm.FileEsciExecute(Sender: TObject);
Begin
  if CanSafelyCleanupCurrentDocument then begin
    //If (salvato = FALSE)And(trim(synedit1.Text)>'') Then
    //  FileSalvaConNomeExecute(self);
    salvato := TRUE;
    Close;
  end;
End;        

procedure TEditorMainForm.CustomSaveTextFile(const filename:string; const source :TStrings);
var
  Stream : TFileStream;
begin
  Stream:= TFileStream.Create(FileName, fmCreate);
  try
    Stream.WriteBuffer(Pointer(source.Text)^, Length(source.text));
  finally
    Stream.Free;
  end;
end;

Procedure TEditorMainForm.FileSalvaExecute(Sender: TObject);
//var jj,kk,ii:Integer;
Begin
 // jj:=Pos(#13#10,synedit1.Lines.Text);
 // kk:=Pos(#13,synedit1.Lines.Text);
 // ii:=Pos(#10,synedit1.Lines.Text);
 // ShowMessage('CRLF in '+inttostr(jj)+' - CR in '+inttostr(kk)+' - LF in '+inttostr(ii)+' - separator: "'+synedit1.Lines.LineBreak+'"' );
  If (NomeFile = 'noname') Then
    FileSalvaConNomeExecute(self)
  Else
    CustomSaveTextFile(NomeFile,synedit1.Lines);//synedit1.Lines.SaveToFile(NomeFile);

  salvato := TRUE;
  FileSalva.Enabled := false;
End;

Procedure TEditorMainForm.CambiaLinguaggio(Sender: TObject);
Begin
  // controllo....
  If linguaggio = glText Then
    SettaTesto(self)
  Else If linguaggio = glJava Then
    SettaJava(self)
  Else If linguaggio = glPascal Then
    SettaPascal(self)
  Else If linguaggio = glCpp Then
    SettaC(self)
  Else If linguaggio = glHtml Then
    SettaHTML(self)
  Else If linguaggio = glPhp Then
    SettaPhp(self)
  Else If linguaggio = glSql Then
    SettaSql(self)
  Else If linguaggio = glBasic Then
    SettaBasic(self)
  Else If linguaggio = glXml Then
    SettaXml(self)
  //Else If linguaggio = glCs Then
  //  SettaCsharp(self)
  Else If linguaggio = glPython Then
    SettaPython(self)
  Else If linguaggio = glJScript Then
    SettaJavaScript(self)
  Else If linguaggio = glCss Then
    SettaCss(self)
  Else
    SettaTesto(self);
End;

Procedure TEditorMainForm.FileSalvaConNomeExecute(Sender: TObject);
Begin
  //SaveDialog1.FileName := NomeFile;
  SaveDialog1.FileName := NFile;
  SaveDialog1.InitialDir := ExtractFilePath(NomeFile);
  If (linguaggio=glText) Then Begin
    If (nfile='noname') Then Begin
      SaveDialog1.FilterIndex := 14; //era qui il dannato baco dei javascript
      // all files
      savedialog1.DefaultExt := '';
    End
    Else Begin
      SaveDialog1.FilterIndex := 1;
      savedialog1.DefaultExt := 'txt';
    End;
  End
  Else If linguaggio=glJava  Then Begin
    SaveDialog1.FilterIndex := 2;
    Savedialog1.DefaultExt := 'java';
  End
  Else If linguaggio=glPascal  Then Begin
    SaveDialog1.FilterIndex := 3;
    Savedialog1.DefaultExt := 'pas';
  End
  Else If linguaggio=glCpp  Then Begin
    SaveDialog1.FilterIndex := 4;
    Savedialog1.DefaultExt := 'c';
  End
  Else If linguaggio=glHtml  Then Begin
    SaveDialog1.FilterIndex := 5;
    savedialog1.DefaultExt := 'html';
  End
  Else If linguaggio=glPhp Then Begin
    SaveDialog1.FilterIndex := 6;
    savedialog1.DefaultExt := 'php';
  End
  Else If linguaggio=glSql  Then Begin
    SaveDialog1.FilterIndex := 7;
    savedialog1.DefaultExt := 'sql';
  End
  Else If linguaggio=glBasic Then Begin
    SaveDialog1.FilterIndex := 8;
    savedialog1.DefaultExt := 'bas';
  End
  Else If linguaggio=glXml  Then Begin
    SaveDialog1.FilterIndex := 9;
    savedialog1.DefaultExt := 'xml';
  End
  //Else If linguaggio=glCs  Then Begin
  //  SaveDialog1.FilterIndex := 10;
  //  savedialog1.DefaultExt := 'cs';
  //End
  Else If linguaggio=glPython Then  Begin
    SaveDialog1.FilterIndex := 11;
    savedialog1.DefaultExt := 'py';
  End
  Else If linguaggio=glJScript Then  Begin
    SaveDialog1.FilterIndex := 12;
    savedialog1.DefaultExt := 'js';
  End
  Else If linguaggio=glCss Then  Begin
    SaveDialog1.FilterIndex := 13;
    savedialog1.DefaultExt := 'css';
  End
  Else Begin
    savedialog1.FilterIndex := 14;
    savedialog1.DefaultExt := '';
  End;
  //savedialog1.DefaultExt:='';

  If SaveDialog1.Execute Then Begin
    NomeFile := SaveDialog1.FileName;
    CustomSaveTextFile(NomeFile,synedit1.Lines); // synedit1.Lines.SaveToFile(SaveDialog1.FileName);
    nfile := ExtractFileName(NomeFile);
    Application.Title := nFile;
    caption := 'GLeDitor3 - '+nFile;
    StatusBar1.Panels[2].Text := NomeFile;
    UpdateEnvironmentByFilename(nFile);
    salvato := TRUE;
    FileSalva.Enabled := false;
  End;
End;

Procedure TEditorMainForm.HelpInfoExecute(Sender: TObject);
Var Aboutbox: taboutbox;
Begin
  Aboutbox := taboutbox.create(self);
  Aboutbox.color := tcolor(strtoint(darkcol));
  Aboutbox.Panel1.Color := tcolor(strtoint(lightcol));
  AboutBox.ShowModal;
End;

Procedure TEditorMainForm.FormCreate(Sender: TObject);
var I,S:Integer;
    temaPassato:string;
    caricato:Boolean;
Begin
  BlackFont:=true;
  caricato:=false;
  S:=0;
  temaPassato:='';
//  DragAcceptFiles( Handle, True );

  // vista stuff
 // Utility.SetVistaFonts(self);
  HideAppFormTaskBarButton();
  SetupGlass;

  //ToolBar1.ParentColor:=true;
  //toolbar1.Transparent:=false;

  // configurazioni
  //cfgdir := GetEnvVarValue('LOCALAPPDATA')+'\GLeDitor'; 
  //cfgfile := cfgdir+'\gledit.ini';
  //if (directoryexists(cfgdir) = false) then
  //  CreateDir(cfgdir);

  cfgdir := GetAppConfigDir(false);
  cfgfile :=GetAppConfigFile(false);
  if (directoryexists(cfgdir) = false) then   CreateDir(cfgdir);

  // altro
  CustomThemeYetSelected := false;
  SpeechCreation;
  exepath := extractfilepath(ParamStr(0));
  //SearchOpened:=false;
  SearchPanel.Visible := SearchOpened;
  // Ora: ho passato parametri al gledit ??
  if ParamCount>0 then Begin
    for I := 1 to ParamCount do Begin
      if AnsiStartsStr('-S=',ParamStr(I)) then Begin
        S:=StrToInt( copy(ParamStr(I),4,Length(ParamStr(I))-3));
      End
      else  if AnsiStartsStr('-T=',ParamStr(I)) then Begin
        temaPassato:=trim(copy(ParamStr(I),4,Length(ParamStr(I))-3));
      End
      else If ParamStr(I) <> '' Then Begin
        if (caricato=false) then Begin
            NomeFile := ParamStr(I);
            If FileExists(NomeFile) Then Begin
              // ho passato un nome di file valido??
              //Synedit1.Lines.LoadFromFile(NomeFile);
              LoadFileIntoSynEdit(NomeFile);
              //UpdateEnvironmentByFilename(NomeFile);
              caricato:=true;
            End;
         End;
      End;
//      Else Begin  // no
//        if (caricato=false) then Begin
//            NomeFile := 'noname';
//            Synedit1.Clear;
//            //SettaTesto(self);
//        End;
//      End;
    End;
  End;

  if caricato=false then Begin
    NomeFile := 'noname';
    Synedit1.Clear;
    //SettaTesto(self);
  End;
  // setto la barra di stato col nome del file
  StatusBar1.Panels[2].Text := NomeFile;
  nfile := ExtractFileName(NomeFile);
  Application.Title := nFile;
  caption := 'GLeDitor3 - '+nFile;
  // infine carico il file di configurazione
 // GetEnvVarValue('LOCALAPPDATA')+'\GLeDitor\';

  LoadTotalconf;

  EditorMainForm.Left := EditorMainForm.Left+s;
  EditorMainForm.Top  := EditorMainForm.Top+s;
  if temaPassato>'' then Begin
     theme:=GetThemeFromString(temaPassato);
  End;

  // setto la lingua...
  If LocaleCode='IT' Then Begin
    lingua := italiano;
    mnuLocaleItalian.ImageIndex := 1;
  End
  Else Begin //If LocaleCode='EN' Then Begin
    lingua := inglese;
    mnuLocaleEnglish.ImageIndex := 1;
  End;
  SetLocale(lingua);
  //CustomThemeYetSelected:=false;
  // preparo il menù: lo faccio solo all'avvio
  //If synedit1.WordWrap Then Begin
  //  editacapo.Caption := lingua.S_Edit_NotWWrap;
  //  editacapo.Hint := lingua.S_Edit_NotWWrap_Hint;
  //  editacapo.ImageIndex := 7;
  //End
  //Else Begin
  //  editacapo.Caption := lingua.S_Edit_WWrap;
  //  editacapo.Hint := lingua.S_Edit_WWrap_Hint;
  //  editacapo.ImageIndex := 0;
  //End;

  If theme=gtBosco Then Begin
      Bosco1Click(self);
  End
  Else If theme=gtOceano Then Begin
    Oceano1Click(self);
  End
  Else If theme=gtNeve Then Begin
    Neve1Click(self);
  End
  Else If theme=gtSabbia Then Begin
    Sabbia1Click(self);
  End
  Else If theme=gtDefault Then Begin
    Default1Click(self);
  End
  Else If theme=gtRosa Then Begin
    Rosa1Click(self);
  End
  Else If theme=gtCustom Then Begin
    UnsetAllThemeImages();
    custom1.ImageIndex := 1;
    //CustomThemeYetSelected := true;
    Try
      darkcol := CustomThemeDarkCol;
      lightcol := CustomThemeLightCol;
    Except
      on e: exception Do
        Bosco1Click(self);
    End;
  End;
  
  UpdateEnvironmentByFilename(nFile);
  
  setcolors;
  salvato := true;
  FileSalva.Enabled := false;
  Splitter1.Enabled := false;
End;

Procedure TEditorMainForm.UpdateEnvironmentByFilename(nome: String);
Var minuscolo: string;
Begin
  strumenticompila.Enabled := true;
  formattaxml1.Visible := false;
  // setto la variabile globale linguaggio e le regole per l'highlight
  minuscolo := strlower(pchar(nome));
  If EndsWith(minuscolo,'.sql') Then Begin
    linguaggio := glSql;
    estensione := 'sql';
  End
  Else If EndsWith(minuscolo,'.pas') Or EndsWith(minuscolo,'.dpr') Then Begin
    linguaggio := glPascal;
    estensione := '';
  End
  Else If EndsWith(minuscolo,'.htm') or EndsWith(minuscolo,'.html') Then Begin
    linguaggio := glHtml;
    estensione := '';        
    formattaxml1.Visible := true;  
    formattaxml1.Caption :=  lingua.S_Tools_HtmlFormat;
  End
  Else If EndsWith(minuscolo,'.php') Then Begin
    linguaggio := glPhp;
    estensione := 'php';
  End
  Else If EndsWith(minuscolo,'.java') Then Begin
    linguaggio := glJava;
    estensione := 'java';
  End
  Else If EndsWith(minuscolo,'.bas') or EndsWith(minuscolo,'.vb') Then Begin
    linguaggio := glBasic;
    estensione := 'bas';
  End
  Else If EndsWith(minuscolo,'.xml') or EndsWith(minuscolo,'.plist') Then Begin
    linguaggio := glXml;
    estensione := 'xml';
    formattaxml1.Visible := true;
    formattaxml1.Caption :=  lingua.S_Tools_XmlFormat;
  End
  //Else If EndsWith(minuscolo,'.cs') Then Begin
  //  linguaggio := glCs;
  //  estensione := 'cs';
  //End
  Else If EndsWith(minuscolo,'.c') or EndsWith(minuscolo,'.h') or
          EndsWith(minuscolo,'.cpp') or EndsWith(minuscolo,'.hpp') Then Begin
    linguaggio := glCpp;
    estensione := 'cpp';
  End
  Else If EndsWith(minuscolo,'.py') Then Begin
    linguaggio := glPython;
    estensione := 'py';
  End
  Else If EndsWith(minuscolo,'.js') Then Begin
    linguaggio := glJScript;
    estensione := 'js';
  End
  Else If EndsWith(minuscolo,'.css') Then Begin
    linguaggio := glCss;
    estensione := 'css';
  End
  Else Begin
    // non è un file con estensione riconosciuta... sarà testo semplice!!
    linguaggio := glText;
    estensione := '';
  End;
  // effettuo il cambiamento di syntaxhighlighter
  cambialinguaggio(self);
  // preparo la finestra di salvataggio...   //tanto non funziona.
  //SaveDialog1.FilterIndex := linguaggio+1;
  // rinfresco finale!!
  synedit1.Refresh;
End;

// procedura di stampa.... ... ... ... ...
Procedure TEditorMainForm.FileStampaDialogExecute(Sender: TObject);
Begin
  //
  If (printdialog1.execute) Then Begin
    //syneditprint1.Copies := printdialog1.Copies;
    //syneditprint1.SynEdit := synedit1;
    //syneditprint1.Colors := true;
    //syneditprint1.Highlighter := synedit1.Highlighter;
    //SynEditPrint1.Title := nfile;
    //SynEditPrint1.Header.Clear;
    //SynEditPrint1.Header.Add(nfile, Nil, taLeftJustify, 1);
    //SynEditPrint1.Header.Add(datetostr(now), nil, taRightJustify, 1);
    //SynEditPrint1.Footer.Clear;
    //SynEditPrint1.Footer.Add(lingua.S_page+' $PAGENUM$ '+lingua.S_of+' $PAGECOUNT$',
    //                     Nil, taCenter, 1);
    //
    //If (printdialog1.PrintRange = prAllPages ) Then
    //  Syneditprint1.Print
    //Else
    //  syneditprint1.PrintRange(printdialog1.FromPage,printdialog1.topage);
  End;
End;

Procedure TEditorMainForm.FileStampaExecute(Sender: TObject);
Begin
  //syneditprint1.Copies := 1;
  //syneditprint1.SynEdit := synedit1;
  //syneditprint1.Colors := true;
  //syneditprint1.Highlighter := synedit1.Highlighter;
  //SynEditPrint1.Title := nfile;
  //SynEditPrint1.Header.Clear;
  //SynEditPrint1.Header.Add(nfile, Nil, taLeftJustify, 1);
  //SynEditPrint1.Header.Add(datetostr(now), nil, taRightJustify, 1);
  //SynEditPrint1.Footer.Clear;
  //SynEditPrint1.Footer.Add(lingua.S_page+' $PAGENUM$ '+lingua.S_of+' $PAGECOUNT$',
  //                         Nil, taCenter, 1);
  //Syneditprint1.Print;
End;

Procedure TEditorMainForm.CambiaStatoFlag(Sender: TObject);
Begin
  salvato := FALSE;
  If Not FileSalva.Enabled Then Begin
    FileSalva.Enabled := true;
    Application.ProcessMessages;
      // aggiorna lo schermo
  End;
End;

(**
* questa lista di keyword è già ordinata!
*)
Procedure TEditorMainForm.SettaSQL(Sender: TObject);
Begin
  synProposal.ItemList.Clear;
  synProposal.ItemList.Add('ABSOLUTE ');
  synProposal.ItemList.Add('ACTION ');
  synProposal.ItemList.Add('AFTER ');
  synProposal.ItemList.Add('ALLOCATE ');
  synProposal.ItemList.Add('ALTER TABLE ');
  synProposal.ItemList.Add('ARRAY ');
  synProposal.ItemList.Add('ASENSITIVE ');
  synProposal.ItemList.Add('ASSERTION	');
  synProposal.ItemList.Add('ASYMMETRIC ');
  synProposal.ItemList.Add('ATOMIC ');
  synProposal.ItemList.Add('AUTHORIZATION	');
  synProposal.ItemList.Add('BEFORE ');
  synProposal.ItemList.Add('BEGIN	');
  synProposal.ItemList.Add('BETWEEN ');
  synProposal.ItemList.Add('BINARY	');
  synProposal.ItemList.Add('BLOB	');
  synProposal.ItemList.Add('BOOLEAN	');
  synProposal.ItemList.Add('BOTH');
  synProposal.ItemList.Add('BREADTH	');
  synProposal.ItemList.Add('CALL ');
  synProposal.ItemList.Add('CASCADE	');
  synProposal.ItemList.Add('CASE ');
  synProposal.ItemList.Add('CAST ');
  synProposal.ItemList.Add('CATALOG	');
  synProposal.ItemList.Add('CHAR( ) ');
  synProposal.ItemList.Add('CHARACTER');
  synProposal.ItemList.Add('CHECK	');
  synProposal.ItemList.Add('CLOB ');
  synProposal.ItemList.Add('CLOSE	');
  synProposal.ItemList.Add('COLLATE	');
  synProposal.ItemList.Add('COLLATION	');
  synProposal.ItemList.Add('COLUMN ');
  synProposal.ItemList.Add('COMMIT	');
  synProposal.ItemList.Add('CONDITION	');
  synProposal.ItemList.Add('CONNECT	');
  synProposal.ItemList.Add('CONNECTION	');
  synProposal.ItemList.Add('CONSTRAINT	');
  synProposal.ItemList.Add('CONSTRUCTOR	');
  synProposal.ItemList.Add('CONTINUE	');
  synProposal.ItemList.Add('CORRESPONDING	');
  synProposal.ItemList.Add('CREATE ');
  synProposal.ItemList.Add('CREATE TABLE( ');
  synProposal.ItemList.Add('CROSS ');
  synProposal.ItemList.Add('CURRENT	');
  synProposal.ItemList.Add('CURRENT_DATE	');
  synProposal.ItemList.Add('CURRENT_PATH	');
  synProposal.ItemList.Add('CURRENT_ROLE	');
  synProposal.ItemList.Add('CURRENT_TIME	');
  synProposal.ItemList.Add('CURRENT_TIMESTAMP ');
  synProposal.ItemList.Add('CURRENT_USER	');
  synProposal.ItemList.Add('CURSOR	');
  synProposal.ItemList.Add('CYCLE	');
  synProposal.ItemList.Add('DATA ');
  synProposal.ItemList.Add('DATE ');
  synProposal.ItemList.Add('DEALLOCATE ');
  synProposal.ItemList.Add('DECIMAL ');
  synProposal.ItemList.Add('DECLARE	');
  synProposal.ItemList.Add('DEFAULT ');
  synProposal.ItemList.Add('DEFERRABLE	');
  synProposal.ItemList.Add('DEFERRED	');
  synProposal.ItemList.Add('DELETE ');
  synProposal.ItemList.Add('DEPTH	');
  synProposal.ItemList.Add('DEREF	');
  synProposal.ItemList.Add('DESC ');
  synProposal.ItemList.Add('DESCRIBE ');
  synProposal.ItemList.Add('DETERMINISTIC	');
  synProposal.ItemList.Add('DISCONNECT ');
  synProposal.ItemList.Add('DISTINCT ');
  synProposal.ItemList.Add('DOMAIN ');
  synProposal.ItemList.Add('DOUBLE ');
  synProposal.ItemList.Add('DROP ');
  synProposal.ItemList.Add('DYNAMIC	');
  synProposal.ItemList.Add('ELSE ');
  synProposal.ItemList.Add('ELSEIF ');
  synProposal.ItemList.Add('EQUALS ');
  synProposal.ItemList.Add('ESCAPE ');
  synProposal.ItemList.Add('EXCEPT ');
  synProposal.ItemList.Add('EXEC ');
  synProposal.ItemList.Add('EXECUTE	');
  synProposal.ItemList.Add('EXISTS ');
  synProposal.ItemList.Add('EXIT ');
  synProposal.ItemList.Add('EXTERNAL ');
  synProposal.ItemList.Add('FALSE ');
  synProposal.ItemList.Add('FETCH	');
  synProposal.ItemList.Add('FILTER ');
  synProposal.ItemList.Add('FLOAT	');
  synProposal.ItemList.Add('FOREIGN	');
  synProposal.ItemList.Add('FROM ');
  synProposal.ItemList.Add('FUNCTION ');
  synProposal.ItemList.Add('GENERAL	');
  synProposal.ItemList.Add('GLOBAL ');
  synProposal.ItemList.Add('GOTO ');
  synProposal.ItemList.Add('GRANT	');
  synProposal.ItemList.Add('GROUP	');
  synProposal.ItemList.Add('GROUPING ');
  synProposal.ItemList.Add('HAVING ');
  synProposal.ItemList.Add('IDENTITY ');
  synProposal.ItemList.Add('IMMEDIATE	');
  synProposal.ItemList.Add('INITIALLY	');
  synProposal.ItemList.Add('INNER	');
  synProposal.ItemList.Add('INNER JOIN	');
  synProposal.ItemList.Add('INPUT	');
  synProposal.ItemList.Add('INSERT ');
  synProposal.ItemList.Add('INTEGER	');
  synProposal.ItemList.Add('INTERSECT	');
  synProposal.ItemList.Add('INTERVAL ');
  synProposal.ItemList.Add('INTO ');
  synProposal.ItemList.Add('ISOLATION	');
  synProposal.ItemList.Add('ITERATE	');
  synProposal.ItemList.Add('JOIN ');
  synProposal.ItemList.Add('LARGE	');
  synProposal.ItemList.Add('LATERAL	');
  synProposal.ItemList.Add('LEFT ');
  synProposal.ItemList.Add('LEFT JOIN ');
  synProposal.ItemList.Add('LEVEL	');
  synProposal.ItemList.Add('LIKE  ');
  synProposal.ItemList.Add('LOCAL	');
  synProposal.ItemList.Add('METHOD ');
  synProposal.ItemList.Add('MODIFIES ');
  synProposal.ItemList.Add('MODULE ');
  synProposal.ItemList.Add('NCHAR ');
  synProposal.ItemList.Add('NCLOB	');
  synProposal.ItemList.Add('NEXT	');
  synProposal.ItemList.Add('NONE ');
  synProposal.ItemList.Add('NULL ');
  synProposal.ItemList.Add('NUMERIC	');
  synProposal.ItemList.Add('OBJECT	');
  synProposal.ItemList.Add('ONLY	');
  synProposal.ItemList.Add('OPEN	');
  synProposal.ItemList.Add('OPTION	');
  synProposal.ItemList.Add('ORDER	');
  synProposal.ItemList.Add('ORDINALITY	');
  synProposal.ItemList.Add('OUTER	');
  synProposal.ItemList.Add('OUTER JOIN	');
  synProposal.ItemList.Add('OUTPUT	');
  synProposal.ItemList.Add('OVER	');
  synProposal.ItemList.Add('PARAMETER	');
  synProposal.ItemList.Add('PARTIAL	');
  synProposal.ItemList.Add('PARTITION	');
  synProposal.ItemList.Add('PATH	');
  synProposal.ItemList.Add('PRECISION	');
  synProposal.ItemList.Add('PREPARE	');
  synProposal.ItemList.Add('PRESERVE	');
  synProposal.ItemList.Add('PRIMARY	');
  synProposal.ItemList.Add('PRIMARY	KEY ');
  synProposal.ItemList.Add('PRIOR	');
  synProposal.ItemList.Add('PRIVILEGES	');
  synProposal.ItemList.Add('PROCEDURE	');
  synProposal.ItemList.Add('PUBLIC	');
  synProposal.ItemList.Add('RANGE	');
  synProposal.ItemList.Add('REAL ');
  synProposal.ItemList.Add('RECURSIVE	');
  synProposal.ItemList.Add('REFERENCES ');
  synProposal.ItemList.Add('RELATIVE ');
  synProposal.ItemList.Add('RELEASE ');
  synProposal.ItemList.Add('REPEAT	');
  synProposal.ItemList.Add('RESULT	');
  synProposal.ItemList.Add('RETURN	');
  synProposal.ItemList.Add('RETURNS	');
  synProposal.ItemList.Add('REVOKE	');
  synProposal.ItemList.Add('RIGHT	');
  synProposal.ItemList.Add('ROLE	');
  synProposal.ItemList.Add('ROLLBACK	');
  synProposal.ItemList.Add('ROLLUP ');
  synProposal.ItemList.Add('ROUTINE ');
  synProposal.ItemList.Add('ROW	');
  synProposal.ItemList.Add('SCHEMA	 ');
  synProposal.ItemList.Add('SCOPE	');
  synProposal.ItemList.Add('SCROLL	');
  synProposal.ItemList.Add('SEARCH ');
  synProposal.ItemList.Add('SECTION	');
  synProposal.ItemList.Add('SELECT	');
  synProposal.ItemList.Add('SESSION ');
  synProposal.ItemList.Add('SESSION_USER	');
  synProposal.ItemList.Add('SIZE	');
  synProposal.ItemList.Add('SMALLINT ');
  synProposal.ItemList.Add('START	');
  synProposal.ItemList.Add('STATE	');
  synProposal.ItemList.Add('STATIC ');
  synProposal.ItemList.Add('SYSTEM	');
  synProposal.ItemList.Add('TABLE	');
  synProposal.ItemList.Add('THEN	');
  synProposal.ItemList.Add('TIME ');
  synProposal.ItemList.Add('TIMESTAMP	');
  synProposal.ItemList.Add('TRAILING ');
  synProposal.ItemList.Add('TRANSACTION	');
  synProposal.ItemList.Add('TREAT	');
  synProposal.ItemList.Add('TRIGGER	');
  synProposal.ItemList.Add('TRUE ');
  synProposal.ItemList.Add('UNDER	');
  synProposal.ItemList.Add('UNDO ');
  synProposal.ItemList.Add('UNION	');
  synProposal.ItemList.Add('UNIQUE ');
  synProposal.ItemList.Add('UNKNOWN	');
  synProposal.ItemList.Add('UNNEST ');
  synProposal.ItemList.Add('UNTIL ');
  synProposal.ItemList.Add('UPDATE	');
  synProposal.ItemList.Add('USER ');
  synProposal.ItemList.Add('USING	');
  synProposal.ItemList.Add('VALUE	');
  synProposal.ItemList.Add('VALUES (	)');
  synProposal.ItemList.Add('VARCHAR( )');
  synProposal.ItemList.Add('VIEW ');
  synProposal.ItemList.Add('WHEN ');
  synProposal.ItemList.Add('WHERE	');
  synProposal.ItemList.Add('WHILE ');
  synProposal.ItemList.Add('WITH ');
  synProposal.ItemList.Add('WITHIN ');
  synProposal.ItemList.Add('WITHOUT ');
  LoadSnippetForLanguage(glSql);

  synProposal.Editor:=SynEdit1;

  AddSnippet.Enabled:=true;
  CleanupSnippet.Enabled:=true;

  linguaggio := glSql;
  synedit1.Highlighter := synsqlsyn1;
  unsetAllImages();
  sql1.ImageIndex := 1;
  strumenticompila.Enabled := true;
  helpcompilatore.Enabled  := true; 
  formattaxml1.Visible     := false;     
  commentPattern:= '--';
  commentPattern2:= '';  
  EditComment.Enabled:=True;
  EditUncomment.Enabled:=True;    
  syntaxLabel.Caption := 'SQL';
   if lingua<>nil then MnuSyntax.Caption :=  lingua.S_Syntax_Title+' (SQL)';
End;

(**
* anche questa lista di keyword è già ordinata!
*)
Procedure TEditorMainForm.SettaC(Sender: TObject);
Begin
  synProposal.ItemList.Clear;
  synProposal.ItemList.Add('and ')  ;
  synProposal.ItemList.Add('asm ')  ;
  synProposal.ItemList.Add('bitand ')  ;
  synProposal.ItemList.Add('bitor ') ;
  synProposal.ItemList.Add('bool ')  ;
  synProposal.ItemList.Add('break ') ;
  synProposal.ItemList.Add('case ')  ;
  synProposal.ItemList.Add('catch ')  ;
  synProposal.ItemList.Add('char ')   ;
  synProposal.ItemList.Add('class ')   ;
  synProposal.ItemList.Add('compl ')  ;
  synProposal.ItemList.Add('const ')    ;
  synProposal.ItemList.Add('const_cast ')   ;
  synProposal.ItemList.Add('continue ')  ;
  synProposal.ItemList.Add('default ')   ;
  synProposal.ItemList.Add('delete ')   ;
  synProposal.ItemList.Add('do ')        ;
  synProposal.ItemList.Add('double ')  ;
  synProposal.ItemList.Add('dynamic_cast ')    ;
  synProposal.ItemList.Add('else ')  ;
  synProposal.ItemList.Add('enum ')  ;
  synProposal.ItemList.Add('explicit ')  ;
  synProposal.ItemList.Add('export ')  ;
  synProposal.ItemList.Add('extern ')  ;
  synProposal.ItemList.Add('false ') ;
  synProposal.ItemList.Add('float ')  ;
  synProposal.ItemList.Add('for ')   ;
  synProposal.ItemList.Add('for( ) {'+#13#10+'}');
  synProposal.ItemList.Add('for(int i=0; i< ; i++) {'+#13#10+'}');
  synProposal.ItemList.Add('friend ')   ;
  synProposal.ItemList.Add('goto ') ;
  synProposal.ItemList.Add('if ')   ;
  synProposal.ItemList.Add('if( ) {'+#13#10+'}');
  synProposal.ItemList.Add('if( ) { '+#13#10+'}'+#13#10+'else {'+#13#10+'}');
  synProposal.ItemList.Add('inline ')  ;
  synProposal.ItemList.Add('include ')  ;
  synProposal.ItemList.Add('int ')  ;
  synProposal.ItemList.Add('long ')  ;
  synProposal.ItemList.Add('main ')   ;
  synProposal.ItemList.Add('mutable ')   ;
  synProposal.ItemList.Add('namespace ')  ;
  synProposal.ItemList.Add('new ')     ;
  synProposal.ItemList.Add('not ')   ;
  synProposal.ItemList.Add('not_eq ')  ;
  synProposal.ItemList.Add('operator ') ;
  synProposal.ItemList.Add('or ')      ;
  synProposal.ItemList.Add('or_eq ')   ;
  synProposal.ItemList.Add('private ') ;
  synProposal.ItemList.Add('protected ')    ;
  synProposal.ItemList.Add('public ')       ;
  synProposal.ItemList.Add('register ')    ;
  synProposal.ItemList.Add('reinterpret_cast ')   ;
  synProposal.ItemList.Add('return ')      ;
  synProposal.ItemList.Add('short ')  ;
  synProposal.ItemList.Add('signed ')  ;
  synProposal.ItemList.Add('sizeof ') ;
  synProposal.ItemList.Add('static ')  ;
  synProposal.ItemList.Add('static_cast ')    ;
  synProposal.ItemList.Add('struct ')  ;
  synProposal.ItemList.Add('switch ')   ;
  synProposal.ItemList.Add('template ')  ;
  synProposal.ItemList.Add('this ') ;
  synProposal.ItemList.Add('throw ') ;
  synProposal.ItemList.Add('true ') ;
  synProposal.ItemList.Add('try ')  ;
  synProposal.ItemList.Add('typedef ')  ;
  synProposal.ItemList.Add('typeid ') ;
  synProposal.ItemList.Add('typename ')  ;
  synProposal.ItemList.Add('union ')    ;
  synProposal.ItemList.Add('unsigned ') ;
  synProposal.ItemList.Add('using ')  ;
  synProposal.ItemList.Add('virtual ')  ;
  synProposal.ItemList.Add('void ')  ;
  synProposal.ItemList.Add('volatile ')  ;
  synProposal.ItemList.Add('while ')   ;
  synProposal.ItemList.Add('xor ')    ;
  synProposal.ItemList.Add('xor_eq ');

  LoadSnippetForLanguage(glCpp);

  synProposal.Editor:=SynEdit1;

  AddSnippet.Enabled:=true;  
  CleanupSnippet.Enabled:=true;

  linguaggio := glCpp;
  synedit1.highlighter := syncppsyn1;
  unsetAllImages();
  cc1.imageindex := 1;
  strumenticompila.Enabled := true;
  helpcompilatore.Enabled  := true;
  formattaxml1.Visible     := false;    
  commentPattern:= '//';
  commentPattern2:= '';  
  EditComment.Enabled:=True;
  EditUncomment.Enabled:=True;
  syntaxLabel.Caption := 'C / C++';
   if lingua<>nil then   MnuSyntax.Caption :=  lingua.S_Syntax_Title+' (C / C++)';
End;

(**
* anche questa lista di keyword è già ordinata!
*)
Procedure TEditorMainForm.SettaBasic(Sender: TObject);
Begin
  synProposal.ItemList.Clear;
  synProposal.ItemList.Add('AddHandler ');
  synProposal.ItemList.Add('AddressOf ');
  synProposal.ItemList.Add('Alias ');
  synProposal.ItemList.Add('And ');
  synProposal.ItemList.Add('AndAlso ');
  synProposal.ItemList.Add('As ');
  synProposal.ItemList.Add('Boolean ');
  synProposal.ItemList.Add('ByRef ');
  synProposal.ItemList.Add('Byte ');
  synProposal.ItemList.Add('ByVal ');
  synProposal.ItemList.Add('Call ');
  synProposal.ItemList.Add('Case ');
  synProposal.ItemList.Add('Catch ');
  synProposal.ItemList.Add('CBool ');
  synProposal.ItemList.Add('CByte ');
  synProposal.ItemList.Add('CChar ');
  synProposal.ItemList.Add('CDate ');
  synProposal.ItemList.Add('CDbl ');
  synProposal.ItemList.Add('CDec ');
  synProposal.ItemList.Add('Char ');
  synProposal.ItemList.Add('CInt ');
  synProposal.ItemList.Add('Class ');
  synProposal.ItemList.Add('CLng ');
  synProposal.ItemList.Add('CObj ');
  synProposal.ItemList.Add('Const ');
  synProposal.ItemList.Add('Continue ');
  synProposal.ItemList.Add('CSByte ');
  synProposal.ItemList.Add('CShort ');
  synProposal.ItemList.Add('CSng ');
  synProposal.ItemList.Add('CStr ');
  synProposal.ItemList.Add('CType ');
  synProposal.ItemList.Add('CUInt ');
  synProposal.ItemList.Add('CULng ');
  synProposal.ItemList.Add('CUShort ');
  synProposal.ItemList.Add('Date ');
  synProposal.ItemList.Add('Decimal ');
  synProposal.ItemList.Add('Declare ');
  synProposal.ItemList.Add('Default ');
  synProposal.ItemList.Add('Delegate ');
  synProposal.ItemList.Add('Dim ');
  synProposal.ItemList.Add('Double ');
  synProposal.ItemList.Add('Each ');
  synProposal.ItemList.Add('Else ');
  synProposal.ItemList.Add('ElseIf ');
  synProposal.ItemList.Add('End ');
  synProposal.ItemList.Add('EndIf ');
  synProposal.ItemList.Add('Enum ');
  synProposal.ItemList.Add('Erase ');
  synProposal.ItemList.Add('Error ');
  synProposal.ItemList.Add('Event ');
  synProposal.ItemList.Add('Exit ');
  synProposal.ItemList.Add('False ');
  synProposal.ItemList.Add('Finally ');
  synProposal.ItemList.Add('For ');
  synProposal.ItemList.Add('Friend ');
  synProposal.ItemList.Add('Function ');
  synProposal.ItemList.Add('Get ');
  synProposal.ItemList.Add('GetType ');
  synProposal.ItemList.Add('Global ');
  synProposal.ItemList.Add('GoSub ');
  synProposal.ItemList.Add('GoTo ');
  synProposal.ItemList.Add('Handles ');
  synProposal.ItemList.Add('If() ');
  synProposal.ItemList.Add('Implements ');
  synProposal.ItemList.Add('Imports ');
  synProposal.ItemList.Add('Inherits ');
  synProposal.ItemList.Add('Integer ');
  synProposal.ItemList.Add('Interface ');
  synProposal.ItemList.Add('IsNot ');
  synProposal.ItemList.Add('Let ');
  synProposal.ItemList.Add('Lib ');
  synProposal.ItemList.Add('Like ');
  synProposal.ItemList.Add('Long ');
  synProposal.ItemList.Add('Loop ');
  synProposal.ItemList.Add('Mod ');
  synProposal.ItemList.Add('Module ');
  synProposal.ItemList.Add('MustInherit ');
  synProposal.ItemList.Add('MustOverride ');
  synProposal.ItemList.Add('MyBase ');
  synProposal.ItemList.Add('MyClass ');
  synProposal.ItemList.Add('Namespace ');
  synProposal.ItemList.Add('Narrowing ');
  synProposal.ItemList.Add('New Constraint ');
  synProposal.ItemList.Add('New Operator ');
  synProposal.ItemList.Add('Next ');
  synProposal.ItemList.Add('Not ');
  synProposal.ItemList.Add('Nothing ');
  synProposal.ItemList.Add('NotInheritable ');
  synProposal.ItemList.Add('NotOverridable ');
  synProposal.ItemList.Add('Object ');
  synProposal.ItemList.Add('Operator ');
  synProposal.ItemList.Add('Option ');
  synProposal.ItemList.Add('Optional ');
  synProposal.ItemList.Add('OrElse ');
  synProposal.ItemList.Add('Overloads ');
  synProposal.ItemList.Add('Overridable ');
  synProposal.ItemList.Add('Overrides ');
  synProposal.ItemList.Add('ParamArray ');
  synProposal.ItemList.Add('Partial ');
  synProposal.ItemList.Add('Private ');
  synProposal.ItemList.Add('Property ');
  synProposal.ItemList.Add('Protected ');
  synProposal.ItemList.Add('Public ');
  synProposal.ItemList.Add('RaiseEvent ');
  synProposal.ItemList.Add('ReadOnly ');
  synProposal.ItemList.Add('ReDim ');
  synProposal.ItemList.Add('REM ');
  synProposal.ItemList.Add('RemoveHandler ');
  synProposal.ItemList.Add('Resume ');
  synProposal.ItemList.Add('Return ');
  synProposal.ItemList.Add('SByte ');
  synProposal.ItemList.Add('Select ');
  synProposal.ItemList.Add('Set ');
  synProposal.ItemList.Add('Shadows ');
  synProposal.ItemList.Add('Shared ');
  synProposal.ItemList.Add('Short ');
  synProposal.ItemList.Add('Single ');
  synProposal.ItemList.Add('Static ');
  synProposal.ItemList.Add('Step ');
  synProposal.ItemList.Add('Stop ');
  synProposal.ItemList.Add('String ');
  synProposal.ItemList.Add('Structure ');
  synProposal.ItemList.Add('Sub ');
  synProposal.ItemList.Add('SyncLock ');
  synProposal.ItemList.Add('Then ');
  synProposal.ItemList.Add('Throw ');
  synProposal.ItemList.Add('True ');
  synProposal.ItemList.Add('Try ');
  synProposal.ItemList.Add('TryCast ');
  synProposal.ItemList.Add('UInteger ');
  synProposal.ItemList.Add('ULong ');
  synProposal.ItemList.Add('UShort ');
  synProposal.ItemList.Add('Using ');
  synProposal.ItemList.Add('Variant ');
  synProposal.ItemList.Add('Wend ');
  synProposal.ItemList.Add('When ');
  synProposal.ItemList.Add('While ');
  synProposal.ItemList.Add('Widening ');
  synProposal.ItemList.Add('With ');
  synProposal.ItemList.Add('WithEvents ');
  synProposal.ItemList.Add('WriteOnly ');
  synProposal.ItemList.Add('Xor ');
  synProposal.ItemList.Add('#Const ');
  synProposal.ItemList.Add('#Else ');
  synProposal.ItemList.Add('#ElseIf ');
  synProposal.ItemList.Add('#End ');
  synProposal.ItemList.Add('#If ');

  LoadSnippetForLanguage(glBasic);
  synProposal.Editor:=SynEdit1;

  AddSnippet.Enabled:=true; 
  CleanupSnippet.Enabled:=true;

  linguaggio := glBasic;
  synedit1.highlighter := synVBsyn1;
  unsetAllImages();
  basic1.ImageIndex := 1;
  strumenticompila.Enabled := true;
  helpcompilatore.Enabled  := true;   
  formattaxml1.Visible     := false;      
  commentPattern:= '''';
  commentPattern2:= '';   
  EditComment.Enabled:=True;
  EditUncomment.Enabled:=True;     
  syntaxLabel.Caption := 'Basic';
   if lingua<>nil then MnuSyntax.Caption :=  lingua.S_Syntax_Title+' (Basic)';
End;

(**
* anche questa lista di keyword è già ordinata!
*)
Procedure TEditorMainForm.SettaPHP(Sender: TObject);
Begin
  synProposal.ItemList.Clear;
  synProposal.ItemList.Add('abstract'		);
  synProposal.ItemList.Add('array'	);
  synProposal.ItemList.Add('break'		);
  synProposal.ItemList.Add('callable'	);
  synProposal.ItemList.Add('case'	);
  synProposal.ItemList.Add('catch '	);
  synProposal.ItemList.Add('class '	);
  synProposal.ItemList.Add('clone '	);
  synProposal.ItemList.Add('const '	);
  synProposal.ItemList.Add('continue '	);
  synProposal.ItemList.Add('declare '	);
  synProposal.ItemList.Add('default '	);
  synProposal.ItemList.Add('echo '	);
  synProposal.ItemList.Add('else { '+#13#10+'}'	);
  synProposal.ItemList.Add('elseif { '+#13#10+'}'	);
  synProposal.ItemList.Add('empty '	);
  synProposal.ItemList.Add('enddeclare '	);
  synProposal.ItemList.Add('endfor '	);
  synProposal.ItemList.Add('endforeach '	);
  synProposal.ItemList.Add('endif '	);
  synProposal.ItemList.Add('endswitch '	);
  synProposal.ItemList.Add('endwhile '	);
  synProposal.ItemList.Add('eval '	);
  synProposal.ItemList.Add('exit '	);
  synProposal.ItemList.Add('extends '	);
  synProposal.ItemList.Add('final '	);
  synProposal.ItemList.Add('foreach '	);
  synProposal.ItemList.Add('function '	);
  synProposal.ItemList.Add('global '	);
  synProposal.ItemList.Add('goto '	);
  synProposal.ItemList.Add('implements '	);
  synProposal.ItemList.Add('include '	);
  synProposal.ItemList.Add('include_once '	);
  synProposal.ItemList.Add('instanceof '	);
  synProposal.ItemList.Add('insteadof '	);
  synProposal.ItemList.Add('interface '	);
  synProposal.ItemList.Add('isset '	);
  synProposal.ItemList.Add('list '	);
  synProposal.ItemList.Add('mysql_affected_rows '	);
  synProposal.ItemList.Add('mysql_close '	);
  synProposal.ItemList.Add('mysql_connect '	);
  synProposal.ItemList.Add('mysql_fetch_row '	);
  synProposal.ItemList.Add('mysql_fetch_array '	);
  synProposal.ItemList.Add('mysql_free_result '	);
  synProposal.ItemList.Add('mysql_num_rows '	);
  synProposal.ItemList.Add('mysql_query '	);
  synProposal.ItemList.Add('mysql_result '	);
  synProposal.ItemList.Add('mysql_select_db '	);
  synProposal.ItemList.Add('namespace '	);
  synProposal.ItemList.Add('print '	);
  synProposal.ItemList.Add('private '	);
  synProposal.ItemList.Add('protected '	);
  synProposal.ItemList.Add('public '	);
  synProposal.ItemList.Add('require '	);
  synProposal.ItemList.Add('require_once '	);
  synProposal.ItemList.Add('return '	);
  synProposal.ItemList.Add('static '	);
  synProposal.ItemList.Add('switch '	);
  synProposal.ItemList.Add('throw '	);
  synProposal.ItemList.Add('trait '	);
  synProposal.ItemList.Add('unset '	);
  synProposal.ItemList.Add('while( ) { '+#13#10+'} '	);
  LoadSnippetForLanguage(glPhp);

  synProposal.Editor:=SynEdit1;

  AddSnippet.Enabled:=true; 
  CleanupSnippet.Enabled:=true;

  linguaggio := glPhp;
  synedit1.highlighter := synphpsyn1;
  unsetAllImages();
  php1.ImageIndex := 1;
  strumenticompila.Enabled := true;
  helpcompilatore.Enabled  := true;
  formattaxml1.Visible     := false;       
  commentPattern:= '//';
  commentPattern2:= '';   
  EditComment.Enabled:=True;
  EditUncomment.Enabled:=True;  
  syntaxLabel.Caption := 'Php';  
   if lingua<>nil then MnuSyntax.Caption :=  lingua.S_Syntax_Title+' (Php)';
End;

(**
* anche questa lista di keyword è già ordinata!
*)
Procedure TEditorMainForm.SettaJava(Sender: TObject);
Begin
  synProposal.ItemList.Clear;
  synProposal.ItemList.Add('abstract ');
  synProposal.ItemList.Add('assert ');
  synProposal.ItemList.Add('boolean	');
  synProposal.ItemList.Add('break	');
  synProposal.ItemList.Add('byte ');
  synProposal.ItemList.Add('continue ');
  synProposal.ItemList.Add('case ');
  synProposal.ItemList.Add('catch { }');
  synProposal.ItemList.Add('char ');
  synProposal.ItemList.Add('class	');
  synProposal.ItemList.Add('const	');
  synProposal.ItemList.Add('default	');
  synProposal.ItemList.Add('double ');
  synProposal.ItemList.Add('for	');
  synProposal.ItemList.Add('for (int i=0; i< ; i++) {'+#13#10+'}');
  synProposal.ItemList.Add('else {'+#13#10+'}');
  synProposal.ItemList.Add('else if ( ) {'+#13#10+'}');
  synProposal.ItemList.Add('enum ');
  synProposal.ItemList.Add('extends	');
  synProposal.ItemList.Add('final	');
  synProposal.ItemList.Add('finally	');
  synProposal.ItemList.Add('float	');
  synProposal.ItemList.Add('goto ');
  synProposal.ItemList.Add('if ( ) {'+#13#10+'}');
  synProposal.ItemList.Add('implements ');
  synProposal.ItemList.Add('import ');
  synProposal.ItemList.Add('instanceof ');
  synProposal.ItemList.Add('int	');
  synProposal.ItemList.Add('interface	');
  synProposal.ItemList.Add('long ');
  synProposal.ItemList.Add('native ');
  synProposal.ItemList.Add('new	');
  synProposal.ItemList.Add('package	');
  synProposal.ItemList.Add('private	');
  synProposal.ItemList.Add('public ');
  synProposal.ItemList.Add('protected	');
  synProposal.ItemList.Add('return ');
  synProposal.ItemList.Add('short	');
  synProposal.ItemList.Add('static ');
  synProposal.ItemList.Add('strictfp ');
  synProposal.ItemList.Add('super	');
  synProposal.ItemList.Add('switch ');
  synProposal.ItemList.Add('synchronized ');
  synProposal.ItemList.Add('this ');
  synProposal.ItemList.Add('throw	');
  synProposal.ItemList.Add('throws ');
  synProposal.ItemList.Add('transient	');
  synProposal.ItemList.Add('try {'+#13#10+'}');
  synProposal.ItemList.Add('void ');
  synProposal.ItemList.Add('volatile ');
  synProposal.ItemList.Add('while ');
  LoadSnippetForLanguage(glJava);
  synProposal.Editor:=SynEdit1;

  AddSnippet.Enabled:=true; 
  CleanupSnippet.Enabled:=true;

  linguaggio := glJava;
  synedit1.highlighter := synjavasyn1;
  unsetAllImages();
  java1.ImageIndex := 1;
  strumenticompila.Enabled := true;
  helpcompilatore.Enabled  := true;
  formattaxml1.Visible     := false;
  commentPattern:= '//';
  commentPattern2:= ''; 
  EditComment.Enabled:=True;
  EditUncomment.Enabled:=True;   
  syntaxLabel.Caption := 'Java';  
   if lingua<>nil then MnuSyntax.Caption :=  lingua.S_Syntax_Title+' (Java)';
End;

(**
* anche questa lista di keyword è già ordinata!
*)
Procedure TEditorMainForm.SettaPascal(Sender: TObject);
Begin
  synProposal.ItemList.Clear;
  synProposal.ItemList.Add('absolute ');
  synProposal.ItemList.Add('abstract ');
  synProposal.ItemList.Add('alias ') ;
  synProposal.ItemList.Add('and ');
  synProposal.ItemList.Add('array ');
  synProposal.ItemList.Add('asm ');
  synProposal.ItemList.Add('assembler ');
  synProposal.ItemList.Add('begin '+#13#10+'end; ');
  synProposal.ItemList.Add('break ');
  synProposal.ItemList.Add('case ');
  synProposal.ItemList.Add('class ');
  synProposal.ItemList.Add('const ');
  synProposal.ItemList.Add('constructor ');
  synProposal.ItemList.Add('continue ');
  synProposal.ItemList.Add('default ');
  synProposal.ItemList.Add('destructor ');
  synProposal.ItemList.Add('dispose ');
  synProposal.ItemList.Add('div ');
  synProposal.ItemList.Add('do begin '+#13#10+'end; ');
  synProposal.ItemList.Add('downto ');
  synProposal.ItemList.Add('else ');
  synProposal.ItemList.Add('end ');
  synProposal.ItemList.Add('except ');
  synProposal.ItemList.Add('exit ');
  synProposal.ItemList.Add('export ');
  synProposal.ItemList.Add('exports ');
  synProposal.ItemList.Add('external ');
  synProposal.ItemList.Add('false ');
  synProposal.ItemList.Add('file ');
  synProposal.ItemList.Add('finalization ');
  synProposal.ItemList.Add('finally ');
  synProposal.ItemList.Add('for( ) ');
  synProposal.ItemList.Add('for( ) begin '+#13#10+'end; ');
  synProposal.ItemList.Add('function ');
  synProposal.ItemList.Add('goto ');
  synProposal.ItemList.Add('if( ) then ');
  synProposal.ItemList.Add('implementation ');
  synProposal.ItemList.Add('in ');
  synProposal.ItemList.Add('inherited ');
  synProposal.ItemList.Add('initialization ');
  synProposal.ItemList.Add('inline ');
  synProposal.ItemList.Add('interface ');
  synProposal.ItemList.Add('label ');
  synProposal.ItemList.Add('library ');
  synProposal.ItemList.Add('mod ');
  synProposal.ItemList.Add('new ');
  synProposal.ItemList.Add('nil ');
  synProposal.ItemList.Add('not ');
  synProposal.ItemList.Add('object ');
  synProposal.ItemList.Add('operator ');
  synProposal.ItemList.Add('out ');
  synProposal.ItemList.Add('override ');
  synProposal.ItemList.Add('packed ');
  synProposal.ItemList.Add('pascal ');
  synProposal.ItemList.Add('private ')   ;
  synProposal.ItemList.Add('procedure ');
  synProposal.ItemList.Add('program ');
  synProposal.ItemList.Add('property ');
  synProposal.ItemList.Add('protected ');
  synProposal.ItemList.Add('public ');
  synProposal.ItemList.Add('published ');
  synProposal.ItemList.Add('raise ');
  synProposal.ItemList.Add('read ')  ;
  synProposal.ItemList.Add('record ');
  synProposal.ItemList.Add('repeat ');
  synProposal.ItemList.Add('self ');
  synProposal.ItemList.Add('set ');
  synProposal.ItemList.Add('shl ');
  synProposal.ItemList.Add('shr ');
  synProposal.ItemList.Add('string ');
  synProposal.ItemList.Add('then ');
  synProposal.ItemList.Add('then begin '+#13#10+'end;');
  synProposal.ItemList.Add('threadvar ');
  synProposal.ItemList.Add('true ');
  synProposal.ItemList.Add('try ') ;
  synProposal.ItemList.Add('type ');
  synProposal.ItemList.Add('unit ');
  synProposal.ItemList.Add('until ');
  synProposal.ItemList.Add('uses ');
  synProposal.ItemList.Add('var ');
  synProposal.ItemList.Add('while( ) do ');
  synProposal.ItemList.Add('while( ) do begin '+#13#10+'end; ');
  synProposal.ItemList.Add('with ');
  synProposal.ItemList.Add('xor ');
  LoadSnippetForLanguage(glPascal);
  synProposal.Editor:=SynEdit1;

  AddSnippet.Enabled:=true;
  CleanupSnippet.Enabled:=true;

  linguaggio := glPascal;
  synedit1.highlighter := synpassyn1;
  unsetAllImages();
  pascal1.ImageIndex := 1;
  strumenticompila.Enabled := true;
  helpcompilatore.Enabled  := true;
  formattaxml1.Visible     := false;
  commentPattern:= '//';
  commentPattern2:= '';  
  EditComment.Enabled:=True;
  EditUncomment.Enabled:=True;  
  syntaxLabel.Caption := 'Pascal';  
   if lingua<>nil then MnuSyntax.Caption :=  lingua.S_Syntax_Title+' (Pascal)';
End;

(**
* anche questa lista di keyword è già ordinata!
*)
Procedure TEditorMainForm.SettaHTML(Sender: TObject);
Begin
  synProposal.ItemList.Clear;
  synProposal.ItemList.Add('<!-- -->');
  synProposal.ItemList.Add('<!DOCTYPE>');
  synProposal.ItemList.Add('<a href=""></a>');
  synProposal.ItemList.Add('<abbr></abbr>');
  synProposal.ItemList.Add('<acronym></acronym>');
  synProposal.ItemList.Add('<address></address>');
  synProposal.ItemList.Add('<applet />');
  synProposal.ItemList.Add('<area></area>');
  synProposal.ItemList.Add('<article></article>');
  synProposal.ItemList.Add('<aside>');
  synProposal.ItemList.Add('<audio>');
  synProposal.ItemList.Add('<b></b>');
  synProposal.ItemList.Add('<base />');
  synProposal.ItemList.Add('<basefont />');
  synProposal.ItemList.Add('<bdi>');
  synProposal.ItemList.Add('<bdo>');
  synProposal.ItemList.Add('<big></big>');
  synProposal.ItemList.Add('<blockquote></blockquote>');
  synProposal.ItemList.Add('<body></body>');
  synProposal.ItemList.Add('<br />');
  synProposal.ItemList.Add('<button />');
  synProposal.ItemList.Add('<canvas></canvas>');
  synProposal.ItemList.Add('<caption></caption>');
  synProposal.ItemList.Add('<center>');
  synProposal.ItemList.Add('<cite></cite>');
  synProposal.ItemList.Add('<code></code>');
  synProposal.ItemList.Add('<col></col>');
  synProposal.ItemList.Add('<colgroup></colgroup>');
  synProposal.ItemList.Add('<command />');
  synProposal.ItemList.Add('<colgroup></colgroup>');
  synProposal.ItemList.Add('<dd></dd>');
  synProposal.ItemList.Add('<del></del>');
  synProposal.ItemList.Add('<details></details>');
  synProposal.ItemList.Add('<dfn>');
  synProposal.ItemList.Add('<dialog></dialog>');
  synProposal.ItemList.Add('<dir></dir>');
  synProposal.ItemList.Add('<div></div>');
  synProposal.ItemList.Add('<dl></dl>');
  synProposal.ItemList.Add('<dt></dt>');
  synProposal.ItemList.Add('<em></em>');
  synProposal.ItemList.Add('<embed></embed>');
  synProposal.ItemList.Add('<fieldset></fieldset>');
  synProposal.ItemList.Add('<figcaption></figcaption>');
  synProposal.ItemList.Add('<figure />');
  synProposal.ItemList.Add('<font></font>');
  synProposal.ItemList.Add('<footer></footer>');
  synProposal.ItemList.Add('<form></form>');
  synProposal.ItemList.Add('<frame></frame>');
  synProposal.ItemList.Add(	'<frameset></frameset>');
  synProposal.ItemList.Add('<h1></h1>');
  synProposal.ItemList.Add('<h2></h2>');
  synProposal.ItemList.Add('<h3></h3>');
  synProposal.ItemList.Add('<h4></h4>');
  synProposal.ItemList.Add('<h5></h5>');
  synProposal.ItemList.Add('<h6></h6>');
  synProposal.ItemList.Add('<head></head>');
  synProposal.ItemList.Add('<header></header>');
  synProposal.ItemList.Add('<hr />');
  synProposal.ItemList.Add('<html>'+#13#10+'</html>');
  synProposal.ItemList.Add('<html>'+#13#10+'<head></head>'+#13#10+'<body></body>'+#13#10+'</html>');
  synProposal.ItemList.Add('<i></i>');
  synProposal.ItemList.Add('<iframe />');
  synProposal.ItemList.Add('<img></img>');
  synProposal.ItemList.Add('<input type="" />');
  synProposal.ItemList.Add('<ins></ins>');
  synProposal.ItemList.Add('<kbd />');
  synProposal.ItemList.Add('<keygen />');
  synProposal.ItemList.Add('<label></label>');
  synProposal.ItemList.Add('<legend></legend>');
  synProposal.ItemList.Add('<li></li>');
  synProposal.ItemList.Add('<link></link>');
  synProposal.ItemList.Add('<map></map>');
  synProposal.ItemList.Add('<mark></mark>');
  synProposal.ItemList.Add('<menu></menu>');
  synProposal.ItemList.Add('<meta />');
  synProposal.ItemList.Add('<meter />');
  synProposal.ItemList.Add('<nav></nav>');
  synProposal.ItemList.Add('<noframes></noframes>');
  synProposal.ItemList.Add('<noscript></noscript>');
  synProposal.ItemList.Add('<object />');
  synProposal.ItemList.Add('<ol></ol>');
  synProposal.ItemList.Add('<optgroup></optgroup>');
  synProposal.ItemList.Add('<option></option>');
  synProposal.ItemList.Add('<output />');
  synProposal.ItemList.Add('<p></p>');
  synProposal.ItemList.Add(	'<param></param>');
  synProposal.ItemList.Add('<pre></pre>');
  synProposal.ItemList.Add('<progress />');
  synProposal.ItemList.Add('<q></q>');
  synProposal.ItemList.Add('<rp></rp>');
  synProposal.ItemList.Add('<rt></rt>');
  synProposal.ItemList.Add('<ruby />');
  synProposal.ItemList.Add('<samp />');
  synProposal.ItemList.Add('<script></script>');
  synProposal.ItemList.Add('<section></section>');
  synProposal.ItemList.Add('<select />');
  synProposal.ItemList.Add('<small></small>');
  synProposal.ItemList.Add('<source></source>');
  synProposal.ItemList.Add('<span />');
  synProposal.ItemList.Add('<strike></strike>');
  synProposal.ItemList.Add('<strong></strong>');
  synProposal.ItemList.Add('<style />');
  synProposal.ItemList.Add('<sub></sub>');
  synProposal.ItemList.Add('<summary></summary>');
  synProposal.ItemList.Add('<sup></sup>');
  synProposal.ItemList.Add('<table></table>');
  synProposal.ItemList.Add('<tbody></tbody>');
  synProposal.ItemList.Add('<td></td>');
  synProposal.ItemList.Add('<textarea></textarea>');
  synProposal.ItemList.Add('<tfoot></tfoot>');
  synProposal.ItemList.Add('<th></th>');
  synProposal.ItemList.Add('<thead></thead>');
  synProposal.ItemList.Add('<time />');
  synProposal.ItemList.Add('<title></title>');
  synProposal.ItemList.Add('<tr></tr>');
  synProposal.ItemList.Add('<track />');
  synProposal.ItemList.Add('<tt></tt>');
  synProposal.ItemList.Add('<u></u>');
  synProposal.ItemList.Add('<ul></ul>');
  synProposal.ItemList.Add('<var />');
  synProposal.ItemList.Add('<video />');
  synProposal.ItemList.Add('<wbr />');
  LoadSnippetForLanguage(glHtml);
  synProposal.Editor:=SynEdit1;

  AddSnippet.Enabled:=true; 
  CleanupSnippet.Enabled:=true;

  linguaggio := glHtml;
  synedit1.highlighter := synhtmlsyn1;
  unsetAllImages();
  html1.ImageIndex := 1;
  strumenticompila.Enabled := true;
  helpcompilatore.Enabled := true;
  formattaxml1.Visible:=true;
 if lingua<>nil then  formattaxml1.Caption:=lingua.S_Tools_HtmlFormat;
  commentPattern:= '<!--';
  commentPattern2:= '-->';
  EditComment.Enabled:=True;
  EditUncomment.Enabled:=True;     
  syntaxLabel.Caption := 'Html';  
   if lingua<>nil then MnuSyntax.Caption :=  lingua.S_Syntax_Title+' (Html)';
End;

Procedure TEditorMainForm.SettaXML(Sender: TObject);
Begin
  synProposal.Editor:=nil;
  synProposal.ItemList.Clear;

  AddSnippet.Enabled:=false;
  CleanupSnippet.Enabled:=false;

  linguaggio := glXml;
  synedit1.Highlighter := synxmlsyn1;
  unsetAllImages();
  xml1.ImageIndex := 1;
  strumenticompila.Enabled := true;
  helpcompilatore.Enabled := true;
  formattaxml1.Visible:=true;
  if lingua<>nil then formattaxml1.Caption:=lingua.S_Tools_XmlFormat;
  commentPattern:= '<!--';
  commentPattern2:= '-->';
  EditComment.Enabled:=True;
  EditUncomment.Enabled:=True;  
  syntaxLabel.Caption := 'Xml';
  if lingua<>nil then   MnuSyntax.Caption :=  lingua.S_Syntax_Title+' (Xml)';
End;

Procedure TEditorMainForm.SettaTesto(Sender: TObject);
Begin
  synProposal.Editor:=nil;
  synProposal.ItemList.Clear;

  AddSnippet.Enabled:=false;
  CleanupSnippet.Enabled:=false;

  synedit1.highlighter := Nil;
  linguaggio := glText;
  unsetAllImages();
  testonormale1.ImageIndex := 1;
  strumenticompila.Enabled := false;
  helpcompilatore.Enabled  := false;
  formattaxml1.Visible     := false;        
  commentPattern:= '';
  commentPattern2:= '';
  EditComment.Enabled:=false;
  EditUncomment.Enabled:=false;
  syntaxLabel.Caption := '';// lingua.S_Syntax_Text;
  if lingua<>nil then MnuSyntax.Caption :=  lingua.S_Syntax_Title;
End;

(**
* anche questa lista di keyword è già ordinata!
*)
Procedure TEditorMainForm.SettaPython(Sender: TObject);
Begin
  synProposal.ItemList.Clear;
  synProposal.ItemList.Add('and ') ;
  synProposal.ItemList.Add('as ') ;
  synProposal.ItemList.Add('assert ');
  synProposal.ItemList.Add('break ');
  synProposal.ItemList.Add('class ');
  synProposal.ItemList.Add('continue ');
  synProposal.ItemList.Add('def ') ;
  synProposal.ItemList.Add('del ');
  synProposal.ItemList.Add('elif ');
  synProposal.ItemList.Add('else ');
  synProposal.ItemList.Add('except ');
  synProposal.ItemList.Add('exec ');
  synProposal.ItemList.Add('finally ');
  synProposal.ItemList.Add('from ');
  synProposal.ItemList.Add('for ');
  synProposal.ItemList.Add('global ');
  synProposal.ItemList.Add('if ');
  synProposal.ItemList.Add('import ');
  synProposal.ItemList.Add('in ');
  synProposal.ItemList.Add('is ');
  synProposal.ItemList.Add('lambda ');
  synProposal.ItemList.Add('not ') ;
  synProposal.ItemList.Add('or ');
  synProposal.ItemList.Add('pass ');
  synProposal.ItemList.Add('print ');
  synProposal.ItemList.Add('raise ');
  synProposal.ItemList.Add('return ');
  synProposal.ItemList.Add('try ') ;
  synProposal.ItemList.Add('while ') ;
  synProposal.ItemList.Add('with ');
  synProposal.ItemList.Add('yield ');

  LoadSnippetForLanguage(glPython);
  synProposal.Editor:=SynEdit1;

  AddSnippet.Enabled:=true;
  CleanupSnippet.Enabled:=true;

  linguaggio := glPython;
  synedit1.highlighter := SynPythonSyn1;
  unsetAllImages();
  python1.ImageIndex := 1;
  strumenticompila.Enabled := true;
  helpcompilatore.Enabled := true;   
  commentPattern:= '#';
  commentPattern2:= '';  
  EditComment.Enabled:=True;
  EditUncomment.Enabled:=True;  
  syntaxLabel.Caption := 'Python';  
   if lingua<>nil then MnuSyntax.Caption :=  lingua.S_Syntax_Title+' (Python)';
End;

procedure TEditorMainForm.SettaJavaScript(Sender: TObject);
Begin
  synProposal.ItemList.Clear;
  synProposal.ItemList.Add('abstract ');
  synProposal.ItemList.Add('boolean ');
  synProposal.ItemList.Add('break ');
  synProposal.ItemList.Add('byte ');
  synProposal.ItemList.Add('case ');
  synProposal.ItemList.Add('catch ');
  synProposal.ItemList.Add('char ');
  synProposal.ItemList.Add('class ');
  synProposal.ItemList.Add('const ');
  synProposal.ItemList.Add('continue ');
  synProposal.ItemList.Add('debugger ');
  synProposal.ItemList.Add('default ');
  synProposal.ItemList.Add('do ');
  synProposal.ItemList.Add('double ');
  synProposal.ItemList.Add('else ');
  synProposal.ItemList.Add('enum ');
  synProposal.ItemList.Add('export ');
  synProposal.ItemList.Add('extends ');
  synProposal.ItemList.Add('final ');
  synProposal.ItemList.Add('finally ');
  synProposal.ItemList.Add('float ');
  synProposal.ItemList.Add('for ') ;
  synProposal.ItemList.Add('function ');
  synProposal.ItemList.Add('goto ');
  synProposal.ItemList.Add('if ');
  synProposal.ItemList.Add('implements ');
  synProposal.ItemList.Add('import ');
  synProposal.ItemList.Add('instanceof ');
  synProposal.ItemList.Add('in ');
  synProposal.ItemList.Add('int ');
  synProposal.ItemList.Add('interface ');
  synProposal.ItemList.Add('long ');
  synProposal.ItemList.Add('native ');
  synProposal.ItemList.Add('new ');
  synProposal.ItemList.Add('package ');
  synProposal.ItemList.Add('private ');
  synProposal.ItemList.Add('protected ');
  synProposal.ItemList.Add('public ');
  synProposal.ItemList.Add('return ');
  synProposal.ItemList.Add('short ');
  synProposal.ItemList.Add('static ');
  synProposal.ItemList.Add('super ');
  synProposal.ItemList.Add('switch ');
  synProposal.ItemList.Add('synchronized ');
  synProposal.ItemList.Add('this ');
  synProposal.ItemList.Add('throw ');
  synProposal.ItemList.Add('throws ') ;
  synProposal.ItemList.Add('transient ');
  synProposal.ItemList.Add('try ');
  synProposal.ItemList.Add('typeof ') ;
  synProposal.ItemList.Add('var ') ;
  synProposal.ItemList.Add('void ') ;
  synProposal.ItemList.Add('volatile ');
  synProposal.ItemList.Add('while ') ;
  synProposal.ItemList.Add('with ');
  LoadSnippetForLanguage(glJScript);
  synProposal.Editor:=SynEdit1;

  AddSnippet.Enabled:=true;
  CleanupSnippet.Enabled:=true;

  linguaggio := glJScript;
  synedit1.highlighter := SynJScriptSyn1;
  UnsetAllImages();
  javascript1.ImageIndex := 1;
  strumenticompila.Enabled := false;
  helpcompilatore.Enabled := false;  
  commentPattern:= '//';
  commentPattern2:= '';  
  EditComment.Enabled:=True;
  EditUncomment.Enabled:=True; 
  syntaxLabel.Caption := 'JS/JSON';
   if lingua<>nil then MnuSyntax.Caption :=  lingua.S_Syntax_Title+' (JS/JSON)';
End;
   
(**
* anche questa lista di keyword è già ordinata!
*)
procedure TEditorMainForm.SettaCss(Sender: TObject);
Begin
  synProposal.ItemList.Clear;
  synProposal.ItemList.Add('azimut'	 	);
  //synProposal.ItemList.Add('background-attachment'	 ,	'background-attachment'	);
  //synProposal.ItemList.Add('background-color'	 ,	'background-color'	);
  //synProposal.ItemList.Add('background-image'	 ,	'background-image'	);
  //synProposal.ItemList.Add('background-position'	 ,	'background-position'	);
  //synProposal.ItemList.Add('background-repeat'	 ,	'background-repeat'	);
  //synProposal.ItemList.Add('background'	 ,	'background'	);
  //synProposal.ItemList.Add('border-collapse'	 ,	'border-collapse'	);
  //synProposal.ItemList.Add('border-color'	 ,	'border-color'	);
  //synProposal.ItemList.Add('border-spacing'	 ,	'border-spacing'	);
  //synProposal.ItemList.Add('border-style'	 ,	'border-style'	);
  //synProposal.ItemList.Add('border-top' ,	'border-top');
  //synProposal.ItemList.Add('border-right'	 ,	'border-right');
  //synProposal.ItemList.Add('border-bottom',	'border-bottom');
  //synProposal.ItemList.Add('border-left'	 ,	'border-left'	);
  //synProposal.ItemList.Add('border-top-color'	 ,	'border-top-color'	);
  //synProposal.ItemList.Add('border-right-color'	 ,	'border-right-color'	);
  //synProposal.ItemList.Add('border-bottom-color' ,	'border-bottom-color'	);
  //synProposal.ItemList.Add('border-left-color'	 ,	'border-left-color'	);
  //synProposal.ItemList.Add('border-top-style'	 ,	'border-top-style'	);
  //synProposal.ItemList.Add('border-right-style'	 ,	'border-right-style'	);
  //synProposal.ItemList.Add('border-bottom-style'	 ,	'border-bottom-style'	);
  //synProposal.ItemList.Add('border-left-style'	 ,	'border-left-style'	);
  //synProposal.ItemList.Add('border-top-width'	 ,	'border-top-width'	);
  //synProposal.ItemList.Add('border-right-width'	 ,	'border-right-width'	);
  //synProposal.ItemList.Add('border-bottom-width'	 ,	'border-bottom-width'	);
  //synProposal.ItemList.Add('border-left-width'	 ,	'border-left-width'	);
  //synProposal.ItemList.Add('border-width'	 ,	'border-width'	);
  //synProposal.ItemList.Add('border'	 ,	'border'	);
  //synProposal.ItemList.Add('bottom'	 ,	'bottom'	);
  //synProposal.ItemList.Add('caption-side'	 ,	'caption-side'	);
  //synProposal.ItemList.Add('clear'	 ,	'clear'	);
  //synProposal.ItemList.Add('clip'	 ,	'clip'	);
  //synProposal.ItemList.Add('color'	 ,	'color'	);
  //synProposal.ItemList.Add('content'	 ,	'content'	);
  //synProposal.ItemList.Add('counter-increment'	 ,	'counter-increment'	);
  //synProposal.ItemList.Add('counter-reset'	 ,	'counter-reset'	);
  //synProposal.ItemList.Add('cue-after'	 ,	'cue-after'	);
  //synProposal.ItemList.Add('cue-before'	 ,	'cue-before'	);
  //synProposal.ItemList.Add('cue'	 ,	'cue'	);
  //synProposal.ItemList.Add('cursor'	 ,	'cursor'	);
  //synProposal.ItemList.Add('direction'	 ,	'direction'	);
  //synProposal.ItemList.Add('display'	 ,	'display'	);
  //synProposal.ItemList.Add('elevation'	 ,	'elevation'	);
  //synProposal.ItemList.Add('empty-cells'	 ,	'empty-cells'	);
  //synProposal.ItemList.Add('float'	 ,	'float'	);
  //synProposal.ItemList.Add('font-family'	 ,	'font-family'	);
  //synProposal.ItemList.Add('font-size'	 ,	'font-size'	);
  //synProposal.ItemList.Add('font-style'	 ,	'font-style'	);
  //synProposal.ItemList.Add('font-variant'	 ,	'font-variant'	);
  //synProposal.ItemList.Add('font-weight'	 ,	'font-weight'	);
  //synProposal.ItemList.Add('font'	 ,	'font'	);
  //synProposal.ItemList.Add('height'	 ,	'height'	);
  //synProposal.ItemList.Add('left'	 ,	'left'	);
  //synProposal.ItemList.Add('letter-spacing'	 ,	'letter-spacing'	);
  //synProposal.ItemList.Add('line-height'	 ,	'line-height'	);
  //synProposal.ItemList.Add('list-style-image'	 ,	'list-style-image'	);
  //synProposal.ItemList.Add('list-style-position'	 ,	'list-style-position'	);
  //synProposal.ItemList.Add('list-style-type'	 ,	'list-style-type'	);
  //synProposal.ItemList.Add('list-style'	 ,	'list-style'	);
  //synProposal.ItemList.Add('margin-right'	 ,	'margin-right'	);
  //synProposal.ItemList.Add('margin-left'	 ,	'margin-left'	);
  //synProposal.ItemList.Add('margin-top'	 ,	'margin-top'	);
  //synProposal.ItemList.Add('margin-bottom'	 ,	'margin-bottom'	);
  //synProposal.ItemList.Add('margin'	 ,	'margin'	);
  //synProposal.ItemList.Add('max-height'	 ,	'max-height'	);
  //synProposal.ItemList.Add('max-width'	 ,	'max-width'	);
  //synProposal.ItemList.Add('min-height'	 ,	'min-height'	);
  //synProposal.ItemList.Add('min-width'	 ,	'min-width'	);
  //synProposal.ItemList.Add('orphans'	 ,	'orphans'	);
  //synProposal.ItemList.Add('outline-color'	 ,	'outline-color'	);
  //synProposal.ItemList.Add('outline-style'	 ,	'outline-style'	);
  //synProposal.ItemList.Add('outline-width'	 ,	'outline-width'	);
  //synProposal.ItemList.Add('outline'	 ,	'outline'	);
  //synProposal.ItemList.Add('overflow'	 ,	'overflow'	);
  //synProposal.ItemList.Add('padding-top'	 ,	'padding-top'	);
  //synProposal.ItemList.Add('padding-right'	 ,	'padding-right'	);
  //synProposal.ItemList.Add('padding-bottom'	 ,	'padding-bottom'	);
  //synProposal.ItemList.Add('padding-left'	 ,	'padding-left'	);
  //synProposal.ItemList.Add('padding'	 ,	'padding'	);
  //synProposal.ItemList.Add('page-break-after'	 ,	'page-break-after'	);
  //synProposal.ItemList.Add('page-break-before'	 ,	'page-break-before'	);
  //synProposal.ItemList.Add('page-break-inside'	 ,	'page-break-inside'	);
  //synProposal.ItemList.Add('pause-after'	 ,	'pause-after'	);
  //synProposal.ItemList.Add('pause-before'	 ,	'pause-before'	);
  //synProposal.ItemList.Add('pause'	 ,	'pause'	);
  //synProposal.ItemList.Add('pitch-range'	 ,	'pitch-range'	);
  //synProposal.ItemList.Add('pitch'	 ,	'pitch'	);
  //synProposal.ItemList.Add('play-during'	 ,	'play-during'	);
  //synProposal.ItemList.Add('position'	 ,	'position'	);
  //synProposal.ItemList.Add('quotes'	 ,	'quotes'	);
  //synProposal.ItemList.Add('richness'	 ,	'richness'	);
  //synProposal.ItemList.Add('right'	 ,	'right'	);
  //synProposal.ItemList.Add('speak-header'	 ,	'speak-header'	);
  //synProposal.ItemList.Add('speak-numeral'	 ,	'speak-numeral'	);
  //synProposal.ItemList.Add('speak-punctuation'	 ,	'speak-punctuation'	);
  //synProposal.ItemList.Add('speak'	 ,	'speak'	);
  //synProposal.ItemList.Add('speech-rate'	 ,	'speech-rate'	);
  //synProposal.ItemList.Add('stress'	 ,	'stress'	);
  //synProposal.ItemList.Add('table-layout'	 ,	'table-layout'	);
  //synProposal.ItemList.Add('text-align'	 ,	'text-align'	);
  //synProposal.ItemList.Add('text-decoration'	 ,	'text-decoration'	);
  //synProposal.ItemList.Add('text-indent'	 ,	'text-indent'	);
  //synProposal.ItemList.Add('text-transform'	 ,	'text-transform'	);
  //synProposal.ItemList.Add('top'	 ,	'top'	);
  //synProposal.ItemList.Add('unicode-bidi'	 ,	'unicode-bidi'	);
  //synProposal.ItemList.Add('vertical-align'	 ,	'vertical-align'	);
  //synProposal.ItemList.Add('visibility'	 ,	'visibility'	);
  //synProposal.ItemList.Add('voice-family'	 ,	'voice-family'	);
  //synProposal.ItemList.Add('volume'	 ,	'volume'	);
  //synProposal.ItemList.Add('white-space'	 ,	'white-space'	);
  //synProposal.ItemList.Add('widows'	 ,	'widows'	);
  //synProposal.ItemList.Add('width'	 ,	'width'	);
  //synProposal.ItemList.Add('word-spacing'	 ,	'word-spacing'	);
  synProposal.ItemList.Add('z-index ');
  LoadSnippetForLanguage(glCss);
  synProposal.Editor:=SynEdit1;

  AddSnippet.Enabled:=true;
  CleanupSnippet.Enabled:=true;

  linguaggio := glCss;
  synedit1.highlighter := SynCssSyn1;
  UnsetAllImages();
  Css1.ImageIndex:=1;
  strumenticompila.Enabled := false;
  helpcompilatore.Enabled := false;  
  commentPattern:= '/*';
  commentPattern2:= '*/';  
  EditComment.Enabled:=True;
  EditUncomment.Enabled:=True;   
  syntaxLabel.Caption := 'Css'; 
   if lingua<>nil then MnuSyntax.Caption :=  lingua.S_Syntax_Title+' (Css)';
End;


Procedure TEditorMainForm.HelpManualeExecute(Sender: TObject);
Var  manuale : string;
Begin
  manuale := exepath+'manuale.PDF';
  If FileExists(manuale) Then
     OpenDocument(PChar(manuale)) { *Converted from ShellExecute* }
  Else
    ShowMessage(lingua.S_Alert_manual);
End;  

Procedure TEditorMainForm.StrumentiCompilaExecute(Sender: TObject);
Var actualCompiler, actualParameters, actualDir, ActualFileDirectory: String;
    MyConf:TIniFile;
Begin
  actualCompiler   := '';
  actualParameters := '';
  actualDir        := '';
  FileSalvaExecute(self);
  if (fileexists(cfgfile) or directoryexists(cfgdir)) then begin
    MyConf := TIniFile.Create(cfgfile);
    Try
      If (linguaggio=glJava) Then Begin
        //compiliamo in linguaggio java
        actualCompiler   := MyConf.readstring('Calls', 'java_compiler','');
        actualParameters := MyConf.readstring('Calls', 'java_params','');
        actualDir        := MyConf.readstring('Calls', 'java_dir','');
      End
      Else If (linguaggio=glPascal) Then Begin
        //compiliamo in linguaggio pascal
        actualCompiler   := MyConf.readstring('Calls', 'pascal_compiler','');
        actualParameters := MyConf.readstring('Calls', 'pascal_params','');
        actualDir        := MyConf.readstring('Calls', 'pascal_dir','');
      End
      Else If (linguaggio=glCpp) Then Begin
        //compiliamo in linguaggio c
        actualCompiler   := MyConf.readstring('Calls', 'c_compiler','');
        actualParameters := MyConf.readstring('Calls', 'c_params','');
        actualDir        := MyConf.readstring('Calls', 'c_dir','');
      End
      Else If ((linguaggio=glHtml)Or(linguaggio=glPhp)Or(linguaggio=glXml)) Then Begin
        // apriamo col browser il nostro file php o html o xml
        actualCompiler   := NomeFile;
        actualParameters := '';
        actualDir        := '%FileDir';
      End
      Else If (linguaggio=glSql) Then Begin
        //lanciamo il motore SQL
        actualCompiler   := MyConf.readstring('Calls', 'sql_engine','');
        actualParameters := MyConf.readstring('Calls', 'sql_params','');
        actualDir        := MyConf.readstring('Calls', 'sql_dir','');
      End
      Else If (linguaggio=glBasic) Then Begin
        //compiliamo in linguaggio basic
        actualCompiler   := MyConf.readstring('Calls', 'basic_compiler','');
        actualParameters := MyConf.readstring('Calls', 'basic_params','');
        actualDir        := MyConf.readstring('Calls', 'basic_dir','');
      End
      //Else If (linguaggio=glCs) Then Begin
      //  //compiliamo in c#
      //  actualCompiler   := MyConf.readstring('Calls', 'csharp_compiler','');
      //  actualParameters := MyConf.readstring('Calls', 'csharp_params','');
      //  actualDir        := MyConf.readstring('Calls', 'csharp_dir','');
      //End
      Else If (linguaggio=glPython) Then Begin
        // lanciamo l'interprete python
        actualCompiler   := MyConf.readstring('Calls', 'python_engine','');
        actualParameters := MyConf.readstring('Calls', 'python_params','');
        actualDir        := MyConf.readstring('Calls', 'python_dir','');
      End;
    Finally
      myConf.Free();
    end;
  end
  else begin  //gestisco il fatto che non ci sia il file di configurazione!
  end;
  // lancio la chiamata
  If (ActualCompiler<>'') Then Begin
    ActualFileDirectory := extractfilepath(NomeFile);
    ActualParameters := StringReplace(ActualParameters, '%FILENAME', NomeFile, [rfReplaceAll]);
    ActualParameters := StringReplace(ActualParameters, '%FILEDIR', NomeFile, [rfReplaceAll]);
    ActualDir := StringReplace(ActualDir, '%FILENAME', ActualFileDirectory, [rfReplaceAll]);
    ActualDir := StringReplace(ActualDir, '%FILEDIR', ActualFileDirectory, [rfReplaceAll]);
     OpenDocument(PChar(ActualCompiler)); { *Converted from ShellExecute* }
  End
  Else
    ShowMessage(lingua.S_Alert_Compiler);
End;

Procedure TEditorMainForm.synedit1Click(Sender: TObject);
Begin
  StatusBar1.Panels[0].Text := lingua.S_Row+' '+IntTOStr(synedit1.CaretY);
  StatusBar1.Panels[1].Text := lingua.S_Col+' '+IntTOStr(synedit1.CaretX);
End;

Procedure TEditorMainForm.StrumentiEditaConfigurazioneExecute(Sender: TObject);
Var dlg: TConfigurationForm;
Begin
  dlg := TConfigurationForm.create(self);
  Try
    dlg.SetLocale(lingua);  // localization

    If linguaggio=glCpp Then
      dlg.MyPageControl.ActivePage:=dlg.TabCpp
    Else If linguaggio=glPascal Then
      dlg.MyPageControl.ActivePage:=dlg.TabPascal
    Else If linguaggio=glSql Then
      dlg.MyPageControl.ActivePage:=dlg.TabSql
    Else If linguaggio=glJava Then
      dlg.MyPageControl.ActivePage:=dlg.TabJava
    Else If linguaggio=glBasic Then
      dlg.MyPageControl.ActivePage:=dlg.TabBasic
    //Else If linguaggio=glCs Then
    //  dlg.MyPageControl.ActivePage:=dlg.TabCs
    Else If linguaggio=glPython Then
      dlg.MyPageControl.ActivePage:=dlg.TabPython
    Else
      dlg.MyPageControl.ActivePage:=dlg.TabCpp;

    //dlg.Position := poDesktopCenter;
    dlg.showmodal();
    //If dlg.showmodal()= mrOk Then
    //  LoadCallConf;
  Finally
    dlg.free;
  End;
End;

Procedure TEditorMainForm.ReplaceDialog1Find(Sender: TObject);
Var opzioni : set Of TSynSearchOption;
Begin
  opzioni := [];
  If frMatchCase  In ReplaceDialog1.options    Then
    opzioni := opzioni + [ssoMatchCase];

  If frWholeWord  In ReplaceDialog1.options    Then
    opzioni := opzioni + [ssoWholeWord];

  synedit1.SearchReplace(ReplaceDialog1.FindText,'',opzioni);
End;

Procedure TEditorMainForm.ReplaceDialog1Replace(Sender: TObject);
Var opzioni : set Of TSynSearchOption;
Begin
  If frReplaceAll In ReplaceDialog1.options    Then
    opzioni := [ssoReplaceAll ]
  Else
    opzioni := [ssoReplace];

  If frMatchCase  In ReplaceDialog1.options    Then
    opzioni := opzioni + [ssoMatchCase];

  If frWholeWord  In ReplaceDialog1.options    Then
    opzioni := opzioni + [ssoWholeWord];

  synedit1.SearchReplace(ReplaceDialog1.FindText,replaceDialog1.ReplaceText,opzioni);
End;

Procedure TEditorMainForm.EditSostituisciExecute(Sender: TObject);
Begin
  replacedialog1.FindText := synedit1.SelText;
  replacedialog1.Execute();
End;

Procedure TEditorMainForm.CheckBox1Click(Sender: TObject);
Begin
  If CheckBox1.Down=true Then Begin
    synedit1.ReadOnly    := true;
    checkbox1.ImageIndex := 18;
    EditCRLF_CR.Enabled  := False;
    EditCRLF_LF.Enabled  := False;
    EditCRLF.Enabled     := False;
    EditComment.Enabled  := False;
    EditUncomment.Enabled:= False;
    formattaxml1.Enabled := False;
  End
  Else Begin
    synedit1.ReadOnly    := false;
    checkbox1.ImageIndex := 27;
    EditCRLF_CR.Enabled  := True;
    EditCRLF_LF.Enabled  := True;
    EditCRLF.Enabled     := True;
    EditComment.Enabled  := True;
    EditUncomment.Enabled:= True;
    formattaxml1.Enabled := True;
  End
End;

procedure TEditorMainForm.CleanupSnippetExecute(Sender: TObject);
var snIniFilename:string;
    snIni:TInifile;
begin
  if ((linguaggio<>glText) and (linguaggio<>glXml)) then begin
      // adesso devo verificare che...
      if (MessageDlg(lingua.S_Alert_RemoveAllSnippet,mtCustom,[mbOk, mbNo],0)=mrOk) then begin
        if(directoryexists(cfgdir)) then begin
          snIniFilename:=cfgdir+'\snippets.ini';
          snIni := TIniFile.Create(snIniFilename);
          try
            snini.EraseSection(inttostr(ord(linguaggio)));
          Finally
            snIni.Free();
          end;
        end;
      end;
  end;
end;

Procedure TEditorMainForm.Custom1Click(Sender: TObject);
Begin
  If customthemeyetselected Then Begin
    // è già stato selezionato...
    theme := gtCustom;
    darkcol := CustomThemeDarkCol;
    lightcol := CustomThemeLightCol;
    setcolors;
    UnsetAllThemeImages();
    custom1.ImageIndex := 1;
  End
  Else Begin
    ModificaPersonalizzato1Click(Sender);
  End;
End;

Procedure TEditorMainForm.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
  SpeechDestruction;
End;

Procedure TEditorMainForm.SpeechCreation;
Begin
  inglese := TEnglishConstContainer.create;
  italiano := TItalianConstContainer.create;
End;

Procedure TEditorMainForm.SpeechDestruction;
Begin
  lingua := Nil;
  inglese.Free;
  italiano.Free;
End;

Procedure TEditorMainForm.GoToEditorRow;
Var opzioni: TSynSearchOptions;
    indice: Integer;
    rigaricerca: string;
    rigaselezionata: Integer;
Begin
  indice := searchresultList.CaretPos.Y;
  rigaricerca := searchresultList.Lines[indice];
  indice := pos('::', rigaricerca);
  rigaselezionata := strtoint(trim(copy(rigaricerca, 0, indice - 1)));
  synedit1.CaretY:=rigaselezionata;
  //synedit1.GotoLineAndCenter(rigaselezionata);
  synedit1.caretX := 0;
  opzioni := [];
  If cbCaseSensitive.Checked Then
    opzioni := opzioni + [ssoMatchCase];
  If cbWholeWord.Checked Then
    opzioni := opzioni + [ssoWholeWord];
  synedit1.SearchReplace(trim(ExtendedSearchEdit.text), '', opzioni);
  synedit1Click(self);
  // questo mette a posto la riga
  synedit1.SetFocus;
End;

Procedure TEditorMainForm.FormCloseQuery(Sender: TObject; Var CanClose: Boolean);
Var myconf: TIniFile;
Begin
  // salvo lo schema colore e le variabili d'ambiente
  if(directoryexists(cfgdir)) then begin
    MyConf := TIniFile.Create(cfgfile);
    With MyConf Do Begin
      WriteString('Theme', 'theme_name', GetThemeName(theme));
      If theme=gtCustom Then Begin
        WriteString('Theme', 'dark_color', CustomThemeDarkCol);
        WriteString('Theme', 'light_color', CustomThemeLightCol);
      End;
      //If synedit1.WordWrap Then
      //  WriteString('Environment', 'word_wrap', 'true')
      //Else
      //  WriteString('Environment', 'word_wrap', 'false');
      WriteString('Environment','localization',LocaleCode);
      If EditorMainForm.WindowState=wsMaximized Then
        WriteString('Environment', 'win_state', 'maximized')
      Else Begin
        WriteString('Environment', 'win_state', 'normalwindow');
        writeinteger('Environment', 'left_corner',EditorMainForm.Left);
        writeinteger('Environment', 'top_corner',EditorMainForm.Top);
        writeinteger('Environment', 'win_width',EditorMainForm.Width);
        writeinteger('Environment', 'win_height',EditorMainForm.Height);
      End;
    End;
    myconf.Free;
  end;
  if (CanSafelyCleanupCurrentDocument) then begin
    // If (salvato = FALSE)And(trim(synedit1.Text)>'') Then
    //   FileSalvaConNomeExecute(self);
    canclose := true;
  end
  else CanClose:=False;
End;

Procedure TEditorMainForm.synedit1Change(Sender: TObject);
Begin
  If salvato=true Then Begin
    salvato := false;
    If Not FileSalva.Enabled Then Begin
      FileSalva.Enabled := true;
      Application.ProcessMessages;// aggiorna lo schermo
    End;
  End;
  StatusBar1.Panels[0].Text := lingua.S_Row+' '+IntTOStr(synedit1.CaretY);
  StatusBar1.Panels[1].Text := lingua.S_Col+' '+IntTOStr(synedit1.CaretX);
  synedit1.Refresh;  // hack for addressing a problem due to a bug on synedit
End;

procedure TEditorMainForm.synedit1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Case Key of
    VK_LEFT : StatusBar1.Panels[1].Text := lingua.S_Col+' '+IntTOStr(synedit1.CaretX);
    VK_RIGHT : StatusBar1.Panels[1].Text := lingua.S_Col+' '+IntTOStr(synedit1.CaretX);
    VK_UP : StatusBar1.Panels[0].Text := lingua.S_Row+' '+IntTOStr(synedit1.CaretY);
    VK_DOWN :  StatusBar1.Panels[0].Text := lingua.S_Row+' '+IntTOStr(synedit1.CaretY);
 End; 

end;

Procedure TEditorMainForm.synedit1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Begin
  // aggiorno la riga
 // StatusBar1.Panels[0].Text := lingua.S_Row+' '+IntTOStr(synedit1.CaretY+1);
End;

Procedure TEditorMainForm.LoadTotalConf();
var myconf: TIniFile;
    windowstate, MyWordWrap: string;
    formleft, formtop, formwidth, formheight: integer;
Begin
  if (fileexists(cfgfile) or directoryexists(cfgdir)) then begin
    MyConf := TIniFile.Create(cfgfile);
    With MyConf Do Begin
      (*
      // c / c++
      compilatore_c := readstring('Calls', 'c_compiler','');
      parametri_c := readstring('Calls', 'c_params','');
      help_c := readstring('Calls', 'c_help','');
      // pascal
      compilatore_pascal := readstring('Calls', 'pascal_compiler','');
      parametri_pascal := readstring('Calls', 'pascal_params','');
      help_pascal := readstring('Calls', 'pascal_help','');
      // sql
      sql_engine := readstring('Calls', 'sql_engine','');
      parametri_sql := readstring('Calls', 'sql_params','');
      help_sql := readstring('Calls', 'sql_help','');
      // java
      compilatore_java := read string('Calls', 'java_compiler','');
      parametri_java := readstring('Calls', 'java_params','');
      help_java := readstring('Calls', 'java_help','');
      // basic
      compilatore_basic := readstring('Calls', 'basic_compiler','');
      parametri_basic := readstring('Calls', 'basic_params','');
      help_basic := readstring('Calls', 'basic_help','');
      // c#
      compilatore_csharp := readstring('Calls', 'csharp_compiler','');
      parametri_csharp := readstring('Calls', 'csharp_params','');
      help_csharp := readstring('Calls', 'csharp_help','');
      *)
      //////////////////// colori ////////////
      theme := GetThemeFromString(readstring('Theme','theme_name','Default'));
      CustomThemeDarkCol := readstring('Theme', 'dark_color','$00888888');
      CustomThemeLightCol := readstring('Theme', 'light_color','$00DDDDDD');
      If CustomThemeDarkCol='$00888888' Then
        CustomThemeYetSelected := false
      Else
        CustomThemeYetSelected := true;


      //////// localization ////////////////////
      LocaleCode := readstring('Environment', 'localization','EN');

      // environment
      MyWordWrap := readstring('Environment', 'word_wrap','true');
      If MyWordWrap='false' Then Begin
        //synedit1.WordWrap := false;
        //editacapo.Caption:= lingua.S_Edit_WWrap;
        //editacapo.Hint:= lingua.S_Edit_WWrap_Hint;
        //editacapo.ImageIndex:=20;
      End
      Else Begin
        //synedit1.WordWrap := true;
        //editacapo.Caption:= lingua.S_Edit_NotWWrap;
        //editacapo.Hint:= lingua.S_Edit_NotWWrap_Hint;
        //editacapo.ImageIndex:=21;
      End;

      // font
      synedit1.Font.Name := readstring('Font', 'name', 'Courier New');
      synedit1.Font.Size := ReadInteger('Font','size',11) ;
      blackfont := ReadBool('Font','black',true);
      
      if blackfont then begin
        synedit1.Font.Color:=clBlack;
        //synedit1.Gutter.Font.Color:=clBlack;
        //synedit1.Gutter.Color:=clBlack;

      end
      else begin
        synedit1.Font.Color:=clWhite;
        //synedit1.Gutter.Font.Color:=clWhite;    
        //synedit1.Gutter.Color:=clWhite;
      end;

      windowstate := readstring('Environment', 'win_state','normalwindow');
      If windowstate='maximized' Then
        EditorMainForm.WindowState := wsMaximized
      Else Begin
        formleft := readinteger('Environment', 'left_corner',200);
        formtop := readinteger('Environment', 'top_corner',100);
        formwidth := readinteger('Environment', 'win_width',600);
        formheight := readinteger('Environment', 'win_height',550);

       if (screen.monitorcount=1) then begin
          if (formleft<0) or (formleft > (screen.Monitors[0].Width)) then formleft:= 20;
          if formtop<0 then formtop:= 20;
        end;

        EditorMainForm.Left := formleft;
        EditorMainForm.Top := formtop;
        EditorMainForm.Width := formwidth;
        EditorMainForm.Height := formheight;
      End;
    End;
    MyConf.Free;
  end
  else begin
    CustomThemeDarkCol :='$00888888';
    CustomThemeLightCol := '$00DDDDDD';
    theme := gtDefault;
    CustomThemeYetSelected := false;
    LocaleCode := 'EN';
    //synedit1.WordWrap := false;
    EditorMainForm.Left := 200;
    EditorMainForm.Top := 100;
    EditorMainForm.Width := 600;
    EditorMainForm.Height := 550;
  end;
End;

procedure TEditorMainForm.SynProposalCodeCompletion(var Value: string;
  SourceValue: string; var SourceStart, SourceEnd: TPoint; KeyChar: TUTF8Char;
  Shift: TShiftState);
begin

end;

procedure TEditorMainForm.ToolBar1Click(Sender: TObject);
begin

end;

Procedure TEditorMainForm.SearchBtnClick(Sender: TObject);
Var opzioni                   : set Of TSynSearchOption;
    posizione                 : TPoint;
    NumRighe, Indice, trovati : integer;
    numeroriga                : string;
Begin
  opzioni := [];
  If cbCaseSensitive.Checked Then
    opzioni := opzioni + [ssoMatchCase];
  If cbWholeWord.Checked  Then
    opzioni := opzioni + [ssoWholeWord];
  posizione := synedit1.CaretXY;
  synedit1.CaretX := 0;
  synedit1.CaretY := 0;
  NumRighe := synedit1.Lines.Count;
  Indice := 1;
  trovati := 0;
  SearchResultList.Clear;
  While indice<=NumRighe Do Begin
    If synedit1.SearchReplace(trim(ExtendedSearchEdit.text),'',opzioni)>0 Then Begin
      numeroriga := inttostr(synedit1.caretY)+StringOfChar(' ',5-length(inttostr(synedit1.
                      caretY
                      ))) +':: ';
      trovati := trovati+1;
      SearchResultList.Lines.Add(numeroriga+trim(synedit1.LineText));
      indice := synedit1.caretY;
    End
    Else
      break;
  End;
  synedit1.CaretXY := posizione;
  //synedit1.GotoLineAndCenter(posizione.Line);
  SearchresultList.Text := trim(SearchresultList.Text);
  SearchResultLabel.Caption := lingua.S_NFound + inttostr(trovati);
  Synedit1.SetFocus;
End;

Procedure TEditorMainForm.SearchPanelCanResize(Sender: TObject; Var NewWidth,
                                               NewHeight: Integer; Var Resize: Boolean);
Begin
  Resize := true;
End;

Procedure TEditorMainForm.SearchPanelResize(Sender: TObject);
Begin
  (*
  If SearchOpened Then Begin
    CloseSearchMiniBtn.Left := SearchPanel.Width - 23;
    Searchresultlist.width:= SearchPanel.Width - 220;
  end;
  *)
End;

Procedure TEditorMainForm.SearchResultListClick(Sender: TObject);
Begin
  If trim(searchresultList.Text)>'' Then Begin
    SearchListYposition := searchresultList.CaretPos.Y;
    SearchListXposition := searchresultList.CaretPos.X;
    searchresultList.SelStart := searchresultList.SelStart-SearchListXposition;
    SearchListSelStart :=  searchresultList.SelStart;
    searchresultList.SelLength := pos('::',searchresultlist.Lines.Strings[SearchListYposition]);
    (*
    indice := searchresultList.CaretPos.Y;
    spaziatura :=searchresultList.CaretPos.X;
    searchresultList.SelStart:= searchresultList.SelStart-spaziatura;
    searchresultList.SelLength:=length(searchResultList.Lines[indice]);
    *)
  End;
End;

Procedure TEditorMainForm.SearchResultListDblClick(Sender: TObject);
Begin
  If trim(searchresultList.Text)>'' Then Begin
    GoToEditorRow;
    searchresultList.SelStart := SearchListSelStart;
    searchresultList.SelLength := pos('::',searchresultlist.Lines.Strings[SearchListYposition]);
  End;
End;

Procedure TEditorMainForm.SearchResultListMouseEnter(Sender: TObject);
Begin
  If (trim(searchresultList.Text)>'') Then
    searchresultList.cursor :=  crHandPoint
  Else
    searchresultList.cursor :=  crArrow;
End;

Procedure TEditorMainForm.SetColors();
Begin
  synedit1.Color := tcolor(strtoint(lightcol));
  //synedit1.Gutter.Color := tcolor(strtoint(darkcol));
  //toolbar1.Color := tcolor(strtoint(darkcol));
  searchpanel.Color := tcolor(strtoint(darkcol));
  searchresultlist.Color :=  tcolor(strtoint(lightcol));
  ExtendedSearchEdit.Color := tcolor(strtoint(lightcol));
  statusbar1.Color := tcolor(strtoint(lightcol));
  mainPanel.Color := tcolor(strtoint(darkcol));
End;

procedure TEditorMainForm.SetFontExecute(Sender: TObject);
var myConf:TIniFile;
begin
  FontDialog1.Font := synedit1.Font;
  if FontDialog1.Execute then begin
      synedit1.Font := FontDialog1.Font;
      MyConf := TIniFile.Create(cfgfile);
    Try
      MyConf.writeinteger('Font', 'size',FontDialog1.Font.Size);
      MyConf.WriteString('Font', 'name', FontDialog1.Font.Name);
    Finally
      MyConf.Free;
    End;
  end;
end;

Procedure TEditorMainForm.EditRedoExecute(Sender: TObject);
Begin
  Synedit1.Redo;
End;

procedure TEditorMainForm.EditUncommentExecute(Sender: TObject);
var riga:string;
    indice,indice2:Integer;
    I:Integer; //,posit: Integer;
    blockstart,blockend:TPoint;
    succeeded:Boolean;
begin    (*
  if commentPattern2='' then begin
    // prima tipologia: rimuovo il comment pattern in testa
    if (synedit1.SelText>'') then begin
      blockstart:=synedit1.BlockBegin;
      blockend:=synedit1.BlockEnd;
      indice:=synedit1.BlockBegin.Line;
      indice2 :=synedit1.BlockEnd.Line;
      if indice2>indice then begin
        // ho del testo selezionato (più righe)
        for I := (indice-1) to (indice2-1) do begin
          if  (StartsText(commentPattern, trim(synedit1.Lines[I]))) then begin
            //posit := Pos(commentPattern, synedit1.Lines[I]);
             riga :=  StringReplace(synedit1.Lines[I], commentPattern, '', []);
            //riga := Delete(synedit1.Lines[I],Posit,Length(commentPattern));
            //riga:=StringReplace(Trim(synedit1.Lines[I]),commentPattern,'',[rfIgnoreCase]);
            synedit1.Lines[I]:=riga;
          end;
        end;
      end
      else begin
        // ho del testo selezionato (una sola riga)
        //indice:=synedit1.CaretY-1;
        if (StartsText(commentPattern, Trim(synedit1.Lines[indice-1]))) then begin
             riga :=  StringReplace(synedit1.Lines[indice-1], commentPattern, '', []);
//            posit := Pos(commentPattern, synedit1.Lines[indice-1]);
//            riga := Delete( synedit1.Lines[indice-1],Posit,Length(commentPattern));
            //  riga:=StringReplace(Trim(synedit1.Lines[indice-1]),commentPattern,'',[rfIgnoreCase]);
            synedit1.Lines[indice-1]:=riga;
        end;
      end;
      synedit1.Refresh;
      synedit1.BlockBegin := blockstart;
      synedit1.BlockEnd := blockend;
    end
    else begin
      // non ho del testo selezionato: prendo la riga in cui ho il cursore
      indice:=synedit1.CaretY-1;
      if (StartsText(commentPattern, Trim(synedit1.Lines[indice]))) then begin
         riga :=  StringReplace(synedit1.Lines[indice], commentPattern, '', []);
         //posit := Pos(commentPattern, synedit1.Lines[indice]);
         //riga := Delete( synedit1.Lines[indice],Posit,Length(commentPattern));
         //riga:=StringReplace(Trim(synedit1.Lines[indice]),commentPattern,'',[rfIgnoreCase]);
        synedit1.Lines[indice]:=riga;
      end;
      synedit1.Refresh;
    end;
  end
  else begin
    // seconda tipologia: rimuovo il primo comment pattern in testa ed il secondo in coda
    if (synedit1.SelText>'') then begin
      // HO DEL TESTO SELEZIONATO
      blockstart:=synedit1.BlockBegin;
      blockend:=synedit1.BlockEnd;
      indice:=synedit1.BlockBegin.Line;
      indice2 :=synedit1.BlockEnd.Line;
      if indice2>indice then begin
        // ho del testo selezionato (più righe)
        succeeded:=False;
        for I := indice-1 downto 0 do begin
          if (StartsText(commentPattern, Trim(synedit1.Lines[I]))) then begin
            riga:=StringReplace(Trim(synedit1.Lines[I]),commentPattern,'',[rfIgnoreCase]);
            synedit1.Lines[I]:=riga;
            succeeded:=True;
            Break;
          end;
        end;

//          if (StartsText(commentPattern, Trim(synedit1.Lines[indice-1]))) then begin
//              riga:=StringReplace(Trim(synedit1.Lines[indice-1]),commentPattern,'',[rfIgnoreCase]);
//              synedit1.Lines[indice-1]:=riga;
//          end;
        if succeeded then for I := indice2-1 to SynEdit1.lines.Count-1 do  begin
          if (EndsText(commentPattern2, Trim(synedit1.Lines[I]))) then begin
            riga:=StringReplace(Trim(synedit1.Lines[I]),commentPattern2,'',[rfIgnoreCase]);
            synedit1.Lines[I]:=riga;
            Break;
          end;
        end;

//          if (EndsText(commentPattern2, Trim(synedit1.Lines[indice2-1]))) then begin
//              riga:=StringReplace(Trim(synedit1.Lines[indice2-1]),commentPattern2,'',[rfIgnoreCase]);
//              synedit1.Lines[indice2-1]:=riga;
//          end;
      end
      else begin
        // ho del testo selezionato (una sola riga)
        succeeded:=false;
        for I := indice-1 downto 0 do begin
          if (StartsText(commentPattern, Trim(synedit1.Lines[I]))) then begin
            riga:=StringReplace(Trim(synedit1.Lines[I]),commentPattern,'',[rfIgnoreCase]);
            synedit1.Lines[I]:=riga;
            succeeded:=True;
            Break;
          end;
        end;
        if succeeded then for I := indice-1 to SynEdit1.lines.Count-1 do  begin
          if (EndsText(commentPattern2, Trim(synedit1.Lines[I]))) then begin
            riga:=StringReplace(Trim(synedit1.Lines[I]),commentPattern2,'',[rfIgnoreCase]);
            synedit1.Lines[I]:=riga;
            Break;
          end;
        end;
      end;
      synedit1.Refresh;
      synedit1.BlockBegin := blockstart;
      synedit1.BlockEnd := blockend;
    end
    else begin
      // non ho del testo selezionato: prendo la riga in cui ho il cursore
      succeeded:=false;
      indice:=synedit1.CaretY-1;
      for I := indice downto 0 do begin
        if (StartsText(commentPattern, Trim(synedit1.Lines[I]))) then begin
          riga:=StringReplace(Trim(synedit1.Lines[I]),commentPattern,'',[rfIgnoreCase]);
          synedit1.Lines[I]:=riga;   
          succeeded:=True;
          Break;
        end;
      end;
      if succeeded then for I := indice to SynEdit1.lines.Count-1 do  begin
        if (EndsText(commentPattern2, Trim(synedit1.Lines[I]))) then begin
          riga:=StringReplace(Trim(synedit1.Lines[I]),commentPattern2,'',[rfIgnoreCase]);
          synedit1.Lines[I]:=riga;
          Break;
        end;
      end;     
      synedit1.Refresh;
    end;
  end;     *)
end;

Procedure TEditorMainForm.EditUndoExecute(Sender: TObject);
Begin
  Synedit1.Undo;
End;

Procedure TEditorMainForm.ExtendedSearchEditKeyPress(Sender: TObject; Var Key: Char);
Begin
  If key=#13 Then
    SearchBtnClick(self);
End;

Procedure TEditorMainForm.EditACapoExecute(Sender: TObject);
Begin
  //If synedit1.WordWrap Then Begin
  //  synedit1.WordWrap := false;
  //  editacapo.Caption := lingua.S_Edit_WWrap;
  //  editacapo.Hint := lingua.S_Edit_WWrap_Hint;
  //  editacapo.ImageIndex := 0;
  //End
  //Else Begin
  //  synedit1.WordWrap := true;
  //  editacapo.Caption := lingua.S_Edit_NotWWrap;
  //  editacapo.Hint := lingua.S_Edit_NotWWrap_Hint;
  //  editacapo.ImageIndex := 7;
  //End;
  application.processmessages;
End;

Procedure TEditorMainForm.EditCercaExecute(Sender: TObject);
Begin
  finddialog1.FindText := synedit1.SelText;
  finddialog1.execute();
End;

procedure TEditorMainForm.EditCommentExecute(Sender: TObject);
var riga:string;
    indice,indice2:Integer;   
    blockstart,blockend:TPoint;
    I: Integer;
begin            (*
  if commentPattern2='' then begin
    // prima tipologia: metto il comment pattern in testa
    if (synedit1.SelText>'') then begin
      blockstart:=synedit1.BlockBegin;
      blockend:=synedit1.BlockEnd;
      indice  := synedit1.BlockBegin.Line;
      indice2 := synedit1.BlockEnd.Line;
      if indice2>indice then begin
        // ho del testo selezionato (più righe)
        for I := (indice-1) to (indice2-1) do begin
          if Length(Trim(synedit1.Lines[I]))>0 then begin
             riga:=commentPattern+synedit1.Lines[I];
             synedit1.Lines[I]:=riga;
          end;
        end;
      end
      else begin
        // ho del testo selezionato (una sola riga)
        //indice:=synedit1.CaretY-1;
        riga:=commentPattern+synedit1.Lines[indice-1];
        synedit1.Lines[indice-1]:=riga;
      end;
      synedit1.BlockBegin := blockstart;
      synedit1.BlockEnd := blockend;
    end
    else begin
      // non ho del testo selezionato: prendo la riga in cui ho il cursore
      indice:=synedit1.CaretY-1;
      riga:=commentPattern+synedit1.Lines[indice];
      synedit1.Lines[indice]:=riga;
      synedit1.Refresh;
    end;
  end
  else begin
    // seconda tipologia: metto il primo comment pattern in testa  ed il secondo in coda
    if (synedit1.SelText>'') then begin  
      blockstart:=synedit1.BlockBegin;
      blockend:=synedit1.BlockEnd;
      indice:=synedit1.BlockBegin.Line;
      indice2 :=synedit1.BlockEnd.Line;

      if (StartsText(commentPattern, Trim(synedit1.Lines[indice-1]))) or (EndsText(commentPattern2, Trim(synedit1.Lines[indice2-1]))) then begin
        // non faccio niente: la zona è già commentata!!
      end
      else begin
        if indice2>indice then begin
          // ho del testo selezionato (più righe)
          riga:=commentPattern+synedit1.Lines[indice-1];
          synedit1.Lines[indice-1]:=riga;

          riga:=synedit1.Lines[indice2-1]+commentPattern2;
          synedit1.Lines[indice2-1]:=riga;
        end
        else begin
          // ho del testo selezionato (una sola riga)
          //indice:=synedit1.CaretY-1;
          if Length(Trim(synedit1.Lines[indice-1]))>0 then begin
            riga:=commentPattern+synedit1.Lines[indice-1]+commentPattern2;
            synedit1.Lines[indice-1]:=riga;
          end;
        end;        
        synedit1.Refresh;
        synedit1.BlockBegin := blockstart;
        synedit1.BlockEnd := blockend;
      end;
    end
    else begin
      // non ho del testo selezionato: prendo la riga in cui ho il cursore

      indice:=synedit1.CaretY-1;
      if (StartsText(commentPattern, Trim(synedit1.Lines[indice]))) or (EndsText(commentPattern2, Trim(synedit1.Lines[indice]))) then begin
        // non faccio niente: la zona è già commentata!!
      end
      else begin
        if Length(Trim(synedit1.Lines[indice]))>0 then begin
          riga:=commentPattern+synedit1.Lines[indice]+commentPattern2;
          synedit1.Lines[indice]:=riga;
          synedit1.Refresh;
        end;
      end;
    end;
  end;     
 // synedit1.Refresh;
 *)
end;

procedure TEditorMainForm.EditCRLFExecute(Sender: TObject);
begin
  synedit1.Lines.LineBreak:=#13#10;
  synedit1.Text := AdjustLineBreaks(synedit1.Text);
  //synedit1.Lines.LineBreak:=#13#10;
  synedit1Change(nil);
end;

procedure TEditorMainForm.EditCRLF_CRExecute(Sender: TObject);
var bigstring:string;
//jj,ii,kk:integer  ;
begin
   bigstring  := ReplaceStr(synedit1.Lines.Text, #13#10, #13);
   bigstring  := ReplaceStr(bigstring, #10, #13);
//  jj:=Pos(#13#10,bigstring);
//  ii:=Pos(#13,bigstring);
//  kk:=Pos(  #13#10,synedit1.Lines.Text);
//  ShowMessage('CRLF in '+inttostr(jj)+' - CR in '+inttostr(ii)+' - CRLF orig. in '+inttostr(kk) );
  synedit1.Lines.LineBreak:=#13;
  synedit1.Lines.Text:= bigstring;
  //synedit1.Text := ReplaceStr(synedit1.Text, #13#10, #13);//, [rfReplaceAll]);
  //synedit1.Text := ReplaceStr(synedit1.Text, #10, #13);//, [rfReplaceAll]);
  //synedit1.Lines.LineBreak:=#13;
  synedit1Change(nil);
end;

procedure TEditorMainForm.EditCRLF_LFExecute(Sender: TObject);
var bigstring:string;
begin
  bigstring  := ReplaceStr(synedit1.Text, #13#10, #10); 
  bigstring  := ReplaceStr(bigstring, #13, #10);
  synedit1.Lines.LineBreak:=#10;
  synedit1.Lines.Text:= bigstring;
  //synedit1.Text := ReplaceStr(synedit1.Text, #13#10, #10);//, [rfReplaceAll]);
  //synedit1.Text := ReplaceStr(synedit1.Text, #13, #10);//, [rfReplaceAll]);
  synedit1Change(nil);
end;

Procedure TEditorMainForm.EditExtendedSearchExecute(Sender: TObject);
Begin
  SearchOpened := Not SearchOpened;
  If SearchOpened Then Begin
    // open the search panel
    SearchResultList.Clear;
    If trim(synedit1.SelText)>'' Then
      ExtendedSearchEdit.Text := synedit1.SelText
    Else
      ExtendedSearchEdit.Clear;
    SearchPanelResize(self);
    SearchPanel.Color := tcolor(strtoint(darkcol));
    SearchResultLabel.Caption := lingua.S_ExtSearch;
    SearchPanel.Visible := true;
    Splitter1.Align := alTop;
    Application.ProcessMessages;
    Splitter1.Align := alBottom;
    Splitter1.Enabled := true;
    Application.ProcessMessages;
  End
  Else Begin
    SearchPanel.Visible := false;
    Splitter1.Enabled := false;
  End;
  If searchopened Then
    extendedsearchedit.SetFocus;
End;

Procedure TEditorMainForm.EditSelezionaTuttoExecute(Sender: TObject);
Begin
  synedit1.SelectAll;
End;

Procedure TEditorMainForm.FindDialog1Find(Sender: TObject);
Var opzioni : set Of TSynSearchOption;
Begin
  opzioni := [];
  If frdown In FindDialog1.options    Then
    opzioni := opzioni + []
  Else
    opzioni := opzioni + [ssoBackwards];
  If frMatchCase  In FindDialog1.options Then
    opzioni := opzioni + [ssoMatchCase];
  If frWholeWord  In FindDialog1.options Then
    opzioni := opzioni + [ssoWholeWord];
  synedit1.SearchReplace(FindDialog1.FindText,'',opzioni);
End;


procedure TEditorMainForm.actToggleFontColorExecute(Sender: TObject);
var MyConf : TIniFile;
begin
  if synedit1.font.Color=clWhite then   begin
    synedit1.font.Color:=clBlack;
    //synedit1.Gutter.Font.Color:=clBlack;
    BlackFont:=true;
  end
  else begin
    synedit1.font.Color:=clWhite;
    //synedit1.Gutter.Font.Color:=clWhite;
    BlackFont:=false;
  end;
     MyConf := TIniFile.Create(cfgfile);
    Try
      MyConf.WriteBool('Font', 'black', BlackFont);
    Finally
      MyConf.Free;
    End;
end;

procedure TEditorMainForm.AddSnippetExecute(Sender: TObject);
var original,snippet,visualized,snIniFilename,domandone:string;
    snIni:TInifile;
begin
  if ((synedit1.SelText>'') and (linguaggio<>glText) and (linguaggio<>glXml)) then begin
    original := trim(synedit1.seltext);
    snippet := StringReplace(original,#10,'',[rfReplaceAll]);
    snippet := StringReplace(snippet,#13,'§NN',[rfReplaceAll]);
    while (pos('§NN ',snippet)>0) do
      snippet := StringReplace(snippet,'§NN ','§NN',[rfReplaceAll]);

    visualized := StringReplace(snippet,'§NN',' ',[rfReplaceAll]);
    if (length(visualized)>50) then
      visualized:=  leftstr(visualized,47)+'...';

    snippet := StringReplace(snippet,'=','§UU',[rfReplaceAll]);
    snippet := StringReplace(snippet,' ','§§§',[rfReplaceAll]);

    if (length(snippet)>150) then begin
       ShowMessage(lingua.S_Alert_SnippetTooBig);
    end
    else begin
      // adesso devo verificare che...
      domandone:=lingua.S_Alert_SnippetConfirm +visualized+'"?';
      if (MessageDlg(domandone,mtCustom,[mbOk, mbNo],0)=mrOk) then begin
        SynProposal.ItemList.Add(original);
        if(directoryexists(cfgdir)) then begin
          visualized := StringReplace(visualized,' ','§§§',[rfReplaceAll]);
          visualized := StringReplace(visualized,'=','§UU',[rfReplaceAll]);
          snIniFilename:=cfgdir+'\snippets.ini';
          snIni := TIniFile.Create(snIniFilename);
          try
            snIni.WriteString(inttostr(ord(linguaggio)),visualized,snippet);
          Finally
            snIni.Free();
          end;
        end;
      end;
    end;
  end;
end;

procedure TEditorMainForm.LoadSnippetForLanguage(const la:TGleditLanguage);
var visualized,snIniFilename,sectionName:string;
    snIni:TInifile;
    keyList:tStringList;
    //valueList:tStringList;
    i:integer;
    nome,valore:string;
begin
  if(directoryexists(cfgdir)) then begin
    snIniFilename:=cfgdir+'\snippets.ini';
    snIni := TIniFile.Create(snIniFilename);
    sectionName:=  inttostr(ord(la));
    try
      if(snIni.SectionExists(sectionName)) then begin
        keyList:=tstringList.create();
        snIni.ReadSection(sectionName, keyList);
        for I := 0 to keyList.Count - 1 do begin
          if (trim(keyList[I])<>'') then begin
            nome := StringReplace(keyList[I],'§§§',' ',[rfReplaceAll]);
            nome := trim(StringReplace(nome,'§UU','=',[rfReplaceAll]));
            valore := snIni.ReadString(sectionName,keyList[I],'');
            if (valore='') then valore:=nome;              
            valore := StringReplace(snIni.ReadString(sectionName,keyList[I],''),'§§§',' ',[rfReplaceAll]);
            valore := StringReplace(valore,'§UU','=',[rfReplaceAll]);
            valore := trim(StringReplace(valore,'§NN',#13#10,[rfReplaceAll]));
            synProposal.ItemList.Add(valore);
          end;
        end;
      end;
    Finally
      snIni.Free();
    end;
  end;
end;

Procedure TEditorMainForm.BitBtn1Click(Sender: TObject);
Begin
  searchpanel.Height := searchpanel.Height+2;
  application.processmessages;
End;

Procedure TEditorMainForm.Bosco1Click(Sender: TObject);
Begin
  darkcol := '$008BA993';
  lightcol := '$00BCCDC0';
  theme := gtBosco;
  SetColors;
  UnsetAllThemeImages();
  bosco1.ImageIndex := 1;
  //    personalizzato1.ImageIndex:=23;
End;

Procedure TEditorMainForm.Oceano1Click(Sender: TObject);
Begin
  darkcol := '$00CDBAA9';
  lightcol := '$00EAE2DB';
  theme := gtOceano;
  SetColors;
  UnsetAllThemeImages();
  oceano1.ImageIndex := 1;
  //    personalizzato1.ImageIndex:=23;
End;

procedure TEditorMainForm.opzionale1Click(Sender: TObject);
begin
//SynEditOptionsDialog1.
end;

Procedure TEditorMainForm.Default1Click(Sender: TObject);
Begin
  darkcol := '$00888888';
  lightcol := '$00DDDDDD';
  theme := gtDefault;
  SetColors;
  UnsetAllThemeImages();
  default1.ImageIndex := 1;
End;

Procedure TEditorMainForm.Sabbia1Click(Sender: TObject);
Begin
  darkcol := '$00A9D5E2';
  lightcol := '$00D9ECF2';
  theme := gtSabbia;
  SetColors;
  UnsetAllThemeImages();
  sabbia1.ImageIndex := 1;
End;

Procedure TEditorMainForm.Rosa1Click(Sender: TObject);
Begin
  darkcol := '$00BCBCDE';
  lightcol := '$00D5D5EA';
  theme := gtRosa;
  SetColors;
  UnsetAllThemeImages();
  rosa1.ImageIndex := 1;
  //personalizzato1.ImageIndex:=23;
End;

Procedure TEditorMainForm.Neve1Click(Sender: TObject);
Begin
  darkcol := '$00E8E8E8';
  lightcol := '$00FFFFFF';
  theme := gtNeve;
  SetColors;
  UnsetAllThemeImages();
  neve1.ImageIndex := 1;
End;

Procedure TEditorMainForm.ModificaPersonalizzato1Click(Sender: TObject);
Var scuro,chiaro  : integer;
    ros,gren,blu  : integer;
Begin
  If colordialog1.Execute Then Begin
    scuro := colordialog1.Color;
    ros := scuro And $000000ff;
    gren := scuro And $0000ff00;
    blu := scuro And $00ff0000;
    ros := ros+$3a;
    If ros>$ff Then ros := $ff;
    gren := gren+$3a00;
    If gren>$ff00 Then gren := $ff00;
    blu := blu+$3a0000;
    If blu>$ff0000 Then blu := $ff0000;
    chiaro := ros+gren+blu;
    darkcol := inttostr(scuro);
    lightcol := inttostr(chiaro);
    CustomThemeDarkCol := darkcol;
    CustomThemeLightCol := lightcol;
    theme := gtCustom;
    // rgbtocolor
    setcolors;
    UnsetAllThemeImages();
    custom1.ImageIndex := 1;
    CustomThemeYetSelected := true;
  End;
End;

Procedure TEditorMainForm.HelpCompilatoreExecute(Sender: TObject);
Var actualHelp  : string;
    myConf      : TIniFile;
Begin
  actualHelp := '';
   if (fileexists(cfgfile)) then begin
  MyConf := TIniFile.Create(cfgfile);
  Try
    // selezioniamo l'help relativo al linguaggio attuale
    If (linguaggio=glJava) Then Begin
      actualHelp := MyConf.readstring('Calls', 'java_help','');
    End
    Else If (linguaggio=glPascal) Then Begin
      actualHelp := MyConf.readstring('Calls', 'pascal_help','');
    End
    Else If (linguaggio=glCpp) Then Begin
      actualHelp := MyConf.readstring('Calls', 'c_help','');
    End
    Else If (linguaggio=glSql) Then Begin
      actualHelp := MyConf.readstring('Calls', 'sql_help','');
    End
    Else If (linguaggio=glBasic) Then Begin
      actualHelp := MyConf.readstring('Calls', 'basic_help','');
    End
    Else If (linguaggio=glPython) Then Begin
      actualHelp := MyConf.readstring('Calls', 'python_help','');
    End
    //Else If (linguaggio=glCs) Then Begin
    //  actualHelp := MyConf.readstring('Calls', 'csharp_help','');
    //End
    ;
  Finally
    myConf.free;
  End;
   end;
  // ora lanciamo l'help
  If (actualHelp<>'') Then Begin
     OpenDocument(PChar(actualHelp)); { *Converted from ShellExecute* }
  End
  Else
    ShowMessage( lingua.S_Alert_CompilerManual);
End;

Procedure TEditorMainForm.HelpHomePageExecute(Sender: TObject);
Var GLeDitorUrl: string;
Begin
  GLeDitorUrl := 'http://gleditor.sourceforge.net';
   OpenDocument(PChar(GLeDitorUrl)); { *Converted from ShellExecute* }
End;

Procedure TEditorMainForm.FormShow(Sender: TObject);
Begin
  synedit1.SetFocus;
End;

Procedure TEditorMainForm.SetLocale(locale: TLocalizedConstContainer);
Begin
  statusbar1.Panels[0].Text := locale.S_Row;
  statusbar1.Panels[1].Text := locale.S_Col;
  //menù
  MnuFile.Caption :=  locale.S_File_Title;
  MnuEdit.Caption :=  locale.S_Edit_Title;
  MnuTools.Caption :=  locale.S_Tools_Title;
  if(syntaxLabel.Caption>'')  then
     MnuSyntax.Caption :=  locale.S_Syntax_Title+' ('+syntaxlabel.Caption+')'
  else
    MnuSyntax.Caption :=  locale.S_Syntax_Title;
  MnuTheme.Caption :=  locale.S_Theme_Title;
  MnuLocale.Caption := locale.S_Language_Title;
  MnuHelp.Caption := locale.S_Help_Title;
  // actions
  SetFont.Caption:=locale.S_Tools_SetFont;
  SetFont.Hint := locale.S_Tools_SetFont_Hint;
  HelpInfo.Caption := locale.S_Help_Info;
  HelpInfo.Hint := locale.S_Help_Info_Hint;
  HelpManuale.Caption := locale.S_Help_Manual;
  HelpManuale.Hint := locale.S_Help_Manual_Hint;
  HelpCompilatore.Caption := locale.S_Help_Compiler;
  HelpCompilatore.Hint := locale.S_Help_Compiler_Hint;
  HelpHomepage.caption := locale.S_Help_Home;
  HelpHomepage.Hint := locale.S_Help_Home_Hint;

  EditTaglia.Caption := locale.S_Edit_Cut;
  EditTaglia.Hint := locale.S_Edit_Cut_Hint;
  EditCopia.Caption := locale.S_Edit_Copy;
  EditCopia.Hint := locale.S_Edit_Copy_Hint;
  EditIncolla.Caption := locale.S_Edit_Paste;
  EditIncolla.Hint :=  locale.S_Edit_Paste_Hint;
  EditSostituisci.Caption := locale.S_Edit_Replace;
  EditSostituisci.Hint := locale.S_Edit_Replace_Hint;
  EditCerca.Caption := locale.S_Edit_Search;
  EditCerca.Hint := locale.S_Edit_Search_Hint;
  EditUndo.Caption := locale.S_Edit_Undo;
  EditUndo.Hint := locale.S_Edit_Undo_Hint;
  EditRedo.Caption := locale.S_Edit_Redo;
  EditRedo.Hint := locale.S_Edit_Redo_Hint;
  EditACapo.Caption := locale.S_Edit_WWrap;
  EditACapo.Hint := locale.S_Edit_WWrap_Hint;
  EditSelezionaTutto.Caption := locale.S_Edit_SelectAll;
  EditSelezionaTutto.Hint := locale.S_Edit_SelectAll_Hint;
  EditExtendedSearch.Caption := locale.S_ExtSearch;

  FileNuovo.Caption := locale.S_File_New;
  FileNuovo.Hint := locale.S_File_New_Hint;
  FileNuovaFinestra.Caption := locale.S_File_NewWindow;
  FileNuovaFinestra.Hint := locale.S_File_New_Window_hint;
  FileApri.Caption := locale.S_File_Open;
  FileApri.Hint := locale.S_File_Open_Hint;
  FileApriNuovaFinestra.Caption := locale.S_File_OpenNW;
  FileApriNuovaFinestra.Hint := locale.S_File_OpenNW_Hint;
  FileSalva.Caption := locale.S_File_Save;
  FileSalva.Hint := locale.S_File_Save_Hint;
  FileSalvaConNome.Caption := locale.S_File_SaveAs;
  FileSalvaConNome.Hint := locale.S_File_SaveAs_Hint;
  FileStampa.Caption := locale.S_File_Print;
  FileStampa.Hint := locale.S_File_Print_Hint;
  FileStampaDialog.Caption := locale.S_File_Print;
  FileStampaDialog.Hint := locale.S_File_Print_Hint;
  FileEsci.Caption := locale.S_File_Close;
  FileEsci.Hint := locale.S_File_Close_Hint;

  StrumentiCompila.Caption :=  locale.S_Tools_Compile;
  StrumentiCompila.hint := locale.S_Tools_Compile_Hint;
  StrumentiEditaConfigurazione.Caption := locale.S_Tools_Configure;
  StrumentiEditaConfigurazione.Hint := locale.S_Tools_Configure_Hint;

  // Temi
  bosco1.caption := locale.S_Theme_Forest;
  neve1.caption := locale.S_Theme_Snow;
  sabbia1.caption := locale.S_Theme_Sand;
  rosa1.caption := locale.S_Theme_Rose;
  oceano1.caption := locale.S_Theme_Ocean;
  custom1.caption := locale.S_Theme_Custom;
  modificapersonalizzato1.Caption := locale.S_Theme_ModCustom;
  //Lingue...
  MnuLocaleEnglish.Caption := locale.S_Language_English;
  MnuLocaleItalian.caption := locale.S_Language_Italian;
  //MnuLocaleFrench.caption := locale.S_Language_French;
  //MnuLocaleGerman.caption := locale.S_Language_German;
  //MnuLocaleTurkish.caption := locale.S_Language_Turkish;  
  AddSnippet.Caption       := locale.S_Tools_AddSnippet;
  ShowSnippetFile.Caption  := locale.S_Tools_EditSnippet;
  CleanupSnippet.Caption  := locale.S_Tools_DeleteSnippet;
  actToggleFontColor.Caption  := locale.S_Tools_ToggleFontColor;

  // Formatta XML
  formattaxml1.caption     := locale.S_Tools_XmlFormat;
  if linguaggio = glHtml
  then formattaxml1.caption     := locale.S_Tools_HtmlFormat;
  
  testonormale1.Caption    := locale.S_Syntax_Text;

  checkbox1.caption := locale.S_ReadOnly;
  //ricerca estesa;
  cbCaseSensitive.Caption := locale.S_CaseSensitive;
  cbWholeWord.Caption := locale.S_WholeWord;
  FindLabel.Caption := locale.S_Find;
  SearchResultLabel.Caption := locale.S_ExtSearch;
  SearchBtn.Caption := locale.S_DoSearch;
End;

Procedure TEditorMainForm.MakeXmlReadable();
Var sOld   : string;
    preStr : string;
    p,n,m  : integer;
    tabInd         : integer;
Begin
    Screen.Cursor := crHourGlass;

    sOld := trim(synedit1.lines.text);

    // cerchiamo tag vuoti su righe diverse  o separati da solo spazi o tabs
    p := Pos('>',sOld);
    while (p>0) do begin
      tabInd:=0;
      m := p+1;
      while (sOld[m]=#13)or(sOld[m]=#10)or(sOld[m]=#9)or(sOld[m]=#13#10)or(sOld[m]=#32) do begin
        m := m+1;
        tabInd := tabInd+1;
      end;
      if (sOld[m]='<')  then  begin
        //cancello tutto cio che c'è tra p ed m
        Delete(sOld,p+1,tabInd);
      end;
      p := PosEx('>',sOld,p+1);      // abbiamo trovato il primo tag di chiusura

    end;

    // parte sostanziale
    p := Pos('><',sOld);
    m := 0;
    tabInd := 0;
    while (p>0) do begin
        //n := m + LastDelimiter('<',Copy(sOld,m,(p-m)));  //TODO: forse questa è più efficiente (se funziona)
        n := LastDelimiter('<',LeftStr(sOld,p));
        if ((p>1) and (sOld[p-1]='/'))or((p>2) and (sOld[p-1]='-')and (sOld[p-2]='-')) then begin
            if sOld[p+2]='/' then begin
              // rientro livello
              tabInd:=tabInd-1;
            end;
//            else begin
//              // stesso livello
//            end;
        end
        else begin
            if (n>0) and (sOld[n+1]='/') then begin
                if sOld[p+2]='/' then begin
                    // rientro livello
                    tabInd:=tabInd-1;
                end;
//                else begin
//                    // stesso livello
//                end;
            end
            else begin
                if sOld[p+2]='/' then begin
                  // stesso livello
                end
                else begin
                  // indenta di un livello
                  tabInd:=tabInd+1;
                end;
            end;
        end;
        preStr := '>' + synedit1.Lines.LineBreak + StringOfChar(#9, tabInd)+'<';
        sOld := StringReplace(sOld,'><',preStr,[]);
        m := p;
        p := PosEx('><',sOld,m);
    end;

    synedit1.lines.text := sOld;

    Screen.Cursor := crDefault;
    synedit1Change(nil);
    Application.ProcessMessages;
End;

(*
Procedure TEditorMainForm.MakeXmlReadable();
Var sold: string;
Begin
  Screen.Cursor := crHourGlass;
  sOld := trim(synedit1.lines.text);
  sOld := StringReplace(sOld,'></','> </',[rfReplaceAll]);
  synedit1.lines.text := StringReplace(sOld,'><','>'#13#10'<',[rfReplaceAll]);
  Screen.Cursor := crDefault;
  Application.ProcessMessages;
End;     *)

Procedure TEditorMainForm.MnuLocaleEnglishClick(Sender: TObject);
Begin
  MnuLocaleEnglish.ImageIndex := 1;
  MnuLocaleItalian.ImageIndex := -1;
  lingua := inglese;
  LocaleCode := 'EN';
  SetLocale(lingua);
  Application.ProcessMessages;
End;

Procedure TEditorMainForm.MnuLocaleItalianClick(Sender: TObject);
Begin
  MnuLocaleEnglish.ImageIndex := -1;
  MnuLocaleItalian.ImageIndex := 1;
  lingua := italiano;
  LocaleCode := 'IT';
  SetLocale(lingua);
  Application.ProcessMessages;
End;

Procedure TEditorMainForm.formattaxml1Click(Sender: TObject);
Begin
  MakeXmlReadable;
End;

Procedure TEditorMainForm.FileApriNuovaFinestraExecute(Sender: TObject);
Var Executable, OtherFileName: string;
    myconf: TIniFile;
Begin
  If OpenDialog1.Execute Then Begin
    Executable := extractfilename(ParamStr(0));
    OtherFileName := '-S=20 -T='+getNextTheme()+' "'+OpenDialog1.FileName+'"';
    if(directoryexists(cfgdir)) then begin
      MyConf := TIniFile.Create(cfgfile);
      Try
        If EditorMainForm.WindowState=wsMaximized Then Begin
          MyConf.writeinteger('Environment', 'left_corner',100);
          MyConf.writeinteger('Environment', 'top_corner',100);
          MyConf.writeinteger('Environment', 'win_width',700);
          MyConf.writeinteger('Environment', 'win_height',500);
        End
        Else Begin
          MyConf.writeinteger('Environment', 'left_corner',EditorMainForm.Left);
          MyConf.writeinteger('Environment', 'top_corner',EditorMainForm.Top);
          MyConf.writeinteger('Environment', 'win_width',EditorMainForm.Width);
          MyConf.writeinteger('Environment', 'win_height',EditorMainForm.Height);
        End;
        MyConf.WriteString('Environment', 'win_state', 'normalwindow');
       // MyConf.WriteString('Theme', 'theme_name', getNextTheme);
      Finally
        myconf.Free;
      End;
    end;
     OpenDocument(PChar(Executable)); { *Converted from ShellExecute* }
  End;
End;

Function TEditorMainForm.GetNextTheme(): string;
Begin
  If theme=gtDefault Then begin
    result := 'Bosco';
  end
  Else If theme=gtBosco Then  begin
    result := 'Neve'
  end
  Else If theme=gtNeve Then  begin
    result := 'Oceano'
  end
  Else If theme=gtOceano Then begin
    result := 'Rosa'
  end
  Else If theme=gtRosa Then begin
    result := 'Sabbia'
  end
  Else If theme=gtSabbia Then   begin
    result := 'Custom'
  end
  Else    begin
    result := 'Default';
  end;
End;

procedure TEditorMainForm.FormDropFiles(Sender: TObject;
  const FileNames: array of string);
var OtherFileName:string;
begin
    //ShowMessage('dropped');

  OtherFileName:=FileNames[0];
  if (Salvato=True)  then begin
      //carico la finestra attuale con il file
       LoadFileIntoSynEdit(OtherFileName);
       NomeFile := OtherFileName;
       nfile := ExtractFileName(NomeFile);
       Application.Title := nFile;
       caption := 'GLeDitor - '+nFile;
       StatusBar1.Panels[2].Text := NomeFile;
       UpdateEnvironmentByFilename(NFile);
       salvato := TRUE;
       FileSalva.Enabled := false;
   end
   else begin
    (* //carico il file in una nuova finestra
     Executable := extractfilename(ParamStr(0));
     if skew>0 then
       OtherParameters := '-S='+inttostr(skew)+' -T='+getNextThemeBy(anytheme)+' "'+OtherFileName+'"'
     else
       OtherParameters := '-T='+getNextThemeBy(anytheme)+' "'+OtherFileName+'"';

     if flag=false then begin
       flag:=True;
       if(directoryexists(cfgdir)) then begin
         MyConf := TIniFile.Create(cfgfile);
         Try
           If EditorMainForm.WindowState=wsMaximized Then Begin
             MyConf.writeinteger('Environment', 'left_corner',100);
             MyConf.writeinteger('Environment', 'top_corner',100);
             MyConf.writeinteger('Environment', 'win_width',700);
             MyConf.writeinteger('Environment', 'win_height',500);
           End
           Else Begin
             MyConf.writeinteger('Environment', 'left_corner',EditorMainForm.Left);
             MyConf.writeinteger('Environment', 'top_corner',EditorMainForm.Top);
             MyConf.writeinteger('Environment', 'win_width',700);
             MyConf.writeinteger('Environment', 'win_height',500);
           End;
           MyConf.WriteString('Environment', 'win_state', 'normalwindow');
          // MyConf.WriteString('Theme', 'theme_name', getNextThemeBy(anytheme));
         Finally
           myconf.Free;
         End;
       end;
     end;
     //application.ProcessMessages;
     //Sleep(200);
      OpenDocument(PChar(Executable)); { *Converted from ShellExecute* }
     skew:=skew+20;    *)
   end;

end;


Function TEditorMainForm.GetNextThemeBy(var ath:TGleditTheme): string;
Begin
  If ath=gtDefault Then begin
    ath := gtBosco;
    result := 'Bosco'
  end
  Else If ath=gtBosco Then begin  
    ath := gtNeve;
    result := 'Neve'
  end
  Else If ath=gtNeve Then begin
    ath := gtOceano;
    result := 'Oceano'
  end
  Else If ath=gtOceano Then begin
    ath := gtRosa;
    result := 'Rosa'
  end
  Else If ath=gtRosa Then begin
    ath := gtSabbia;
    result := 'Sabbia'
  end
  Else If ath=gtSabbia Then begin  
    ath := gtCustom;
    result := 'Custom'
  end
  Else begin
    result := 'Default';
    ath := gtDefault;
  end;
End;

Function TEditorMainForm.GetNextEnumTheme(): TGleditTheme;
Begin
  If theme=gtDefault Then
    result := gtBosco
  Else If theme=gtBosco Then
    result := gtNeve
  Else If theme=gtNeve Then
    result := gtOceano
  Else If theme=gtOceano Then
    result := gtRosa
  Else If theme=gtRosa Then
    result := gtSabbia
  Else If theme=gtSabbia Then
    result := gtCustom
  Else
    result := gtDefault;
End;


Function TEditorMainForm.GetThemeName(th:TGleditTheme): string;
Begin
  Case th Of
    gtDefault: result := 'Default';
    gtBosco: result := 'Bosco';
    gtNeve: result := 'Neve';
    gtRosa: result := 'Rosa';
    gtOceano: result := 'Oceano';
    gtSabbia: result := 'Sabbia';
    gtCustom: result := 'Custom';
  Else
    result := 'Default';
  End;
End;

Function TEditorMainForm.GetThemeFromString(thname:String ): TGleditTheme;
Begin
  If thname = 'Default'
    Then result := gtDefault
  Else If thname = 'Bosco'
    Then result := gtBosco
  Else If thname = 'Neve'
    Then result := gtNeve
  Else If thname = 'Rosa'
    Then result := gtRosa
  Else If thname = 'Oceano'
    Then result := gtOceano
  Else If thname = 'Sabbia'
    Then result := gtSabbia
  Else If thname = 'Custom'
    Then result := gtCustom
  Else result := gtDefault;
End;

Procedure TEditorMainForm.CreateParams(Var Params: TCreateParams);
Begin
  inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle And Not WS_EX_TOOLWINDOW Or WS_EX_APPWINDOW;
End;

(*
Procedure TEditorMainForm.WMSyscommand(Var Message: TWmSysCommand);
Begin
  Case (Message.CmdType And $FFF0) Of
    SC_MINIMIZE: Begin
      ShowWindow(Handle, SW_MINIMIZE);
      Message.Result := 0;
    End;
    SC_RESTORE: Begin
      ShowWindow(Handle, SW_RESTORE);
      Message.Result := 0;
    End;
  Else
    inherited;
  End;
End;
*)

Procedure TEditorMainForm.HideAppFormTaskBarButton;
Begin
  ShowWindow(Application.Handle, SW_HIDE);
  SetWindowLong(Application.Handle, GWL_EXSTYLE,
                GetWindowLong(Application.Handle, GWL_EXSTYLE) and not WS_EX_APPWINDOW
  or WS_EX_TOOLWINDOW);
  ShowWindow(Application.Handle, SW_SHOW);
End;

Procedure TEditorMainForm.SetupGlass;
Begin
  If Utility.CompositingEnabled Then Begin
    //BottomPanel.Color := clBlack;
    //ExtendGlass(Self.Handle, Rect(0, 0, 0, 24));
  end Else Begin
    //BottomPanel.Color := Color;
  end;
End;

procedure TEditorMainForm.ShowSnippetFileExecute(Sender: TObject);
Var Executable, OtherFileName: string;
    myconf: TIniFile;
Begin
  OtherFileName := '"'+cfgdir+'\snippets.ini'+'"';
  if(Fileexists(cfgdir+'\snippets.ini')) then begin
  Executable := extractfilename(ParamStr(0));
  if(directoryexists(cfgdir)) then begin
    MyConf := TIniFile.Create(cfgfile);
    Try
      If EditorMainForm.WindowState=wsMaximized Then Begin
        MyConf.writeinteger('Environment', 'left_corner',100);
        MyConf.writeinteger('Environment', 'top_corner',100);
        MyConf.writeinteger('Environment', 'win_width',700);
        MyConf.writeinteger('Environment', 'win_height',500);
      End
      Else Begin
        MyConf.writeinteger('Environment', 'left_corner',EditorMainForm.Left+50);
        MyConf.writeinteger('Environment', 'top_corner',EditorMainForm.Top+50);
        MyConf.writeinteger('Environment', 'win_width',EditorMainForm.Width);
        MyConf.writeinteger('Environment', 'win_height',EditorMainForm.Height);
      End;
      MyConf.WriteString('Environment', 'win_state', 'normalwindow');
      MyConf.WriteString('Theme', 'theme_name', getNextTheme);
    Finally
      myconf.Free;
    End;
  end;
   OpenDocument(PChar(Executable)); { *Converted from ShellExecute* }
end
else begin
  ShowMessage(lingua.S_Alert_MissingSnippetFile);
end;
End;

function TEditorMainForm.GetEnvVarValue(const VarName: string): string;
//var  BufSize: Integer;  // buffer size required for value
begin
  //// Get required buffer size (inc. terminal #0)
  //BufSize := GetEnvironmentVariable(PChar(VarName), nil, 0);
  //if BufSize > 0 then
  //begin
  //  // Read env var value into result string
  //  SetLength(Result, BufSize - 1);
  //  GetEnvironmentVariable(PChar(VarName),
  //    PChar(Result), BufSize);
  //end
  //else  // No such environment variable
  try
     Result :=  GetEnvironmentVariable(VarName);
  except
      Result := '';
  end;
end;

Procedure TEditorMainForm.UnsetAllImages();
Begin
  sql1.ImageIndex := -1;
  cc1.imageindex := -1;
  testonormale1.ImageIndex := -1;
  pascal1.ImageIndex := -1;
  java1.ImageIndex := -1;
  basic1.ImageIndex := -1;
  html1.ImageIndex := -1;
  php1.ImageIndex := -1;
  xml1.ImageIndex := -1;
  //c1.ImageIndex := -1;
  python1.ImageIndex := -1;
  javascript1.ImageIndex := -1;
  Css1.ImageIndex:=-1;
End;

////procedure Split
////   (const Delimiter: Char;
////    Input: string;
////    const Strings: TStrings) ;
////begin
////   Assert(Assigned(Strings)) ;
////   Strings.Clear;
////   Strings.Delimiter := Delimiter;
////   Strings.DelimitedText := Input;
////end;

Procedure TEditorMainForm.UnsetAllThemeImages();
Begin
    default1.ImageIndex:=-1;
    oceano1.ImageIndex := -1;
    bosco1.ImageIndex := -1;
    sabbia1.ImageIndex := -1;
    rosa1.ImageIndex := -1;
    neve1.ImageIndex := -1;
    custom1.ImageIndex := -1;
End;

//procedure TEditorMainForm.WMDROPFILES(var msg: TWMDropFiles);
//var   cnt, fileCount, iSize, skew : integer;
//    pcFileName: PChar;
//    //fileNameChar : array [0..MAXFILENAME] of char;
//    Executable, OtherFileName, OtherParameters: string;
//    myconf: TIniFile;
//    anytheme : TGleditTheme;
//    flag:Boolean;
//    //OutPutList: TStringList;
//begin
//  flag:=False;
//  anytheme:=theme;
//  pcFileName := ''; // to avoid compiler warning message
//  // how many files dropped?
//  fileCount := DragQueryFile(msg.Drop, $FFFFFFFF, pcFileName, 255) ;
//  // query for file names
//  skew:=20;
//  for cnt := 0 to -1 + fileCount do begin
//     iSize := DragQueryFile(Msg.Drop, cnt, nil, 0) + 1;
//     pcFileName := StrAlloc(iSize);
//
//     DragQueryFile(msg.Drop, cnt, pcFileName, iSize);
//
//    if Length(pcFileName)>0 then begin
//      OtherFileName:=pcFileName;
////      SetString(OtherFileName, PChar(@fileNameChar[0]), Length(fileNameChar));
////      OutPutList := TStringList.Create;
////      try
////        Split(#0, OtherFileName, OutPutList);
////        if OutPutList.Count>0 then
////          OtherFileName:=OutPutList[0];
////
////      finally
////
////      end;
//
//    end
//    else
//      OtherFileName := '';
//    // Ora ho il filename!!!
//    if (Salvato=True) and (cnt=0) then begin
//       //carico la finestra attuale con il file
//        LoadFileIntoSynEdit(OtherFileName);
//        NomeFile := OtherFileName;
//        nfile := ExtractFileName(NomeFile);
//        Application.Title := nFile;
//        caption := 'GLeDitor - '+nFile;
//        StatusBar1.Panels[2].Text := NomeFile;
//        UpdateEnvironmentByFilename(NFile);
//        salvato := TRUE;
//        FileSalva.Enabled := false;
//    end
//    else begin
//      //carico il file in una nuova finestra
//      Executable := extractfilename(ParamStr(0));
//      if skew>0 then
//        OtherParameters := '-S='+inttostr(skew)+' -T='+getNextThemeBy(anytheme)+' "'+OtherFileName+'"'
//      else
//        OtherParameters := '-T='+getNextThemeBy(anytheme)+' "'+OtherFileName+'"';
//
//      if flag=false then begin
//        flag:=True;
//        if(directoryexists(cfgdir)) then begin
//          MyConf := TIniFile.Create(cfgfile);
//          Try
//            If EditorMainForm.WindowState=wsMaximized Then Begin
//              MyConf.writeinteger('Environment', 'left_corner',100);
//              MyConf.writeinteger('Environment', 'top_corner',100);
//              MyConf.writeinteger('Environment', 'win_width',700);
//              MyConf.writeinteger('Environment', 'win_height',500);
//            End
//            Else Begin
//              MyConf.writeinteger('Environment', 'left_corner',EditorMainForm.Left);
//              MyConf.writeinteger('Environment', 'top_corner',EditorMainForm.Top);
//              MyConf.writeinteger('Environment', 'win_width',700);
//              MyConf.writeinteger('Environment', 'win_height',500);
//            End;
//            MyConf.WriteString('Environment', 'win_state', 'normalwindow');
//           // MyConf.WriteString('Theme', 'theme_name', getNextThemeBy(anytheme));
//          Finally
//            myconf.Free;
//          End;
//        end;
//      end;
//      //application.ProcessMessages;
//      //Sleep(200);
//       OpenDocument(PChar(Executable)); { *Converted from ShellExecute* }
//      skew:=skew+20;
//    end;
//    StrDispose(pcFileName);
//  end;
//  //release memory
//  DragFinish(msg.Drop);
//  //theme=actualTheme;
//end;

function TEditorMainForm.CanSafelyCleanupCurrentDocument:Boolean;
 var
   buttonSelected : Integer;
begin
  Result:=false;
  If (salvato = FALSE) And (trim(synedit1.Text)>'') Then begin
    buttonSelected := MessageDlg(lingua.S_Alert_WantToSaveCurrentDoc,mtCustom,
                       [mbOk,mbNo,mbCancel], 0);
    if buttonSelected = mrOk then begin
      FileSalvaConNomeExecute(self);
      if salvato then
        Result:=true
      else
        Result:=False;
    end
    else if buttonSelected = mrNo then begin
      Result:=true;
      Salvato:=True;
    end
    else if buttonSelected = mrCancel then
      Result:=false;
  end
  else
    Result:= True;
end;


End.
