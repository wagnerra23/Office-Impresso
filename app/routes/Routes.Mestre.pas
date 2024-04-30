unit Routes.Mestre;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, System.StrUtils, System.SysUtils,
  ACBrBoleto, ACBrBoletoRetorno, Math, System.Variants, DateUtils;

function RoutesMestre_Insert(ACadastro: TFDQuery):Integer;
procedure RoutesMestre_Edit(ACadastro: TFDQuery);
procedure RoutesMestre_Cancel(ACadastro: TFDQuery);
Procedure RoutesMestre_Post(ACadastro: TFDQuery; ANomeTabela: String);
Procedure RoutesMestre_DELETE(ACadastro: TFDQuery);

procedure RoutesMestre_WREventosCadastro_Configuracao_Acoes(Sender: TObject);
procedure RoutesMestre_WREventosCadastro_ImpressaoBeforePrint(Sender: TObject; var APermiteImprimir: Boolean);

implementation

uses
  Controller.Mestre;
  
function RoutesMestre_Insert(ACadastro: TFDQuery):Integer;
begin
  Result := ControllerMestre_Insert(ACadastro);
end;

procedure RoutesMestre_Edit(ACadastro: TFDQuery);
begin
  ControllerMestre_Edit(ACadastro);
end;

procedure RoutesMestre_Cancel(ACadastro: TFDQuery);
begin
  ControllerMestre_Cancel(ACadastro);
end;

Procedure RoutesMestre_Post(ACadastro: TFDQuery; ANomeTabela: String);
begin
  ControllerMestre_Post(ACadastro, ANomeTabela);
end;

Procedure RoutesMestre_DELETE(ACadastro: TFDQuery);
begin
  ControllerMestre_Delete(ACadastro);
end;

procedure RoutesMestre_WREventosCadastro_Configuracao_Acoes(Sender: TObject);
begin
  ControllerMestre_WREventosCadastro_Configuracao_Acoes(Sender);
end;

procedure RoutesMestre_WREventosCadastro_ImpressaoBeforePrint(Sender: TObject; var APermiteImprimir: Boolean);
begin
  ControllerMestre_WREventosCadastro_ImpressaoBeforePrint(Sender, APermiteImprimir);
end;

end.

