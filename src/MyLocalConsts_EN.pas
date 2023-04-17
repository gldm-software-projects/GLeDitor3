(**
English localization

@author De Michelis Gian Luca
*)

Unit MyLocalConsts_EN;

{$MODE Delphi}

// GLeDitor v.3 for Apple Mac architecture

Interface

Uses MyLocalConsts;

Type TEnglishConstContainer = Class(TLocalizedConstContainer)
  Private 
  Public 
    constructor Create();   //override;
    //destructor Destroy(); //override;
End;

//var inglese: TEnglishConstContainer;

Implementation

constructor TEnglishConstContainer.create(); //override;
Begin
  // titoli del menù
  S_File_Title  :=  'File';
  S_Edit_Title  :=  'Edit';
  S_Tools_Title  :=  'Tools';
  S_Syntax_Title  :=  'Syntax';
  S_Theme_Title  :=  'Theme';
  S_Help_Title  :=  '?';
  // voci dei menù
  S_File_New  :=  'New';
  S_File_NewWindow  :=  'New window';
  S_File_Open  :=  'Open';
  S_File_OpenNW  :=  'Open in new window';
  S_File_Save  :=  'Save';
  S_File_SaveAs  :=  'Save as';
  S_File_Print  :=  'Print';
  S_File_Close  :=  'Close';

  S_Edit_SelectAll  :=  'Select All';
  S_Edit_Copy  :=  'Copy';
  S_Edit_Paste  :=  'Paste';
  S_Edit_Cut  :=  'Cut';
  S_Edit_Undo  :=  'Undo';
  S_Edit_ReDo  :=  'Redo';
  S_Edit_Search  :=  'Search';
  S_Edit_Replace  :=  'Replace';
  S_Edit_WWrap  :=  'Enable word wrap';
  S_Edit_NotWWrap  :=  'Disable word wrap';

  S_Tools_Configure  :=  'Configure';
  S_Tools_Launch  :=  'View';
  S_Tools_Compile  :=  'Compile';
  S_Tools_XmlFormat  :=  'Improve xml readability';
  S_Tools_HtmlFormat := 'Improve html readability';
  S_Tools_AddSnippet  :=  'Add Snippet to current syntax';
  S_Tools_EditSnippet := 'Show Custom snippet configuration file';
  S_Tools_DeleteSnippet := 'Remove all Snippets for current syntax';
  S_Tools_ToggleFontColor := 'Toggle the font color';

  S_Tools_SetFont_Hint:= 'Choose the font for the editor';
  S_Tools_SetFont:= 'Set font';

  S_Syntax_Text  :=  'Plain text';

  S_Theme_Forest  :=  'Forest';
  S_Theme_Snow  :=  'Snow';
  S_Theme_Sand  :=  'Sand';
  S_Theme_Rose  :=  'Rose';
  S_Theme_Ocean  :=  'Ocean';
  S_Theme_Custom  :=  'Custom';
  S_Theme_ModCustom := 'Customize theme';

  S_Language_Title := 'Localization';
  S_Language_Italian := 'Italian';
  S_Language_English := 'English';
  S_Language_French := 'French';
  S_Language_German := 'German';
  S_Language_Turkish := 'Turkish';

  S_Help_Manual  :=  'User guide';
  S_Help_Info  :=  'About GLeDitor';
  S_Help_Compiler  :=  'Compiler manual';
  S_Help_License  :=  'License';
  S_Help_Home  :=  'Homepage GLeDitor';

  S_Row  :=  'Row';
  S_Col  :=  'Col.';
  S_ReadOnly  :=  'Read only';

  //Extended search
  S_ExtSearch := 'Extended Search';

  // hints
  S_Help_Manual_Hint  :=  'Manual of GLeDitor';
  S_Help_Info_Hint  :=  'Info about GLeDitor';
  S_Help_Compiler_Hint  :=  'Manual of the compiler';
  S_Help_Home_Hint  :=  'Go to the GLeDitor Homepage';
  S_Tools_Configure_Hint  :=  'Configure the external calls';
  S_Tools_Compile_Hint  :=  'Call the compiler';
  S_Tools_Launch_Hint  :=  'Call the viewer';
  S_File_New_Hint  :=  'Create a new text file';
  S_File_New_Window_Hint  :=  'Open a new GLeDitor window';
  S_File_Open_Hint  :=  'Open file';
  S_File_OpenNW_Hint  :=  'Open file in new window';
  S_File_Save_Hint  :=  'Save the file';
  S_File_SaveAs_Hint  :=  'Save the file with a new name';
  S_File_Close_Hint  :=  'Close GLeDitor';
  S_File_Print_Hint  :=  'Print the current file';
  S_Edit_SelectAll_Hint  :=  'Select all the text';
  S_Edit_Copy_Hint  :=  'Copy the selected text';
  S_Edit_Paste_Hint  :=  'Paste the selected text';
  S_Edit_Cut_Hint  :=  'Cut the selected text';
  S_Edit_Undo_Hint  :=  'Undo';
  S_Edit_ReDo_Hint  :=  'Redo';
  S_Edit_Search_Hint  :=  'Do a Search';
  S_Edit_Replace_Hint  :=  'Replace';
  S_Edit_WWrap_Hint  :=  'Set Word wrap';
  S_Edit_NotWWrap_Hint  :=  'Unset word wrap';

  // about box
  S_About_1  :=  'This software is Free Software, released under the terms of the Gnu GPL v.2;';
  S_About_2  :=  'The use, copy, study, modify and distribution are allowed and encouraged.';
  S_About_3  :=  'Icons by Yusuke Kamiyamane';//'Based on the SynEdit free components.';
  S_About_link := 'http://p.yusukekamiyamane.com/';
  S_About_Caption  :=  'About GLeDitor V.2';

  // configuration form
  S_Configuration_Caption  := 'Compilers configuration';
  S_Configuration_Title  := 'Configure external calls';

  S_Help_Label := 'Help File';
  S_Parameters_Label := 'Parameters';
  S_Directory_Label := 'Working directory';
  S_Java_Comp_Label := 'Java compiler call';
  S_Basic_Comp_Label := 'Basic compiler call';
  S_Pascal_Comp_Label := 'Pascal compiler call';
  S_C_Comp_Label := 'C/C++ compiler call';
  S_Csharp_Comp_Label := 'C# compiler call';
  S_SQL_Comp_Label := 'SQL call';
  S_Python_Comp_Label := 'Python engine call';

  S_Pop_FileName  := 'Current file name (with path)';
  S_Pop_FileDir   := 'Current file directory path';

  S_Btn_Save  :=  'Save';
  S_Btn_Cancel  :=  'Cancel';

  S_Alert_Manual  :=  'Manual file not found.';
  S_Alert_Compiler  :=  'Cannot launch the external call.';
  S_Alert_CompilerManual  :=  'Compiler Manual not found.';
  S_Alert_SnippetTooBig := 'Snippet too large. Please select a smaller portion of code.';
  S_Alert_RemoveAllSnippet := 'Do you want to remove all custom Snippet for the current syntax?';
  S_Alert_SnippetConfirm := 'Do you want to add this Snippet: "';
  S_Alert_MissingSnippetFile := 'Sorry, there is no Snippet Configuration file.';  
  S_Alert_WantToSaveCurrentDoc := 'The current document has been modified. Do you want to save it?';
  //'Manuale del compilatore non trovato/non configurato.';

  S_Page  :=  'page';
  S_Of  :=  'of';
  // ricerca estesa
  S_CaseSensitive := 'Case sensitive';
  S_WholeWord := 'Whole word';
  S_NFound := 'Numbers of items found: ';
  S_DoSearch := 'Find!';
  S_Find := 'Find:';
End;

(*
destructor TEnglishConstContainer.destroy(); //override;
begin

end;
*)
End.
