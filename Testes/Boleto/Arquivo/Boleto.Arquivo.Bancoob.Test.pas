unit Boleto.Arquivo.Bancoob.Test;

interface

uses
  DUnitX.TestFramework, ACBrTests.Util, SysUtils, Forms, Routes.Financeiro,
  ACBrBoleto, Financeiro_Boleto, Financeiro;

type
  TTesteBoleto_Arquivo_Bancoob = class(TTestCase)
  public
    FrmFinanceiro_Boleto : TFrmFinanceiro_Boleto;
//    FACBrBoleto := TACBrBoleto;
    [Setup]
    procedure Setup; override;
    [TearDown]
    procedure TearDown; override;
  published
    procedure SalvaPDFDoBoleto;
    procedure WS_GeraRemessa;
  end;

implementation

Uses
  Classes.Boletos;

procedure TTesteBoleto_Arquivo_Bancoob.Setup;
begin
  FrmFinanceiro_Boleto:= TFrmFinanceiro_Boleto.Create(nil);
  FrmFinanceiro_Boleto.Show;
  FrmFinanceiro_Boleto.GrupoRetorno.MakeVisible;     // btaRemessa  = 0, btaRetorno =1
//  FrmFinanceiro_Boleto.VisualizarRemessaRetorno := btaRetorno;

// Fazer o Insert do Banco
// Gerar o Arquivo, teste de homologação Gerar os dados certos e errados
// Testar o Arquivo Gerado
// ACodigo:= RoutesBoletoWS_Retorno_Inseri(FACBrBoleto, Contas);
// Se for feito assim deve ser melhor com as merdas das propriedades
// De qualquer lado que seja enviado da para testar.
// Abrir a tela informar os dados
// Checar nos controles, aqui deve ficar as regras
// se colocar uma rota diferente da merda

  FrmFinanceiro_Boleto.btnTratarWebServiceClick(nil);
//  ACodigo:= RoutesBoletoWS_Retorno_Inseri(FrmFinanceiro_Boleto.FACBrBoleto, Contas);

//  FACBrBoleto := TACBrBoleto.Create(nil);
//  Titulo := Boleto.CriarTituloNaLista;
end;

procedure TTesteBoleto_Arquivo_Bancoob.TearDown;
begin
  FreeAndNil(FrmFinanceiro_Boleto);
end;

procedure TTesteBoleto_Arquivo_Bancoob.SalvaPDFDoBoleto;
const
  MSG = 'Tamanho Máximo do Nosso Número é: 10';
begin
  try
//   Controler
//    RoutesFinanceiroBoleto_PDF_SalvarComo(AcbrBoleto, cxGridFinanceiro; AFinanceiro, ABoleto);
  except on e: Exception do
    CheckEquals( MSG, e.Message );
  end;
end;

procedure TTesteBoleto_Arquivo_Bancoob.WS_GeraRemessa;
begin
  try
    FrmFinanceiro_Boleto:= TFrmFinanceiro_Boleto.Create(nil);
    FrmFinanceiro_Boleto.Show;
    FrmFinanceiro_Boleto.GrupoRemessa.MakeVisible;     // btaRemessa  = 0, btaRetorno =1
//    FrmFinanceiro_Boleto.VisualizarRemessaRetorno := btaRemessa;
//    with FrmFinanceiro_Boleto do
//      RoutesFinanceiroBoletoWS_Financeiro(FrmFinancei_Boleto.FACBrBoleto, cxGridFinanceiro; AFinanceiro, ABoleto);
  except on e: Exception do
//    CheckEquals( MSG, e.Message );
  end;
end;


initialization
  _RegisterTest('Boleto.Bancoob.Arquivo', TTesteBoleto_Arquivo_Bancoob);


end.
