unit wr.Config.FichaPonto;

interface

procedure Inicializa_Config_FichaPonto;

implementation

uses Base, Tag.APP, Tag.Config;

procedure Inicializa_Config_FichaPonto;
begin
  RegistraWR_Config(TagAPP_RH_Ficha_Ponto, Tag_Config_PONTO_MODELO,
                  'Parâmetros', 'PONTO_MODELO',
                  'Modelo de Ponto de funcionário',
                  '', 'text');
end;

initialization
  Inicializa_Config_FichaPonto;

end.

