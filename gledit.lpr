program gledit; // GLeDitor v.3 for Apple Mac architecture

{$MODE Delphi}

// GLeDitor 3 - Copyright (C) 2004 De Michelis Gian Luca
// This program is free software; you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation; either version 2 of the License.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License along
// with this program; if not, write to the Free Software Foundation, Inc.,
// 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.


uses
  Forms, Interfaces,
  Main,
  Info,
  Preferences,
  MyLocalConsts_IT,
  MyLocalConsts_EN,
  MyLocalConsts,
  SyntaxEnum,
  ThemeEnum,
  Utility;

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'GLeDitor3';
  Application.CreateForm(TEditorMainForm, EditorMainForm);
  Application.Run;
end.
