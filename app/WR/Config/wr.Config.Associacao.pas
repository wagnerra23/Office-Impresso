unit wr.Config.Associacao;

interface

procedure Inicializa_ConfigAssociacao;

implementation

Uses Base, Tag.APP, Tag.Config;

procedure Inicializa_ConfigAssociacao;
begin
  RegistraWR_Config(TagAPP_Equipamento_Associacao, Tag_Config_FOTOS_VISTORIA,
                '', 'FOTOS_VISTORIA',
                'Caminho das imagens da Vistoria(Equipamentos):',
                '', 'path');
  RegistraWR_Config(TagAPP_Associacao, Tag_Config_FIPE_PERCENTUAL,
                '', 'FIPE_PERCENTUAL',
                'Equipamento Fipe %',
                '', 'currency');
  RegistraWR_Config(TagAPP_Associacao, Tag_Config_COBERTURA,
                '', 'COBERTURA',
                'Valor Máx. Cobertura',
                '', 'currency');
  RegistraWR_Config(TagAPP_Associacao, Tag_Config_VALORTAXAADMISSAO,
                '', 'VALORTAXAADMISSAO',
                'Valor Padrão de Contribuição',
                '', 'currency');
  RegistraWR_Config(TagAPP_Associacao, Tag_Config_CODPLANOCONTAS_TAXAADMISSAO,
                '', 'CODPLANOCONTAS_TAXAADMISSAO',
                'Plano de Contas - Contribuição do Associado',
                '', 'PLANO DE CONTAS');
  RegistraWR_Config(TagAPP_Associacao, Tag_Config_VALORVISTORIACAMINHAO,
                '', 'VALORVISTORIACAMINHAO',
                'Valor Padrão Vistoria Caminhão',
                '', 'currency');
  RegistraWR_Config(TagAPP_Associacao, Tag_Config_CODPLANOCONTAS_VISTORIA,
                '', 'CODPLANOCONTAS_VISTORIA',
                'Plano de Contas - Vistoria',
                '', 'PLANO DE CONTAS');
  RegistraWR_Config(TagAPP_Associacao, Tag_Config_VALORVISTORIASEMIREBOQUE,
                '', 'VALORVISTORIASEMIREBOQUE',
                'Valor Padrão Vistoria Semi-Reboque',
                '', 'currency');
  RegistraWR_Config(TagAPP_Associacao, Tag_Config_CODPLANOCONTAS_CADASTRAMENTO,
                '', 'CODPLANOCONTAS_CADASTRAMENTO',
                'Plano de Contas - Cadastro',
                '', 'PLANO DE CONTAS');
  RegistraWR_Config(TagAPP_Associacao, Tag_Config_CIDADEUF_CARTORIO,
                '', 'CIDADEUF_CARTORIO',
                'Cidade/Estado do Cartório na impressão de Certificado e Termo de Adesão',
                '', 'text');
  RegistraWR_Config(TagAPP_Associacao, Tag_Config_DADOS_FIPE_EQUIPAMENTO,
                '', 'DADOS_FIPE_EQUIPAMENTO',
                'Utilizar os dados da tabela Fipe no cadastro de equipamentos',
                '', 'checkbox');
end;

initialization
  Inicializa_ConfigAssociacao;

end.


