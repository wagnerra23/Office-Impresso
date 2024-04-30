unit wr.Config.Compra;

interface

procedure Inicializa_WR_Config_Compra;

const
  //********* Definição da última versão Desse objeto ***********

  Versao_WR_Config_Compra = 1;

implementation

uses Base, Tag.APP, Tag.Config;

procedure Inicializa_WR_Config_Compra;
begin
  RegistraWR_Config(TagAPP_Compra, Tag_Config_NF_VENCIMENTO_PARCELAS_COM_BASE_DATA_NOTA,
                'Parcelas Financeiras', 'NF_VENCIMENTO_PARCELAS_COM_BASE_DATA_NOTA',
                'Gerar Vencimento as parcelas com base na data da nota.',
                '', 'checkbox');

  RegistraWR_Config(TagAPP_Compra, Tag_Config_ATUALIZA_PRODUTO_FINAL,
                  'Atualiza produto final', 'ATUALIZA_PRODUTO_FINAL',
                  'Atualiza valores do produto final após a compra',
                  '', 'checkbox');

end;

initialization
  Inicializa_WR_Config_Compra;


end.

