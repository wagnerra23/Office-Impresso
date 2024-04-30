unit Classes.Pointer_WREventosCadastro;

interface

uses
  Data.DB, IBX.IBDatabase, FireDAC.Comp.Client, FireDAC.Stan.Param, wrConversao, Routes.Mestre;

type
  TPointer_WREventosCadastro = class
  public
    procedure Pointer_Configuracao_Acoes(Sender: TObject);
    procedure Pointer_ImpressaoBeforePrint(Sender: TObject; var APermiteImprimir: Boolean);
  end;

implementation

uses
  StrUtils, UnitFuncoes, Variants;

procedure TPointer_WREventosCadastro.Pointer_Configuracao_Acoes(Sender: TObject);
begin
  RoutesMestre_WREventosCadastro_Configuracao_Acoes(Sender);
end;

procedure TPointer_WREventosCadastro.Pointer_ImpressaoBeforePrint(Sender: TObject; var APermiteImprimir: Boolean);
begin
  RoutesMestre_WREventosCadastro_ImpressaoBeforePrint(Sender, APermiteImprimir);
end;


end.
