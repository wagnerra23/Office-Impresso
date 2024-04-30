unit ACBrBoletoTest.Caixa;

{$I ACBr.inc}

interface

uses
  Classes, SysUtils, ACBrBoleto,
  ACBrBancoCaixa, {ACBrBancoUnicredRS, ACBrBancoUnicredES,}
  typinfo, ACBrBoletoConversao,
  ACBrTests.Util, ACBrBoletoTest.Util;

type

  {$REGION - Classes Banco Caixa Economica}

   { CalcularDigitoVerificador_Caixa_Test }

  CalcularDigitoVerificador_Caixa_Test= class(TTestCase)
  private
    Boleto : TACBrBoleto;
    Titulo : TACBrTitulo;
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure CalcularDigitoVerificador_Caixa_padrao;
    procedure CalcularDigitoVerificador_Caixa_0;
    procedure CalcularDigitoVerificador_Caixa_1;
    procedure CalcularDigitoVerificador_Caixa_2;
    procedure CalcularDigitoVerificador_Caixa_3;
    procedure CalcularDigitoVerificador_Caixa_4;
    procedure CalcularDigitoVerificador_Caixa_5;
    procedure CalcularDigitoVerificador_Caixa_6;
    procedure CalcularDigitoVerificador_Caixa_7;
    procedure CalcularDigitoVerificador_Caixa_8;
    procedure CalcularDigitoVerificador_Caixa_9;
    procedure CalcularDigitoVerificador_Caixa_Alfa;
    procedure CalcularDigitoVerificador_Caixa_Nulo;
    procedure CalcularDigitoVerificador_Caixa_NumInvalido;
    procedure CalcularDigitoVerificador_Caixa_CarteiraNulo;
    procedure CalcularDigitoVerificador_Caixa_CarteiraInvalido;
  end;

   { CalcularTamMaximoNossoNumero_Caixa_Test}

  CalcularTamMaximoNossoNumero_Caixa_Test= class(TTestCase)
  private
    Boleto : TACBrBoleto;
    Titulo : TACBrTitulo;
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure CalcularTamMaximoNossoNumero_Caixa_Padrao15;
  end;

  { MontarCampoCodigoCedente_Caixa_Test }

  MontarCampoCodigoCedente_Caixa_Test= class(TTestCase)
  private
    Boleto : TACBrBoleto;
    Titulo : TACBrTitulo;
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure MontarCampoCodigoCedente_Caixa_Padrao;
    procedure MontarCampoCodigoCedente_Caixa_Invalido;
    procedure MontarCampoCodigoCedente_Caixa_Alfa;
  end;

  { MontarCampoNossoNumero_Caixa_Test }

  MontarCampoNossoNumero_Caixa_Test= class(TTestCase)
  private
    Boleto : TACBrBoleto;
    Titulo : TACBrTitulo;
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure MontarCampoNossoNumero_Caixa_Padrao;
    procedure MontarCampoNossoNumero_Caixa_SemNossoNumero;
    procedure MontarCampoNossoNumero_Caixa_Alfa;
    procedure MontarCampoNossoNumero_Caixa_NossoNumeroInvalido;
    procedure MontarCampoNossoNumero_Caixa_CarteiraInvalido;
    procedure MontarCampoNossoNumero_Caixa_ModalidadeInvalido;

  end;

  { MontarCodigoBarras_Caixa_Test }

  MontarCodigoBarras_Caixa_Test= class(TTestCase)
  private
    Boleto : TACBrBoleto;
    Titulo : TACBrTitulo;
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure MontarCodigoBarras_Caixa_Padrao;
    procedure MontarCodigoBarras_Caixa_CampoLivreDig0;
    procedure MontarCodigoBarras_Caixa_Alfa;
    procedure MontarCodigoBarras_Caixa_NossoNumeroInvalido;
    procedure MontarCodigoBarras_Caixa_CarteiraInvalida;
    procedure MontarCodigoBarras_Caixa_SemNossoNumero;
    procedure MontarCodigoBarras_Caixa_CodCedenteInvalido;
    procedure MontarCodigoBarras_Caixa_TipoCarteira;
  end;

  { CalcularDVCedente_Caixa_Test }

  CalcularDVCedente_Caixa_Test= class(TTestCase)
  private
    Boleto : TACBrBoleto;
    Titulo : TACBrTitulo;
    Caixa  : TACBrCaixaEconomica;
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure CalcularDVCedente_Caixa_Padrao;
    procedure CalcularDVCedente_Caixa_Dig0;
    procedure CalcularDVCedente_Caixa_Invalido;
  end;

  { GerarRemessa_Caixa_Test }

  GerarRemessa_Caixa_Test= class(TTestCase)
  private
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure GerarRemessa_Caixa400;
    procedure GerarRemessa_Caixa240;
  end;

 { GerarRetorno_Caixa_Test }

  GerarRetorno_Caixa_Test= class(TTestCase)
  private
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure GerarRetorno_Caixa400;
    procedure GerarRetorno_Caixa240;
  end;

  {$ENDREGION}

implementation

uses
  dateutils, ACBrUtil, forms;

  {$REGION - Implementação Classes Banco Caixa Economica}

{ CalcularDVCedente_Caixa_Test }

procedure CalcularDVCedente_Caixa_Test.SetUp;
begin
  Boleto := TACBrBoleto.Create(nil);
  Titulo := Boleto.CriarTituloNaLista;
  Caixa  := TACBrCaixaEconomica.Create(nil);
end;

procedure CalcularDVCedente_Caixa_Test.TearDown;
begin
  FreeAndNil(Boleto);
  FreeAndNil(Caixa);
end;

procedure CalcularDVCedente_Caixa_Test.CalcularDVCedente_Caixa_Padrao;
begin
  Boleto.Banco.TipoCobranca   := cobCaixaEconomica;
  Boleto.Cedente.CodigoCedente:= '6544';
  CheckEquals('7', Caixa.CalcularDVCedente(Titulo));
end;

procedure CalcularDVCedente_Caixa_Test.CalcularDVCedente_Caixa_Dig0;
begin
  Boleto.Banco.TipoCobranca   := cobCaixaEconomica;
  Boleto.Cedente.CodigoCedente:= '45868';
  CheckEquals('6', Caixa.CalcularDVCedente(Titulo));
end;

procedure CalcularDVCedente_Caixa_Test.CalcularDVCedente_Caixa_Invalido;
begin
  Boleto.Banco.TipoCobranca   := cobCaixaEconomica;
  Boleto.Cedente.CodigoCedente:= '';
  CheckEquals('0', Caixa.CalcularDVCedente(Titulo));
end;

{ MontarCodigoBarras_Caixa_Test }

procedure MontarCodigoBarras_Caixa_Test.SetUp;
begin
  Boleto := TACBrBoleto.Create(nil);
  Titulo := Boleto.CriarTituloNaLista;
end;

procedure MontarCodigoBarras_Caixa_Test.TearDown;
begin
  FreeAndNil(Boleto);
end;

procedure MontarCodigoBarras_Caixa_Test.MontarCodigoBarras_Caixa_Padrao;
begin
  Boleto.Banco.TipoCobranca   := cobCaixaEconomica;
  Boleto.Cedente.CodigoCedente:= '5526544';
  Titulo.Vencimento           := EncodeDate(2017,06,30);
  Titulo.ValorDocumento       := 520.60;
  Titulo.Carteira             := 'RG';
  Titulo.NossoNumero          := '003456789';
  CheckEquals('10492720600000520605526540000100040034567898', Boleto.Banco.MontarCodigoBarras(Titulo));


  Boleto.Cedente.CodigoCedente:= '588';
  Titulo.Vencimento           := 0;
  Titulo.ValorDocumento       := 0;
  Titulo.Carteira             := 'RG';
  Titulo.NossoNumero          := '12036';
  CheckEquals('10496000000000000000005886000100040000120360', Boleto.Banco.MontarCodigoBarras(Titulo));

end;

procedure MontarCodigoBarras_Caixa_Test.MontarCodigoBarras_Caixa_CampoLivreDig0;
begin
  Boleto.Banco.TipoCobranca   := cobCaixaEconomica;
  Boleto.Cedente.CodigoCedente:= 'AD45';
  Titulo.Vencimento           := 0;
  Titulo.ValorDocumento       := 0;
  Titulo.Carteira             := 'RG';
  Titulo.NossoNumero          := '5148852';
  CheckEquals('104920000000000000000AD450000100040051488520', Boleto.Banco.MontarCodigoBarras(Titulo));
end;

procedure MontarCodigoBarras_Caixa_Test.MontarCodigoBarras_Caixa_Alfa;
begin
  Boleto.Banco.TipoCobranca   := cobCaixaEconomica;
  Boleto.Cedente.CodigoCedente:= '2514';
  Titulo.Vencimento           := EncodeDate(2017,06,30);
  Titulo.ValorDocumento       := 520.60;
  Titulo.Carteira             := 'RG';
  Titulo.NossoNumero          := 'AD58F471x';
  CheckEquals('10493720600000520600025143000100040000584717', Boleto.Banco.MontarCodigoBarras(Titulo));
end;

procedure MontarCodigoBarras_Caixa_Test.MontarCodigoBarras_Caixa_NossoNumeroInvalido;
const
  MSG = 'Tamanho Máximo do Nosso Número é: 15';
begin
  try
    Boleto.Banco.TipoCobranca   := cobCaixaEconomica;
    Boleto.Cedente.CodigoCedente:= '2514';
    Titulo.Vencimento           := EncodeDate(2017,06,30);
    Titulo.ValorDocumento       := 520.60;
    Titulo.Carteira             := 'RG';
    Titulo.NossoNumero          := '2222222222222222222222';
    Boleto.Banco.MontarCodigoBarras(Titulo);

  except on e: Exception do
    CheckEquals(MSG,e.Message);
  end;
end;

procedure MontarCodigoBarras_Caixa_Test.MontarCodigoBarras_Caixa_CarteiraInvalida;
const
  MSG = 'Carteira Inválida.'+sLineBreak+'Utilize "RG" ou "SR"';
begin
  try
    Boleto.Banco.TipoCobranca   := cobCaixaEconomica;
    Boleto.Cedente.CodigoCedente:= '2514';
    Titulo.Vencimento           := EncodeDate(2017,06,30);
    Titulo.ValorDocumento       := 520.60;
    Titulo.Carteira             := '18';
    Titulo.NossoNumero          := '1234567';
    Boleto.Banco.MontarCodigoBarras(Titulo);

  except on e: Exception do
    CheckEquals(MSG,e.Message);
  end;
end;

procedure MontarCodigoBarras_Caixa_Test.MontarCodigoBarras_Caixa_SemNossoNumero;
begin
  Boleto.Banco.TipoCobranca   := cobCaixaEconomica;
  Boleto.Cedente.CodigoCedente:= '2514';
  Titulo.Vencimento           := EncodeDate(2017,06,30);
  Titulo.ValorDocumento       := 520.60;
  Titulo.Carteira             := 'SR';
  Titulo.NossoNumero          := '';
  CheckEquals('10491720600000520600025143000200040000000000', Boleto.Banco.MontarCodigoBarras(Titulo));
end;

procedure MontarCodigoBarras_Caixa_Test.MontarCodigoBarras_Caixa_CodCedenteInvalido;
begin
  Boleto.Banco.TipoCobranca   := cobCaixaEconomica;
  Boleto.Cedente.CodigoCedente:= '';
  Titulo.Vencimento           := EncodeDate(2017,06,30);
  Titulo.ValorDocumento       := 520.60;
  Titulo.Carteira             := 'SR';
  Titulo.NossoNumero          := '1002';
  CheckEquals('10494720600000520600000000000200040000010029', Boleto.Banco.MontarCodigoBarras(Titulo));
end;

procedure MontarCodigoBarras_Caixa_Test.MontarCodigoBarras_Caixa_TipoCarteira;
begin
  Boleto.Banco.TipoCobranca   := cobCaixaEconomica;
  Boleto.Cedente.CodigoCedente:= '';
  Titulo.Vencimento           := EncodeDate(2017,06,30);
  Titulo.ValorDocumento       := 520.60;
  Titulo.CarteiraEnvio        := tceBanco;
  Titulo.Carteira             := 'SR';
  Titulo.NossoNumero          := '100252';
  CheckEquals('10495720600000520600000000000200010001002524', Boleto.Banco.MontarCodigoBarras(Titulo));

  Titulo.CarteiraEnvio        := tceBanco;
  Titulo.Carteira             := 'RG';
  CheckEquals('10491720600000520600000000000100010001002520', Boleto.Banco.MontarCodigoBarras(Titulo));

  Titulo.CarteiraEnvio        := tceCedente;
  Titulo.Carteira             := 'RG';
  CheckEquals('10495720600000520600000000000100040001002522', Boleto.Banco.MontarCodigoBarras(Titulo));

  Titulo.CarteiraEnvio        := tceCedente;
  Titulo.Carteira             := 'SR';
  CheckEquals('10491720600000520600000000000200040001002526', Boleto.Banco.MontarCodigoBarras(Titulo));
end;

{ MontarCampoNossoNumero_Caixa_Test }

procedure MontarCampoNossoNumero_Caixa_Test.SetUp;
begin
  Boleto := TACBrBoleto.Create(nil);
  Titulo := Boleto.CriarTituloNaLista;
end;

procedure MontarCampoNossoNumero_Caixa_Test.TearDown;
begin
  FreeAndNil(Boleto);
end;

procedure MontarCampoNossoNumero_Caixa_Test.MontarCampoNossoNumero_Caixa_Padrao;
begin
  Boleto.Banco.TipoCobranca   := cobCaixaEconomica;
  Titulo.Carteira             := 'RG';
  Titulo.NossoNumero          := '8547125';

  CheckEquals('14000000008547125-4', Boleto.Banco.MontarCampoNossoNumero(Titulo));
end;

procedure MontarCampoNossoNumero_Caixa_Test.MontarCampoNossoNumero_Caixa_SemNossoNumero;
begin
  Boleto.Banco.TipoCobranca   := cobCaixaEconomica;
  Titulo.Carteira             := 'RG';
  Titulo.NossoNumero          := '';

  CheckEquals('14000000000000000-6', Boleto.Banco.MontarCampoNossoNumero(Titulo));
end;

procedure MontarCampoNossoNumero_Caixa_Test.MontarCampoNossoNumero_Caixa_Alfa;
begin
  Boleto.Banco.TipoCobranca   := cobCaixaEconomica;
  Titulo.Carteira             := 'RG';
  Titulo.NossoNumero          := 'FF4543#33FGS56';

  CheckEquals('14000000045433356-6', Boleto.Banco.MontarCampoNossoNumero(Titulo));
end;

procedure MontarCampoNossoNumero_Caixa_Test.MontarCampoNossoNumero_Caixa_NossoNumeroInvalido;
const
  MSG = 'Tamanho Máximo do Nosso Número é: 15';
begin
  try
    Boleto.Banco.TipoCobranca   := cobCaixaEconomica;
    Titulo.Carteira             := 'RG';
    Titulo.NossoNumero          := '5251485258626585584485588558';
    Boleto.Banco.MontarCampoNossoNumero(Titulo);

  except on e: Exception do
    CheckEquals(MSG,e.Message);
  end;
end;

procedure MontarCampoNossoNumero_Caixa_Test.MontarCampoNossoNumero_Caixa_CarteiraInvalido;
const
  MSG = 'Carteira Inválida.'+sLineBreak+'Utilize "RG" ou "SR"';
begin
  try
    Boleto.Banco.TipoCobranca   := cobCaixaEconomica;
    Titulo.Carteira             := '';
    Titulo.NossoNumero          := '944745547';
    Boleto.Banco.CalcularDigitoVerificador(Titulo);

  except on e: Exception do
    CheckEquals(MSG, e.Message);
  end;
end;

procedure MontarCampoNossoNumero_Caixa_Test.MontarCampoNossoNumero_Caixa_ModalidadeInvalido;
begin
  Boleto.Banco.TipoCobranca   := cobCaixaEconomica;
  Boleto.Cedente.Modalidade   := '';
  Titulo.Carteira             := 'RG';
  Titulo.NossoNumero          := '541552';

  CheckEquals('14000000000541552-2', Boleto.Banco.MontarCampoNossoNumero(Titulo));
end;

{ MontarCampoCodigoCedente_Caixa_Test }

procedure MontarCampoCodigoCedente_Caixa_Test.SetUp;
begin
  Boleto := TACBrBoleto.Create(nil);
  Titulo := Boleto.CriarTituloNaLista;
end;

procedure MontarCampoCodigoCedente_Caixa_Test.TearDown;
begin
  FreeAndNil(Boleto);
end;

procedure MontarCampoCodigoCedente_Caixa_Test.MontarCampoCodigoCedente_Caixa_Padrao;
begin
  Boleto.Banco.TipoCobranca   := cobCaixaEconomica;
  Boleto.Cedente.Agencia      := '1552';
  Boleto.Cedente.CodigoCedente:= '54255';

  CheckEquals('1552/54255-5', Boleto.Banco.MontarCampoCodigoCedente(Titulo));
end;

procedure MontarCampoCodigoCedente_Caixa_Test.MontarCampoCodigoCedente_Caixa_Invalido;
begin
  Boleto.Banco.TipoCobranca   := cobCaixaEconomica;
  Boleto.Cedente.Agencia      := '1552325';
  Boleto.Cedente.CodigoCedente:= '';

  CheckEquals('5523/-0', Boleto.Banco.MontarCampoCodigoCedente(Titulo));
end;

procedure MontarCampoCodigoCedente_Caixa_Test.MontarCampoCodigoCedente_Caixa_Alfa;
begin
  Boleto.Banco.TipoCobranca   := cobCaixaEconomica;
  Boleto.Cedente.Agencia      := '1AA25';
  Boleto.Cedente.CodigoCedente:= 'DDCD';

  CheckEquals('AA25/DDCD-0', Boleto.Banco.MontarCampoCodigoCedente(Titulo));
end;

{ CalcularTamMaximoNossoNumero_Caixa_Test }

procedure CalcularTamMaximoNossoNumero_Caixa_Test.SetUp;
begin
  Boleto := TACBrBoleto.Create(nil);
  Titulo := Boleto.CriarTituloNaLista;
end;

procedure CalcularTamMaximoNossoNumero_Caixa_Test.TearDown;
begin
  FreeAndNil(Boleto);
end;

procedure CalcularTamMaximoNossoNumero_Caixa_Test.CalcularTamMaximoNossoNumero_Caixa_Padrao15;
begin
  Boleto.Banco.TipoCobranca   := cobCaixaEconomica;
  Check(Boleto.Banco.TamanhoMaximoNossoNum = 15);
end;

{ CalcularDigitoVerificador_Caixa_Test }

procedure CalcularDigitoVerificador_Caixa_Test.SetUp;
begin
  Boleto := TACBrBoleto.Create(nil);
  Titulo := Boleto.CriarTituloNaLista;
end;

procedure CalcularDigitoVerificador_Caixa_Test.TearDown;
begin
  FreeAndNil(Boleto);
end;

procedure CalcularDigitoVerificador_Caixa_Test.CalcularDigitoVerificador_Caixa_padrao;
begin
  Boleto.Banco.TipoCobranca   := cobCaixaEconomica;
  Titulo.Carteira             := 'RG';
  Titulo.NossoNumero          := '08547125';

  CheckEquals('4', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Caixa_Test.CalcularDigitoVerificador_Caixa_0;
begin
  Boleto.Banco.TipoCobranca   := cobCaixaEconomica;
  Titulo.Carteira             := 'RG';
  Titulo.NossoNumero          := '002526645';

  CheckEquals('0', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Caixa_Test.CalcularDigitoVerificador_Caixa_1;
begin
  Boleto.Banco.TipoCobranca   := cobCaixaEconomica;
  Titulo.Carteira             := 'RG';
  Titulo.NossoNumero          := '4712544';

  CheckEquals('1', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Caixa_Test.CalcularDigitoVerificador_Caixa_2;
begin
  Boleto.Banco.TipoCobranca   := cobCaixaEconomica;
  Titulo.Carteira             := 'RG';
  Titulo.NossoNumero          := '9933345';

  CheckEquals('2', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Caixa_Test.CalcularDigitoVerificador_Caixa_3;
begin
  Boleto.Banco.TipoCobranca   := cobCaixaEconomica;
  Titulo.Carteira             := 'SR';
  Titulo.NossoNumero          := '525471';

  CheckEquals('3', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Caixa_Test.CalcularDigitoVerificador_Caixa_4;
begin
  Boleto.Banco.TipoCobranca   := cobCaixaEconomica;
  Titulo.Carteira             := 'RG';
  Titulo.NossoNumero          := '19933345';

  CheckEquals('4', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Caixa_Test.CalcularDigitoVerificador_Caixa_5;
begin
  Boleto.Banco.TipoCobranca   := cobCaixaEconomica;
  Titulo.Carteira             := 'RG';
  Titulo.NossoNumero          := '1995';

  CheckEquals('5', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Caixa_Test.CalcularDigitoVerificador_Caixa_6;
begin
  Boleto.Banco.TipoCobranca   := cobCaixaEconomica;
  Titulo.Carteira             := 'SR';
  Titulo.NossoNumero          := '185471';

  CheckEquals('6', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Caixa_Test.CalcularDigitoVerificador_Caixa_7;
begin
  Boleto.Banco.TipoCobranca   := cobCaixaEconomica;
  Titulo.Carteira             := 'RG';
  Titulo.NossoNumero          := '6645';

  CheckEquals('7', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Caixa_Test.CalcularDigitoVerificador_Caixa_8;
begin
  Boleto.Banco.TipoCobranca   := cobCaixaEconomica;
  Titulo.Carteira             := 'RG';
  Titulo.NossoNumero          := '1999';

  CheckEquals('8', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Caixa_Test.CalcularDigitoVerificador_Caixa_9;
begin
  Boleto.Banco.TipoCobranca   := cobCaixaEconomica;
  Titulo.Carteira             := 'RG';
  Titulo.NossoNumero          := '1993';

  CheckEquals('9', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Caixa_Test.CalcularDigitoVerificador_Caixa_Alfa;
begin
  Boleto.Banco.TipoCobranca   := cobCaixaEconomica;
  Titulo.Carteira             := 'RG';
  Titulo.NossoNumero          := '199ABC3x';

  CheckEquals('9', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Caixa_Test.CalcularDigitoVerificador_Caixa_Nulo;
begin
  Boleto.Banco.TipoCobranca   := cobCaixaEconomica;
  Titulo.Carteira             := 'RG';
  Titulo.NossoNumero          := '';

  CheckEquals('6', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Caixa_Test.CalcularDigitoVerificador_Caixa_NumInvalido;
const
  MSG = 'Tamanho Máximo do Nosso Número é: 15';
begin
  try
    Boleto.Banco.TipoCobranca   := cobCaixaEconomica;
    Titulo.Carteira             := 'RG';
    Titulo.NossoNumero          := '9999999999999999999999999999999';
    Boleto.Banco.CalcularDigitoVerificador(Titulo);

  except on e: Exception do
    CheckEquals(MSG, e.Message);
  end;

end;

procedure CalcularDigitoVerificador_Caixa_Test.CalcularDigitoVerificador_Caixa_CarteiraNulo;
const
  MSG = 'Carteira Inválida.'+sLineBreak+'Utilize "RG" ou "SR"';
begin
  try
    Boleto.Banco.TipoCobranca   := cobCaixaEconomica;
    Titulo.Carteira             := '';
    Titulo.NossoNumero          := '99999999';
    Boleto.Banco.CalcularDigitoVerificador(Titulo);

  except on e: Exception do
    CheckEquals(MSG, e.Message);
  end;
end;

procedure CalcularDigitoVerificador_Caixa_Test.CalcularDigitoVerificador_Caixa_CarteiraInvalido;
const
  MSG = 'Carteira Inválida.'+sLineBreak+'Utilize "RG" ou "SR"';
begin
  try
    Boleto.Banco.TipoCobranca   := cobCaixaEconomica;
    Titulo.Carteira             := '12';
    Titulo.NossoNumero          := '999999999';
    Boleto.Banco.CalcularDigitoVerificador(Titulo);

  except on e: Exception do
    CheckEquals(MSG, e.Message);
  end;
end;

{ GerarRemessa_Caixa_Test }

procedure GerarRemessa_Caixa_Test.SetUp;
begin
  inherited;
end;

procedure GerarRemessa_Caixa_Test.TearDown;
begin
  inherited;
end;

procedure GerarRemessa_Caixa_Test.GerarRemessa_Caixa400;
var
  lArqGerado, lArqValido: TStringList;
begin
  try

    lArqGerado := TStringList.Create;
    lArqValido := TStringList.Create;

    CriaBoletoPadrao('RemessaCaixa400.rem', Remessa, c400, cobCaixaEconomica);

    //Carrega Arquivo Gerado
    lArqGerado.LoadFromFile( CarregarArquivos('RemessaCaixa400.rem', Remessa) );

    //Altera a Data Atual gerada pela Data do Arquivo Válido
    lArqGerado.Text:= StringReplace(lArqGerado.Text,
                      FormatDateTime('ddmmyy',now),'021219',[rfReplaceAll]);

    //Carrega Arquivo Válido
    lArqValido.LoadFromFile( CarregarArquivos('RemessaCaixa400Valido.rem', Remessa) );

    CheckEquals(lArqValido.Text, lArqGerado.Text);

  finally
    FreeAndNil(lArqValido);
    FreeAndNil(lArqGerado);
  end;

end;

procedure GerarRemessa_Caixa_Test.GerarRemessa_Caixa240;
var
  lArqGerado, lArqValido: TStringList;
begin
  try

    lArqGerado := TStringList.Create;
    lArqValido := TStringList.Create;

    CriaBoletoPadrao('RemessaCaixa240.rem', Remessa, c240, cobCaixaEconomica);

    //Carrega Arquivo Gerado
    lArqGerado.LoadFromFile( CarregarArquivos('RemessaCaixa240.rem', Remessa) );

    //Altera a Data Atual gerada pela Data do Arquivo Válido ('ddmmyyyyhhnnss')
    lArqGerado.Strings[0]:= AlteraDataArquivo(lArqGerado.Strings[0], '02122019000000', 144);

    lArqGerado.Text:= StringReplace(lArqGerado.Text,
                      FormatDateTime('ddmmyyyy',now),'02122019',[rfReplaceAll]);

    //Carrega Arquivo Válido
    lArqValido.LoadFromFile( CarregarArquivos('RemessaCaixa240Valido.rem', Remessa) );

    CheckEquals(lArqValido.Text, lArqGerado.Text);

  finally
    FreeAndNil(lArqValido);
    FreeAndNil(lArqGerado);
  end;

end;

  { GerarRetorno_Caixa_Test }

procedure GerarRetorno_Caixa_Test.SetUp;
begin
  inherited;
end;

procedure GerarRetorno_Caixa_Test.TearDown;
begin
  inherited;
end;

procedure GerarRetorno_Caixa_Test.GerarRetorno_Caixa400;
begin

end;

procedure GerarRetorno_Caixa_Test.GerarRetorno_Caixa240;
var
  SLArqGerado, SLArqValido: TStringList;
begin
  try
    SLArqGerado := TStringList.Create;
    SLArqValido := TStringList.Create;

    //Cria Componente boleto padrão apenas dados Banco e Cedente e Lê o retorno
    CriaBoletoPadrao( 'RetCaixa240.ret', Retorno, c240, cobCaixaEconomica );

    //Carrega Arquivo de Retorno Gerado para comparar dados
    SLArqGerado.LoadFromFile( CarregarArquivos('ResultRetCaixa240.ret', Retorno) );

    //Carrega Arquivo Válido
    SLArqValido.LoadFromFile( CarregarArquivos('ResultRetCaixa240Valido.ret', Retorno) );

    CheckEquals( SLArqValido.Text, SLArqGerado.Text );

  finally
    FreeAndNil(SLArqValido);
    FreeAndNil(SLArqGerado);
  end;

end;

{$ENDREGION}

initialization

  _RegisterTest('Boleto.Caixa.ACBrBoleto', CalcularDigitoVerificador_Caixa_Test);
  _RegisterTest('Boleto.Caixa.ACBrBoleto', CalcularTamMaximoNossoNumero_Caixa_Test);
  _RegisterTest('Boleto.Caixa.ACBrBoleto', MontarCampoCodigoCedente_Caixa_Test);
  _RegisterTest('Boleto.Caixa.ACBrBoleto', MontarCampoNossoNumero_Caixa_Test);
  _RegisterTest('Boleto.Caixa.ACBrBoleto', MontarCodigoBarras_Caixa_Test);
  _RegisterTest('Boleto.Caixa.ACBrBoleto', CalcularDVCedente_Caixa_Test);
  _RegisterTest('Boleto.Caixa.ACBrBoleto', GerarRemessa_Caixa_Test);
  _RegisterTest('Boleto.Caixa.ACBrBoleto', GerarRetorno_Caixa_Test);

end.

