unit wr.APP.Documento;

interface

procedure Inicializa_WR_APP_Documento;

implementation

Uses
  Base, UnitFuncoes, Tag.APP, Tag.Modulo;

procedure Inicializa_WR_APP_Documento;
begin
  RegistraWR_APP(TagAPP_Anexo, 63, TagModulo_Documento,
  'Anexe Arquivos',
  'Com o Office Impresso você pode tornar seus cadastros ainda mais completos ao anexar arquivos de diversos formatos de uma forma muito simples e rápida!'+
  ' Apenas selecione o arquivo e arraste para o bloco desejado, indicando se este será compartilhado com aplicativos de cadastro, venda ou produção.',
  'https://oimpresso.com/ajuda/anexe-arquivos/');
end;

initialization
  Inicializa_WR_APP_Documento;


end.















