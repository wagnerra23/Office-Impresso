unit wr.Config.Venda.Proposta;

interface

procedure Inicializa_Config_Venda_Proposta;

implementation

uses Base, Tag.APP, Tag.Config;

procedure Inicializa_Config_Venda_Proposta;
begin
  RegistraWR_Config(TagAPP_Propostas, Tag_Config_URL_COBRANCA,
                'Parâmetros', 'URL_COBRANCA',
                'URL Cobrança',
                '', 'text');
  RegistraWR_Config(TagAPP_Propostas, Tag_Config_URL_SPC,
                'Parâmetros', 'URL_SPC',
                'URL SPC',
                '', 'text');
end;

initialization
  Inicializa_Config_Venda_Proposta;

end.

