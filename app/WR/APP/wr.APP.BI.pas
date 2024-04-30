unit wr.APP.BI;

interface

procedure Inicializa_WR_APP_BI;


implementation

Uses
  Base, UnitFuncoes, Tag.APP, Tag.Modulo;

procedure Inicializa_WR_APP_BI;
begin
  RegistraWR_APP(TagAPP_BI, 11, TagModulo_BI,
  'Business Intelligence',
  'Business Intelligence',
  'https://oimpresso.com/ajuda/BI/');
end;

initialization
  Inicializa_WR_APP_BI;


end.















