unit Boleto.WS.BancoBrasil.Test;

interface

uses
  DUnitX.TestFramework, ACBrTests.Util, SysUtils, Forms, Routes.Financeiro,
  ACBrBoleto, Financeiro_Boleto, Financeiro;

type
  TTesteBoleto_Arquivo = class(TTestCase)
  public
    FrmFinanceiro_Boleto : TFrmFinanceiro_Boleto;
//    FACBrBoleto := TACBrBoleto;
    [Setup]
    procedure Setup; override;
    [TearDown]
    procedure TearDown; override;
  published
    procedure SalvaPDFDoBoleto;
    procedure WS_GeraRemessa(const AValue1 : Integer;const AValue2 : Integer);
    procedure WS_GeraRemessa_Itau;
    procedure WS_GeraRemessa_BB;
    procedure WS_GeraRemessa_Bradesco;
    procedure WS_GeraRemessa_Inter;
  end;

  TTesteBoleto_WS= class(TTestCase)
  public
    FrmFinanceiro_Boleto : TFrmFinanceiro_Boleto;
//    FACBrBoleto := TACBrBoleto;
    [Setup]
    procedure Setup; override;
    [TearDown]
    procedure TearDown; override;

    // Sample Methods
    // Simple single Test
  published
    [Test]
    procedure SalvaPDFDoBoleto;
    // Test with TestCase Attribute to supply parameters.
    [Test]
    [TestCase('TestA','1,2')]
    [TestCase('TestB','3,4')]
    procedure WS_GeraRemessa(const AValue1 : Integer;const AValue2 : Integer);
  end;

  TTesteBoleto_Homologacao= class(TTestCase)
  public
    FrmFinanceiro_Boleto : TFrmFinanceiro_Boleto;
//    FACBrBoleto := TACBrBoleto;
    [Setup]
    procedure Setup; override;
    [TearDown]
    procedure TearDown; override;

    // Sample Methods
    // Simple single Test
  published
    [Test]
    procedure SalvaPDFDoBoleto;
    // Test with TestCase Attribute to supply parameters.
    [Test]
    [TestCase('TestA','1,2')]
    [TestCase('TestB','3,4')]
    procedure WS_GeraRemessa(const AValue1 : Integer;const AValue2 : Integer);
  end;

  TTesteBoleto_Financeiro = class(TTestCase)
  public
    FrmFinanceiro : TFrmFinanceiro;
//    FACBrBoleto := TACBrBoleto;
    [Setup]
    procedure Setup; override;
    [TearDown]
    procedure TearDown; override;

    // Sample Methods
    // Simple single Test
  published
    [Test]
    procedure SalvaPDFDoBoleto;
    // Test with TestCase Attribute to supply parameters.
    [Test]
    [TestCase('TestA','1,2')]
    [TestCase('TestB','3,4')]
    procedure WS_GeraRemessa(const AValue1 : Integer;const AValue2 : Integer);
  end;

implementation

Uses
  Classes.Boletos;

{$REGION 'TTesteBoleto_WS'}
procedure TTesteBoleto_WS.Setup;
begin
  FrmFinanceiro_Boleto:= TFrmFinanceiro_Boleto.Create(nil);
  FrmFinanceiro_Boleto.Show;
//  FrmFinanceiro_Boleto.VisualizarRemessaRetorno := btaRetorno;
FrmFinanceiro_Boleto.GrupoRetorno.MakeVisible;     // btaRemessa  = 0, btaRetorno =1

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

procedure TTesteBoleto_WS.TearDown;
begin
  FreeAndNil(FrmFinanceiro_Boleto);
end;

procedure TTesteBoleto_WS.SalvaPDFDoBoleto;
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

procedure TTesteBoleto_WS.WS_GeraRemessa(const AValue1 : Integer;const AValue2 : Integer);
begin
  try
    FrmFinanceiro_Boleto:= TFrmFinanceiro_Boleto.Create(nil);
    FrmFinanceiro_Boleto.Show;
//    FrmFinanceiro_Boleto.VisualizarRemessaRetorno := btaRemessa;
    FrmFinanceiro_Boleto.GrupoRemessa.MakeVisible;     // btaRemessa  = 0, btaRetorno =1
//    with FrmFinanceiro_Boleto do
//      RoutesFinanceiroBoletoWS_Financeiro(FrmFinancei_Boleto.FACBrBoleto, cxGridFinanceiro; AFinanceiro, ABoleto);
  except on e: Exception do
//    CheckEquals( MSG, e.Message );
  end;
end;

procedure TTesteBoleto_Arquivo.WS_GeraRemessa(const AValue1, AValue2: Integer);
begin

end;

procedure TTesteBoleto_Arquivo.WS_GeraRemessa_BB;
begin

end;

procedure TTesteBoleto_Arquivo.WS_GeraRemessa_Bradesco;
begin

end;

procedure TTesteBoleto_Arquivo.WS_GeraRemessa_Inter;
begin

end;

procedure TTesteBoleto_Arquivo.WS_GeraRemessa_Itau;
begin

end;

{$ENDREGION}

{$REGION 'TTesteBoleto_Financeiro'}
{ TTesteBoleto_Financeiro }

procedure TTesteBoleto_Financeiro.Setup;
begin
  inherited;
  FrmFinanceiro:= TFrmFinanceiro.Create(nil);
  FrmFinanceiro.Show;
end;

procedure TTesteBoleto_Financeiro.TearDown;
begin
  inherited;
  FreeAndNil(FrmFinanceiro);
end;

procedure TTesteBoleto_Financeiro.SalvaPDFDoBoleto;
begin

end;

procedure TTesteBoleto_Financeiro.WS_GeraRemessa(const AValue1, AValue2: Integer);
begin

end;
{$ENDREGION}

{$REGION 'TTesteBoleto_Homologacao'}
{ TTesteBoleto_Homologacao }

procedure TTesteBoleto_Homologacao.SalvaPDFDoBoleto;
begin

end;

procedure TTesteBoleto_Homologacao.Setup;
begin
  inherited;

end;

procedure TTesteBoleto_Homologacao.TearDown;
begin
  inherited;

end;

procedure TTesteBoleto_Homologacao.WS_GeraRemessa(const AValue1, AValue2: Integer);
begin

end;
{$ENDREGION}

{$REGION 'TTesteBoleto_Arquivo'}
{ TTesteBoleto_Arquivo }

procedure TTesteBoleto_Arquivo.SalvaPDFDoBoleto;
begin

end;

procedure TTesteBoleto_Arquivo.Setup;
begin
  inherited;

end;

procedure TTesteBoleto_Arquivo.TearDown;
begin
  inherited;

end;

{$ENDREGION}

initialization
  _RegisterTest('Boleto.BancoBrasil.WS', TTesteBoleto_WS);


end.
