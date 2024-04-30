unit wr.Config.Financeiro_Caixa;

interface

procedure Inicializa_Config_Financeiro_Caixa;

implementation

uses Tag.APP, Tag.Config;

procedure Inicializa_Config_Financeiro_Caixa;
begin
  RegistraWR_Config(TagAPP_Financeiro_Caixa, Tag_Config_CAIXA_CONTROLE,
                  'Parcelas Financeiras', 'CAIXA_CONTROLE',
                  'Método de usa do caixa',
                  '', 'combobox');
end;

initialization
  Inicializa_Config_Financeiro_Caixa;

end.

