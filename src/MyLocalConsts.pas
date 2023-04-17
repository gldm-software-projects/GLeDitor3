(**
template for localization of GLeDitor v.3

@author De Michelis Gian Luca
@todo use this unit to translate the GLeDitor in french, german, spanish, dutch...
*)

Unit MyLocalConsts;

{$MODE Delphi}

// GLeDitor v.3 for Apple Mac architecture

Interface

Type TLocalizedConstContainer = Class(TObject)
  Private 
            { private declarations }
  Protected 
            { protected declarations }
  Public 
    //var
    LanguageName : string;  /// example: "English", "Deutsch", "Italiano"...
    S_File_Title,
    S_Edit_Title,
    S_Tools_Title,
    S_Syntax_Title,
    S_Theme_Title,
    S_Help_Title,

    // voci dei menù
    S_File_New ,
    S_File_NewWindow,
    S_File_Open,
    S_File_OpenNW,
    S_File_Save,
    S_File_SaveAs,
    S_File_Print,
    S_File_Close,

    S_Edit_SelectAll,
    S_Edit_Copy,
    S_Edit_Paste,
    S_Edit_Cut,
    S_Edit_Undo,
    S_Edit_ReDo,
    S_Edit_Search,
    S_Edit_Replace,
    S_Edit_WWrap,
    S_Edit_NotWWrap,

    S_Tools_Configure,
    S_Tools_Launch,
    S_Tools_Compile,
    S_Tools_XmlFormat,
    S_Tools_HtmlFormat,
    S_Tools_AddSnippet,
    S_Tools_EditSnippet,
    S_Tools_DeleteSnippet,  
    S_Tools_ToggleFontColor,

    S_Syntax_Text,

    S_Theme_Forest,
    S_Theme_Snow,
    S_Theme_Sand,
    S_Theme_Rose,
    S_Theme_Ocean,
    S_Theme_Custom,
    S_Theme_ModCustom,

    S_Language_Title,
    S_Language_Italian,
    S_Language_English,
    S_Language_French,
    S_Language_German,
    S_Language_Turkish,
    S_Help_Manual,
    S_Help_Info,
    S_Help_Compiler,
    S_Help_License,
    S_Help_Home : string;

    S_Row,
    S_Col,
    S_ReadOnly,
    //Extended search
    S_ExtSearch,
    // hints
    S_Help_Manual_Hint,
    S_Help_Info_Hint,
    S_Help_Compiler_Hint,
    S_Help_Home_Hint,
    S_Tools_Configure_Hint,
    S_Tools_Compile_Hint,
    S_Tools_Launch_Hint,
    S_Tools_SetFont_Hint,
    S_Tools_SetFont,
    S_File_New_Hint,
    S_File_Open_Hint,
    S_File_New_Window_Hint,
    S_File_OpenNW_Hint,
    S_File_Save_Hint,
    S_File_SaveAs_Hint,
    S_File_Close_Hint,
    S_File_Print_Hint,
    S_Edit_SelectAll_Hint,
    S_Edit_Copy_Hint,
    S_Edit_Paste_Hint,
    S_Edit_Cut_Hint,
    S_Edit_Undo_Hint,
    S_Edit_ReDo_Hint,
    S_Edit_Search_Hint,
    S_Edit_Replace_Hint,
    S_Edit_WWrap_Hint,
    S_Edit_NotWWrap_Hint,

    S_About_1,
    S_About_2,
    S_About_3,
    S_About_link,
    S_About_Caption : string;

    // configuration form
    S_Configuration_Caption,
    S_Configuration_Title,

    S_Help_Label,
    S_Parameters_Label,
    S_Directory_Label,
    S_Java_Comp_Label,
    S_Basic_Comp_Label,
    S_Pascal_Comp_Label,
    S_C_Comp_Label,
    S_Csharp_Comp_Label,
    S_SQL_Comp_Label,
    S_Python_Comp_Label,

    S_Pop_FileName,
    S_Pop_FileDir,

    S_Btn_Save,
    S_Btn_Cancel,

    S_Alert_Manual,
    S_Alert_Compiler,
    S_Alert_CompilerManual,
    S_Alert_SnippetTooBig,
    S_Alert_MissingSnippetFile,    
    S_Alert_WantToSaveCurrentDoc,
    S_Alert_SnippetConfirm,
    S_Alert_RemoveAllSnippet,

    S_Page,
    S_Of,

    // ricerca estesa
    S_CaseSensitive,
    S_WholeWord,
    S_NFound,
    S_DoSearch,
    S_Find : string;
    constructor Create;
    destructor Destroy;
    override;

  Published 
            { published declarations }

End;

Implementation

constructor TLocalizedConstContainer.Create;
Begin
  //
End;


destructor TLocalizedConstContainer.Destroy;
Begin
  // titoli del menù
  S_File_Title  :=  '';
  S_Edit_Title  :=  '';
  S_Tools_Title  :=  '';
  S_Syntax_Title  :=  '';
  S_Theme_Title  :=  '';
  S_Help_Title  :=  '';
  // voci dei menù
  S_File_New  :=  '';
  S_File_NewWindow  :=  '';
  S_File_Open  :=  '';
  S_File_OpenNW  :=  '';
  S_File_Save  :=  '';
  S_File_SaveAs  :=  '';
  S_File_Print  :=  '';
  S_File_Close  :=  '';

  S_Edit_SelectAll  :=  '';
  S_Edit_Copy  :=  '';
  S_Edit_Paste  :=  '';
  S_Edit_Cut  :=  '';
  S_Edit_Undo  :=  '';
  S_Edit_ReDo  :=  '';
  S_Edit_Search  :=  '';
  S_Edit_Replace  :=  '';
  S_Edit_WWrap  :=  '';
  S_Edit_NotWWrap  :=  '';

  S_Tools_Configure  :=  '';
  S_Tools_Launch  :=  '';
  S_Tools_Compile  :=  '';
  S_Tools_XmlFormat  :=  '';    
  S_Tools_HtmlFormat  :=  '';
  S_Tools_AddSnippet := '';
  S_Tools_EditSnippet :='';
  S_Tools_DeleteSnippet := '';

  S_Tools_SetFont_Hint:= '';
  S_Tools_SetFont:= '';

  S_Syntax_Text  :=  '';

  S_Theme_Forest  :=  '';
  S_Theme_Snow  :=  '';
  S_Theme_Sand  :=  '';
  S_Theme_Rose  :=  '';
  S_Theme_Ocean  :=  '';
  S_Theme_Custom  :=  '';
  S_Theme_ModCustom := '';

  S_Language_Title := '';
  S_Language_Italian := '';
  S_Language_English := '';
  S_Language_French := '';
  S_Language_German := '';
  S_Language_Turkish := '';

  S_Help_Manual  :=  '';
  S_Help_Info  :=  '';
  S_Help_Compiler  :=  '';
  S_Help_License  :=  '';
  S_Help_Home  :=  '';

  S_Row  :=  '';
  S_ReadOnly  :=  '';

  //Extended search
  S_ExtSearch := '';

  // hints
  S_Help_Manual_Hint  :=  '';
  S_Help_Info_Hint  :=  '';
  S_Help_Compiler_Hint  :=  '';
  S_Help_Home_Hint  :=  '';
  S_Tools_Configure_Hint  :=  '';
  S_Tools_Compile_Hint  :=  '';
  S_Tools_Launch_Hint  :=  '';
  S_File_New_Hint  :=  '';
  S_File_New_Window_Hint  :=  '';
  S_File_Open_Hint  :=  '';
  S_File_OpenNW_Hint  :=  '';
  S_File_Save_Hint  :=  '';
  S_File_SaveAs_Hint  :=  '';
  S_File_Close_Hint  :=  '';
  S_File_Print_Hint  :=  '';
  S_Edit_SelectAll_Hint  :=  '';
  S_Edit_Copy_Hint  :=  '';
  S_Edit_Paste_Hint  :=  '';
  S_Edit_Cut_Hint  :=  '';
  S_Edit_Undo_Hint  :=  '';
  S_Edit_ReDo_Hint  :=  '';
  S_Edit_Search_Hint  :=  '';
  S_Edit_Replace_Hint  :=  '';
  S_Edit_WWrap_Hint  :=  '';
  S_Edit_NotWWrap_Hint  :=  '';

  // about box
  S_About_1  :=  '';
  S_About_2  :=  '';
  S_About_3  :=  '';
  S_About_Caption  :=  '';

  // configuration form
  S_Configuration_Caption  := '';
  S_Configuration_Title  := '';

  S_Help_Label := '';
  S_Parameters_Label := '';
  S_Directory_Label := '';
  S_Java_Comp_Label := '';
  S_Basic_Comp_Label := '';
  S_Pascal_Comp_Label := '';
  S_C_Comp_Label := '';
  S_Csharp_Comp_Label := '';
  S_SQL_Comp_Label := '';
  S_Python_Comp_Label := '';

  S_Pop_FileName  := '';
  S_Pop_FileDir   := '';

  S_Btn_Save  :=  '';
  S_Btn_Cancel  :=  '';

  S_Alert_Manual  :=  '';
  S_Alert_Compiler  :=  '';
  S_Alert_CompilerManual  :=  '';
  S_Alert_SnippetTooBig   := '';
  S_Alert_MissingSnippetFile := '';
  S_Alert_SnippetConfirm :='';
  S_Alert_RemoveAllSnippet :='';
  S_Alert_WantToSaveCurrentDoc := '';
  //'Manuale del compilatore non trovato/non configurato.';

  S_Page  :=  '';
  S_Of  :=  '';
  // ricerca estesa
  S_CaseSensitive := '';
  S_WholeWord := '';
  S_NFound := '';
  S_DoSearch := '';
  S_Find := '';
End;

End.
