(**
Italian localization

@author De Michelis Gian Luca
*)

Unit MyLocalConsts_IT;

{$MODE Delphi}

// GLeDitor v.3 for Apple Mac architecture

Interface

Uses MyLocalConsts;

Type TItalianConstContainer = Class(TLocalizedConstContainer)
  Private 
  Public 
    constructor Create();   // override;
    //destructor Destroy(); // override;
End;

//var italiano: TItalianConstContainer;

Implementation

constructor TitalianConstContainer.create(); // override;
Begin
  // titoli del menù
  S_File_Title := 'File';
  S_Edit_Title := 'Modifica';
  S_Tools_Title := 'Strumenti';
  S_Syntax_Title := 'Sintassi';
  S_Theme_Title := 'Tema colore';
  S_Help_Title := '?';

  // voci dei menù
  S_File_New := 'Nuovo';
  S_File_NewWindow := 'Nuova finestra';
  S_File_Open := 'Apri';
  S_File_OpenNW := 'Apri in una nuova finestra';
  S_File_Save := 'Salva';
  S_File_SaveAs := 'Salva con nome';
  S_File_Print := 'Stampa';
  S_File_Close := 'Esci';

  S_Edit_SelectAll := 'Seleziona tutto';
  S_Edit_Copy := 'Copia';
  S_Edit_Paste := 'Incolla';
  S_Edit_Cut := 'Taglia';
  S_Edit_Undo := 'Undo';
  S_Edit_ReDo := 'Redo';
  S_Edit_Search := 'Cerca';
  S_Edit_Replace := 'Sostituisci';
  S_Edit_WWrap := 'Abilita ''a capo'' automatico';
  S_Edit_NotWWrap := 'Disabilita ''a capo'' automatico';

  S_Tools_Configure := 'Configura';
  S_Tools_Launch := 'Visualizza';
  S_Tools_Compile := 'Compila';
  S_Tools_XmlFormat := 'Formatta xml';
  S_Tools_HtmlFormat := 'Formatta html';
  S_Tools_AddSnippet  :=  'Aggiungi Snippet'; 
  S_Tools_EditSnippet := 'Apri il file di configurazione degli Snippet';
  S_Tools_DeleteSnippet := 'Rimuovi Snippet per il linguaggio corrente';    
  S_Tools_ToggleFontColor := 'Cambia il colore del font';

  S_Tools_SetFont_Hint:= 'Scegli il font per l''editor';
  S_Tools_SetFont:= 'Configura font';

  S_Syntax_Text := 'Testo normale';

  S_Theme_Forest := 'Bosco';
  S_Theme_Snow := 'Neve';
  S_Theme_Sand := 'Sabbia';
  S_Theme_Rose := 'Rosa';
  S_Theme_Ocean := 'Oceano';
  S_Theme_Custom := 'Personalizzato';
  S_Theme_ModCustom := 'Personalizza tema colore';

  S_Language_Title := 'Lingua';
  S_Language_Italian := 'Italiano';
  S_Language_English := 'Inglese';
  S_Language_French := 'Francese';
  S_Language_German := 'Tedesco';
  S_Language_Turkish := 'Turco';

  S_Help_Manual := 'Manuale utente';
  S_Help_Info := 'Informazioni su GLeDitor3';
  S_Help_Compiler := 'Manuale del compilatore';
  S_Help_License := 'Licenza';
  S_Help_Home := 'Wiki GLeDitor';

  S_Row := 'Riga';    
  S_Col  :=  'Col.';
  S_ReadOnly := 'Sola lettura';

  S_ExtSearch := 'Ricerca estesa';

  // hints
  S_Help_Manual_Hint := 'Manuale del GLeDitor3';
  S_Help_Info_Hint := 'Informazioni su GLeDitor3';
  S_Help_Compiler_Hint := 'Manuale del compilatore';
  S_Help_Home_Hint := 'Apre la wiki di GLeDitor3';
  S_Tools_Configure_Hint := 'Configura le chiamate esterne';
  S_Tools_Compile_Hint := 'Chiama il compilatore';
  S_Tools_Launch_Hint := 'Chiama il visualizzatore';
  S_File_New_Hint := 'Crea un nuovo file di testo';
  S_File_Open_Hint := 'Apri un file';
  S_File_New_Window_Hint := 'Apri una nuova finestra';
  S_File_OpenNW_Hint := 'Apri un file in una nuova finestra';
  S_File_Save_Hint := 'Salva il file attuale';
  S_File_SaveAs_Hint := 'Salva il file attuale dandogli un nome';
  S_File_Close_Hint := 'Esci da GLeDitor';
  S_File_Print_Hint := 'Stampa il file attuale';
  S_Edit_SelectAll_Hint := 'Selecziona tutto il testo';
  S_Edit_Copy_Hint := 'Copia il testo selezionato';
  S_Edit_Paste_Hint := 'Incolla il testo selezionato';
  S_Edit_Cut_Hint := 'Taglia il testo selezionato';
  S_Edit_Undo_Hint := 'Annulla';
  S_Edit_ReDo_Hint := 'Ripeti';
  S_Edit_Search_Hint := 'Effettua una ricerca';
  S_Edit_Replace_Hint := 'Effettua una sostituzione';
  S_Edit_WWrap_Hint := 'Abilita ''a capo'' automatico';
  S_Edit_NotWWrap_Hint := 'Disabilita ''a capo'' automatico';

  S_About_1 := 'Il programma è rilasciato secondo i termini della GPL v.2;';
  S_About_2 := 'L''utilizzo, lo studio, la modifica, la copia e la diffusione sono incoraggiate.';
  S_About_3 := 'Icone di Yusuke Kamiyamane';//'Nello sviluppo sono stati utilizzati componenti liberi basati sulle librerie SynEdit.';
  S_About_link := 'http://p.yusukekamiyamane.com/';
  S_About_Caption := 'Informazioni GLeDitor V.3';

  // configuration form
  S_Configuration_Caption := 'Configurazione dei compilatori';
  S_Configuration_Title := 'Configura le chiamate esterne';

  S_Help_Label := 'File di help';
  S_Parameters_Label := 'Parametri';
  S_Directory_Label := 'Directory di lavoro';
  S_Java_Comp_Label := 'Chiamata al compilatore Java';
  S_Basic_Comp_Label := 'Chiamata al compilatore Basic';
  S_Pascal_Comp_Label := 'Chiamata al compilatore Pascal';
  S_C_Comp_Label := 'Chiamata al compilatore C/C++';
  //S_Csharp_Comp_Label := 'Chiamata al compilatore C#';
  S_SQL_Comp_Label := 'Chiamata SQL';
  S_Python_Comp_Label := 'Chiamata all''interprete Python';

  S_Pop_FileName  := 'Nome e percorso del file corrente';
  S_Pop_FileDir   := 'Directory del file corrente';

  S_Btn_Save := 'Salva';
  S_Btn_Cancel := 'Annulla';

  S_Alert_Manual := 'File del manuale non trovato.';
  S_Alert_Compiler := 'Non è possibile lanciare la chiamata esterna.';
  S_Alert_CompilerManual := 'Manuale del compilatore non trovato/non configurato.';
  S_Alert_SnippetTooBig := 'Snippet troppo grande. Selezione una porzione di codice ridotta.';
  S_Alert_SnippetConfirm := 'Vuoi aggiungere questo Snippet: "'; 
  S_Alert_RemoveAllSnippet := 'Vuoi rimuovere tutti gli Snippet personalizzati per questo linguaggio?';
  S_Alert_MissingSnippetFile := 'Non è stato trovato alcun file di configurazione Snippet.';
  S_Alert_WantToSaveCurrentDoc := 'Il documento corrente non è stato salvato. Procedere al salvataggio?';

  S_Page := 'pagina';
  S_Of := 'di';

  // ricerca estesa
  S_CaseSensitive := 'Maiuscole/minuscole';
  S_WholeWord := 'Parola intera';
  S_NFound := 'Numero di occorrenze trovate: ';
  S_DoSearch := 'Cerca!';
  S_Find := 'Trova:';
End;

(*
destructor TitalianConstContainer.destroy();  //override;
begin
  //
end;
*)

End.
