(**
Main unit of the GLeDitor project

@author De Michelis Gian Luca
*)

Unit Main;

{$MODE Delphi}

// GLeDitor v.3 for Apple Mac architecture

Interface

Uses 
Preferences, LCLIntf, LCLType, LMessages, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
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
    Function GetNextTheme(): string;
    Function GetNextEnumTheme(): TGleditTheme;
    Function GetNextThemeBy(var ath:TGleditTheme): string;
    Procedure SetColors();
    //Procedure loadCallconf();
    Procedure LoadTotalConf();
    procedure SynProposalCodeCompletion(var Value: string; SourceValue: string;
      var SourceStart, SourceEnd: TPoint; KeyChar: TUTF8Char; Shift: TShiftState
      );
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
      Procedure WMSyscommand(Var Message: TWmSysCommand);
      message WM_SYSCOMMAND;
  End;

Var 
  EditorMainForm: TEditorMainForm;
  /// the running istance of the editor class form

Implementation

Uses strutils, Utility;

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
    SynEdit1.Lines.LoadFromFile(afilename,false);
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
  // configurazioni globali totali
  cfgdir := GetEnvVarValue('LOCALAPPDATA')+'\GLeDitor'; 
  cfgfile := cfgdir+'\gledit.ini';
  if (directoryexists(cfgdir) = false) then
    CreateDir(cfgdir);
  // altro
  CustomThemeYetSelected := false;
  SpeechCreation;
  exepath := extractfilepath(ParamStr(0));
  //SearchOpened:=false;
  SearchPanel.Visible := SearchOpened;
  // Ora: ho passato parametri al gledit ??
  if ParamCount>0 then Begin
    for I := 1 to ParamCount do Begin
      if StartsStr('-S=',ParamStr(I)) then Begin
        S:=StrToInt( copy(ParamStr(I),4,Length(ParamStr(I))-3));
      End
      else  if StartsStr('-T=',ParamStr(I)) then Begin
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
  caption := 'GLeDitor - '+nFile;
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
  synProposal.ItemList.AddPair('ABSOLUTE','ABSOLUTE	');
  synProposal.ItemList.AddPair('ACTION','ACTION ');
  synProposal.ItemList.AddPair('AFTER','AFTER	');
  synProposal.ItemList.AddPair('ALLOCATE','ALLOCATE ');
  synProposal.ItemList.AddPair('ALTER TABLE','ALTER	TABLE ');
  synProposal.ItemList.AddPair('ARRAY','ARRAY	');
  synProposal.ItemList.AddPair('ASENSITIVE','ASENSITIVE	');
  synProposal.ItemList.AddPair('ASSERTION','ASSERTION	');
  synProposal.ItemList.AddPair('ASYMMETRIC','ASYMMETRIC ');
  synProposal.ItemList.AddPair('ATOMIC','ATOMIC ');
  synProposal.ItemList.AddPair('AUTHORIZATION','AUTHORIZATION	');
  synProposal.ItemList.AddPair('BEFORE','BEFORE ');
  synProposal.ItemList.AddPair('BEGIN','BEGIN	');
  synProposal.ItemList.AddPair('BETWEEN','BETWEEN ');
  synProposal.ItemList.AddPair('BINARY','BINARY	');
  synProposal.ItemList.AddPair('BLOB','BLOB	');
  synProposal.ItemList.AddPair('BOOLEAN','BOOLEAN	');
  synProposal.ItemList.AddPair('BOTH','BOTH');
  synProposal.ItemList.AddPair('BREADTH','BREADTH	');
  synProposal.ItemList.AddPair('CALL','CALL ');
  synProposal.ItemList.AddPair('CASCADE','CASCADE	');
  synProposal.ItemList.AddPair('CASE','CASE ');
  synProposal.ItemList.AddPair('CAST','	CAST ');
  synProposal.ItemList.AddPair('CATALOG','CATALOG	');
  synProposal.ItemList.AddPair('CHAR()','CHAR( ) ');
  synProposal.ItemList.AddPair('CHARACTER','CHARACTER');
  synProposal.ItemList.AddPair('CHECK','CHECK	');
  synProposal.ItemList.AddPair('CLOB','CLOB ');
  synProposal.ItemList.AddPair('CLOSE','CLOSE	');
  synProposal.ItemList.AddPair('COLLATE','COLLATE	');
  synProposal.ItemList.AddPair('COLLATION','COLLATION	');
  synProposal.ItemList.AddPair('COLUMN','COLUMN ');
  synProposal.ItemList.AddPair('COMMIT','COMMIT	');
  synProposal.ItemList.AddPair('CONDITION','CONDITION	');
  synProposal.ItemList.AddPair('CONNECT','CONNECT	');
  synProposal.ItemList.AddPair('CONNECTION','CONNECTION	');
  synProposal.ItemList.AddPair('CONSTRAINT','CONSTRAINT	');
  synProposal.ItemList.AddPair('CONSTRUCTOR','CONSTRUCTOR	');
  synProposal.ItemList.AddPair('CONTINUE','CONTINUE	');
  synProposal.ItemList.AddPair('CORRESPONDING','CORRESPONDING	');
  synProposal.ItemList.AddPair('CREATE','CREATE ');
  synProposal.ItemList.AddPair('CREATE TABLE(...','CREATE TABLE( ');
  synProposal.ItemList.AddPair('CROSS','CROSS ');
  synProposal.ItemList.AddPair('CURRENT','CURRENT	');
  synProposal.ItemList.AddPair('CURRENT_DATE','CURRENT_DATE	');
  synProposal.ItemList.AddPair('CURRENT_PATH','CURRENT_PATH	');
  synProposal.ItemList.AddPair('CURRENT_ROLE','CURRENT_ROLE	');
  synProposal.ItemList.AddPair('CURRENT_TIME','CURRENT_TIME	');
  synProposal.ItemList.AddPair('CURRENT_TIMESTAMP','CURRENT_TIMESTAMP ');
  synProposal.ItemList.AddPair('CURRENT_USER','CURRENT_USER	');
  synProposal.ItemList.AddPair('CURSOR','CURSOR	');
  synProposal.ItemList.AddPair('CYCLE','CYCLE	');
  synProposal.ItemList.AddPair('DATA','DATA ');
  synProposal.ItemList.AddPair('DATE','DATE ');
  synProposal.ItemList.AddPair('DEALLOCATE','DEALLOCATE ');
  synProposal.ItemList.AddPair('DECIMAL','DECIMAL ');
  synProposal.ItemList.AddPair('DECLARE','DECLARE	');
  synProposal.ItemList.AddPair('DEFAULT','DEFAULT ');
  synProposal.ItemList.AddPair('DEFERRABLE','DEFERRABLE	');
  synProposal.ItemList.AddPair('DEFERRED','DEFERRED	');
  synProposal.ItemList.AddPair('DELETE	 ','DELETE ');
  synProposal.ItemList.AddPair('DEPTH	 ','DEPTH	');
  synProposal.ItemList.AddPair('DEREF	 ','DEREF	');
  synProposal.ItemList.AddPair('DESC	 ','DESC ');
  synProposal.ItemList.AddPair('DESCRIBE	 ','DESCRIBE ');
  synProposal.ItemList.AddPair('DETERMINISTIC	 ','DETERMINISTIC	');
  synProposal.ItemList.AddPair('DISCONNECT	 ','DISCONNECT ');
  synProposal.ItemList.AddPair('DISTINCT	 ','DISTINCT ');
  synProposal.ItemList.AddPair('DOMAIN	 ','DOMAIN ');
  synProposal.ItemList.AddPair('DOUBLE	 ','DOUBLE ');
  synProposal.ItemList.AddPair('DROP	 ','DROP ');
  synProposal.ItemList.AddPair('DYNAMIC	 ','DYNAMIC	');
  synProposal.ItemList.AddPair('ELSE	 ','ELSE ');
  synProposal.ItemList.AddPair('ELSEIF	 ','ELSEIF ');
  synProposal.ItemList.AddPair('EQUALS	 ','EQUALS ');
  synProposal.ItemList.AddPair('ESCAPE	 ','ESCAPE ');
  synProposal.ItemList.AddPair('EXCEPT	 ','EXCEPT ');
  synProposal.ItemList.AddPair('EXEC	 ','EXEC ');
  synProposal.ItemList.AddPair('EXECUTE	 ','EXECUTE	');
  synProposal.ItemList.AddPair('EXISTS	 ','EXISTS ');
  synProposal.ItemList.AddPair('EXIT	 ','EXIT ');
  synProposal.ItemList.AddPair('EXTERNAL	 ','EXTERNAL ');
  synProposal.ItemList.AddPair('FALSE	 ','FALSE ');
  synProposal.ItemList.AddPair('FETCH	 ','FETCH	');
  synProposal.ItemList.AddPair('FILTER	 ','FILTER ');
  synProposal.ItemList.AddPair('FLOAT	 ','FLOAT	');
  synProposal.ItemList.AddPair('FOREIGN	 ','FOREIGN	');
  synProposal.ItemList.AddPair('FROM	 ','FROM ');
  synProposal.ItemList.AddPair('FUNCTION	 ','FUNCTION ');
  synProposal.ItemList.AddPair('GENERAL	 ','GENERAL	');
  synProposal.ItemList.AddPair('GLOBAL	 ','GLOBAL ');
  synProposal.ItemList.AddPair('GOTO	 ','GOTO ');
  synProposal.ItemList.AddPair('GRANT	 ','GRANT	');
  synProposal.ItemList.AddPair('GROUP	 ','GROUP	');
  synProposal.ItemList.AddPair('GROUPING	 ','GROUPING ');
  synProposal.ItemList.AddPair('HAVING	 ','HAVING ');
  synProposal.ItemList.AddPair('IDENTITY	 ','IDENTITY ');
  synProposal.ItemList.AddPair('IMMEDIATE	 ','IMMEDIATE	');
  synProposal.ItemList.AddPair('INITIALLY	 ','INITIALLY	');
  synProposal.ItemList.AddPair('INNER	 ','INNER	');
  synProposal.ItemList.AddPair('INNER	JOIN','INNER JOIN	');
  synProposal.ItemList.AddPair('INPUT	 ','INPUT	');
  synProposal.ItemList.AddPair('INSERT	 ','INSERT ');
  synProposal.ItemList.AddPair('INTEGER	 ','INTEGER	');
  synProposal.ItemList.AddPair('INTERSECT	 ','INTERSECT	');
  synProposal.ItemList.AddPair('INTERVAL	 ','INTERVAL ');
  synProposal.ItemList.AddPair('INTO	 ','INTO ');
  synProposal.ItemList.AddPair('ISOLATION	 ','ISOLATION	');
  synProposal.ItemList.AddPair('ITERATE	 ','ITERATE	');
  synProposal.ItemList.AddPair('JOIN	 ','JOIN ');
  synProposal.ItemList.AddPair('LARGE	 ','LARGE	');
  synProposal.ItemList.AddPair('LATERAL','LATERAL	');
  synProposal.ItemList.AddPair('LEFT	 ','LEFT ');
  synProposal.ItemList.AddPair('LEFT JOIN','LEFT JOIN ');
  synProposal.ItemList.AddPair('LEVEL	 ','LEVEL	');
  synProposal.ItemList.AddPair('LIKE	 ','LIKE  ');
  synProposal.ItemList.AddPair('LOCAL	 ','LOCAL	');
  synProposal.ItemList.AddPair('METHOD	 ','METHOD ');
  synProposal.ItemList.AddPair('MODIFIES','MODIFIES ');
  synProposal.ItemList.AddPair('MODULE','MODULE ');
  synProposal.ItemList.AddPair('NCHAR','NCHAR ');
  synProposal.ItemList.AddPair('NCLOB','NCLOB	');
  synProposal.ItemList.AddPair('NEXT','NEXT	');
  synProposal.ItemList.AddPair('NONE','NONE ');
  synProposal.ItemList.AddPair('NULL','NULL ');
  synProposal.ItemList.AddPair('NUMERIC','NUMERIC	');
  synProposal.ItemList.AddPair('OBJECT','OBJECT	');
  synProposal.ItemList.AddPair('ONLY','ONLY	');
  synProposal.ItemList.AddPair('OPEN','OPEN	');
  synProposal.ItemList.AddPair('OPTION','OPTION	');
  synProposal.ItemList.AddPair('ORDER','ORDER	');
  synProposal.ItemList.AddPair('ORDINALITY','ORDINALITY	');
  synProposal.ItemList.AddPair('OUTER','OUTER	');
  synProposal.ItemList.AddPair('OUTER JOIN','OUTER JOIN	');
  synProposal.ItemList.AddPair('OUTPUT','OUTPUT	');
  synProposal.ItemList.AddPair('OVER','OVER	');
  synProposal.ItemList.AddPair('PARAMETER','PARAMETER	');
  synProposal.ItemList.AddPair('PARTIAL','PARTIAL	');
  synProposal.ItemList.AddPair('PARTITION','PARTITION	');
  synProposal.ItemList.AddPair('PATH','PATH	');
  synProposal.ItemList.AddPair('PRECISION','PRECISION	');
  synProposal.ItemList.AddPair('PREPARE','PREPARE	');
  synProposal.ItemList.AddPair('PRESERVE','PRESERVE	');
  synProposal.ItemList.AddPair('PRIMARY','PRIMARY	');
  synProposal.ItemList.AddPair('PRIMARY KEY','PRIMARY	KEY ');
  synProposal.ItemList.AddPair('PRIOR','PRIOR	');
  synProposal.ItemList.AddPair('PRIVILEGES','PRIVILEGES	');
  synProposal.ItemList.AddPair('PROCEDURE','PROCEDURE	');
  synProposal.ItemList.AddPair('PUBLIC','PUBLIC	');
  synProposal.ItemList.AddPair('RANGE','RANGE	');
  synProposal.ItemList.AddPair('REAL','REAL ');
  synProposal.ItemList.AddPair('RECURSIVE','RECURSIVE	');
  synProposal.ItemList.AddPair('REFERENCES','REFERENCES ');
  synProposal.ItemList.AddPair('RELATIVE','RELATIVE ');
  synProposal.ItemList.AddPair('RELEASE','RELEASE ');
  synProposal.ItemList.AddPair('REPEAT','REPEAT	');
  synProposal.ItemList.AddPair('RESULT','RESULT	');
  synProposal.ItemList.AddPair('RETURN','RETURN	');
  synProposal.ItemList.AddPair('RETURNS','RETURNS	');
  synProposal.ItemList.AddPair('REVOKE','REVOKE	');
  synProposal.ItemList.AddPair('RIGHT','RIGHT	');
  synProposal.ItemList.AddPair('ROLE','ROLE	');
  synProposal.ItemList.AddPair('ROLLBACK','ROLLBACK	');
  synProposal.ItemList.AddPair('ROLLUP','ROLLUP ');
  synProposal.ItemList.AddPair('ROUTINE','ROUTINE ');
  synProposal.ItemList.AddPair('ROW','ROW	');
  synProposal.ItemList.AddPair('SCHEMA','SCHEMA	 ');
  synProposal.ItemList.AddPair('SCOPE','SCOPE	');
  synProposal.ItemList.AddPair('SCROLL','SCROLL	');
  synProposal.ItemList.AddPair('SEARCH','SEARCH ');
  synProposal.ItemList.AddPair('SECTION','SECTION	');
  synProposal.ItemList.AddPair('SELECT','SELECT	');
  synProposal.ItemList.AddPair('SESSION','SESSION ');
  synProposal.ItemList.AddPair('SESSION_USER','SESSION_USER	');
  synProposal.ItemList.AddPair('SIZE','SIZE	');
  synProposal.ItemList.AddPair('SMALLINT','SMALLINT ');
  synProposal.ItemList.AddPair('START','START	');
  synProposal.ItemList.AddPair('STATE','STATE	');
  synProposal.ItemList.AddPair('STATIC','STATIC ');
  synProposal.ItemList.AddPair('SYSTEM','SYSTEM	');
  synProposal.ItemList.AddPair('TABLE','TABLE	');
  synProposal.ItemList.AddPair('THEN','THEN	');
  synProposal.ItemList.AddPair('TIME','TIME ');
  synProposal.ItemList.AddPair('TIMESTAMP','TIMESTAMP	');
  synProposal.ItemList.AddPair('TRAILING','TRAILING ');
  synProposal.ItemList.AddPair('TRANSACTION','TRANSACTION	');
  synProposal.ItemList.AddPair('TREAT','TREAT	');
  synProposal.ItemList.AddPair('TRIGGER','TRIGGER	');
  synProposal.ItemList.AddPair('TRUE','TRUE ');
  synProposal.ItemList.AddPair('UNDER','UNDER	');
  synProposal.ItemList.AddPair('UNDO','UNDO ');
  synProposal.ItemList.AddPair('UNION','UNION	');
  synProposal.ItemList.AddPair('UNIQUE','UNIQUE ');
  synProposal.ItemList.AddPair('UNKNOWN','UNKNOWN	');
  synProposal.ItemList.AddPair('UNNEST','UNNEST ');
  synProposal.ItemList.AddPair('UNTIL','UNTIL ');
  synProposal.ItemList.AddPair('UPDATE','UPDATE	');
  synProposal.ItemList.AddPair('USER','USER ');
  synProposal.ItemList.AddPair('USING','USING	');
  synProposal.ItemList.AddPair('VALUE','VALUE	');
  synProposal.ItemList.AddPair('VALUES( )','VALUES (	)');
  synProposal.ItemList.AddPair('VARCHAR( )','VARCHAR( )');
  synProposal.ItemList.AddPair('VIEW ','VIEW ');
  synProposal.ItemList.AddPair('WHEN ','WHEN ');
  synProposal.ItemList.AddPair('WHERE','WHERE	');
  synProposal.ItemList.AddPair('WHILE','WHILE ');
  synProposal.ItemList.AddPair('WITH','	WITH ');
  synProposal.ItemList.AddPair('WITHIN','	WITHIN ');
  synProposal.ItemList.AddPair('WITHOUT','	WITHOUT	');
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
  synProposal.ItemList.AddPair('and ','and ')  ;
  synProposal.ItemList.AddPair('asm ','asm ')  ;
  synProposal.ItemList.AddPair('bitand ','bitand ')  ;
  synProposal.ItemList.AddPair('bitor ','bitor ') ;
  synProposal.ItemList.AddPair('bool ','bool ')  ;
  synProposal.ItemList.AddPair('break ','break ') ;
  synProposal.ItemList.AddPair('case ','case ')  ;
  synProposal.ItemList.AddPair('catch ','catch ')  ;
  synProposal.ItemList.AddPair('char ','char ')   ;
  synProposal.ItemList.AddPair('class ','class ')   ;
  synProposal.ItemList.AddPair('compl ','compl ')  ;
  synProposal.ItemList.AddPair('const ','const ')    ;
  synProposal.ItemList.AddPair('const_cast ','const_cast ')   ;
  synProposal.ItemList.AddPair('continue ','continue ')  ;
  synProposal.ItemList.AddPair('default ','default ')   ;
  synProposal.ItemList.AddPair('delete ','delete ')   ;
  synProposal.ItemList.AddPair('do ','do ')        ;
  synProposal.ItemList.AddPair('double ','double ')  ;
  synProposal.ItemList.AddPair('dynamic_cast ','dynamic_cast ')    ;
  synProposal.ItemList.AddPair('else ','else ')  ;
  synProposal.ItemList.AddPair('enum ','enum ')  ;
  synProposal.ItemList.AddPair('explicit ','explicit ')  ;
  synProposal.ItemList.AddPair('export ','export ')  ;
  synProposal.ItemList.AddPair('extern ','extern ')  ;
  synProposal.ItemList.AddPair('false ','false ') ;
  synProposal.ItemList.AddPair('float ','float ')  ;
  synProposal.ItemList.AddPair('for ','for ')   ;
  synProposal.ItemList.AddPair('for( ) { }','for( ) {'+#13#10+'}');
  synProposal.ItemList.AddPair('for(int i=0; i< ; i++) { }','for(int i=0; i< ; i++) {'+#13#10+'}');
  synProposal.ItemList.AddPair('friend ','friend ')   ;
  synProposal.ItemList.AddPair('goto ','goto ') ;
  synProposal.ItemList.AddPair('if ','if ')   ;   
  synProposal.ItemList.AddPair('if( ) { }','if( ) {'+#13#10+'}');
  synProposal.ItemList.AddPair('if( ) { }	else { }','if( ) { '+#13#10+'}'+#13#10+'else {'+#13#10+'}');
  synProposal.ItemList.AddPair('inline ','inline ')  ;
  synProposal.ItemList.AddPair('include ','include ')  ;
  synProposal.ItemList.AddPair('int ','int ')  ;
  synProposal.ItemList.AddPair('long ','long ')  ;
  synProposal.ItemList.AddPair('main ','main ')   ;
  synProposal.ItemList.AddPair('mutable ','mutable ')   ;
  synProposal.ItemList.AddPair('namespace ','namespace ')  ;
  synProposal.ItemList.AddPair('new ','new ')     ;
  synProposal.ItemList.AddPair('not ','not ')   ;
  synProposal.ItemList.AddPair('not_eq ','not_eq ')  ;
  synProposal.ItemList.AddPair('operator ','operator ') ;
  synProposal.ItemList.AddPair('or ','or ')      ;
  synProposal.ItemList.AddPair('or_eq ','or_eq ')   ;
  synProposal.ItemList.AddPair('private ','private ') ;
  synProposal.ItemList.AddPair('protected ','protected ')    ;
  synProposal.ItemList.AddPair('public ','public ')       ;
  synProposal.ItemList.AddPair('register ','register ')    ;
  synProposal.ItemList.AddPair('reinterpret_cast ','reinterpret_cast ')   ;
  synProposal.ItemList.AddPair('return ','return ')      ;
  synProposal.ItemList.AddPair('short ','short ')  ;
  synProposal.ItemList.AddPair('signed ','signed ')  ;
  synProposal.ItemList.AddPair('sizeof ','sizeof ') ;
  synProposal.ItemList.AddPair('static ','static ')  ;
  synProposal.ItemList.AddPair('static_cast ','static_cast ')    ;
  synProposal.ItemList.AddPair('struct ','struct ')  ;
  synProposal.ItemList.AddPair('switch ','switch ')   ;
  synProposal.ItemList.AddPair('template ','template ')  ;
  synProposal.ItemList.AddPair('this ','this ') ;
  synProposal.ItemList.AddPair('throw ','throw ') ;
  synProposal.ItemList.AddPair('true ','true ') ;
  synProposal.ItemList.AddPair('try ','try ')  ;
  synProposal.ItemList.AddPair('typedef ','typedef ')  ;
  synProposal.ItemList.AddPair('typeid ','typeid ') ;
  synProposal.ItemList.AddPair('typename ','typename ')  ;
  synProposal.ItemList.AddPair('union ','union ')    ;
  synProposal.ItemList.AddPair('unsigned ','unsigned ') ;
  synProposal.ItemList.AddPair('using ','using ')  ;
  synProposal.ItemList.AddPair('virtual ','virtual ')  ;
  synProposal.ItemList.AddPair('void ','void ')  ;
  synProposal.ItemList.AddPair('volatile ','volatile ')  ;
  synProposal.ItemList.AddPair('while ','while ')   ;
  synProposal.ItemList.AddPair('xor ','xor ')    ;
  synProposal.ItemList.AddPair('xor_eq ','xor_eq ');

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
  synProposal.ItemList.AddPair('AddHandler ','AddHandler ');
  synProposal.ItemList.AddPair('AddressOf ','AddressOf ');
  synProposal.ItemList.AddPair('Alias ','Alias ');
  synProposal.ItemList.AddPair('And ','And ');
  synProposal.ItemList.AddPair('AndAlso ','AndAlso ');
  synProposal.ItemList.AddPair('As ','As ');
  synProposal.ItemList.AddPair('Boolean ','Boolean ');
  synProposal.ItemList.AddPair('ByRef ','ByRef ');
  synProposal.ItemList.AddPair('Byte ','Byte ');
  synProposal.ItemList.AddPair('ByVal ','ByVal ');
  synProposal.ItemList.AddPair('Call ','Call ');
  synProposal.ItemList.AddPair('Case ','Case ');
  synProposal.ItemList.AddPair('Catch ','Catch ');
  synProposal.ItemList.AddPair('CBool ','CBool ');
  synProposal.ItemList.AddPair('CByte ','CByte ');
  synProposal.ItemList.AddPair('CChar ','CChar ');
  synProposal.ItemList.AddPair('CDate ','CDate ');
  synProposal.ItemList.AddPair('CDbl ','CDbl ');
  synProposal.ItemList.AddPair('CDec ','CDec ');
  synProposal.ItemList.AddPair('Char ','Char ');
  synProposal.ItemList.AddPair('CInt ','CInt ');
  synProposal.ItemList.AddPair('Class ','Class ');
  synProposal.ItemList.AddPair('CLng ','CLng ');
  synProposal.ItemList.AddPair('CObj ','CObj ');
  synProposal.ItemList.AddPair('Const ','Const ');
  synProposal.ItemList.AddPair('Continue ','Continue ');
  synProposal.ItemList.AddPair('CSByte ','CSByte ');
  synProposal.ItemList.AddPair('CShort ','CShort ');
  synProposal.ItemList.AddPair('CSng ','CSng ');
  synProposal.ItemList.AddPair('CStr ','CStr ');
  synProposal.ItemList.AddPair('CType ','CType ');
  synProposal.ItemList.AddPair('CUInt ','CUInt ');
  synProposal.ItemList.AddPair('CULng ','CULng ');
  synProposal.ItemList.AddPair('CUShort ','CUShort ');
  synProposal.ItemList.AddPair('Date ','Date ');
  synProposal.ItemList.AddPair('Decimal ','Decimal ');
  synProposal.ItemList.AddPair('Declare ','Declare ');
  synProposal.ItemList.AddPair('Default ','Default ');
  synProposal.ItemList.AddPair('Delegate ','Delegate ');
  synProposal.ItemList.AddPair('Dim ','Dim ');
  synProposal.ItemList.AddPair('Double ','Double ');
  synProposal.ItemList.AddPair('Each ','Each ');
  synProposal.ItemList.AddPair('Else ','Else ');
  synProposal.ItemList.AddPair('ElseIf ','ElseIf ');
  synProposal.ItemList.AddPair('End ','End ');
  synProposal.ItemList.AddPair('EndIf ','EndIf ');
  synProposal.ItemList.AddPair('Enum ','Enum ');
  synProposal.ItemList.AddPair('Erase ','Erase ');
  synProposal.ItemList.AddPair('Error ','Error ');
  synProposal.ItemList.AddPair('Event ','Event ');
  synProposal.ItemList.AddPair('Exit ','Exit ');
  synProposal.ItemList.AddPair('False ','False ');
  synProposal.ItemList.AddPair('Finally ','Finally ');
  synProposal.ItemList.AddPair('For ','For ');
  synProposal.ItemList.AddPair('Friend ','Friend ');
  synProposal.ItemList.AddPair('Function ','Function ');
  synProposal.ItemList.AddPair('Get ','Get ');
  synProposal.ItemList.AddPair('GetType ','GetType ');
  synProposal.ItemList.AddPair('Global ','Global ');
  synProposal.ItemList.AddPair('GoSub ','GoSub ');
  synProposal.ItemList.AddPair('GoTo ','GoTo ');
  synProposal.ItemList.AddPair('Handles ','Handles ');
  synProposal.ItemList.AddPair('If() ','If() ');
  synProposal.ItemList.AddPair('Implements ','Implements ');
  synProposal.ItemList.AddPair('Imports ','Imports ');
  synProposal.ItemList.AddPair('Inherits ','Inherits ');
  synProposal.ItemList.AddPair('Integer ','Integer ');
  synProposal.ItemList.AddPair('Interface ','Interface ');
  synProposal.ItemList.AddPair('IsNot ','IsNot ');
  synProposal.ItemList.AddPair('Let ','Let ');
  synProposal.ItemList.AddPair('Lib ','Lib ');
  synProposal.ItemList.AddPair('Like ','Like ');
  synProposal.ItemList.AddPair('Long ','Long ');
  synProposal.ItemList.AddPair('Loop ','Loop ');
  synProposal.ItemList.AddPair('Mod ','Mod ');
  synProposal.ItemList.AddPair('Module ','Module ');
  synProposal.ItemList.AddPair('MustInherit ','MustInherit ');
  synProposal.ItemList.AddPair('MustOverride ','MustOverride ');
  synProposal.ItemList.AddPair('MyBase ','MyBase ');
  synProposal.ItemList.AddPair('MyClass ','MyClass ');
  synProposal.ItemList.AddPair('Namespace ','Namespace ');
  synProposal.ItemList.AddPair('Narrowing ','Narrowing ');
  synProposal.ItemList.AddPair('New Constraint ','New Constraint ');
  synProposal.ItemList.AddPair('New Operator ','New Operator ');
  synProposal.ItemList.AddPair('Next ','Next ');
  synProposal.ItemList.AddPair('Not ','Not ');
  synProposal.ItemList.AddPair('Nothing ','Nothing ');
  synProposal.ItemList.AddPair('NotInheritable ','NotInheritable ');
  synProposal.ItemList.AddPair('NotOverridable ','NotOverridable ');
  synProposal.ItemList.AddPair('Object ','Object ');
  synProposal.ItemList.AddPair('Operator ','Operator ');
  synProposal.ItemList.AddPair('Option ','Option ');
  synProposal.ItemList.AddPair('Optional ','Optional ');
  synProposal.ItemList.AddPair('OrElse ','OrElse ');
  synProposal.ItemList.AddPair('Overloads ','Overloads ');
  synProposal.ItemList.AddPair('Overridable ','Overridable ');
  synProposal.ItemList.AddPair('Overrides ','Overrides ');
  synProposal.ItemList.AddPair('ParamArray ','ParamArray ');
  synProposal.ItemList.AddPair('Partial ','Partial ');
  synProposal.ItemList.AddPair('Private ','Private ');
  synProposal.ItemList.AddPair('Property ','Property ');
  synProposal.ItemList.AddPair('Protected ','Protected ');
  synProposal.ItemList.AddPair('Public ','Public ');
  synProposal.ItemList.AddPair('RaiseEvent ','RaiseEvent ');
  synProposal.ItemList.AddPair('ReadOnly ','ReadOnly ');
  synProposal.ItemList.AddPair('ReDim ','ReDim ');
  synProposal.ItemList.AddPair('REM ','REM ');
  synProposal.ItemList.AddPair('RemoveHandler ','RemoveHandler ');
  synProposal.ItemList.AddPair('Resume ','Resume ');
  synProposal.ItemList.AddPair('Return ','Return ');
  synProposal.ItemList.AddPair('SByte ','SByte ');
  synProposal.ItemList.AddPair('Select ','Select ');
  synProposal.ItemList.AddPair('Set ','Set ');
  synProposal.ItemList.AddPair('Shadows ','Shadows ');
  synProposal.ItemList.AddPair('Shared ','Shared ');
  synProposal.ItemList.AddPair('Short ','Short ');
  synProposal.ItemList.AddPair('Single ','Single ');
  synProposal.ItemList.AddPair('Static ','Static ');
  synProposal.ItemList.AddPair('Step ','Step ');
  synProposal.ItemList.AddPair('Stop ','Stop ');
  synProposal.ItemList.AddPair('String ','String ');
  synProposal.ItemList.AddPair('Structure ','Structure ');
  synProposal.ItemList.AddPair('Sub ','Sub ');
  synProposal.ItemList.AddPair('SyncLock ','SyncLock ');
  synProposal.ItemList.AddPair('Then ','Then ');
  synProposal.ItemList.AddPair('Throw ','Throw ');
  synProposal.ItemList.AddPair('True ','True ');
  synProposal.ItemList.AddPair('Try ','Try ');
  synProposal.ItemList.AddPair('TryCast ','TryCast ');
  synProposal.ItemList.AddPair('UInteger ','UInteger ');
  synProposal.ItemList.AddPair('ULong ','ULong ');
  synProposal.ItemList.AddPair('UShort ','UShort ');
  synProposal.ItemList.AddPair('Using ','Using ');
  synProposal.ItemList.AddPair('Variant ','Variant ');
  synProposal.ItemList.AddPair('Wend ','Wend ');
  synProposal.ItemList.AddPair('When ','When ');
  synProposal.ItemList.AddPair('While ','While ');
  synProposal.ItemList.AddPair('Widening ','Widening ');
  synProposal.ItemList.AddPair('With ','With ');
  synProposal.ItemList.AddPair('WithEvents ','WithEvents ');
  synProposal.ItemList.AddPair('WriteOnly ','WriteOnly ');
  synProposal.ItemList.AddPair('Xor ','Xor ');
  synProposal.ItemList.AddPair('#Const ','#Const ');
  synProposal.ItemList.AddPair('#Else ','#Else ');
  synProposal.ItemList.AddPair('#ElseIf ','#ElseIf ');
  synProposal.ItemList.AddPair('#End ','#End ');
  synProposal.ItemList.AddPair('#If ','#If ');

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
  synProposal.ItemList.AddPair('abstract'	,	'abstract '	);
  synProposal.ItemList.AddPair('array'	,	'array '	);
  synProposal.ItemList.AddPair('break'	,	'break '	);
  synProposal.ItemList.AddPair('callable'	,	'callable '	);
  synProposal.ItemList.AddPair('case'	,	'case '	);
  synProposal.ItemList.AddPair('catch'	,	'catch '	);
  synProposal.ItemList.AddPair('class'	,	'class '	);
  synProposal.ItemList.AddPair('clone'	,	'clone '	);
  synProposal.ItemList.AddPair('const'	,	'const '	);
  synProposal.ItemList.AddPair('continue'	,	'continue '	);
  synProposal.ItemList.AddPair('declare'	,	'declare '	);
  synProposal.ItemList.AddPair('default'	,	'default '	);
  synProposal.ItemList.AddPair('echo'	,	'echo '	);
  synProposal.ItemList.AddPair('else { }'	,	'else { '+#13#10+'}'	);
  synProposal.ItemList.AddPair('elseif { }'	,	'elseif { '+#13#10+'}'	);
  synProposal.ItemList.AddPair('empty'	,	'empty '	);
  synProposal.ItemList.AddPair('enddeclare'	,	'enddeclare '	);
  synProposal.ItemList.AddPair('endfor'	,	'endfor '	);
  synProposal.ItemList.AddPair('endforeach'	,	'endforeach '	);
  synProposal.ItemList.AddPair('endif'	,	'endif '	);
  synProposal.ItemList.AddPair('endswitch'	,	'endswitch '	);
  synProposal.ItemList.AddPair('endwhile'	,	'endwhile '	);
  synProposal.ItemList.AddPair('eval'	,	'eval '	);
  synProposal.ItemList.AddPair('exit'	,	'exit '	);
  synProposal.ItemList.AddPair('extends'	,	'extends '	);
  synProposal.ItemList.AddPair('final'	,	'final '	);
  synProposal.ItemList.AddPair('foreach'	,	'foreach '	);
  synProposal.ItemList.AddPair('function'	,	'function '	);
  synProposal.ItemList.AddPair('global',		'global '	);
  synProposal.ItemList.AddPair('goto'	,	'goto '	);
  synProposal.ItemList.AddPair('implements'	,	'implements '	);
  synProposal.ItemList.AddPair('include'	,	'include '	);
  synProposal.ItemList.AddPair('include_once'	,	'include_once '	);
  synProposal.ItemList.AddPair('instanceof'	,	'instanceof '	);
  synProposal.ItemList.AddPair('insteadof'	,	'insteadof '	);
  synProposal.ItemList.AddPair('interface'	,	'interface '	);
  synProposal.ItemList.AddPair('isset'	,	'isset '	);
  synProposal.ItemList.AddPair('list'	,	'list '	);
  synProposal.ItemList.AddPair('mysql_affected_rows'	,	'mysql_affected_rows '	);
  synProposal.ItemList.AddPair('mysql_close'	,	'mysql_close '	);
  synProposal.ItemList.AddPair('mysql_connect'	,	'mysql_connect '	);
  synProposal.ItemList.AddPair('mysql_fetch_row'	,	'mysql_fetch_row '	);
  synProposal.ItemList.AddPair('mysql_fetch_array'	,	'mysql_fetch_array '	); 
  synProposal.ItemList.AddPair('mysql_free_result'	,	'mysql_free_result '	);
  synProposal.ItemList.AddPair('mysql_num_rows'	,	'mysql_num_rows '	);
  synProposal.ItemList.AddPair('mysql_query'	,	'mysql_query '	);
  synProposal.ItemList.AddPair('mysql_result'	,	'mysql_result '	);
  synProposal.ItemList.AddPair('mysql_select_db'	,	'mysql_select_db '	);
  synProposal.ItemList.AddPair('namespace'	,	'namespace '	);
  synProposal.ItemList.AddPair('print'	,	'print '	);
  synProposal.ItemList.AddPair('private'	,	'private '	);
  synProposal.ItemList.AddPair('protected'	,	'protected '	);
  synProposal.ItemList.AddPair('public'	,	'public '	);
  synProposal.ItemList.AddPair('require'	,	'require '	);
  synProposal.ItemList.AddPair('require_once'	,	'require_once '	);
  synProposal.ItemList.AddPair('return'	,	'return '	);
  synProposal.ItemList.AddPair('static'	,	'static '	);
  synProposal.ItemList.AddPair('switch'	,	'switch '	);
  synProposal.ItemList.AddPair('throw'	,	'throw '	);
  synProposal.ItemList.AddPair('trait'	,	'trait '	);
  synProposal.ItemList.AddPair('unset'	,	'unset '	);
  synProposal.ItemList.AddPair('while( ) { }'	,	'while( ) { '+#13#10+'}'	);
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
  synProposal.ItemList.AddPair('abstract	 ','abstract '); 
  synProposal.ItemList.AddPair('assert	 ','assert ');    
  synProposal.ItemList.AddPair('boolean	 ','boolean	');
  synProposal.ItemList.AddPair('break	 ','break	');  
  synProposal.ItemList.AddPair('byte	 ','byte ');
  synProposal.ItemList.AddPair('continue	 ','continue ');   
  synProposal.ItemList.AddPair('case	 ','case ');     
  synProposal.ItemList.AddPair('catch { }	 ','catch { }');  
  synProposal.ItemList.AddPair('char	 ','char ');
  synProposal.ItemList.AddPair('class	 ','class	');
  synProposal.ItemList.AddPair('const	 ','const	');
  synProposal.ItemList.AddPair('default	 ','default	');
  synProposal.ItemList.AddPair('double	 ','double ');
  synProposal.ItemList.AddPair('for	 ','for	');
  synProposal.ItemList.AddPair('for(int i=0; i< ; i++) { }','for(int i=0; i< ; i++) { '+#13#10+'}'); 
  synProposal.ItemList.AddPair('else { }	 ','else { '+#13#10+'}');
  synProposal.ItemList.AddPair('else if( ) { }	 ','else if( ) { '+#13#10+'}');
  synProposal.ItemList.AddPair('enum	 ','enum ');  
  synProposal.ItemList.AddPair('extends	 ','extends	');  
  synProposal.ItemList.AddPair('final	 ','final	');  
  synProposal.ItemList.AddPair('finally	 ','finally	');
  synProposal.ItemList.AddPair('float	 ','float	');          
  synProposal.ItemList.AddPair('goto	 ','goto ');
  synProposal.ItemList.AddPair('if( ) { }','if( ) { '+#13#10+'}');    
  synProposal.ItemList.AddPair('implements	 ','implements '); 
  synProposal.ItemList.AddPair('import	 ','import ');
  synProposal.ItemList.AddPair('instanceof	 ','instanceof ');  
  synProposal.ItemList.AddPair('int	 ','int	');  
  synProposal.ItemList.AddPair('interface	 ','interface	');
  synProposal.ItemList.AddPair('long	 ','long ');
  synProposal.ItemList.AddPair('native	 ','native ');
  synProposal.ItemList.AddPair('new ','new	');
  synProposal.ItemList.AddPair('package	 ','package	'); 
  synProposal.ItemList.AddPair('private	 ','private	');
  synProposal.ItemList.AddPair('public	 ','public ');
  synProposal.ItemList.AddPair('protected	 ','protected	');
  synProposal.ItemList.AddPair('return	 ','return ');
  synProposal.ItemList.AddPair('short	 ','short	');
  synProposal.ItemList.AddPair('static	 ','static ');
  synProposal.ItemList.AddPair('strictfp	 ','strictfp ');
  synProposal.ItemList.AddPair('super	 ','super	');    
  synProposal.ItemList.AddPair('switch	 ','switch '); 
  synProposal.ItemList.AddPair('synchronized	 ','synchronized ');
  synProposal.ItemList.AddPair('this	 ','this ');
  synProposal.ItemList.AddPair('throw	 ','throw	');
  synProposal.ItemList.AddPair('throws	 ','throws '); 
  synProposal.ItemList.AddPair('transient	 ','transient	');
  synProposal.ItemList.AddPair('try { }	 ','try { }');
  synProposal.ItemList.AddPair('void	 ','void ');
  synProposal.ItemList.AddPair('volatile	 ','volatile ');
  synProposal.ItemList.AddPair('while	 ','while	');
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
  synProposal.ItemList.AddPair('absolute ','absolute ');
  synProposal.ItemList.AddPair('abstract ','abstract ');
  synProposal.ItemList.AddPair('alias ','alias ') ;
  synProposal.ItemList.AddPair('and ','and ');
  synProposal.ItemList.AddPair('array ','array ');
  synProposal.ItemList.AddPair('asm ','asm ');
  synProposal.ItemList.AddPair('assembler ','assembler ');
  synProposal.ItemList.AddPair('begin  end; ','begin '+#13#10+'end; ');
  synProposal.ItemList.AddPair('break ','break ');
  synProposal.ItemList.AddPair('case ','case ');
  synProposal.ItemList.AddPair('class ','class ');
  synProposal.ItemList.AddPair('const ','const ');
  synProposal.ItemList.AddPair('constructor ','constructor ');
  synProposal.ItemList.AddPair('continue ','continue ');
  synProposal.ItemList.AddPair('default ','default ');
  synProposal.ItemList.AddPair('destructor ','destructor ');
  synProposal.ItemList.AddPair('dispose ','dispose ');
  synProposal.ItemList.AddPair('div ','div ');
  synProposal.ItemList.AddPair('do begin end ','do begin '+#13#10+'end; ');
  synProposal.ItemList.AddPair('downto ','downto ');
  synProposal.ItemList.AddPair('else ','else ');
  synProposal.ItemList.AddPair('end ','end ');
  synProposal.ItemList.AddPair('except ','except ');
  synProposal.ItemList.AddPair('exit ','exit ');
  synProposal.ItemList.AddPair('export ','export ');
  synProposal.ItemList.AddPair('exports ','exports ');
  synProposal.ItemList.AddPair('external ','external ');
  synProposal.ItemList.AddPair('false ','false ');
  synProposal.ItemList.AddPair('file ','file ');
  synProposal.ItemList.AddPair('finalization ','finalization ');
  synProposal.ItemList.AddPair('finally ','finally ');
  synProposal.ItemList.AddPair('for( ) ','for( ) ');
  synProposal.ItemList.AddPair('for( ) begin end ','for( ) begin '+#13#10+'end; ');
  synProposal.ItemList.AddPair('function ','function ');
  synProposal.ItemList.AddPair('goto ','goto ');
  synProposal.ItemList.AddPair('if( ) then ','if( ) then ');
  synProposal.ItemList.AddPair('implementation ','implementation ');
  synProposal.ItemList.AddPair('in ','in ');
  synProposal.ItemList.AddPair('inherited ','inherited ');
  synProposal.ItemList.AddPair('initialization ','initialization ');
  synProposal.ItemList.AddPair('inline ','inline ');
  synProposal.ItemList.AddPair('interface ','interface ');
  synProposal.ItemList.AddPair('label ','label ');
  synProposal.ItemList.AddPair('library ','library ');
  synProposal.ItemList.AddPair('mod ','mod ');
  synProposal.ItemList.AddPair('new ','new ');
  synProposal.ItemList.AddPair('nil ','nil ');
  synProposal.ItemList.AddPair('not ','not ');
  synProposal.ItemList.AddPair('object ','object ');
  synProposal.ItemList.AddPair('operator ','operator ');
  synProposal.ItemList.AddPair('out ','out ');
  synProposal.ItemList.AddPair('override ','override ');
  synProposal.ItemList.AddPair('packed ','packed ');
  synProposal.ItemList.AddPair('pascal ','pascal ');
  synProposal.ItemList.AddPair('private ','private ')   ;
  synProposal.ItemList.AddPair('procedure ','procedure ');
  synProposal.ItemList.AddPair('program ','program ');
  synProposal.ItemList.AddPair('property ','property ');
  synProposal.ItemList.AddPair('protected ','protected ');
  synProposal.ItemList.AddPair('public ','public ');
  synProposal.ItemList.AddPair('published ','published ');
  synProposal.ItemList.AddPair('raise ','raise ');   
  synProposal.ItemList.AddPair('read ','read ')  ;
  synProposal.ItemList.AddPair('record ','record ');
  synProposal.ItemList.AddPair('repeat ','repeat ');
  synProposal.ItemList.AddPair('self ','self ');
  synProposal.ItemList.AddPair('set ','set ');
  synProposal.ItemList.AddPair('shl ','shl ');
  synProposal.ItemList.AddPair('shr ','shr ');
  synProposal.ItemList.AddPair('string ','string ');
  synProposal.ItemList.AddPair('then ','then ');
  synProposal.ItemList.AddPair('then begin end; ','then begin '+#13#10+'end;');
  synProposal.ItemList.AddPair('threadvar ','threadvar ');
  synProposal.ItemList.AddPair('true ','true ');
  synProposal.ItemList.AddPair('try ','try ') ;
  synProposal.ItemList.AddPair('type ','type ');
  synProposal.ItemList.AddPair('unit ','unit ');
  synProposal.ItemList.AddPair('until ','until ');
  synProposal.ItemList.AddPair('uses ','uses ');
  synProposal.ItemList.AddPair('var ','var ');
  synProposal.ItemList.AddPair('while( ) do ','while( ) do ');
  synProposal.ItemList.AddPair('while( ) do begin  end; ','while( ) do begin '+#13#10+'end; ');
  synProposal.ItemList.AddPair('with ','with ');
  synProposal.ItemList.AddPair('xor ','xor ');
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
  synProposal.ItemList.AddPair('<!-- -->',  '<!-- -->');
  synProposal.ItemList.AddPair('<!DOCTYPE>','<!DOCTYPE>');
  synProposal.ItemList.AddPair('<a href="">',			 '<a href=""></a>');
  synProposal.ItemList.AddPair('<abbr>',				 '<abbr></abbr>');
  synProposal.ItemList.AddPair('<acronym>',			 '<acronym></acronym>');
  synProposal.ItemList.AddPair('<address>',			 '<address></address>');
  synProposal.ItemList.AddPair('<applet>',			 '<applet />');
  synProposal.ItemList.AddPair('<area>',				 '<area></area>');
  synProposal.ItemList.AddPair('<article>',			 '<article></article>');
  synProposal.ItemList.AddPair('<aside>',				 '<aside>');
  synProposal.ItemList.AddPair('<audio>',				 '<audio>');
  synProposal.ItemList.AddPair('<b>',					'<b></b>');
  synProposal.ItemList.AddPair('<base>',				 '<base />');
  synProposal.ItemList.AddPair('<basefont>',			 '<basefont />');
  synProposal.ItemList.AddPair('<bdi>',				'<bdi>');
  synProposal.ItemList.AddPair('<bdo>',				'<bdo>');
  synProposal.ItemList.AddPair('<big>',				'<big></big>');
  synProposal.ItemList.AddPair('<blockquote>',		 '<blockquote></blockquote>');
  synProposal.ItemList.AddPair('<body>',				 '<body></body>');
  synProposal.ItemList.AddPair('<br>',				'<br />');
  synProposal.ItemList.AddPair('<button>',			 '<button />');
  synProposal.ItemList.AddPair('<canvas>',			 '<canvas></canvas>');
  synProposal.ItemList.AddPair('<caption>',			 '<caption></caption>');
  synProposal.ItemList.AddPair('<center>',			 '<center>');
  synProposal.ItemList.AddPair('<cite>',				 '<cite></cite>');
  synProposal.ItemList.AddPair('<code>',				 '<code></code>');
  synProposal.ItemList.AddPair('<col>',				'<col></col>');
  synProposal.ItemList.AddPair('<colgroup>', 	 '<colgroup></colgroup>');
  synProposal.ItemList.AddPair('<command>',	 '<command />');
  synProposal.ItemList.AddPair('<datalist>', 	 '<colgroup></colgroup>');
  synProposal.ItemList.AddPair('<dd>',		 '<dd></dd>');
  synProposal.ItemList.AddPair('<del>',		 '<del></del>');
  synProposal.ItemList.AddPair('<details>',	 '<details></details>');
  synProposal.ItemList.AddPair('<dfn>',		 '<dfn>');
  synProposal.ItemList.AddPair('<dialog>', 	 '<dialog></dialog>');
  synProposal.ItemList.AddPair('<dir>',		 '<dir></dir>');
  synProposal.ItemList.AddPair('<div>',		 '<div></div>');
  synProposal.ItemList.AddPair('<dl>',		 '<dl></dl>');
  synProposal.ItemList.AddPair('<dt>',		 '<dt></dt>');
  synProposal.ItemList.AddPair('<em>',		 '<em></em>');
  synProposal.ItemList.AddPair('<embed>',	 	 '<embed />');
  synProposal.ItemList.AddPair('<fieldset>',	'<fieldset></fieldset>');
  synProposal.ItemList.AddPair('<figcaption>','<figcaption></figcaption>');
  synProposal.ItemList.AddPair('<figure>', '<figure />');
  synProposal.ItemList.AddPair('<font>',	 '<font></font>');
  synProposal.ItemList.AddPair('<footer>', '<footer></footer>');
  synProposal.ItemList.AddPair('<form>',	 '<form></form>');
  synProposal.ItemList.AddPair('<frame>',	 '<frame></frame>');
  synProposal.ItemList.AddPair('<frameset>',	 '<frameset></frameset>');
  synProposal.ItemList.AddPair('<h1>', '<h1></h1>');
  synProposal.ItemList.AddPair('<h2>', '<h2></h2>');
  synProposal.ItemList.AddPair('<h3>', '<h3></h3>');
  synProposal.ItemList.AddPair('<h4>', '<h4></h4>');
  synProposal.ItemList.AddPair('<h5>', '<h5></h5>');
  synProposal.ItemList.AddPair('<h6>', '<h6></h6>');
  synProposal.ItemList.AddPair('<head>', '<head></head>');
  synProposal.ItemList.AddPair('<header>',		 '<header></header>');
  synProposal.ItemList.AddPair('<hr>', '<hr />');
  synProposal.ItemList.AddPair('<html>',	 '<html></html>');
  synProposal.ItemList.AddPair('<html><head></head><body></body></html>',	 '<html><head></head><body></body></html>');
  synProposal.ItemList.AddPair('<i>',	 '<i></i>');
  synProposal.ItemList.AddPair('<iframe>',	 '<iframe />');
  synProposal.ItemList.AddPair('<img>',	'<img></img>');
  synProposal.ItemList.AddPair('<input>',	'<input type="" />');
  synProposal.ItemList.AddPair('<ins>',	 '<ins></ins>');
  synProposal.ItemList.AddPair('<kbd>',		 '<kbd />');
  synProposal.ItemList.AddPair('<keygen>',	 '<keygen />');
  synProposal.ItemList.AddPair('<label>',	 	 '<label></label>');
  synProposal.ItemList.AddPair('<legend>', 	 '<legend></legend>');
  synProposal.ItemList.AddPair('<li>',		 '<li></li>');
  synProposal.ItemList.AddPair('<link>',	 	 '<link></link>');
  synProposal.ItemList.AddPair('<map>',		 '<map></map>');
  synProposal.ItemList.AddPair('<mark>',	 	 '<mark></mark>');
  synProposal.ItemList.AddPair('<menu>',	 	 '<menu></menu>');
  synProposal.ItemList.AddPair('<meta>',	 	 '<meta />');
  synProposal.ItemList.AddPair('<meter>',	 	 '<meter />');
  synProposal.ItemList.AddPair('<nav>',		 '<nav></nav>');
  synProposal.ItemList.AddPair('<noframes>',		 '<noframes></noframes>');
  synProposal.ItemList.AddPair('<noscript>',		 '<noscript></noscript>');
  synProposal.ItemList.AddPair('<object>',		 '<object />');
  synProposal.ItemList.AddPair('<ol>',			'<ol></ol>');
  synProposal.ItemList.AddPair('<optgroup>',		 '<optgroup></optgroup>');
  synProposal.ItemList.AddPair('<option>',		 '<option></option>');
  synProposal.ItemList.AddPair('<output>',		 '<output />');
  synProposal.ItemList.AddPair('<p>',				'<p></p>');
  synProposal.ItemList.AddPair('<param>',			 '<param></param>');
  synProposal.ItemList.AddPair('<pre>',			'<pre></pre>');
  synProposal.ItemList.AddPair('<progress>',		 '<progress />');
  synProposal.ItemList.AddPair('<q>',				'<q></q>');
  synProposal.ItemList.AddPair('<rp>',			'<rp></rp>');
  synProposal.ItemList.AddPair('<rt>',			'<rt></rt>');
  synProposal.ItemList.AddPair('<ruby>',			 '<ruby />');
  synProposal.ItemList.AddPair('<samp>',			 '<samp />');
  synProposal.ItemList.AddPair('<script>',		 '<script></script>');
  synProposal.ItemList.AddPair('<section>',		 '<section></section>');
  synProposal.ItemList.AddPair('<select>',		 '<select />');
  synProposal.ItemList.AddPair('<small>',			 '<small></small>');
  synProposal.ItemList.AddPair('<source>',		 '<source></source>');
  synProposal.ItemList.AddPair('<span>',			 '<span />');
  synProposal.ItemList.AddPair('<strike>',		 '<strike></strike>');
  synProposal.ItemList.AddPair('<strong>',		 '<strong></strong>');
  synProposal.ItemList.AddPair('<style>',			 '<style />');
  synProposal.ItemList.AddPair('<sub>',			'<sub></sub>');
  synProposal.ItemList.AddPair('<summary>',		 '<summary></summary>');
  synProposal.ItemList.AddPair('<sup>',			'<sup></sup>');
  synProposal.ItemList.AddPair('<table>',			 '<table></table>');
  synProposal.ItemList.AddPair('<tbody>',	 '<tbody></tbody>');
  synProposal.ItemList.AddPair('<td>',	 '<td></td>');
  synProposal.ItemList.AddPair('<textarea>',		 '<textarea></textarea>');
  synProposal.ItemList.AddPair('<tfoot>',			 '<tfoot></tfoot>');
  synProposal.ItemList.AddPair('<th>',			'<th></th>');
  synProposal.ItemList.AddPair('<thead>',			 '<thead></thead>');
  synProposal.ItemList.AddPair('<time>',			 '<time />');
  synProposal.ItemList.AddPair('<title>',			 '<title></title>');
  synProposal.ItemList.AddPair('<tr>',			'<tr></tr>');
  synProposal.ItemList.AddPair('<track>',			 '<track />');
  synProposal.ItemList.AddPair('<tt>',			'<tt></tt>');
  synProposal.ItemList.AddPair('<u>',				'<u></u>');
  synProposal.ItemList.AddPair('<ul>',			'<ul></ul>');
  synProposal.ItemList.AddPair('<var>',			'<var />');
  synProposal.ItemList.AddPair('<video>',			 '<video />');
  synProposal.ItemList.AddPair('<wbr>',			'<wbr />');
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
 // synProposal.ItemList.AddPair('abstract','abstract	');
 // synProposal.ItemList.AddPair('alias','alias	');
 // synProposal.ItemList.AddPair('ascending','ascending ');
 // synProposal.ItemList.AddPair('async','async ');
 // synProposal.ItemList.AddPair('await','await	');
 // synProposal.ItemList.AddPair('base	 ','base ');
 // synProposal.ItemList.AddPair('bool	 ','bool ');
 // synProposal.ItemList.AddPair('break	 ','break	');
 // synProposal.ItemList.AddPair('byte	 ','byte ');
 // synProposal.ItemList.AddPair('case	 ','case ');
 // synProposal.ItemList.AddPair('catch { }	 ','catch { '+#13#10+'}');
 // synProposal.ItemList.AddPair('catch(Exception ex) { }	 ','catch(Exception ex) { '+#13#10+'}');
 // synProposal.ItemList.AddPair('char	 ','char ');
 // synProposal.ItemList.AddPair('checked	 ','checked	');
 // synProposal.ItemList.AddPair('class	 ','class	');
 // synProposal.ItemList.AddPair('const	 ','const	');
 // synProposal.ItemList.AddPair('continue	 ','continue ');
 // synProposal.ItemList.AddPair('decimal	 ','decimal	');
 // synProposal.ItemList.AddPair('default	 ','default	');
 // synProposal.ItemList.AddPair('delegate	 ','delegate ');
 // synProposal.ItemList.AddPair('descending','descending	'); 
 // synProposal.ItemList.AddPair('double	 ','double ');
 // synProposal.ItemList.AddPair('dynamic','dynamic	');
 // synProposal.ItemList.AddPair('else { }	 ','else { }');
 // synProposal.ItemList.AddPair('enum	 ','enum ');
 // synProposal.ItemList.AddPair('event	 ','event	');
 // synProposal.ItemList.AddPair('explicit	 ','explicit ');
 // synProposal.ItemList.AddPair('extern	 ','extern ');
 // synProposal.ItemList.AddPair('false	 ','false	');
 // synProposal.ItemList.AddPair('finally{ }','finally{ }');
 // synProposal.ItemList.AddPair('fixed	 ','fixed ');
 // synProposal.ItemList.AddPair('float	 ','float	');
 // synProposal.ItemList.AddPair('for( ) { } ','for( ) { '+#13#10+'}');
 // synProposal.ItemList.AddPair('for(int i=0;i< ; i++) { } ','for(int i=0;i< ; i++) { '+#13#10+'}');
 // synProposal.ItemList.AddPair('foreach	 ','foreach( in ) { '+#13#10+'}');
 // synProposal.ItemList.AddPair('from','from	');
 // synProposal.ItemList.AddPair('global','global	'); 
 // synProposal.ItemList.AddPair('goto	 ','goto ');
 // synProposal.ItemList.AddPair('group','group	');
 // synProposal.ItemList.AddPair('if( ) { }	 ','if( ) { '+#13#10+'}');
 // synProposal.ItemList.AddPair('implicit	 ','implicit ');
 // synProposal.ItemList.AddPair('int	 ','int	');
 // synProposal.ItemList.AddPair('interface	 ','interface	');
 // synProposal.ItemList.AddPair('internal	 ','internal ');
 // synProposal.ItemList.AddPair('into','into	');
 // synProposal.ItemList.AddPair('join','join ');
 // synProposal.ItemList.AddPair('lock	 ','lock ');
 // synProposal.ItemList.AddPair('long	 ','long ');
 // synProposal.ItemList.AddPair('namespace	 ','namespace	');
 // synProposal.ItemList.AddPair('new	 ','new	');
 // synProposal.ItemList.AddPair('null	 ','null ');
 // synProposal.ItemList.AddPair('object	 ','object ');
 // synProposal.ItemList.AddPair('operator	 ','operator ');
 // synProposal.ItemList.AddPair('orderby','orderby ');    
 // synProposal.ItemList.AddPair('override	 ','override ');   
 // synProposal.ItemList.AddPair('params	 ','params ');
 // synProposal.ItemList.AddPair('partial','partial ');
 // synProposal.ItemList.AddPair('private	 ','private	');
 // synProposal.ItemList.AddPair('protected	 ','protected	');
 // synProposal.ItemList.AddPair('public	 ','public ');
 // synProposal.ItemList.AddPair('readonly	 ','readonly ');
 // synProposal.ItemList.AddPair('ref	 ','ref	');
 // synProposal.ItemList.AddPair('remove','remove	');
 // synProposal.ItemList.AddPair('return	 ','return ');
 // synProposal.ItemList.AddPair('sbyte	 ','sbyte	');
 // synProposal.ItemList.AddPair('sealed	 ','sealed ');
 // synProposal.ItemList.AddPair('select','select	');
 // synProposal.ItemList.AddPair('set','set ');
 // synProposal.ItemList.AddPair('short	 ','short	');
 // synProposal.ItemList.AddPair('sizeof	 ','sizeof ');
 // synProposal.ItemList.AddPair('stackalloc	 ','stackalloc ');
 // synProposal.ItemList.AddPair('static	 ','static ');
 // synProposal.ItemList.AddPair('string	 ','string ');
 // synProposal.ItemList.AddPair('struct	 ','struct ');
 // synProposal.ItemList.AddPair('switch	 ','switch ');
 // synProposal.ItemList.AddPair('this	 ','this ');
 // synProposal.ItemList.AddPair('throw	 ','throw	');
 // synProposal.ItemList.AddPair('true	 ','true ');
 // synProposal.ItemList.AddPair('try { }','try	{ }');
 // synProposal.ItemList.AddPair('try { } catch { }','try	{ '+#13#10+'} catch { '+#13#10+'}');
 // synProposal.ItemList.AddPair('try { } finally { }','try	{ '+#13#10+'} finally { '+#13#10+'}');
 // synProposal.ItemList.AddPair('typeof','typeof	 ');
 // synProposal.ItemList.AddPair('uint','uint	');
 // synProposal.ItemList.AddPair('ulong','ulong	');
 // synProposal.ItemList.AddPair('unchecked','unchecked	');
 // synProposal.ItemList.AddPair('unsafe','unsafe ');
 // synProposal.ItemList.AddPair('ushort','ushort	');
 // synProposal.ItemList.AddPair('using ','using	');
 // synProposal.ItemList.AddPair('value','value ');
 // synProposal.ItemList.AddPair('var','var ');
 // synProposal.ItemList.AddPair('virtual','virtual ');
 // synProposal.ItemList.AddPair('void','	void ');
 // synProposal.ItemList.AddPair('volatile','volatile ');
 //  synProposal.ItemList.AddPair('where','where ');
 // synProposal.ItemList.AddPair('while( ) { }','while( ) {'+#13#10+'}');
 // synProposal.ItemList.AddPair('yield','yield ');
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
  synProposal.ItemList.AddPair('and ','and ') ;
  synProposal.ItemList.AddPair('as ','as ') ;
  synProposal.ItemList.AddPair('assert ','assert ');
  synProposal.ItemList.AddPair('break ','break ');
  synProposal.ItemList.AddPair('class ','class ');
  synProposal.ItemList.AddPair('continue ','continue ');
  synProposal.ItemList.AddPair('def ','def ') ;
  synProposal.ItemList.AddPair('del ','del ');
  synProposal.ItemList.AddPair('elif ','elif ');
  synProposal.ItemList.AddPair('else ','else ');
  synProposal.ItemList.AddPair('except ','except ');
  synProposal.ItemList.AddPair('exec ','exec ');
  synProposal.ItemList.AddPair('finally ','finally ');
  synProposal.ItemList.AddPair('from ','from ');
  synProposal.ItemList.AddPair('for ','for ');
  synProposal.ItemList.AddPair('global ','global ');
  synProposal.ItemList.AddPair('if ','if ');
  synProposal.ItemList.AddPair('import ','import ');
  synProposal.ItemList.AddPair('in ','in ');
  synProposal.ItemList.AddPair('is ','is ');
  synProposal.ItemList.AddPair('lambda ','lambda ');
  synProposal.ItemList.AddPair('not ','not ') ;
  synProposal.ItemList.AddPair('or ','or ');
  synProposal.ItemList.AddPair('pass ','pass ');
  synProposal.ItemList.AddPair('print ','print ');
  synProposal.ItemList.AddPair('raise ','raise ');
  synProposal.ItemList.AddPair('return ','return ');
  synProposal.ItemList.AddPair('try ','try ') ;
  synProposal.ItemList.AddPair('while ','while ') ;
  synProposal.ItemList.AddPair('with ','with ');
  synProposal.ItemList.AddPair('yield ','yield ');
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
  synProposal.ItemList.AddPair('abstract ','abstract ');
  synProposal.ItemList.AddPair('boolean ','boolean ');
  synProposal.ItemList.AddPair('break ','break ');
  synProposal.ItemList.AddPair('byte ','byte ');
  synProposal.ItemList.AddPair('case ','case ');
  synProposal.ItemList.AddPair('catch ','catch ');
  synProposal.ItemList.AddPair('char ','char ');
  synProposal.ItemList.AddPair('class ','class ');
  synProposal.ItemList.AddPair('const ','const ');
  synProposal.ItemList.AddPair('continue ','continue ');
  synProposal.ItemList.AddPair('debugger ','debugger ');
  synProposal.ItemList.AddPair('default ','default ');
  synProposal.ItemList.AddPair('do ','do ');
  synProposal.ItemList.AddPair('double ','double ');
  synProposal.ItemList.AddPair('else ','else ');
  synProposal.ItemList.AddPair('enum ','enum ');
  synProposal.ItemList.AddPair('export ','export ');
  synProposal.ItemList.AddPair('extends ','extends ');
  synProposal.ItemList.AddPair('final ','final ');
  synProposal.ItemList.AddPair('finally ','finally ');
  synProposal.ItemList.AddPair('float ','float ');
  synProposal.ItemList.AddPair('for ','for ') ;
  synProposal.ItemList.AddPair('function ','function ');
  synProposal.ItemList.AddPair('goto ','goto ');
  synProposal.ItemList.AddPair('if ','if ');
  synProposal.ItemList.AddPair('implements ','implements ');
  synProposal.ItemList.AddPair('import ','import ');
  synProposal.ItemList.AddPair('instanceof ','instanceof ');
  synProposal.ItemList.AddPair('in ','in ');
  synProposal.ItemList.AddPair('int ','int ');
  synProposal.ItemList.AddPair('interface ','interface ');
  synProposal.ItemList.AddPair('long ','long ');
  synProposal.ItemList.AddPair('native ','native ');
  synProposal.ItemList.AddPair('new ','new ');
  synProposal.ItemList.AddPair('package ','package ');
  synProposal.ItemList.AddPair('private ','private ');
  synProposal.ItemList.AddPair('protected ','protected ');
  synProposal.ItemList.AddPair('public ','public '); 
  synProposal.ItemList.AddPair('return ','return ');
  synProposal.ItemList.AddPair('short ','short ');
  synProposal.ItemList.AddPair('static ','static ');
  synProposal.ItemList.AddPair('super ','super ');
  synProposal.ItemList.AddPair('switch ','switch ');
  synProposal.ItemList.AddPair('synchronized ','synchronized ');
  synProposal.ItemList.AddPair('this ','this ');
  synProposal.ItemList.AddPair('throw ','throw ');
  synProposal.ItemList.AddPair('throws ','throws ') ;
  synProposal.ItemList.AddPair('transient ','transient ');
  synProposal.ItemList.AddPair('try ','try ');     
  synProposal.ItemList.AddPair('typeof ','typeof ') ; 
  synProposal.ItemList.AddPair('var ','var ') ;
  synProposal.ItemList.AddPair('void ','void ') ;
  synProposal.ItemList.AddPair('volatile ','volatile ');   
  synProposal.ItemList.AddPair('while ','while ') ;
  synProposal.ItemList.AddPair('with ','with ');
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
  syntaxLabel.Caption := 'Javascript';   
   if lingua<>nil then MnuSyntax.Caption :=  lingua.S_Syntax_Title+' (Javascript)';
End;
   
(**
* anche questa lista di keyword è già ordinata!
*)
procedure TEditorMainForm.SettaCss(Sender: TObject);
Begin
  synProposal.ItemList.Clear;
  synProposal.ItemList.AddPair('azimuth'	 ,	'azimuth'	);
  synProposal.ItemList.AddPair('background-attachment'	 ,	'background-attachment'	);
  synProposal.ItemList.AddPair('background-color'	 ,	'background-color'	);
  synProposal.ItemList.AddPair('background-image'	 ,	'background-image'	);
  synProposal.ItemList.AddPair('background-position'	 ,	'background-position'	);
  synProposal.ItemList.AddPair('background-repeat'	 ,	'background-repeat'	);
  synProposal.ItemList.AddPair('background'	 ,	'background'	);
  synProposal.ItemList.AddPair('border-collapse'	 ,	'border-collapse'	);
  synProposal.ItemList.AddPair('border-color'	 ,	'border-color'	);
  synProposal.ItemList.AddPair('border-spacing'	 ,	'border-spacing'	);
  synProposal.ItemList.AddPair('border-style'	 ,	'border-style'	);
  synProposal.ItemList.AddPair('border-top' ,	'border-top');
  synProposal.ItemList.AddPair('border-right'	 ,	'border-right');
  synProposal.ItemList.AddPair('border-bottom',	'border-bottom');
  synProposal.ItemList.AddPair('border-left'	 ,	'border-left'	);
  synProposal.ItemList.AddPair('border-top-color'	 ,	'border-top-color'	);
  synProposal.ItemList.AddPair('border-right-color'	 ,	'border-right-color'	);
  synProposal.ItemList.AddPair('border-bottom-color' ,	'border-bottom-color'	);
  synProposal.ItemList.AddPair('border-left-color'	 ,	'border-left-color'	);
  synProposal.ItemList.AddPair('border-top-style'	 ,	'border-top-style'	);
  synProposal.ItemList.AddPair('border-right-style'	 ,	'border-right-style'	);
  synProposal.ItemList.AddPair('border-bottom-style'	 ,	'border-bottom-style'	);
  synProposal.ItemList.AddPair('border-left-style'	 ,	'border-left-style'	);
  synProposal.ItemList.AddPair('border-top-width'	 ,	'border-top-width'	);
  synProposal.ItemList.AddPair('border-right-width'	 ,	'border-right-width'	);
  synProposal.ItemList.AddPair('border-bottom-width'	 ,	'border-bottom-width'	);
  synProposal.ItemList.AddPair('border-left-width'	 ,	'border-left-width'	);
  synProposal.ItemList.AddPair('border-width'	 ,	'border-width'	);
  synProposal.ItemList.AddPair('border'	 ,	'border'	);
  synProposal.ItemList.AddPair('bottom'	 ,	'bottom'	);
  synProposal.ItemList.AddPair('caption-side'	 ,	'caption-side'	);
  synProposal.ItemList.AddPair('clear'	 ,	'clear'	);
  synProposal.ItemList.AddPair('clip'	 ,	'clip'	);
  synProposal.ItemList.AddPair('color'	 ,	'color'	);
  synProposal.ItemList.AddPair('content'	 ,	'content'	);
  synProposal.ItemList.AddPair('counter-increment'	 ,	'counter-increment'	);
  synProposal.ItemList.AddPair('counter-reset'	 ,	'counter-reset'	);
  synProposal.ItemList.AddPair('cue-after'	 ,	'cue-after'	);
  synProposal.ItemList.AddPair('cue-before'	 ,	'cue-before'	);
  synProposal.ItemList.AddPair('cue'	 ,	'cue'	);
  synProposal.ItemList.AddPair('cursor'	 ,	'cursor'	);
  synProposal.ItemList.AddPair('direction'	 ,	'direction'	);
  synProposal.ItemList.AddPair('display'	 ,	'display'	);
  synProposal.ItemList.AddPair('elevation'	 ,	'elevation'	);
  synProposal.ItemList.AddPair('empty-cells'	 ,	'empty-cells'	);
  synProposal.ItemList.AddPair('float'	 ,	'float'	);
  synProposal.ItemList.AddPair('font-family'	 ,	'font-family'	);
  synProposal.ItemList.AddPair('font-size'	 ,	'font-size'	);
  synProposal.ItemList.AddPair('font-style'	 ,	'font-style'	);
  synProposal.ItemList.AddPair('font-variant'	 ,	'font-variant'	);
  synProposal.ItemList.AddPair('font-weight'	 ,	'font-weight'	);
  synProposal.ItemList.AddPair('font'	 ,	'font'	);
  synProposal.ItemList.AddPair('height'	 ,	'height'	);
  synProposal.ItemList.AddPair('left'	 ,	'left'	);
  synProposal.ItemList.AddPair('letter-spacing'	 ,	'letter-spacing'	);
  synProposal.ItemList.AddPair('line-height'	 ,	'line-height'	);
  synProposal.ItemList.AddPair('list-style-image'	 ,	'list-style-image'	);
  synProposal.ItemList.AddPair('list-style-position'	 ,	'list-style-position'	);
  synProposal.ItemList.AddPair('list-style-type'	 ,	'list-style-type'	);
  synProposal.ItemList.AddPair('list-style'	 ,	'list-style'	);
  synProposal.ItemList.AddPair('margin-right'	 ,	'margin-right'	);
  synProposal.ItemList.AddPair('margin-left'	 ,	'margin-left'	);
  synProposal.ItemList.AddPair('margin-top'	 ,	'margin-top'	);
  synProposal.ItemList.AddPair('margin-bottom'	 ,	'margin-bottom'	);
  synProposal.ItemList.AddPair('margin'	 ,	'margin'	);
  synProposal.ItemList.AddPair('max-height'	 ,	'max-height'	);
  synProposal.ItemList.AddPair('max-width'	 ,	'max-width'	);
  synProposal.ItemList.AddPair('min-height'	 ,	'min-height'	);
  synProposal.ItemList.AddPair('min-width'	 ,	'min-width'	);
  synProposal.ItemList.AddPair('orphans'	 ,	'orphans'	);
  synProposal.ItemList.AddPair('outline-color'	 ,	'outline-color'	);
  synProposal.ItemList.AddPair('outline-style'	 ,	'outline-style'	);
  synProposal.ItemList.AddPair('outline-width'	 ,	'outline-width'	);
  synProposal.ItemList.AddPair('outline'	 ,	'outline'	);
  synProposal.ItemList.AddPair('overflow'	 ,	'overflow'	);
  synProposal.ItemList.AddPair('padding-top'	 ,	'padding-top'	);
  synProposal.ItemList.AddPair('padding-right'	 ,	'padding-right'	);
  synProposal.ItemList.AddPair('padding-bottom'	 ,	'padding-bottom'	);
  synProposal.ItemList.AddPair('padding-left'	 ,	'padding-left'	);
  synProposal.ItemList.AddPair('padding'	 ,	'padding'	);
  synProposal.ItemList.AddPair('page-break-after'	 ,	'page-break-after'	);
  synProposal.ItemList.AddPair('page-break-before'	 ,	'page-break-before'	);
  synProposal.ItemList.AddPair('page-break-inside'	 ,	'page-break-inside'	);
  synProposal.ItemList.AddPair('pause-after'	 ,	'pause-after'	);
  synProposal.ItemList.AddPair('pause-before'	 ,	'pause-before'	);
  synProposal.ItemList.AddPair('pause'	 ,	'pause'	);
  synProposal.ItemList.AddPair('pitch-range'	 ,	'pitch-range'	);
  synProposal.ItemList.AddPair('pitch'	 ,	'pitch'	);
  synProposal.ItemList.AddPair('play-during'	 ,	'play-during'	);
  synProposal.ItemList.AddPair('position'	 ,	'position'	);
  synProposal.ItemList.AddPair('quotes'	 ,	'quotes'	);
  synProposal.ItemList.AddPair('richness'	 ,	'richness'	);
  synProposal.ItemList.AddPair('right'	 ,	'right'	);
  synProposal.ItemList.AddPair('speak-header'	 ,	'speak-header'	);
  synProposal.ItemList.AddPair('speak-numeral'	 ,	'speak-numeral'	);
  synProposal.ItemList.AddPair('speak-punctuation'	 ,	'speak-punctuation'	);
  synProposal.ItemList.AddPair('speak'	 ,	'speak'	);
  synProposal.ItemList.AddPair('speech-rate'	 ,	'speech-rate'	);
  synProposal.ItemList.AddPair('stress'	 ,	'stress'	);
  synProposal.ItemList.AddPair('table-layout'	 ,	'table-layout'	);
  synProposal.ItemList.AddPair('text-align'	 ,	'text-align'	);
  synProposal.ItemList.AddPair('text-decoration'	 ,	'text-decoration'	);
  synProposal.ItemList.AddPair('text-indent'	 ,	'text-indent'	);
  synProposal.ItemList.AddPair('text-transform'	 ,	'text-transform'	);
  synProposal.ItemList.AddPair('top'	 ,	'top'	);
  synProposal.ItemList.AddPair('unicode-bidi'	 ,	'unicode-bidi'	);
  synProposal.ItemList.AddPair('vertical-align'	 ,	'vertical-align'	);
  synProposal.ItemList.AddPair('visibility'	 ,	'visibility'	);
  synProposal.ItemList.AddPair('voice-family'	 ,	'voice-family'	);
  synProposal.ItemList.AddPair('volume'	 ,	'volume'	);
  synProposal.ItemList.AddPair('white-space'	 ,	'white-space'	);
  synProposal.ItemList.AddPair('widows'	 ,	'widows'	);
  synProposal.ItemList.AddPair('width'	 ,	'width'	);
  synProposal.ItemList.AddPair('word-spacing'	 ,	'word-spacing'	);
  synProposal.ItemList.AddPair('z-index'	 ,	'z-index'	);
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
        SynProposal.ItemList.AddPair(visualized,original);
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
            synProposal.ItemList.AddPair(nome,valore);
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
var
  BufSize: Integer;  // buffer size required for value
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
    Result := '';
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
