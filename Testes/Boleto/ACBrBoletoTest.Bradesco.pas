unit ACBrBoletoTest.Bradesco;

{$I ACBr.inc}

interface

uses
  Classes, SysUtils, ACBrBoleto,
  ACBrBancoCaixa, {ACBrBancoUnicredRS, ACBrBancoUnicredES,}
  typinfo, ACBrBoletoConversao,
  ACBrTests.Util, ACBrBoletoTest.Util;

type

  { CalcularDigitoVerificador_Bradesco_Test }

    CalcularDigitoVerificador_Bradesco_Test= class(TTestCase)
    private
      Boleto : TACBrBoleto;
      Titulo : TACBrTitulo;
    protected
      procedure SetUp; override;
      procedure TearDown; override;
    published
      procedure CalcularDigitoVerificador_Bradesco_P;
      procedure CalcularDigitoVerificador_Bradesco_0;
      procedure CalcularDigitoVerificador_Bradesco_1;
      procedure CalcularDigitoVerificador_Bradesco_2;
      procedure CalcularDigitoVerificador_Bradesco_3;
      procedure CalcularDigitoVerificador_Bradesco_4;
      procedure CalcularDigitoVerificador_Bradesco_5;
      procedure CalcularDigitoVerificador_Bradesco_6;
      procedure CalcularDigitoVerificador_Bradesco_7;
      procedure CalcularDigitoVerificador_Bradesco_8;
      procedure CalcularDigitoVerificador_Bradesco_9;
      procedure CalcularDigitoVerificador_Bradesco_Alfa;
      procedure CalcularDigitoVerificador_Bradesco_Nulo;
      procedure CalcularDigitoVerificador_Bradesco_NumInvalido;
      procedure CalcularDigitoVerificador_Bradesco_CarteiraNulo;
      procedure CalcularDigitoVerificador_Bradesco_CarteiraInvalido;
    end;

  { CalcularTamMaximoNossoNumero_Bradesco_Test }

  CalcularTamMaximoNossoNumero_Bradesco_Test= class(TTestCase)
  private
    Boleto : TACBrBoleto;
    Titulo : TACBrTitulo;
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure CalcularTamMaximoNossoNumero_Bradesco_Padrao11;
  end;

  { MontarCampoCodigoCedente_Bradesco_Test }

  MontarCampoCodigoCedente_Bradesco_Test= class(TTestCase)
  private
    Boleto : TACBrBoleto;
    Titulo : TACBrTitulo;
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure MontarCampoCodigoCedente_Bradesco_Padrao;
    procedure MontarCampoCodigoCedente_Bradesco_Invalido;
    procedure MontarCampoCodigoCedente_Bradesco_Alfa;
  end;

  { MontarCampoNossoNumero_Bradesco_Test }

  MontarCampoNossoNumero_Bradesco_Test= class(TTestCase)
  private
    Boleto : TACBrBoleto;
    Titulo : TACBrTitulo;
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure MontarCampoNossoNumero_Bradesco_Padrao;
    procedure MontarCampoNossoNumero_Bradesco_SemNossoNumero;
    procedure MontarCampoNossoNumero_Bradesco_Alfa;
    procedure MontarCampoNossoNumero_Bradesco_NossoNumeroInvalido;
    procedure MontarCampoNossoNumero_Bradesco_CarteiraInvalido;

  end;

  { MontarCodigoBarras_Bradesco_Test }

  MontarCodigoBarras_Bradesco_Test= class(TTestCase)
  private
    Boleto : TACBrBoleto;
    Titulo : TACBrTitulo;
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure MontarCodigoBarras_Bradesco_Padrao;
    procedure MontarCodigoBarras_Bradesco_Alfa;
    procedure MontarCodigoBarras_Bradesco_NossoNumeroInvalido;
    procedure MontarCodigoBarras_Bradesco_CarteiraInvalida;
    procedure MontarCodigoBarras_Bradesco_SemNossoNumero;
    procedure MontarCodigoBarras_Bradesco_ContaAgenciaInvalida;
    procedure MontarCodigoBarras_Bradesco_VencimentoNulo;
  end;

  { GerarRemessa_Bradesco_Test }

  GerarRemessa_Bradesco_Test= class(TTestCase)
  private
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure GerarRemessa_Bradesco240;
    procedure GerarRemessa_Bradesco400;
  end;

  { GerarRetorno_Bradesco_Test }

  GerarRetorno_Bradesco_Test= class(TTestCase)
  protected
  published
    procedure GerarRetorno_Bradesco240;
    procedure GerarRetorno_Bradesco400;
  end;



implementation

uses
  dateutils, ACBrUtil, forms;

{ MontarCodigoBarras_Bradesco_Test }

procedure MontarCodigoBarras_Bradesco_Test.SetUp;
begin
  Boleto := TACBrBoleto.Create(nil);
  Titulo := Boleto.CriarTituloNaLista;
end;

procedure MontarCodigoBarras_Bradesco_Test.TearDown;
begin
  FreeAndNil(Boleto);
end;

procedure MontarCodigoBarras_Bradesco_Test.MontarCodigoBarras_Bradesco_Padrao;
begin
  Boleto.Banco.TipoCobranca   := cobBradesco;
  Boleto.Cedente.Agencia      := '5526';
  Boleto.Cedente.Conta        := '2145';
  Titulo.Vencimento           := EncodeDate(2017,06,30);
  Titulo.ValorDocumento       := 300;
  Titulo.Carteira             := 'RG';
  Titulo.NossoNumero          := '003456789';

  CheckEquals('23797720600000300005526RG0000345678900021450', Boleto.Banco.MontarCodigoBarras(Titulo));
end;

procedure MontarCodigoBarras_Bradesco_Test.MontarCodigoBarras_Bradesco_Alfa;
begin
  Boleto.Banco.TipoCobranca   := cobBradesco;
  Boleto.Cedente.Agencia      := '5545';
  Boleto.Cedente.Conta        := '214554';
  Titulo.Vencimento           := EncodeDate(2017,06,30);
  Titulo.ValorDocumento       := 300;
  Titulo.Carteira             := 'RG';
  Titulo.NossoNumero          := '003AVB456774';

  CheckEquals('23791720600000300005545RG0000345677402145540', Boleto.Banco.MontarCodigoBarras(Titulo));
end;

procedure MontarCodigoBarras_Bradesco_Test.MontarCodigoBarras_Bradesco_NossoNumeroInvalido;
const
  MSG = 'Tamanho Máximo do Nosso Número é: 11';
begin
  try
    Boleto.Banco.TipoCobranca   := cobBradesco;
    Boleto.Cedente.Agencia      := '5526';
    Boleto.Cedente.Conta        := '2145';
    Titulo.Vencimento           := EncodeDate(2017,06,30);
    Titulo.ValorDocumento       := 300;
    Titulo.Carteira             := 'RG';
    Titulo.NossoNumero          := '555555555554545554542';
    Boleto.Banco.MontarCodigoBarras(Titulo);

 except on e: Exception do
   CheckEquals(MSG, e.Message);
 end;

end;

procedure MontarCodigoBarras_Bradesco_Test.MontarCodigoBarras_Bradesco_CarteiraInvalida;
begin
    Boleto.Banco.TipoCobranca   := cobBradesco;
    Boleto.Cedente.Agencia      := '5545';
    Boleto.Cedente.Conta        := '214554';
    Titulo.Vencimento           := EncodeDate(2017,06,30);
    Titulo.ValorDocumento       := 100.00;
    Titulo.Carteira             := '';
    Titulo.NossoNumero          := '24565551';

    CheckEquals('237927206000001000055450002456555102145540', Boleto.Banco.MontarCodigoBarras(Titulo));
end;

procedure MontarCodigoBarras_Bradesco_Test.MontarCodigoBarras_Bradesco_SemNossoNumero;
begin
  Boleto.Banco.TipoCobranca   := cobBradesco;
  Boleto.Cedente.Agencia      := '5545';
  Boleto.Cedente.Conta        := '214554';
  Titulo.Vencimento           := EncodeDate(2017,06,30);
  Titulo.ValorDocumento       := 100.80;
  Titulo.Carteira             := '15';
  Titulo.NossoNumero          := '';

  CheckEquals('23799720600000100805545150000000000002145540', Boleto.Banco.MontarCodigoBarras(Titulo));
end;

procedure MontarCodigoBarras_Bradesco_Test.MontarCodigoBarras_Bradesco_ContaAgenciaInvalida;
begin
  Boleto.Banco.TipoCobranca   := cobBradesco;
  Titulo.Vencimento           := EncodeDate(2017,06,30);
  Titulo.ValorDocumento       := 100.80;
  Titulo.Carteira             := '15';
  Titulo.NossoNumero          := '';

  CheckEquals('23794720600000100800000150000000000000000000', Boleto.Banco.MontarCodigoBarras(Titulo));
end;

procedure MontarCodigoBarras_Bradesco_Test.MontarCodigoBarras_Bradesco_VencimentoNulo;
begin
  Boleto.Banco.TipoCobranca   := cobBradesco;
  Titulo.ValorDocumento       := 100.80;
  Titulo.Carteira             := 'RG';
  Titulo.NossoNumero          := '5595485544';

  CheckEquals('23792000000000100800000RG0559548554400000000', Boleto.Banco.MontarCodigoBarras(Titulo));
end;

{ MontarCampoNossoNumero_Bradesco_Test }

procedure MontarCampoNossoNumero_Bradesco_Test.SetUp;
begin
  Boleto := TACBrBoleto.Create(nil);
  Titulo := Boleto.CriarTituloNaLista;
end;

procedure MontarCampoNossoNumero_Bradesco_Test.TearDown;
begin
  FreeAndNil(Boleto);
end;

procedure MontarCampoNossoNumero_Bradesco_Test.MontarCampoNossoNumero_Bradesco_Padrao;
begin
  Boleto.banco.TipoCobranca := cobBradesco;
  Titulo.NossoNumero        := '5214524';
  Titulo.Carteira           := 'RG';

  CheckEquals('RG/00005214524-4', Boleto.Banco.MontarCampoNossoNumero(Titulo));
end;

procedure MontarCampoNossoNumero_Bradesco_Test.MontarCampoNossoNumero_Bradesco_SemNossoNumero;
begin
  Boleto.banco.TipoCobranca := cobBradesco;
  Titulo.NossoNumero        := '';
  Titulo.Carteira           := 'RG';

  CheckEquals('RG/00000000000-0', Boleto.Banco.MontarCampoNossoNumero(Titulo));
end;

procedure MontarCampoNossoNumero_Bradesco_Test.MontarCampoNossoNumero_Bradesco_Alfa;
begin
  Boleto.banco.TipoCobranca := cobBradesco;
  Titulo.NossoNumero        := '23DER234';
  Titulo.Carteira           := '18';

  CheckEquals('18/00000023234-0', Boleto.Banco.MontarCampoNossoNumero(Titulo));
end;

procedure MontarCampoNossoNumero_Bradesco_Test.MontarCampoNossoNumero_Bradesco_NossoNumeroInvalido;
const
  MSG = 'Tamanho Máximo do Nosso Número é: 11';
begin
  try
    Boleto.banco.TipoCobranca := cobBradesco;
    Titulo.NossoNumero        := '16454654514525844';
    Titulo.Carteira           := '18';
    Boleto.Banco.MontarCampoNossoNumero(Titulo);

  except on e: Exception do
    CheckEquals(MSG,e.Message);
  end;

end;

procedure MontarCampoNossoNumero_Bradesco_Test.MontarCampoNossoNumero_Bradesco_CarteiraInvalido;
begin
  Boleto.banco.TipoCobranca := cobBradesco;
  Titulo.NossoNumero        := '44745884';
  Titulo.Carteira           := '';

  CheckEquals('/00044745884-5', Boleto.Banco.MontarCampoNossoNumero(Titulo));
end;

{ MontarCampoCodigoCedente_Bradesco_Test }

procedure MontarCampoCodigoCedente_Bradesco_Test.SetUp;
begin
  Boleto := TACBrBoleto.Create(nil);
  Titulo := Boleto.CriarTituloNaLista;
end;

procedure MontarCampoCodigoCedente_Bradesco_Test.TearDown;
begin
  FreeAndNil(Boleto);
end;

procedure MontarCampoCodigoCedente_Bradesco_Test.MontarCampoCodigoCedente_Bradesco_Padrao;
begin
  Boleto.Banco.TipoCobranca   := cobBradesco;
  Boleto.Cedente.Agencia      := '1552';
  Boleto.Cedente.AgenciaDigito:= '1';
  Boleto.Cedente.Conta        := '5425525';
  Boleto.Cedente.ContaDigito  := '3';

  CheckEquals('1552-1/5425525-3', Boleto.Banco.MontarCampoCodigoCedente(Titulo));
end;

procedure MontarCampoCodigoCedente_Bradesco_Test.MontarCampoCodigoCedente_Bradesco_Invalido;
begin
  Boleto.Banco.TipoCobranca   := cobBradesco;
  Boleto.Cedente.Agencia      := '';
  Boleto.Cedente.AgenciaDigito:= '1';
  Boleto.Cedente.Conta        := '5425525';
  Boleto.Cedente.ContaDigito  := '';

  CheckEquals('-1/5425525-', Boleto.Banco.MontarCampoCodigoCedente(Titulo));
end;

procedure MontarCampoCodigoCedente_Bradesco_Test.MontarCampoCodigoCedente_Bradesco_Alfa;
begin
  Boleto.Banco.TipoCobranca   := cobBradesco;
  Boleto.Cedente.Agencia      := '11A5';
  Boleto.Cedente.AgenciaDigito:= 'X';
  Boleto.Cedente.Conta        := '542XX55';
  Boleto.Cedente.ContaDigito  := 'x';

  CheckEquals('11A5-X/542XX55-x', Boleto.Banco.MontarCampoCodigoCedente(Titulo));
end;

{ CalcularTamMaximoNossoNumero_Bradesco_Test }

procedure CalcularTamMaximoNossoNumero_Bradesco_Test.SetUp;
begin
  Boleto := TACBrBoleto.Create(nil);
  Titulo := Boleto.CriarTituloNaLista;
end;

procedure CalcularTamMaximoNossoNumero_Bradesco_Test.TearDown;
begin
  FreeAndNil(Boleto);
end;

procedure CalcularTamMaximoNossoNumero_Bradesco_Test.CalcularTamMaximoNossoNumero_Bradesco_Padrao11;
begin
  Boleto.Banco.TipoCobranca   := cobBradesco;
  Check(Boleto.Banco.TamanhoMaximoNossoNum = 11);
end;

{ CalcularDigitoVerificador_Bradesco_Test }

procedure CalcularDigitoVerificador_Bradesco_Test.SetUp;
begin
  Boleto := TACBrBoleto.Create(nil);
  Titulo := Boleto.CriarTituloNaLista;
end;

procedure CalcularDigitoVerificador_Bradesco_Test.TearDown;
begin
  FreeAndNil(Boleto);
end;

procedure CalcularDigitoVerificador_Bradesco_Test.CalcularDigitoVerificador_Bradesco_P;
begin
  Boleto.Banco.TipoCobranca   := cobBradesco;
  Titulo.Carteira             := 'RG';
  Titulo.NossoNumero          := '21552';

  CheckEquals('P', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Bradesco_Test.CalcularDigitoVerificador_Bradesco_0;
begin
  Boleto.Banco.TipoCobranca   := cobBradesco;
  Titulo.Carteira             := '18';
  Titulo.NossoNumero          := '1231239';

  CheckEquals('0', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Bradesco_Test.CalcularDigitoVerificador_Bradesco_1;
begin
  Boleto.Banco.TipoCobranca   := cobBradesco;
  Titulo.Carteira             := '18';
  Titulo.NossoNumero          := '1000000001';

  CheckEquals('1', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Bradesco_Test.CalcularDigitoVerificador_Bradesco_2;
begin
  Boleto.Banco.TipoCobranca   := cobBradesco;
  Titulo.Carteira             := '18';
  Titulo.NossoNumero          := '1231238';

  CheckEquals('2', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Bradesco_Test.CalcularDigitoVerificador_Bradesco_3;
begin
  Boleto.Banco.TipoCobranca   := cobBradesco;
  Titulo.Carteira             := '18';
  Titulo.NossoNumero          := '1231246';

  CheckEquals('3', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Bradesco_Test.CalcularDigitoVerificador_Bradesco_4;
begin
  Boleto.Banco.TipoCobranca   := cobBradesco;
  Titulo.Carteira             := 'SR';
  Titulo.NossoNumero          := '1234567';

  CheckEquals('4', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Bradesco_Test.CalcularDigitoVerificador_Bradesco_5;
begin
  Boleto.Banco.TipoCobranca   := cobBradesco;
  Titulo.Carteira             := '18';
  Titulo.NossoNumero          := '1231245';

  CheckEquals('5', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Bradesco_Test.CalcularDigitoVerificador_Bradesco_6;
begin
  Boleto.Banco.TipoCobranca   := cobBradesco;
  Titulo.Carteira             := '18';
  Titulo.NossoNumero          := '1231236';

  CheckEquals('6', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Bradesco_Test.CalcularDigitoVerificador_Bradesco_7;
begin
  Boleto.Banco.TipoCobranca   := cobBradesco;
  Titulo.Carteira             := '18';
  Titulo.NossoNumero          := '1231244';

  CheckEquals('7', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Bradesco_Test.CalcularDigitoVerificador_Bradesco_8;
begin
  Boleto.Banco.TipoCobranca   := cobBradesco;
  Titulo.Carteira             := '18';
  Titulo.NossoNumero          := '1231235';

  CheckEquals('8', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Bradesco_Test.CalcularDigitoVerificador_Bradesco_9;
begin
  Boleto.Banco.TipoCobranca   := cobBradesco;
  Titulo.Carteira             := '18';
  Titulo.NossoNumero          := '1231257';

  CheckEquals('9', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Bradesco_Test.CalcularDigitoVerificador_Bradesco_Alfa;
begin
  Boleto.Banco.TipoCobranca   := cobBradesco;
  Titulo.Carteira             := '18';
  Titulo.NossoNumero          := 'ASC123x';

  CheckEquals('3', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Bradesco_Test.CalcularDigitoVerificador_Bradesco_Nulo;
begin
  Boleto.Banco.TipoCobranca   := cobBradesco;
  Titulo.Carteira             := '12';
  Titulo.NossoNumero          := '';

  CheckEquals('6', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Bradesco_Test.CalcularDigitoVerificador_Bradesco_NumInvalido;
const
  MSG = 'Tamanho Máximo do Nosso Número é: 11';
begin
  try
    Boleto.Banco.TipoCobranca   := cobBradesco;
    Titulo.Carteira             := '12';
    Titulo.NossoNumero          := '99999999999999999999999';
    Boleto.Banco.CalcularDigitoVerificador(Titulo);

  except on e: Exception do
    CheckEquals(MSG, e.Message);
  end;

end;

procedure CalcularDigitoVerificador_Bradesco_Test.CalcularDigitoVerificador_Bradesco_CarteiraNulo;
begin
  Boleto.Banco.TipoCobranca   := cobBradesco;
  Titulo.Carteira             := '';
  Titulo.NossoNumero          := '52172552552';

  CheckEquals('4', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Bradesco_Test.CalcularDigitoVerificador_Bradesco_CarteiraInvalido;
begin
  Boleto.Banco.TipoCobranca   := cobBradesco;
  Titulo.Carteira             := '45241ABC';
  Titulo.NossoNumero          := '52172552552';

  CheckEquals('2', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

{ GerarRemessa_Bradesco_Test }

procedure GerarRemessa_Bradesco_Test.SetUp;
begin
  inherited SetUp;
end;

procedure GerarRemessa_Bradesco_Test.TearDown;
begin
  inherited TearDown;
end;

procedure GerarRemessa_Bradesco_Test.GerarRemessa_Bradesco240;
var
  lArqGerado, lArqValido: TStringList;
begin
  try

    lArqGerado := TStringList.Create;
    lArqValido := TStringList.Create;

    CriaBoletoPadrao('RemessaBradesco240.rem', Remessa, c240, cobBradesco);

    //Carrega Arquivo Gerado
    lArqGerado.LoadFromFile( CarregarArquivos('RemessaBradesco240.rem', Remessa) );

    //Altera a Data Atual gerada pela Data do Arquivo Válido ('ddmmyyyyhhnnss')
    lArqGerado.Strings[0]:= AlteraDataArquivo(lArqGerado.Strings[0], '02122019000000', 144);

    lArqGerado.Text:= StringReplace(lArqGerado.Text,
                      FormatDateTime('ddmmyyyy',now),'02122019',[rfReplaceAll]);

    //Carrega Arquivo Válido
    lArqValido.LoadFromFile( CarregarArquivos('RemessaBradesco240Valido.rem', Remessa) );

    CheckEquals(lArqValido.Text, lArqGerado.Text);

  finally
    FreeAndNil(lArqValido);
    FreeAndNil(lArqGerado);
  end;

end;

procedure GerarRemessa_Bradesco_Test.GerarRemessa_Bradesco400;
var
  lArqGerado, lArqValido: TStringList;
begin
  try

    lArqGerado := TStringList.Create;
    lArqValido := TStringList.Create;

    CriaBoletoPadrao('RemessaBradesco400.rem', Remessa, c400, cobBradesco);

    //Carrega Arquivo Gerado
    lArqGerado.LoadFromFile( CarregarArquivos('RemessaBradesco400.rem', Remessa) );

    //Altera a Data Atual gerada pela Data do Arquivo Válido
    lArqGerado.Text:= StringReplace(lArqGerado.Text,
                      FormatDateTime('ddmmyy',now),'160120',[rfReplaceAll]);

    //Carrega Arquivo Válido
    lArqValido.LoadFromFile( CarregarArquivos('RemessaBradesco400Valido.rem', Remessa) );

    CheckEquals(lArqValido.Text, lArqGerado.Text);

  finally
    FreeAndNil(lArqValido);
    FreeAndNil(lArqGerado);
  end;

end;

{ GerarRetorno_Bradesco_Test }

procedure GerarRetorno_Bradesco_Test.GerarRetorno_Bradesco240;
var
  SLArqGerado, SLArqValido: TStringList;
begin
  try
    SLArqGerado := TStringList.Create;
    SLArqValido := TStringList.Create;

    //Cria Componente boleto padrão apenas dados Banco e Cedente e Lê o retorno
    CriaBoletoPadrao( 'RetBradesco240.ret', Retorno, c240, cobBradesco );

    //Carrega Arquivo de Retorno Gerado para comparar dados
    SLArqGerado.LoadFromFile( CarregarArquivos('ResultRetBradesco240.ret', Retorno) );

    //Carrega Arquivo Válido
    SLArqValido.LoadFromFile( CarregarArquivos('ResultRetBradesco240Valido.ret', Retorno) );

    CheckEquals( SLArqValido.Text, SLArqGerado.Text );

  finally
    FreeAndNil(SLArqValido);
    FreeAndNil(SLArqGerado);
  end;

end;

procedure GerarRetorno_Bradesco_Test.GerarRetorno_Bradesco400;
var
  SLArqGerado, SLArqValido: TStringList;
begin
  try
    SLArqGerado := TStringList.Create;
    SLArqValido := TStringList.Create;

    //Cria Componente boleto padrão apenas dados Banco e Cedente e Lê o retorno
    CriaBoletoPadrao( 'RetBradesco400.ret', Retorno, c400, cobBradesco);

    //Carrega Arquivo de Retorno Gerado para comparar dados
    SLArqGerado.LoadFromFile( CarregarArquivos('ResultRetBradesco400.ret', Retorno) );

    //Carrega Arquivo Válido
    SLArqValido.LoadFromFile( CarregarArquivos('ResultRetBradesco400Valido.ret', Retorno) );

    CheckEquals( SLArqValido.Text, SLArqGerado.Text );

  finally
    FreeAndNil(SLArqValido);
    FreeAndNil(SLArqGerado);
  end;

end;

initialization

  _RegisterTest('Boleto.Bradesco.ACBrBoleto', CalcularDigitoVerificador_Bradesco_Test);
  _RegisterTest('Boleto.Bradesco.ACBrBoleto', CalcularTamMaximoNossoNumero_Bradesco_Test);
  _RegisterTest('Boleto.Bradesco.ACBrBoleto', MontarCampoCodigoCedente_Bradesco_Test);
  _RegisterTest('Boleto.Bradesco.ACBrBoleto', MontarCampoNossoNumero_Bradesco_Test);
  _RegisterTest('Boleto.Bradesco.ACBrBoleto', MontarCodigoBarras_Bradesco_Test);
  _RegisterTest('Boleto.Bradesco.ACBrBoleto', GerarRemessa_Bradesco_Test);
  _RegisterTest('Boleto.Bradesco.ACBrBoleto', GerarRetorno_Bradesco_Test);

end.

