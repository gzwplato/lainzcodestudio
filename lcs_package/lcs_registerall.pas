unit lcs_registerall;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Lua53;

procedure RegisterAll(L: Plua_State; S: TStrings);

implementation

uses
  lcs_string, lcs_inifile, lcs_registry, lcs_textfile, lcs_zip, lcs_table,
  lcs_crypto, lcs_folder, lcs_file, lcs_application;

procedure RegisterAll(L: Plua_State; S: TStrings);
begin
  RegisterString(L);
  RegisterINIFile(L);
  RegisterRegistry(L);
  RegisterTextFile(L);
  RegisterZip(L);
  RegisterTable(L, S);
  RegisterCrypto(L);
  RegisterFolder(L);
  RegisterFile(L);
  RegisterApplication(L);
end;

end.

