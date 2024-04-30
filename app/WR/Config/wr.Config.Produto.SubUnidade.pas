unit wr.Config.Produto.SubUnidade;

interface

procedure Inicializa_Config_Produto_SubUnidade;

implementation

uses Base, Tag.APP, Tag.Config;

procedure Inicializa_Config_Produto_SubUnidade;
begin
  RegistraWR_Config(TagAPP_SubUnidade, Tag_Config_NF_ENTRADA_RENDIMENTO,
                'Parcelas Financeiras', 'NF_ENTRADA_RENDIMENTO',
                'Rendimento do Produto na compra',
                '', 'checkbox');
end;

initialization
  Inicializa_Config_Produto_SubUnidade;

end.

