unit wr.Config.Compra.ImportarXML;

interface

procedure Inicializa_WR_Config_Compra_ImportarXML;

const
  //********* Definição da última versão Desse objeto ***********

  Versao_WR_Config_Compra_ImportarXML = 1;

implementation

uses Base, Tag.APP, Tag.Config;

procedure Inicializa_WR_Config_Compra_ImportarXML;
begin
  RegistraWR_Config(TagAPP_Importacao_Xml, Tag_Config_NF_ENTRADA_ULTIMO_NSU,
                  '', 'NF_ENTRADA_ULTIMO_NSU',
                  'Último Número do NSU',
                  '', 'text');
  RegistraWR_Config(TagAPP_Importacao_Xml, Tag_Config_DIR_NOTA_DE_IMPORTACAO,
                  '', 'DIR_NOTA_DE_IMPORTACAO',
                  'Caminho do XML de Importação',
                  '', 'string(windows directory)');
end;

initialization
  Inicializa_WR_Config_Compra_ImportarXML;


end.

