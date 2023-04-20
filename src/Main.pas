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
    //SynEditPrint1: TSynEditPrint;
    ActionList1: TActionList;
    FileNuovo: TAction;
    /// clear the editor window
    FileApri: TAction;
    /// open a text file
    FileSalva: TAction;
    /// save the current file
    FileSalvaConNome: TAction;
    /// "save as"
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
    //SynEditSearch1: TSynEditSearch;
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
    Procedure SettaCsharp(Sender: TObject);
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
                                Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
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
    Procedure SearchPanelCanResize(Sender: TObject; Var NewWidth,
                                   NewHeight: Integer; Var Resize: Boolean);
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
      Salvato: boolean;
      /// true if the current file is just saved or unmodifyied, false otherwise
      SearchOpened : boolean;
      /// true if the "extended search" is showing
      CustomThemeYetSelected : boolean;
      /// true if the user has choosen a custom theme
      CustomThemeDarkCol : string;
      /// the dark color of the current (custom) theme
      CustomThemeLightCol : string;
      /// the light color of the current (custom) theme
      linguaggio : TGleditLanguage;
      estensione : string;
      commentPattern,commentPattern2 : string;
      SearchListXposition, SearchListYposition: integer;
      SearchListSelStart : integer;
      //Splitter: Tsplitter;
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
     // procedure WMDROPFILES(var msg : TWMDropFiles) ; message WM_DROPFILES; 
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
      //Procedure WMSyscommand(Var Message: TWmSysCommand);
      //message WM_SYSCOMMAND;
  End;

Var 
  EditorMainForm: TEditorMainForm;
  /// the running istance of the editor class form

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
    caption := 'GLeDitor - '+nFile;
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
  //synProposal.ItemList.Add('ASENSITIVE','ASENSITIVE	');
  //synProposal.ItemList.Add('ASSERTION','ASSERTION	');
  //synProposal.ItemList.Add('ASYMMETRIC','ASYMMETRIC ');
  //synProposal.ItemList.Add('ATOMIC','ATOMIC ');
  //synProposal.ItemList.Add('AUTHORIZATION','AUTHORIZATION	');
  //synProposal.ItemList.Add('BEFORE','BEFORE ');
  //synProposal.ItemList.Add('BEGIN','BEGIN	');
  //synProposal.ItemList.Add('BETWEEN','BETWEEN ');
  //synProposal.ItemList.Add('BINARY','BINARY	');
  //synProposal.ItemList.Add('BLOB','BLOB	');
  //synProposal.ItemList.Add('BOOLEAN','BOOLEAN	');
  //synProposal.ItemList.Add('BOTH','BOTH');
  //synProposal.ItemList.Add('BREADTH','BREADTH	');
  //synProposal.ItemList.Add('CALL','CALL ');
  //synProposal.ItemList.Add('CASCADE','CASCADE	');
  //synProposal.ItemList.Add('CASE','CASE ');
  //synProposal.ItemList.Add('CAST','	CAST ');
  //synProposal.ItemList.Add('CATALOG','CATALOG	');
  //synProposal.ItemList.Add('CHAR()','CHAR( ) ');
  //synProposal.ItemList.Add('CHARACTER','CHARACTER');
  //synProposal.ItemList.Add('CHECK','CHECK	');
  //synProposal.ItemList.Add('CLOB','CLOB ');
  //synProposal.ItemList.Add('CLOSE','CLOSE	');
  //synProposal.ItemList.Add('COLLATE','COLLATE	');
  //synProposal.ItemList.Add('COLLATION','COLLATION	');
  //synProposal.ItemList.Add('COLUMN','COLUMN ');
  //synProposal.ItemList.Add('COMMIT','COMMIT	');
  //synProposal.ItemList.Add('CONDITION','CONDITION	');
  //synProposal.ItemList.Add('CONNECT','CONNECT	');
  //synProposal.ItemList.Add('CONNECTION','CONNECTION	');
  //synProposal.ItemList.Add('CONSTRAINT','CONSTRAINT	');
  //synProposal.ItemList.Add('CONSTRUCTOR','CONSTRUCTOR	');
  //synProposal.ItemList.Add('CONTINUE','CONTINUE	');
  //synProposal.ItemList.Add('CORRESPONDING','CORRESPONDING	');
  //synProposal.ItemList.Add('CREATE','CREATE ');
  //synProposal.ItemList.Add('CREATE TABLE(...','CREATE TABLE( ');
  //synProposal.ItemList.Add('CROSS','CROSS ');
  //synProposal.ItemList.Add('CURRENT','CURRENT	');
  //synProposal.ItemList.Add('CURRENT_DATE','CURRENT_DATE	');
  //synProposal.ItemList.Add('CURRENT_PATH','CURRENT_PATH	');
  //synProposal.ItemList.Add('CURRENT_ROLE','CURRENT_ROLE	');
  //synProposal.ItemList.Add('CURRENT_TIME','CURRENT_TIME	');
  //synProposal.ItemList.Add('CURRENT_TIMESTAMP','CURRENT_TIMESTAMP ');
  //synProposal.ItemList.Add('CURRENT_USER','CURRENT_USER	');
  //synProposal.ItemList.Add('CURSOR','CURSOR	');
  //synProposal.ItemList.Add('CYCLE','CYCLE	');
  //synProposal.ItemList.Add('DATA','DATA ');
  //synProposal.ItemList.Add('DATE','DATE ');
  //synProposal.ItemList.Add('DEALLOCATE','DEALLOCATE ');
  //synProposal.ItemList.Add('DECIMAL','DECIMAL ');
  //synProposal.ItemList.Add('DECLARE','DECLARE	');
  //synProposal.ItemList.Add('DEFAULT','DEFAULT ');
  //synProposal.ItemList.Add('DEFERRABLE','DEFERRABLE	');
  //synProposal.ItemList.Add('DEFERRED','DEFERRED	');
  //synProposal.ItemList.Add('DELETE	 ','DELETE ');
  //synProposal.ItemList.Add('DEPTH	 ','DEPTH	');
  //synProposal.ItemList.Add('DEREF	 ','DEREF	');
  //synProposal.ItemList.Add('DESC	 ','DESC ');
  //synProposal.ItemList.Add('DESCRIBE	 ','DESCRIBE ');
  //synProposal.ItemList.Add('DETERMINISTIC	 ','DETERMINISTIC	');
  //synProposal.ItemList.Add('DISCONNECT	 ','DISCONNECT ');
  //synProposal.ItemList.Add('DISTINCT	 ','DISTINCT ');
  //synProposal.ItemList.Add('DOMAIN	 ','DOMAIN ');
  //synProposal.ItemList.Add('DOUBLE	 ','DOUBLE ');
  //synProposal.ItemList.Add('DROP	 ','DROP ');
  //synProposal.ItemList.Add('DYNAMIC	 ','DYNAMIC	');
  //synProposal.ItemList.Add('ELSE	 ','ELSE ');
  //synProposal.ItemList.Add('ELSEIF	 ','ELSEIF ');
  //synProposal.ItemList.Add('EQUALS	 ','EQUALS ');
  //synProposal.ItemList.Add('ESCAPE	 ','ESCAPE ');
  //synProposal.ItemList.Add('EXCEPT	 ','EXCEPT ');
  //synProposal.ItemList.Add('EXEC	 ','EXEC ');
  //synProposal.ItemList.Add('EXECUTE	 ','EXECUTE	');
  //synProposal.ItemList.Add('EXISTS	 ','EXISTS ');
  //synProposal.ItemList.Add('EXIT	 ','EXIT ');
  //synProposal.ItemList.Add('EXTERNAL	 ','EXTERNAL ');
  //synProposal.ItemList.Add('FALSE	 ','FALSE ');
  //synProposal.ItemList.Add('FETCH	 ','FETCH	');
  //synProposal.ItemList.Add('FILTER	 ','FILTER ');
  //synProposal.ItemList.Add('FLOAT	 ','FLOAT	');
  //synProposal.ItemList.Add('FOREIGN	 ','FOREIGN	');
  //synProposal.ItemList.Add('FROM	 ','FROM ');
  //synProposal.ItemList.Add('FUNCTION	 ','FUNCTION ');
  //synProposal.ItemList.Add('GENERAL	 ','GENERAL	');
  //synProposal.ItemList.Add('GLOBAL	 ','GLOBAL ');
  //synProposal.ItemList.Add('GOTO	 ','GOTO ');
  //synProposal.ItemList.Add('GRANT	 ','GRANT	');
  //synProposal.ItemList.Add('GROUP	 ','GROUP	');
  //synProposal.ItemList.Add('GROUPING	 ','GROUPING ');
  //synProposal.ItemList.Add('HAVING	 ','HAVING ');
  //synProposal.ItemList.Add('IDENTITY	 ','IDENTITY ');
  //synProposal.ItemList.Add('IMMEDIATE	 ','IMMEDIATE	');
  //synProposal.ItemList.Add('INITIALLY	 ','INITIALLY	');
  //synProposal.ItemList.Add('INNER	 ','INNER	');
  //synProposal.ItemList.Add('INNER	JOIN','INNER JOIN	');
  //synProposal.ItemList.Add('INPUT	 ','INPUT	');
  //synProposal.ItemList.Add('INSERT	 ','INSERT ');
  //synProposal.ItemList.Add('INTEGER	 ','INTEGER	');
  //synProposal.ItemList.Add('INTERSECT	 ','INTERSECT	');
  //synProposal.ItemList.Add('INTERVAL	 ','INTERVAL ');
  //synProposal.ItemList.Add('INTO	 ','INTO ');
  //synProposal.ItemList.Add('ISOLATION	 ','ISOLATION	');
  //synProposal.ItemList.Add('ITERATE	 ','ITERATE	');
  //synProposal.ItemList.Add('JOIN	 ','JOIN ');
  //synProposal.ItemList.Add('LARGE	 ','LARGE	');
  //synProposal.ItemList.Add('LATERAL','LATERAL	');
  //synProposal.ItemList.Add('LEFT	 ','LEFT ');
  //synProposal.ItemList.Add('LEFT JOIN','LEFT JOIN ');
  //synProposal.ItemList.Add('LEVEL	 ','LEVEL	');
  //synProposal.ItemList.Add('LIKE	 ','LIKE  ');
  //synProposal.ItemList.Add('LOCAL	 ','LOCAL	');
  //synProposal.ItemList.Add('METHOD	 ','METHOD ');
  //synProposal.ItemList.Add('MODIFIES','MODIFIES ');
  //synProposal.ItemList.Add('MODULE','MODULE ');
  //synProposal.ItemList.Add('NCHAR','NCHAR ');
  //synProposal.ItemList.Add('NCLOB','NCLOB	');
  //synProposal.ItemList.Add('NEXT','NEXT	');
  //synProposal.ItemList.Add('NONE','NONE ');
  //synProposal.ItemList.Add('NULL','NULL ');
  //synProposal.ItemList.Add('NUMERIC','NUMERIC	');
  //synProposal.ItemList.Add('OBJECT','OBJECT	');
  //synProposal.ItemList.Add('ONLY','ONLY	');
  //synProposal.ItemList.Add('OPEN','OPEN	');
  //synProposal.ItemList.Add('OPTION','OPTION	');
  //synProposal.ItemList.Add('ORDER','ORDER	');
  //synProposal.ItemList.Add('ORDINALITY','ORDINALITY	');
  //synProposal.ItemList.Add('OUTER','OUTER	');
  //synProposal.ItemList.Add('OUTER JOIN','OUTER JOIN	');
  //synProposal.ItemList.Add('OUTPUT','OUTPUT	');
  //synProposal.ItemList.Add('OVER','OVER	');
  //synProposal.ItemList.Add('PARAMETER','PARAMETER	');
  //synProposal.ItemList.Add('PARTIAL','PARTIAL	');
  //synProposal.ItemList.Add('PARTITION','PARTITION	');
  //synProposal.ItemList.Add('PATH','PATH	');
  //synProposal.ItemList.Add('PRECISION','PRECISION	');
  //synProposal.ItemList.Add('PREPARE','PREPARE	');
  //synProposal.ItemList.Add('PRESERVE','PRESERVE	');
  //synProposal.ItemList.Add('PRIMARY','PRIMARY	');
  //synProposal.ItemList.Add('PRIMARY KEY','PRIMARY	KEY ');
  //synProposal.ItemList.Add('PRIOR','PRIOR	');
  //synProposal.ItemList.Add('PRIVILEGES','PRIVILEGES	');
  //synProposal.ItemList.Add('PROCEDURE','PROCEDURE	');
  //synProposal.ItemList.Add('PUBLIC','PUBLIC	');
  //synProposal.ItemList.Add('RANGE','RANGE	');
  //synProposal.ItemList.Add('REAL','REAL ');
  //synProposal.ItemList.Add('RECURSIVE','RECURSIVE	');
  //synProposal.ItemList.Add('REFERENCES','REFERENCES ');
  //synProposal.ItemList.Add('RELATIVE','RELATIVE ');
  //synProposal.ItemList.Add('RELEASE','RELEASE ');
  //synProposal.ItemList.Add('REPEAT','REPEAT	');
  //synProposal.ItemList.Add('RESULT','RESULT	');
  //synProposal.ItemList.Add('RETURN','RETURN	');
  //synProposal.ItemList.Add('RETURNS','RETURNS	');
  //synProposal.ItemList.Add('REVOKE','REVOKE	');
  //synProposal.ItemList.Add('RIGHT','RIGHT	');
  //synProposal.ItemList.Add('ROLE','ROLE	');
  //synProposal.ItemList.Add('ROLLBACK','ROLLBACK	');
  //synProposal.ItemList.Add('ROLLUP','ROLLUP ');
  //synProposal.ItemList.Add('ROUTINE','ROUTINE ');
  //synProposal.ItemList.Add('ROW','ROW	');
  //synProposal.ItemList.Add('SCHEMA','SCHEMA	 ');
  //synProposal.ItemList.Add('SCOPE','SCOPE	');
  //synProposal.ItemList.Add('SCROLL','SCROLL	');
  //synProposal.ItemList.Add('SEARCH','SEARCH ');
  //synProposal.ItemList.Add('SECTION','SECTION	');
  //synProposal.ItemList.Add('SELECT','SELECT	');
  //synProposal.ItemList.Add('SESSION','SESSION ');
  //synProposal.ItemList.Add('SESSION_USER','SESSION_USER	');
  //synProposal.ItemList.Add('SIZE','SIZE	');
  //synProposal.ItemList.Add('SMALLINT','SMALLINT ');
  //synProposal.ItemList.Add('START','START	');
  //synProposal.ItemList.Add('STATE','STATE	');
  //synProposal.ItemList.Add('STATIC','STATIC ');
  //synProposal.ItemList.Add('SYSTEM','SYSTEM	');
  //synProposal.ItemList.Add('TABLE','TABLE	');
  //synProposal.ItemList.Add('THEN','THEN	');
  //synProposal.ItemList.Add('TIME','TIME ');
  //synProposal.ItemList.Add('TIMESTAMP','TIMESTAMP	');
  //synProposal.ItemList.Add('TRAILING','TRAILING ');
  //synProposal.ItemList.Add('TRANSACTION','TRANSACTION	');
  //synProposal.ItemList.Add('TREAT','TREAT	');
  //synProposal.ItemList.Add('TRIGGER','TRIGGER	');
  //synProposal.ItemList.Add('TRUE','TRUE ');
  //synProposal.ItemList.Add('UNDER','UNDER	');
  //synProposal.ItemList.Add('UNDO','UNDO ');
  //synProposal.ItemList.Add('UNION','UNION	');
  //synProposal.ItemList.Add('UNIQUE','UNIQUE ');
  //synProposal.ItemList.Add('UNKNOWN','UNKNOWN	');
  //synProposal.ItemList.Add('UNNEST','UNNEST ');
  //synProposal.ItemList.Add('UNTIL','UNTIL ');
  //synProposal.ItemList.Add('UPDATE','UPDATE	');
  //synProposal.ItemList.Add('USER','USER ');
  //synProposal.ItemList.Add('USING','USING	');
  //synProposal.ItemList.Add('VALUE','VALUE	');
  //synProposal.ItemList.Add('VALUES( )','VALUES (	)');
  //synProposal.ItemList.Add('VARCHAR( )','VARCHAR( )');
  //synProposal.ItemList.Add('VIEW ','VIEW ');
  //synProposal.ItemList.Add('WHEN ','WHEN ');
  //synProposal.ItemList.Add('WHERE','WHERE	');
  //synProposal.ItemList.Add('WHILE','WHILE ');
  //synProposal.ItemList.Add('WITH','	WITH ');
  //synProposal.ItemList.Add('WITHIN','	WITHIN ');
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
  //synProposal.ItemList.Add('asm ','asm ')  ;
  //synProposal.ItemList.Add('bitand ','bitand ')  ;
  //synProposal.ItemList.Add('bitor ','bitor ') ;
  //synProposal.ItemList.Add('bool ','bool ')  ;
  //synProposal.ItemList.Add('break ','break ') ;
  //synProposal.ItemList.Add('case ','case ')  ;
  //synProposal.ItemList.Add('catch ','catch ')  ;
  //synProposal.ItemList.Add('char ','char ')   ;
  //synProposal.ItemList.Add('class ','class ')   ;
  //synProposal.ItemList.Add('compl ','compl ')  ;
  //synProposal.ItemList.Add('const ','const ')    ;
  //synProposal.ItemList.Add('const_cast ','const_cast ')   ;
  //synProposal.ItemList.Add('continue ','continue ')  ;
  //synProposal.ItemList.Add('default ','default ')   ;
  //synProposal.ItemList.Add('delete ','delete ')   ;
  //synProposal.ItemList.Add('do ','do ')        ;
  //synProposal.ItemList.Add('double ','double ')  ;
  //synProposal.ItemList.Add('dynamic_cast ','dynamic_cast ')    ;
  //synProposal.ItemList.Add('else ','else ')  ;
  //synProposal.ItemList.Add('enum ','enum ')  ;
  //synProposal.ItemList.Add('explicit ','explicit ')  ;
  //synProposal.ItemList.Add('export ','export ')  ;
  //synProposal.ItemList.Add('extern ','extern ')  ;
  //synProposal.ItemList.Add('false ','false ') ;
  //synProposal.ItemList.Add('float ','float ')  ;
  //synProposal.ItemList.Add('for ','for ')   ;
  //synProposal.ItemList.Add('for( ) { }','for( ) {'+#13#10+'}');
  //synProposal.ItemList.Add('for(int i=0; i< ; i++) { }','for(int i=0; i< ; i++) {'+#13#10+'}');
  //synProposal.ItemList.Add('friend ','friend ')   ;
  //synProposal.ItemList.Add('goto ','goto ') ;
  //synProposal.ItemList.Add('if ','if ')   ;   
  //synProposal.ItemList.Add('if( ) { }','if( ) {'+#13#10+'}');
  //synProposal.ItemList.Add('if( ) { }	else { }','if( ) { '+#13#10+'}'+#13#10+'else {'+#13#10+'}');
  //synProposal.ItemList.Add('inline ','inline ')  ;
  //synProposal.ItemList.Add('include ','include ')  ;
  //synProposal.ItemList.Add('int ','int ')  ;
  //synProposal.ItemList.Add('long ','long ')  ;
  //synProposal.ItemList.Add('main ','main ')   ;
  //synProposal.ItemList.Add('mutable ','mutable ')   ;
  //synProposal.ItemList.Add('namespace ','namespace ')  ;
  //synProposal.ItemList.Add('new ','new ')     ;
  //synProposal.ItemList.Add('not ','not ')   ;
  //synProposal.ItemList.Add('not_eq ','not_eq ')  ;
  //synProposal.ItemList.Add('operator ','operator ') ;
  //synProposal.ItemList.Add('or ','or ')      ;
  //synProposal.ItemList.Add('or_eq ','or_eq ')   ;
  //synProposal.ItemList.Add('private ','private ') ;
  //synProposal.ItemList.Add('protected ','protected ')    ;
  //synProposal.ItemList.Add('public ','public ')       ;
  //synProposal.ItemList.Add('register ','register ')    ;
  //synProposal.ItemList.Add('reinterpret_cast ','reinterpret_cast ')   ;
  //synProposal.ItemList.Add('return ','return ')      ;
  //synProposal.ItemList.Add('short ','short ')  ;
  //synProposal.ItemList.Add('signed ','signed ')  ;
  //synProposal.ItemList.Add('sizeof ','sizeof ') ;
  //synProposal.ItemList.Add('static ','static ')  ;
  //synProposal.ItemList.Add('static_cast ','static_cast ')    ;
  //synProposal.ItemList.Add('struct ','struct ')  ;
  //synProposal.ItemList.Add('switch ','switch ')   ;
  //synProposal.ItemList.Add('template ','template ')  ;
  //synProposal.ItemList.Add('this ','this ') ;
  //synProposal.ItemList.Add('throw ','throw ') ;
  //synProposal.ItemList.Add('true ','true ') ;
  //synProposal.ItemList.Add('try ','try ')  ;
  //synProposal.ItemList.Add('typedef ','typedef ')  ;
  //synProposal.ItemList.Add('typeid ','typeid ') ;
  //synProposal.ItemList.Add('typename ','typename ')  ;
  //synProposal.ItemList.Add('union ','union ')    ;
  //synProposal.ItemList.Add('unsigned ','unsigned ') ;
  //synProposal.ItemList.Add('using ','using ')  ;
  //synProposal.ItemList.Add('virtual ','virtual ')  ;
  //synProposal.ItemList.Add('void ','void ')  ;
  //synProposal.ItemList.Add('volatile ','volatile ')  ;
  //synProposal.ItemList.Add('while ','while ')   ;
  //synProposal.ItemList.Add('xor ','xor ')    ;
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
  //synProposal.ItemList.Add('AddressOf ','AddressOf ');
  //synProposal.ItemList.Add('Alias ','Alias ');
  //synProposal.ItemList.Add('And ','And ');
  //synProposal.ItemList.Add('AndAlso ','AndAlso ');
  //synProposal.ItemList.Add('As ','As ');
  //synProposal.ItemList.Add('Boolean ','Boolean ');
  //synProposal.ItemList.Add('ByRef ','ByRef ');
  //synProposal.ItemList.Add('Byte ','Byte ');
  //synProposal.ItemList.Add('ByVal ','ByVal ');
  //synProposal.ItemList.Add('Call ','Call ');
  //synProposal.ItemList.Add('Case ','Case ');
  //synProposal.ItemList.Add('Catch ','Catch ');
  //synProposal.ItemList.Add('CBool ','CBool ');
  //synProposal.ItemList.Add('CByte ','CByte ');
  //synProposal.ItemList.Add('CChar ','CChar ');
  //synProposal.ItemList.Add('CDate ','CDate ');
  //synProposal.ItemList.Add('CDbl ','CDbl ');
  //synProposal.ItemList.Add('CDec ','CDec ');
  //synProposal.ItemList.Add('Char ','Char ');
  //synProposal.ItemList.Add('CInt ','CInt ');
  //synProposal.ItemList.Add('Class ','Class ');
  //synProposal.ItemList.Add('CLng ','CLng ');
  //synProposal.ItemList.Add('CObj ','CObj ');
  //synProposal.ItemList.Add('Const ','Const ');
  //synProposal.ItemList.Add('Continue ','Continue ');
  //synProposal.ItemList.Add('CSByte ','CSByte ');
  //synProposal.ItemList.Add('CShort ','CShort ');
  //synProposal.ItemList.Add('CSng ','CSng ');
  //synProposal.ItemList.Add('CStr ','CStr ');
  //synProposal.ItemList.Add('CType ','CType ');
  //synProposal.ItemList.Add('CUInt ','CUInt ');
  //synProposal.ItemList.Add('CULng ','CULng ');
  //synProposal.ItemList.Add('CUShort ','CUShort ');
  //synProposal.ItemList.Add('Date ','Date ');
  //synProposal.ItemList.Add('Decimal ','Decimal ');
  //synProposal.ItemList.Add('Declare ','Declare ');
  //synProposal.ItemList.Add('Default ','Default ');
  //synProposal.ItemList.Add('Delegate ','Delegate ');
  //synProposal.ItemList.Add('Dim ','Dim ');
  //synProposal.ItemList.Add('Double ','Double ');
  //synProposal.ItemList.Add('Each ','Each ');
  //synProposal.ItemList.Add('Else ','Else ');
  //synProposal.ItemList.Add('ElseIf ','ElseIf ');
  //synProposal.ItemList.Add('End ','End ');
  //synProposal.ItemList.Add('EndIf ','EndIf ');
  //synProposal.ItemList.Add('Enum ','Enum ');
  //synProposal.ItemList.Add('Erase ','Erase ');
  //synProposal.ItemList.Add('Error ','Error ');
  //synProposal.ItemList.Add('Event ','Event ');
  //synProposal.ItemList.Add('Exit ','Exit ');
  //synProposal.ItemList.Add('False ','False ');
  //synProposal.ItemList.Add('Finally ','Finally ');
  //synProposal.ItemList.Add('For ','For ');
  //synProposal.ItemList.Add('Friend ','Friend ');
  //synProposal.ItemList.Add('Function ','Function ');
  //synProposal.ItemList.Add('Get ','Get ');
  //synProposal.ItemList.Add('GetType ','GetType ');
  //synProposal.ItemList.Add('Global ','Global ');
  //synProposal.ItemList.Add('GoSub ','GoSub ');
  //synProposal.ItemList.Add('GoTo ','GoTo ');
  //synProposal.ItemList.Add('Handles ','Handles ');
  //synProposal.ItemList.Add('If() ','If() ');
  //synProposal.ItemList.Add('Implements ','Implements ');
  //synProposal.ItemList.Add('Imports ','Imports ');
  //synProposal.ItemList.Add('Inherits ','Inherits ');
  //synProposal.ItemList.Add('Integer ','Integer ');
  //synProposal.ItemList.Add('Interface ','Interface ');
  //synProposal.ItemList.Add('IsNot ','IsNot ');
  //synProposal.ItemList.Add('Let ','Let ');
  //synProposal.ItemList.Add('Lib ','Lib ');
  //synProposal.ItemList.Add('Like ','Like ');
  //synProposal.ItemList.Add('Long ','Long ');
  //synProposal.ItemList.Add('Loop ','Loop ');
  //synProposal.ItemList.Add('Mod ','Mod ');
  //synProposal.ItemList.Add('Module ','Module ');
  //synProposal.ItemList.Add('MustInherit ','MustInherit ');
  //synProposal.ItemList.Add('MustOverride ','MustOverride ');
  //synProposal.ItemList.Add('MyBase ','MyBase ');
  //synProposal.ItemList.Add('MyClass ','MyClass ');
  //synProposal.ItemList.Add('Namespace ','Namespace ');
  //synProposal.ItemList.Add('Narrowing ','Narrowing ');
  //synProposal.ItemList.Add('New Constraint ','New Constraint ');
  //synProposal.ItemList.Add('New Operator ','New Operator ');
  //synProposal.ItemList.Add('Next ','Next ');
  //synProposal.ItemList.Add('Not ','Not ');
  //synProposal.ItemList.Add('Nothing ','Nothing ');
  //synProposal.ItemList.Add('NotInheritable ','NotInheritable ');
  //synProposal.ItemList.Add('NotOverridable ','NotOverridable ');
  //synProposal.ItemList.Add('Object ','Object ');
  //synProposal.ItemList.Add('Operator ','Operator ');
  //synProposal.ItemList.Add('Option ','Option ');
  //synProposal.ItemList.Add('Optional ','Optional ');
  //synProposal.ItemList.Add('OrElse ','OrElse ');
  //synProposal.ItemList.Add('Overloads ','Overloads ');
  //synProposal.ItemList.Add('Overridable ','Overridable ');
  //synProposal.ItemList.Add('Overrides ','Overrides ');
  //synProposal.ItemList.Add('ParamArray ','ParamArray ');
  //synProposal.ItemList.Add('Partial ','Partial ');
  //synProposal.ItemList.Add('Private ','Private ');
  //synProposal.ItemList.Add('Property ','Property ');
  //synProposal.ItemList.Add('Protected ','Protected ');
  //synProposal.ItemList.Add('Public ','Public ');
  //synProposal.ItemList.Add('RaiseEvent ','RaiseEvent ');
  //synProposal.ItemList.Add('ReadOnly ','ReadOnly ');
  //synProposal.ItemList.Add('ReDim ','ReDim ');
  //synProposal.ItemList.Add('REM ','REM ');
  //synProposal.ItemList.Add('RemoveHandler ','RemoveHandler ');
  //synProposal.ItemList.Add('Resume ','Resume ');
  //synProposal.ItemList.Add('Return ','Return ');
  //synProposal.ItemList.Add('SByte ','SByte ');
  //synProposal.ItemList.Add('Select ','Select ');
  //synProposal.ItemList.Add('Set ','Set ');
  //synProposal.ItemList.Add('Shadows ','Shadows ');
  //synProposal.ItemList.Add('Shared ','Shared ');
  //synProposal.ItemList.Add('Short ','Short ');
  //synProposal.ItemList.Add('Single ','Single ');
  //synProposal.ItemList.Add('Static ','Static ');
  //synProposal.ItemList.Add('Step ','Step ');
  //synProposal.ItemList.Add('Stop ','Stop ');
  //synProposal.ItemList.Add('String ','String ');
  //synProposal.ItemList.Add('Structure ','Structure ');
  //synProposal.ItemList.Add('Sub ','Sub ');
  //synProposal.ItemList.Add('SyncLock ','SyncLock ');
  //synProposal.ItemList.Add('Then ','Then ');
  //synProposal.ItemList.Add('Throw ','Throw ');
  //synProposal.ItemList.Add('True ','True ');
  //synProposal.ItemList.Add('Try ','Try ');
  //synProposal.ItemList.Add('TryCast ','TryCast ');
  //synProposal.ItemList.Add('UInteger ','UInteger ');
  //synProposal.ItemList.Add('ULong ','ULong ');
  //synProposal.ItemList.Add('UShort ','UShort ');
  //synProposal.ItemList.Add('Using ','Using ');
  //synProposal.ItemList.Add('Variant ','Variant ');
  //synProposal.ItemList.Add('Wend ','Wend ');
  //synProposal.ItemList.Add('When ','When ');
  //synProposal.ItemList.Add('While ','While ');
  //synProposal.ItemList.Add('Widening ','Widening ');
  //synProposal.ItemList.Add('With ','With ');
  //synProposal.ItemList.Add('WithEvents ','WithEvents ');
  //synProposal.ItemList.Add('WriteOnly ','WriteOnly ');
  //synProposal.ItemList.Add('Xor ','Xor ');
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
  //synProposal.ItemList.Add('catch'	,	'catch '	);
  //synProposal.ItemList.Add('class'	,	'class '	);
  //synProposal.ItemList.Add('clone'	,	'clone '	);
  //synProposal.ItemList.Add('const'	,	'const '	);
  //synProposal.ItemList.Add('continue'	,	'continue '	);
  //synProposal.ItemList.Add('declare'	,	'declare '	);
  //synProposal.ItemList.Add('default'	,	'default '	);
  //synProposal.ItemList.Add('echo'	,	'echo '	);
  //synProposal.ItemList.Add('else { }'	,	'else { '+#13#10+'}'	);
  //synProposal.ItemList.Add('elseif { }'	,	'elseif { '+#13#10+'}'	);
  //synProposal.ItemList.Add('empty'	,	'empty '	);
  //synProposal.ItemList.Add('enddeclare'	,	'enddeclare '	);
  //synProposal.ItemList.Add('endfor'	,	'endfor '	);
  //synProposal.ItemList.Add('endforeach'	,	'endforeach '	);
  //synProposal.ItemList.Add('endif'	,	'endif '	);
  //synProposal.ItemList.Add('endswitch'	,	'endswitch '	);
  //synProposal.ItemList.Add('endwhile'	,	'endwhile '	);
  //synProposal.ItemList.Add('eval'	,	'eval '	);
  //synProposal.ItemList.Add('exit'	,	'exit '	);
  //synProposal.ItemList.Add('extends'	,	'extends '	);
  //synProposal.ItemList.Add('final'	,	'final '	);
  //synProposal.ItemList.Add('foreach'	,	'foreach '	);
  //synProposal.ItemList.Add('function'	,	'function '	);
  //synProposal.ItemList.Add('global',		'global '	);
  //synProposal.ItemList.Add('goto'	,	'goto '	);
  //synProposal.ItemList.Add('implements'	,	'implements '	);
  //synProposal.ItemList.Add('include'	,	'include '	);
  //synProposal.ItemList.Add('include_once'	,	'include_once '	);
  //synProposal.ItemList.Add('instanceof'	,	'instanceof '	);
  //synProposal.ItemList.Add('insteadof'	,	'insteadof '	);
  //synProposal.ItemList.Add('interface'	,	'interface '	);
  //synProposal.ItemList.Add('isset'	,	'isset '	);
  //synProposal.ItemList.Add('list'	,	'list '	);
  //synProposal.ItemList.Add('mysql_affected_rows'	,	'mysql_affected_rows '	);
  //synProposal.ItemList.Add('mysql_close'	,	'mysql_close '	);
  //synProposal.ItemList.Add('mysql_connect'	,	'mysql_connect '	);
  //synProposal.ItemList.Add('mysql_fetch_row'	,	'mysql_fetch_row '	);
  //synProposal.ItemList.Add('mysql_fetch_array'	,	'mysql_fetch_array '	); 
  //synProposal.ItemList.Add('mysql_free_result'	,	'mysql_free_result '	);
  //synProposal.ItemList.Add('mysql_num_rows'	,	'mysql_num_rows '	);
  //synProposal.ItemList.Add('mysql_query'	,	'mysql_query '	);
  //synProposal.ItemList.Add('mysql_result'	,	'mysql_result '	);
  //synProposal.ItemList.Add('mysql_select_db'	,	'mysql_select_db '	);
  //synProposal.ItemList.Add('namespace'	,	'namespace '	);
  //synProposal.ItemList.Add('print'	,	'print '	);
  //synProposal.ItemList.Add('private'	,	'private '	);
  //synProposal.ItemList.Add('protected'	,	'protected '	);
  //synProposal.ItemList.Add('public'	,	'public '	);
  //synProposal.ItemList.Add('require'	,	'require '	);
  //synProposal.ItemList.Add('require_once'	,	'require_once '	);
  //synProposal.ItemList.Add('return'	,	'return '	);
  //synProposal.ItemList.Add('static'	,	'static '	);
  //synProposal.ItemList.Add('switch'	,	'switch '	);
  //synProposal.ItemList.Add('throw'	,	'throw '	);
  //synProposal.ItemList.Add('trait'	,	'trait '	);
  //synProposal.ItemList.Add('unset'	,	'unset '	);
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
  //synProposal.ItemList.Add('boolean	 ','boolean	');
  //synProposal.ItemList.Add('break	 ','break	');  
  //synProposal.ItemList.Add('byte	 ','byte ');
  //synProposal.ItemList.Add('continue	 ','continue ');   
  //synProposal.ItemList.Add('case	 ','case ');     
  //synProposal.ItemList.Add('catch { }	 ','catch { }');  
  //synProposal.ItemList.Add('char	 ','char ');
  //synProposal.ItemList.Add('class	 ','class	');
  //synProposal.ItemList.Add('const	 ','const	');
  //synProposal.ItemList.Add('default	 ','default	');
  //synProposal.ItemList.Add('double	 ','double ');
  //synProposal.ItemList.Add('for	 ','for	');
  //synProposal.ItemList.Add('for(int i=0; i< ; i++) { }','for(int i=0; i< ; i++) { '+#13#10+'}'); 
  //synProposal.ItemList.Add('else { }	 ','else { '+#13#10+'}');
  //synProposal.ItemList.Add('else if( ) { }	 ','else if( ) { '+#13#10+'}');
  //synProposal.ItemList.Add('enum	 ','enum ');  
  //synProposal.ItemList.Add('extends	 ','extends	');  
  //synProposal.ItemList.Add('final	 ','final	');  
  //synProposal.ItemList.Add('finally	 ','finally	');
  //synProposal.ItemList.Add('float	 ','float	');          
  //synProposal.ItemList.Add('goto	 ','goto ');
  //synProposal.ItemList.Add('if( ) { }','if( ) { '+#13#10+'}');    
  //synProposal.ItemList.Add('implements	 ','implements '); 
  //synProposal.ItemList.Add('import	 ','import ');
  //synProposal.ItemList.Add('instanceof	 ','instanceof ');  
  //synProposal.ItemList.Add('int	 ','int	');  
  //synProposal.ItemList.Add('interface	 ','interface	');
  //synProposal.ItemList.Add('long	 ','long ');
  //synProposal.ItemList.Add('native	 ','native ');
  //synProposal.ItemList.Add('new ','new	');
  //synProposal.ItemList.Add('package	 ','package	'); 
  //synProposal.ItemList.Add('private	 ','private	');
  //synProposal.ItemList.Add('public	 ','public ');
  //synProposal.ItemList.Add('protected	 ','protected	');
  //synProposal.ItemList.Add('return	 ','return ');
  //synProposal.ItemList.Add('short	 ','short	');
  //synProposal.ItemList.Add('static	 ','static ');
  //synProposal.ItemList.Add('strictfp	 ','strictfp ');
  //synProposal.ItemList.Add('super	 ','super	');    
  //synProposal.ItemList.Add('switch	 ','switch '); 
  //synProposal.ItemList.Add('synchronized	 ','synchronized ');
  //synProposal.ItemList.Add('this	 ','this ');
  //synProposal.ItemList.Add('throw	 ','throw	');
  //synProposal.ItemList.Add('throws	 ','throws '); 
  //synProposal.ItemList.Add('transient	 ','transient	');
  //synProposal.ItemList.Add('try { }	 ','try { }');
  //synProposal.ItemList.Add('void	 ','void ');
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
  //synProposal.ItemList.Add('abstract ','abstract ');
  //synProposal.ItemList.Add('alias ','alias ') ;
  //synProposal.ItemList.Add('and ','and ');
  //synProposal.ItemList.Add('array ','array ');
  //synProposal.ItemList.Add('asm ','asm ');
  //synProposal.ItemList.Add('assembler ','assembler ');
  //synProposal.ItemList.Add('begin  end; ','begin '+#13#10+'end; ');
  //synProposal.ItemList.Add('break ','break ');
  //synProposal.ItemList.Add('case ','case ');
  //synProposal.ItemList.Add('class ','class ');
  //synProposal.ItemList.Add('const ','const ');
  //synProposal.ItemList.Add('constructor ','constructor ');
  //synProposal.ItemList.Add('continue ','continue ');
  //synProposal.ItemList.Add('default ','default ');
  //synProposal.ItemList.Add('destructor ','destructor ');
  //synProposal.ItemList.Add('dispose ','dispose ');
  //synProposal.ItemList.Add('div ','div ');
  //synProposal.ItemList.Add('do begin end ','do begin '+#13#10+'end; ');
  //synProposal.ItemList.Add('downto ','downto ');
  //synProposal.ItemList.Add('else ','else ');
  //synProposal.ItemList.Add('end ','end ');
  //synProposal.ItemList.Add('except ','except ');
  //synProposal.ItemList.Add('exit ','exit ');
  //synProposal.ItemList.Add('export ','export ');
  //synProposal.ItemList.Add('exports ','exports ');
  //synProposal.ItemList.Add('external ','external ');
  //synProposal.ItemList.Add('false ','false ');
  //synProposal.ItemList.Add('file ','file ');
  //synProposal.ItemList.Add('finalization ','finalization ');
  //synProposal.ItemList.Add('finally ','finally ');
  //synProposal.ItemList.Add('for( ) ','for( ) ');
  //synProposal.ItemList.Add('for( ) begin end ','for( ) begin '+#13#10+'end; ');
  //synProposal.ItemList.Add('function ','function ');
  //synProposal.ItemList.Add('goto ','goto ');
  //synProposal.ItemList.Add('if( ) then ','if( ) then ');
  //synProposal.ItemList.Add('implementation ','implementation ');
  //synProposal.ItemList.Add('in ','in ');
  //synProposal.ItemList.Add('inherited ','inherited ');
  //synProposal.ItemList.Add('initialization ','initialization ');
  //synProposal.ItemList.Add('inline ','inline ');
  //synProposal.ItemList.Add('interface ','interface ');
  //synProposal.ItemList.Add('label ','label ');
  //synProposal.ItemList.Add('library ','library ');
  //synProposal.ItemList.Add('mod ','mod ');
  //synProposal.ItemList.Add('new ','new ');
  //synProposal.ItemList.Add('nil ','nil ');
  //synProposal.ItemList.Add('not ','not ');
  //synProposal.ItemList.Add('object ','object ');
  //synProposal.ItemList.Add('operator ','operator ');
  //synProposal.ItemList.Add('out ','out ');
  //synProposal.ItemList.Add('override ','override ');
  //synProposal.ItemList.Add('packed ','packed ');
  //synProposal.ItemList.Add('pascal ','pascal ');
  //synProposal.ItemList.Add('private ','private ')   ;
  //synProposal.ItemList.Add('procedure ','procedure ');
  //synProposal.ItemList.Add('program ','program ');
  //synProposal.ItemList.Add('property ','property ');
  //synProposal.ItemList.Add('protected ','protected ');
  //synProposal.ItemList.Add('public ','public ');
  //synProposal.ItemList.Add('published ','published ');
  //synProposal.ItemList.Add('raise ','raise ');   
  //synProposal.ItemList.Add('read ','read ')  ;
  //synProposal.ItemList.Add('record ','record ');
  //synProposal.ItemList.Add('repeat ','repeat ');
  //synProposal.ItemList.Add('self ','self ');
  //synProposal.ItemList.Add('set ','set ');
  //synProposal.ItemList.Add('shl ','shl ');
  //synProposal.ItemList.Add('shr ','shr ');
  //synProposal.ItemList.Add('string ','string ');
  //synProposal.ItemList.Add('then ','then ');
  //synProposal.ItemList.Add('then begin end; ','then begin '+#13#10+'end;');
  //synProposal.ItemList.Add('threadvar ','threadvar ');
  //synProposal.ItemList.Add('true ','true ');
  //synProposal.ItemList.Add('try ','try ') ;
  //synProposal.ItemList.Add('type ','type ');
  //synProposal.ItemList.Add('unit ','unit ');
  //synProposal.ItemList.Add('until ','until ');
  //synProposal.ItemList.Add('uses ','uses ');
  //synProposal.ItemList.Add('var ','var ');
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
  synProposal.ItemList.Add( '<abbr></abbr>');
  //synProposal.ItemList.Add('<acronym>',			 '<acronym></acronym>');
  //synProposal.ItemList.Add('<address>',			 '<address></address>');
  //synProposal.ItemList.Add('<applet>',			 '<applet />');
  //synProposal.ItemList.Add('<area>',				 '<area></area>');
  //synProposal.ItemList.Add('<article>',			 '<article></article>');
  //synProposal.ItemList.Add('<aside>',				 '<aside>');
  //synProposal.ItemList.Add('<audio>',				 '<audio>');
  //synProposal.ItemList.Add('<b>',					'<b></b>');
  //synProposal.ItemList.Add('<base>',				 '<base />');
  //synProposal.ItemList.Add('<basefont>',			 '<basefont />');
  //synProposal.ItemList.Add('<bdi>',				'<bdi>');
  //synProposal.ItemList.Add('<bdo>',				'<bdo>');
  //synProposal.ItemList.Add('<big>',				'<big></big>');
  //synProposal.ItemList.Add('<blockquote>',		 '<blockquote></blockquote>');
  //synProposal.ItemList.Add('<body>',				 '<body></body>');
  //synProposal.ItemList.Add('<br>',				'<br />');
  //synProposal.ItemList.Add('<button>',			 '<button />');
  //synProposal.ItemList.Add('<canvas>',			 '<canvas></canvas>');
  //synProposal.ItemList.Add('<caption>',			 '<caption></caption>');
  //synProposal.ItemList.Add('<center>',			 '<center>');
  //synProposal.ItemList.Add('<cite>',				 '<cite></cite>');
  //synProposal.ItemList.Add('<code>',				 '<code></code>');
  //synProposal.ItemList.Add('<col>',				'<col></col>');
  //synProposal.ItemList.Add('<colgroup>', 	 '<colgroup></colgroup>');
  //synProposal.ItemList.Add('<command>',	 '<command />');
  //synProposal.ItemList.Add('<datalist>', 	 '<colgroup></colgroup>');
  //synProposal.ItemList.Add('<dd>',		 '<dd></dd>');
  //synProposal.ItemList.Add('<del>',		 '<del></del>');
  //synProposal.ItemList.Add('<details>',	 '<details></details>');
  //synProposal.ItemList.Add('<dfn>',		 '<dfn>');
  //synProposal.ItemList.Add('<dialog>', 	 '<dialog></dialog>');
  //synProposal.ItemList.Add('<dir>',		 '<dir></dir>');
  //synProposal.ItemList.Add('<div>',		 '<div></div>');
  //synProposal.ItemList.Add('<dl>',		 '<dl></dl>');
  //synProposal.ItemList.Add('<dt>',		 '<dt></dt>');
  //synProposal.ItemList.Add('<em>',		 '<em></em>');
  //synProposal.ItemList.Add('<embed>',	 	 '<embed />');
  //synProposal.ItemList.Add('<fieldset>',	'<fieldset></fieldset>');
  //synProposal.ItemList.Add('<figcaption>','<figcaption></figcaption>');
  //synProposal.ItemList.Add('<figure>', '<figure />');
  //synProposal.ItemList.Add('<font>',	 '<font></font>');
  //synProposal.ItemList.Add('<footer>', '<footer></footer>');
  //synProposal.ItemList.Add('<form>',	 '<form></form>');
  //synProposal.ItemList.Add('<frame>',	 '<frame></frame>');
  //synProposal.ItemList.Add('<frameset>',	 '<frameset></frameset>');
  //synProposal.ItemList.Add('<h1>', '<h1></h1>');
  //synProposal.ItemList.Add('<h2>', '<h2></h2>');
  //synProposal.ItemList.Add('<h3>', '<h3></h3>');
  //synProposal.ItemList.Add('<h4>', '<h4></h4>');
  //synProposal.ItemList.Add('<h5>', '<h5></h5>');
  //synProposal.ItemList.Add('<h6>', '<h6></h6>');
  //synProposal.ItemList.Add('<head>', '<head></head>');
  //synProposal.ItemList.Add('<header>',		 '<header></header>');
  //synProposal.ItemList.Add('<hr>', '<hr />');
  //synProposal.ItemList.Add('<html>',	 '<html></html>');
  //synProposal.ItemList.Add('<html><head></head><body></body></html>',	 '<html><head></head><body></body></html>');
  //synProposal.ItemList.Add('<i>',	 '<i></i>');
  //synProposal.ItemList.Add('<iframe>',	 '<iframe />');
  //synProposal.ItemList.Add('<img>',	'<img></img>');
  //synProposal.ItemList.Add('<input>',	'<input type="" />');
  //synProposal.ItemList.Add('<ins>',	 '<ins></ins>');
  //synProposal.ItemList.Add('<kbd>',		 '<kbd />');
  //synProposal.ItemList.Add('<keygen>',	 '<keygen />');
  //synProposal.ItemList.Add('<label>',	 	 '<label></label>');
  //synProposal.ItemList.Add('<legend>', 	 '<legend></legend>');
  //synProposal.ItemList.Add('<li>',		 '<li></li>');
  //synProposal.ItemList.Add('<link>',	 	 '<link></link>');
  //synProposal.ItemList.Add('<map>',		 '<map></map>');
  //synProposal.ItemList.Add('<mark>',	 	 '<mark></mark>');
  //synProposal.ItemList.Add('<menu>',	 	 '<menu></menu>');
  //synProposal.ItemList.Add('<meta>',	 	 '<meta />');
  //synProposal.ItemList.Add('<meter>',	 	 '<meter />');
  //synProposal.ItemList.Add('<nav>',		 '<nav></nav>');
  //synProposal.ItemList.Add('<noframes>',		 '<noframes></noframes>');
  //synProposal.ItemList.Add('<noscript>',		 '<noscript></noscript>');
  //synProposal.ItemList.Add('<object>',		 '<object />');
  //synProposal.ItemList.Add('<ol>',			'<ol></ol>');
  //synProposal.ItemList.Add('<optgroup>',		 '<optgroup></optgroup>');
  //synProposal.ItemList.Add('<option>',		 '<option></option>');
  //synProposal.ItemList.Add('<output>',		 '<output />');
  //synProposal.ItemList.Add('<p>',				'<p></p>');
  //synProposal.ItemList.Add('<param>',			 '<param></param>');
  //synProposal.ItemList.Add('<pre>',			'<pre></pre>');
  //synProposal.ItemList.Add('<progress>',		 '<progress />');
  //synProposal.ItemList.Add('<q>',				'<q></q>');
  //synProposal.ItemList.Add('<rp>',			'<rp></rp>');
  //synProposal.ItemList.Add('<rt>',			'<rt></rt>');
  //synProposal.ItemList.Add('<ruby>',			 '<ruby />');
  //synProposal.ItemList.Add('<samp>',			 '<samp />');
  //synProposal.ItemList.Add('<script>',		 '<script></script>');
  //synProposal.ItemList.Add('<section>',		 '<section></section>');
  //synProposal.ItemList.Add('<select>',		 '<select />');
  //synProposal.ItemList.Add('<small>',			 '<small></small>');
  //synProposal.ItemList.Add('<source>',		 '<source></source>');
  //synProposal.ItemList.Add('<span>',			 '<span />');
  //synProposal.ItemList.Add('<strike>',		 '<strike></strike>');
  //synProposal.ItemList.Add('<strong>',		 '<strong></strong>');
  //synProposal.ItemList.Add('<style>',			 '<style />');
  //synProposal.ItemList.Add('<sub>',			'<sub></sub>');
  //synProposal.ItemList.Add('<summary>',		 '<summary></summary>');
  //synProposal.ItemList.Add('<sup>',			'<sup></sup>');
  //synProposal.ItemList.Add('<table>',			 '<table></table>');
  //synProposal.ItemList.Add('<tbody>',	 '<tbody></tbody>');
  //synProposal.ItemList.Add('<td>',	 '<td></td>');
  //synProposal.ItemList.Add('<textarea>',		 '<textarea></textarea>');
  //synProposal.ItemList.Add('<tfoot>',			 '<tfoot></tfoot>');
  //synProposal.ItemList.Add('<th>',			'<th></th>');
  //synProposal.ItemList.Add('<thead>',			 '<thead></thead>');
  //synProposal.ItemList.Add('<time>',			 '<time />');
  //synProposal.ItemList.Add('<title>',			 '<title></title>');
  //synProposal.ItemList.Add('<tr>',			'<tr></tr>');
  //synProposal.ItemList.Add('<track>',			 '<track />');
  //synProposal.ItemList.Add('<tt>',			'<tt></tt>');
  //synProposal.ItemList.Add('<u>',				'<u></u>');
  //synProposal.ItemList.Add('<ul>',			'<ul></ul>');
  //synProposal.ItemList.Add('<var>',			'<var />');
  //synProposal.ItemList.Add('<video>',			 '<video />');
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

(**
* anche questa lista di keyword è già ordinata!
*)
Procedure TEditorMainForm.SettaCsharp(Sender: TObject);
Begin
 // synProposal.ItemList.Clear;
 // synProposal.ItemList.Add('abstract','abstract	');
 // synProposal.ItemList.Add('alias','alias	');
 // synProposal.ItemList.Add('ascending','ascending ');
 // synProposal.ItemList.Add('async','async ');
 // synProposal.ItemList.Add('await','await	');
 // synProposal.ItemList.Add('base	 ','base ');
 // synProposal.ItemList.Add('bool	 ','bool ');
 // synProposal.ItemList.Add('break	 ','break	');
 // synProposal.ItemList.Add('byte	 ','byte ');
 // synProposal.ItemList.Add('case	 ','case ');
 // synProposal.ItemList.Add('catch { }	 ','catch { '+#13#10+'}');
 // synProposal.ItemList.Add('catch(Exception ex) { }	 ','catch(Exception ex) { '+#13#10+'}');
 // synProposal.ItemList.Add('char	 ','char ');
 // synProposal.ItemList.Add('checked	 ','checked	');
 // synProposal.ItemList.Add('class	 ','class	');
 // synProposal.ItemList.Add('const	 ','const	');
 // synProposal.ItemList.Add('continue	 ','continue ');
 // synProposal.ItemList.Add('decimal	 ','decimal	');
 // synProposal.ItemList.Add('default	 ','default	');
 // synProposal.ItemList.Add('delegate	 ','delegate ');
 // synProposal.ItemList.Add('descending','descending	'); 
 // synProposal.ItemList.Add('double	 ','double ');
 // synProposal.ItemList.Add('dynamic','dynamic	');
 // synProposal.ItemList.Add('else { }	 ','else { }');
 // synProposal.ItemList.Add('enum	 ','enum ');
 // synProposal.ItemList.Add('event	 ','event	');
 // synProposal.ItemList.Add('explicit	 ','explicit ');
 // synProposal.ItemList.Add('extern	 ','extern ');
 // synProposal.ItemList.Add('false	 ','false	');
 // synProposal.ItemList.Add('finally{ }','finally{ }');
 // synProposal.ItemList.Add('fixed	 ','fixed ');
 // synProposal.ItemList.Add('float	 ','float	');
 // synProposal.ItemList.Add('for( ) { } ','for( ) { '+#13#10+'}');
 // synProposal.ItemList.Add('for(int i=0;i< ; i++) { } ','for(int i=0;i< ; i++) { '+#13#10+'}');
 // synProposal.ItemList.Add('foreach	 ','foreach( in ) { '+#13#10+'}');
 // synProposal.ItemList.Add('from','from	');
 // synProposal.ItemList.Add('global','global	'); 
 // synProposal.ItemList.Add('goto	 ','goto ');
 // synProposal.ItemList.Add('group','group	');
 // synProposal.ItemList.Add('if( ) { }	 ','if( ) { '+#13#10+'}');
 // synProposal.ItemList.Add('implicit	 ','implicit ');
 // synProposal.ItemList.Add('int	 ','int	');
 // synProposal.ItemList.Add('interface	 ','interface	');
 // synProposal.ItemList.Add('internal	 ','internal ');
 // synProposal.ItemList.Add('into','into	');
 // synProposal.ItemList.Add('join','join ');
 // synProposal.ItemList.Add('lock	 ','lock ');
 // synProposal.ItemList.Add('long	 ','long ');
 // synProposal.ItemList.Add('namespace	 ','namespace	');
 // synProposal.ItemList.Add('new	 ','new	');
 // synProposal.ItemList.Add('null	 ','null ');
 // synProposal.ItemList.Add('object	 ','object ');
 // synProposal.ItemList.Add('operator	 ','operator ');
 // synProposal.ItemList.Add('orderby','orderby ');    
 // synProposal.ItemList.Add('override	 ','override ');   
 // synProposal.ItemList.Add('params	 ','params ');
 // synProposal.ItemList.Add('partial','partial ');
 // synProposal.ItemList.Add('private	 ','private	');
 // synProposal.ItemList.Add('protected	 ','protected	');
 // synProposal.ItemList.Add('public	 ','public ');
 // synProposal.ItemList.Add('readonly	 ','readonly ');
 // synProposal.ItemList.Add('ref	 ','ref	');
 // synProposal.ItemList.Add('remove','remove	');
 // synProposal.ItemList.Add('return	 ','return ');
 // synProposal.ItemList.Add('sbyte	 ','sbyte	');
 // synProposal.ItemList.Add('sealed	 ','sealed ');
 // synProposal.ItemList.Add('select','select	');
 // synProposal.ItemList.Add('set','set ');
 // synProposal.ItemList.Add('short	 ','short	');
 // synProposal.ItemList.Add('sizeof	 ','sizeof ');
 // synProposal.ItemList.Add('stackalloc	 ','stackalloc ');
 // synProposal.ItemList.Add('static	 ','static ');
 // synProposal.ItemList.Add('string	 ','string ');
 // synProposal.ItemList.Add('struct	 ','struct ');
 // synProposal.ItemList.Add('switch	 ','switch ');
 // synProposal.ItemList.Add('this	 ','this ');
 // synProposal.ItemList.Add('throw	 ','throw	');
 // synProposal.ItemList.Add('true	 ','true ');
 // synProposal.ItemList.Add('try { }','try	{ }');
 // synProposal.ItemList.Add('try { } catch { }','try	{ '+#13#10+'} catch { '+#13#10+'}');
 // synProposal.ItemList.Add('try { } finally { }','try	{ '+#13#10+'} finally { '+#13#10+'}');
 // synProposal.ItemList.Add('typeof','typeof	 ');
 // synProposal.ItemList.Add('uint','uint	');
 // synProposal.ItemList.Add('ulong','ulong	');
 // synProposal.ItemList.Add('unchecked','unchecked	');
 // synProposal.ItemList.Add('unsafe','unsafe ');
 // synProposal.ItemList.Add('ushort','ushort	');
 // synProposal.ItemList.Add('using ','using	');
 // synProposal.ItemList.Add('value','value ');
 // synProposal.ItemList.Add('var','var ');
 // synProposal.ItemList.Add('virtual','virtual ');
 // synProposal.ItemList.Add('void','	void ');
 // synProposal.ItemList.Add('volatile','volatile ');
 //  synProposal.ItemList.Add('where','where ');
 // synProposal.ItemList.Add('while( ) { }','while( ) {'+#13#10+'}');
 // synProposal.ItemList.Add('yield','yield ');
 // LoadSnippetForLanguage(glCs);
 // synProposal.Editor:=SynEdit1;
 //
 // AddSnippet.Enabled:=true;
 // CleanupSnippet.Enabled:=true;
 //
 //// linguaggio := glCs;
 //// synedit1.Highlighter := synCSSyn1;
 // unsetAllImages();
 // c1.ImageIndex := 1;
 // strumenticompila.Enabled := true;
 // helpcompilatore.Enabled  := true;
 // formattaxml1.Visible     := false;        
 // commentPattern:= '//';
 // commentPattern2:= ''; 
 // EditComment.Enabled:=True;
 // EditUncomment.Enabled:=True;  
 // syntaxLabel.Caption := 'C#'; 
 //  if lingua<>nil then MnuSyntax.Caption :=  lingua.S_Syntax_Title+' (C#)';
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
  //synProposal.ItemList.Add('assert ','assert ');
  //synProposal.ItemList.Add('break ','break ');
  //synProposal.ItemList.Add('class ','class ');
  //synProposal.ItemList.Add('continue ','continue ');
  //synProposal.ItemList.Add('def ','def ') ;
  //synProposal.ItemList.Add('del ','del ');
  //synProposal.ItemList.Add('elif ','elif ');
  //synProposal.ItemList.Add('else ','else ');
  //synProposal.ItemList.Add('except ','except ');
  //synProposal.ItemList.Add('exec ','exec ');
  //synProposal.ItemList.Add('finally ','finally ');
  //synProposal.ItemList.Add('from ','from ');
  //synProposal.ItemList.Add('for ','for ');
  //synProposal.ItemList.Add('global ','global ');
  //synProposal.ItemList.Add('if ','if ');
  //synProposal.ItemList.Add('import ','import ');
  //synProposal.ItemList.Add('in ','in ');
  //synProposal.ItemList.Add('is ','is ');
  //synProposal.ItemList.Add('lambda ','lambda ');
  //synProposal.ItemList.Add('not ','not ') ;
  //synProposal.ItemList.Add('or ','or ');
  //synProposal.ItemList.Add('pass ','pass ');
  //synProposal.ItemList.Add('print ','print ');
  //synProposal.ItemList.Add('raise ','raise ');
  //synProposal.ItemList.Add('return ','return ');
  //synProposal.ItemList.Add('try ','try ') ;
  //synProposal.ItemList.Add('while ','while ') ;
  //synProposal.ItemList.Add('with ','with ');
  //synProposal.ItemList.Add('yield ','yield ');
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
  //synProposal.ItemList.Add('boolean ','boolean ');
  //synProposal.ItemList.Add('break ','break ');
  //synProposal.ItemList.Add('byte ','byte ');
  //synProposal.ItemList.Add('case ','case ');
  //synProposal.ItemList.Add('catch ','catch ');
  //synProposal.ItemList.Add('char ','char ');
  //synProposal.ItemList.Add('class ','class ');
  //synProposal.ItemList.Add('const ','const ');
  //synProposal.ItemList.Add('continue ','continue ');
  //synProposal.ItemList.Add('debugger ','debugger ');
  //synProposal.ItemList.Add('default ','default ');
  //synProposal.ItemList.Add('do ','do ');
  //synProposal.ItemList.Add('double ','double ');
  //synProposal.ItemList.Add('else ','else ');
  //synProposal.ItemList.Add('enum ','enum ');
  //synProposal.ItemList.Add('export ','export ');
  //synProposal.ItemList.Add('extends ','extends ');
  //synProposal.ItemList.Add('final ','final ');
  //synProposal.ItemList.Add('finally ','finally ');
  //synProposal.ItemList.Add('float ','float ');
  //synProposal.ItemList.Add('for ','for ') ;
  //synProposal.ItemList.Add('function ','function ');
  //synProposal.ItemList.Add('goto ','goto ');
  //synProposal.ItemList.Add('if ','if ');
  //synProposal.ItemList.Add('implements ','implements ');
  //synProposal.ItemList.Add('import ','import ');
  //synProposal.ItemList.Add('instanceof ','instanceof ');
  //synProposal.ItemList.Add('in ','in ');
  //synProposal.ItemList.Add('int ','int ');
  //synProposal.ItemList.Add('interface ','interface ');
  //synProposal.ItemList.Add('long ','long ');
  //synProposal.ItemList.Add('native ','native ');
  //synProposal.ItemList.Add('new ','new ');
  //synProposal.ItemList.Add('package ','package ');
  //synProposal.ItemList.Add('private ','private ');
  //synProposal.ItemList.Add('protected ','protected ');
  //synProposal.ItemList.Add('public ','public '); 
  //synProposal.ItemList.Add('return ','return ');
  //synProposal.ItemList.Add('short ','short ');
  //synProposal.ItemList.Add('static ','static ');
  //synProposal.ItemList.Add('super ','super ');
  //synProposal.ItemList.Add('switch ','switch ');
  //synProposal.ItemList.Add('synchronized ','synchronized ');
  //synProposal.ItemList.Add('this ','this ');
  //synProposal.ItemList.Add('throw ','throw ');
  //synProposal.ItemList.Add('throws ','throws ') ;
  //synProposal.ItemList.Add('transient ','transient ');
  //synProposal.ItemList.Add('try ','try ');     
  //synProposal.ItemList.Add('typeof ','typeof ') ; 
  //synProposal.ItemList.Add('var ','var ') ;
  //synProposal.ItemList.Add('void ','void ') ;
  //synProposal.ItemList.Add('volatile ','volatile ');   
  //synProposal.ItemList.Add('while ','while ') ;
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
