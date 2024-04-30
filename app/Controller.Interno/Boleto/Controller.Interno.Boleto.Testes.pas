unit Controller.Interno.Boleto.Testes;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Dialogs, System.Generics.Collections,
  System.Classes, System.StrUtils, System.SysUtils, Math, System.Variants, WinAPI.Windows, Vcl.Controls, DateUtils, frxExportBaseDialog, frxExportPDF,
  DataModuleBoletos, wrConversao, ACBrUtil, wrConstantes, cxGridDBTableView, VCL.Forms, Classes.WR, ACBrBoleto, ACBrBoletoConversao,
  uWeb, Classes.Boletos;

function  BoletoUtils_Imprimirhomologacao(AFinanceiro, ABoleto: TDataset; out ALinhaDigitavel: string; AImprimirMensagemPadrao :Boolean;
      AModoImpressao: TModoImpressaoBoleto = mibMostrarPreview) :string;

implementation

Uses UnitFuncoes, Financeiro_Boleto, Aguarde, wrFuncoes, GeraEmailsBoletos, Email, ACBrBoletoFCFortesFr, ACBrBoletoFCFR,
  SQL.Contas, SQL.Financeiro_Boleto, SQL.Boleto, SQL.Arquivo_Relatorio, Utils.Boleto;

function BoletoUtils_Imprimirhomologacao(AFinanceiro, ABoleto: TDataset; out ALinhaDigitavel: string; AImprimirMensagemPadrao :Boolean;
      AModoImpressao: TModoImpressaoBoleto = mibMostrarPreview) :string;
begin
//  ACBrBoleto1.ImprimirMensagemPadrao := false;
//  GerarBoletoACBr(QuerFinanceiro, QuerBoleto, ALinhaDigitavel, AModoImpressao);
end;


end.

