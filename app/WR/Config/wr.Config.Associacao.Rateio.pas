unit wr.Config.Associacao.Rateio;

interface

procedure Inicializa_Config_Associacao_Rateio;

implementation

uses Base, Tag.APP, Tag.Config;

procedure Inicializa_Config_Associacao_Rateio;
begin
  RegistraWR_Config(TagAPP_Rateio, Tag_Config_FOTOS_RELATORIOS,
                  '', 'FOTOS_RELATORIOS',
                  'Caminho das imagens do Relatórios de Rateios:',
                  '', 'path');
  RegistraWR_Config(TagAPP_Rateio, Tag_Config_CODPLANOCONTAS_RATEIO_MEDIA,
                  '', 'CODPLANOCONTAS_RATEIO_MEDIA',
                  'Plano Contas - Rateio Média',
                  '', 'PLANO DE CONTAS');
end;

initialization
  Inicializa_Config_Associacao_Rateio;

end.

