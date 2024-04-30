unit wr.Config.Associacao.Ocorrencia;

interface

procedure Inicializa_Config_Associacao_Ocorrencia;

implementation

uses Base, Tag.APP, Tag.Config;

procedure Inicializa_Config_Associacao_Ocorrencia;
begin
  RegistraWR_Config(TagAPP_Ocorrencias, Tag_Config_FOTOS_OCORRENCIA,
                '', 'FOTOS_OCORRENCIA',
                'Caminho das imagens das Ocorrências:',
                '', 'path');
  RegistraWR_Config(TagAPP_Ocorrencias, Tag_Config_ANEXOS_PESSOAS,
                '', 'ANEXOS_PESSOAS',
                'Caminho dos Anexos do Cadastro de Pessoas:',
                '', 'path');
  RegistraWR_Config(TagAPP_Ocorrencias, Tag_Config_VALORCADASTRO,
                '', 'VALORCADASTRO',
                'Valor Padrão do Cadastro',
                '', 'currency');
  RegistraWR_Config(TagAPP_Ocorrencias, Tag_Config_VALORCOTA,
                '', 'VALORCOTA',
                'Valor da Cota',
                '', 'currency');
end;

initialization
  Inicializa_Config_Associacao_Ocorrencia;

end.

