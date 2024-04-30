unit wr.APP.Relatorio;

interface

procedure Inicializa_WR_APP_Relatorio;

implementation

Uses
  Base, UnitFuncoes, Tag.APP, Tag.Modulo;

procedure Inicializa_WR_APP_Relatorio;
begin
 RegistraWR_APP(TagAPP_Relatorio, 44, TagModulo_Relatorio,
  'Personalizar relatórios',
  'Aprenda a realizar o cadastro dos produtos localizados em estoque que serão utilizados em lotes,'+
  ' podendo estes serem artigos do estoque interno ou de terceiros,'+
  ' facilitando o controle e rastreabilidade desses produtos dentro do Office Impresso! ',
  'https://oimpresso.com/ajuda/lote/');
end;

initialization
  Inicializa_WR_APP_Relatorio;


end.















