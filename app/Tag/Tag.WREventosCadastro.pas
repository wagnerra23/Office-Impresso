unit Tag.WREventosCadastro;

interface

Uses
  Classes.APP, System.Generics.Collections, Tag.Form, WREventos;

function RegisterWREventosCadastro(ATag_Form: integer):TWREventosCadastro;

Var
  AWREventosCadastro : array [Tag_Form_First..Tag_Form_Last] of TWREventosCadastro;

implementation

Uses
  Tag.APP;
   
function RegisterWREventosCadastro(ATag_Form: integer):TWREventosCadastro;
begin
  if AWREventosCadastro[ATag_Form] = nil then
    AWREventosCadastro[ATag_Form] := TWREventosCadastro.Create(nil);
end;
  
end.