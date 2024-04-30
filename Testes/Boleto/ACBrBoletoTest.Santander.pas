unit ACBrBoletoTest.Santander;

{$I ACBr.inc}

interface

uses
  Classes, SysUtils, ACBrBoleto,
  ACBrBancoCaixa, {ACBrBancoUnicredRS, ACBrBancoUnicredES,}
  typinfo, ACBrBoletoConversao,
  ACBrTests.Util, ACBrBoletoTest.Util;

type

  {$REGION - Classes Banco Santander}

  { CalcularDigitoVerificador_Santander_Test }

    CalcularDigitoVerificador_Santander_Test= class(TTestCase)
    private
      Boleto : TACBrBoleto;
      Titulo : TACBrTitulo;
    protected
      procedure SetUp; override;
      procedure TearDown; override;
    published
      procedure CalcularDigitoVerificador_Santander_0;
      procedure CalcularDigitoVerificador_Santander_1;
      procedure CalcularDigitoVerificador_Santander_2;
      procedure CalcularDigitoVerificador_Santander_3;
      procedure CalcularDigitoVerificador_Santander_4;
      procedure CalcularDigitoVerificador_Santander_5;
      procedure CalcularDigitoVerificador_Santander_6;
      procedure CalcularDigitoVerificador_Santander_7;
      procedure CalcularDigitoVerificador_Santander_8;
      procedure CalcularDigitoVerificador_Santander_9;
      procedure CalcularDigitoVerificador_Santander_Alfa;
      procedure CalcularDigitoVerificador_Santander_Nulo;
      procedure CalcularDigitoVerificador_Santander_NumInvalido;
      procedure CalcularDigitoVerificador_Santander_CarteiraNulo;
      procedure CalcularDigitoVerificador_Santander_CarteiraInvalido;
    end;

  { CalcularTamMaximoNossoNumero_Santander_Test }

  CalcularTamMaximoNossoNumero_Santander_Test= class(TTestCase)
  private
    Boleto : TACBrBoleto;
    Titulo : TACBrTitulo;
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure CalcularTamMaximoNossoNumero_Santander_Padrao11;
  end;

  { MontarCampoCodigoCedente_Santander_Test }

  MontarCampoCodigoCedente_Santander_Test= class(TTestCase)
  private
    Boleto : TACBrBoleto;
    Titulo : TACBrTitulo;
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure MontarCampoCodigoCedente_Santander_Padrao;
    procedure MontarCampoCodigoCedente_Santander_Invalido;
    procedure MontarCampoCodigoCedente_Santander_Alfa;
  end;

  { MontarCampoNossoNumero_Santander_Test }

  MontarCampoNossoNumero_Santander_Test= class(TTestCase)
  private
    Boleto : TACBrBoleto;
    Titulo : TACBrTitulo;
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure MontarCampoNossoNumero_Santander_Padrao;
    procedure MontarCampoNossoNumero_Santander_SemNossoNumero;
    procedure MontarCampoNossoNumero_Santander_Alfa;
    procedure MontarCampoNossoNumero_Santander_NossoNumeroInvalido;
    procedure MontarCampoNossoNumero_Santander_CarteiraInvalido;

  end;

  { MontarCodigoBarras_Santander_Test }

  MontarCodigoBarras_Santander_Test= class(TTestCase)
  private
    Boleto : TACBrBoleto;
    Titulo : TACBrTitulo;
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure MontarCodigoBarras_Santander_Padrao;
    procedure MontarCodigoBarras_Santander_Alfa;
    procedure MontarCodigoBarras_Santander_NossoNumeroInvalido;
    procedure MontarCodigoBarras_Santander_CarteiraInvalida;
    procedure MontarCodigoBarras_Santander_SemNossoNumero;
    procedure MontarCodigoBarras_Santander_ContaAgenciaInvalida;
    procedure MontarCodigoBarras_Santander_VencimentoNulo;
  end;

  { GerarRemessa_Santander_Test }

  GerarRemessa_Santander_Test= class(TTestCase)
  private
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure GerarRemessa_Santander240;
    procedure GerarRemessa_Santander400;
  end;

  { GerarRetorno_Santander_Test }

  GerarRetorno_Santander_Test= class(TTestCase)
  protected
  published
    procedure GerarRetorno_Santander240;
    procedure GerarRetorno_Santander400;
  end;

  {$ENDREGION}

implementation

uses
  dateutils, ACBrUtil, forms;

  {$REGION - Implementação Classes Banco Santander}

{ MontarCodigoBarras_Santander_Test }

procedure MontarCodigoBarras_Santander_Test.SetUp;
begin
  Boleto := TACBrBoleto.Create(nil);
  Titulo := Boleto.CriarTituloNaLista;
end;

procedure MontarCodigoBarras_Santander_Test.TearDown;
begin
  FreeAndNil(Boleto);
end;

procedure MontarCodigoBarras_Santander_Test.MontarCodigoBarras_Santander_Padrao;
begin
  Boleto.Banco.TipoCobranca   := cobSantander;
  Boleto.Cedente.Agencia      := '5526';
  Boleto.Cedente.Conta        := '2145';
  Titulo.Vencimento           := EncodeDate(2017,06,30);
  Titulo.ValorDocumento       := 300;
  Titulo.Carteira             := '101';
  Titulo.NossoNumero          := '003456789';

  CheckEquals('03394720600000300009000000000000345678950000', Boleto.Banco.MontarCodigoBarras(Titulo));
end;

procedure MontarCodigoBarras_Santander_Test.MontarCodigoBarras_Santander_Alfa;
begin
  Boleto.Banco.TipoCobranca   := cobSantander;
  Boleto.Cedente.Agencia      := '5545';
  Boleto.Cedente.Conta        := '214554';
  Titulo.Vencimento           := EncodeDate(2017,06,30);
  Titulo.ValorDocumento       := 300;
  Titulo.Carteira             := '101';
  Titulo.NossoNumero          := '003AVB456774';

  CheckEquals('03392720600000300009000000000000345677470000', Boleto.Banco.MontarCodigoBarras(Titulo));
end;

procedure MontarCodigoBarras_Santander_Test.MontarCodigoBarras_Santander_NossoNumeroInvalido;
const
  MSG = 'Tamanho Máximo do Nosso Número é: 12';
begin
  try
    Boleto.Banco.TipoCobranca   := cobSantander;
    Boleto.Cedente.Agencia      := '5526';
    Boleto.Cedente.Conta        := '2145';
    Titulo.Vencimento           := EncodeDate(2017,06,30);
    Titulo.ValorDocumento       := 300;
    Titulo.Carteira             := '102';
    Titulo.NossoNumero          := '555555555554545554542';
    Boleto.Banco.MontarCodigoBarras(Titulo);

 except on e: Exception do
   CheckEquals(MSG, e.Message);
 end;

end;

procedure MontarCodigoBarras_Santander_Test.MontarCodigoBarras_Santander_CarteiraInvalida;
begin
    Boleto.Banco.TipoCobranca   := cobSantander;
    Boleto.Cedente.Agencia      := '5545';
    Boleto.Cedente.Conta        := '214554';
    Titulo.Vencimento           := EncodeDate(2017,06,30);
    Titulo.ValorDocumento       := 100.00;
    Titulo.Carteira             := '';
    Titulo.NossoNumero          := '24565551';

    CheckEquals('03391720600000100009000000000002456555140000', Boleto.Banco.MontarCodigoBarras(Titulo));
end;

procedure MontarCodigoBarras_Santander_Test.MontarCodigoBarras_Santander_SemNossoNumero;
begin
  Boleto.Banco.TipoCobranca   := cobSantander;
  Boleto.Cedente.Agencia      := '5545';
  Boleto.Cedente.Conta        := '214554';
  Titulo.Vencimento           := EncodeDate(2017,06,30);
  Titulo.ValorDocumento       := 100.80;
  Titulo.Carteira             := '15';
  Titulo.NossoNumero          := '';

  CheckEquals('03391720600000100809000000000000000000000000', Boleto.Banco.MontarCodigoBarras(Titulo));
end;

procedure MontarCodigoBarras_Santander_Test.MontarCodigoBarras_Santander_ContaAgenciaInvalida;
begin
  Boleto.Banco.TipoCobranca   := cobSantander;
  Titulo.Vencimento           := EncodeDate(2017,06,30);
  Titulo.ValorDocumento       := 100.80;
  Titulo.Carteira             := '15';
  Titulo.NossoNumero          := '';

  CheckEquals('03391720600000100809000000000000000000000000', Boleto.Banco.MontarCodigoBarras(Titulo));
end;

procedure MontarCodigoBarras_Santander_Test.MontarCodigoBarras_Santander_VencimentoNulo;
begin
  Boleto.Banco.TipoCobranca   := cobSantander;
  Titulo.ValorDocumento       := 100.80;
  Titulo.Carteira             := '101';
  Titulo.NossoNumero          := '5595485544';

  CheckEquals('03391000000000100809000000000559548554400000', Boleto.Banco.MontarCodigoBarras(Titulo));
end;

{ MontarCampoNossoNumero_Santander_Test }

procedure MontarCampoNossoNumero_Santander_Test.SetUp;
begin
  Boleto := TACBrBoleto.Create(nil);
  Titulo := Boleto.CriarTituloNaLista;
end;

procedure MontarCampoNossoNumero_Santander_Test.TearDown;
begin
  FreeAndNil(Boleto);
end;

procedure MontarCampoNossoNumero_Santander_Test.MontarCampoNossoNumero_Santander_Padrao;
begin
  Boleto.banco.TipoCobranca := cobSantander;
  Titulo.NossoNumero        := '5214524';
  Titulo.Carteira           := '101';

  CheckEquals('000005214524 7', Boleto.Banco.MontarCampoNossoNumero(Titulo));
end;

procedure MontarCampoNossoNumero_Santander_Test.MontarCampoNossoNumero_Santander_SemNossoNumero;
begin
  Boleto.banco.TipoCobranca := cobSantander;
  Titulo.NossoNumero        := '';
  Titulo.Carteira           := 'RG';

  CheckEquals('000000000000 0', Boleto.Banco.MontarCampoNossoNumero(Titulo));
end;

procedure MontarCampoNossoNumero_Santander_Test.MontarCampoNossoNumero_Santander_Alfa;
begin
  Boleto.banco.TipoCobranca := cobSantander;
  Titulo.NossoNumero        := '23DER234';
  Titulo.Carteira           := '18';

  CheckEquals('000000023234 3', Boleto.Banco.MontarCampoNossoNumero(Titulo));
end;

procedure MontarCampoNossoNumero_Santander_Test.MontarCampoNossoNumero_Santander_NossoNumeroInvalido;
const
  MSG = 'Tamanho Máximo do Nosso Número é: 12';
begin
  try
    Boleto.banco.TipoCobranca := cobSantander;
    Titulo.NossoNumero        := '16454654514525844';
    Titulo.Carteira           := '18';
    Boleto.Banco.MontarCampoNossoNumero(Titulo);

  except on e: Exception do
    CheckEquals(MSG,e.Message);
  end;

end;

procedure MontarCampoNossoNumero_Santander_Test.MontarCampoNossoNumero_Santander_CarteiraInvalido;
begin
  Boleto.banco.TipoCobranca := cobSantander;
  Titulo.NossoNumero        := '44745884';
  Titulo.Carteira           := '';

  CheckEquals('000044745884 1', Boleto.Banco.MontarCampoNossoNumero(Titulo));
end;

{ MontarCampoCodigoCedente_Santander_Test }

procedure MontarCampoCodigoCedente_Santander_Test.SetUp;
begin
  Boleto := TACBrBoleto.Create(nil);
  Titulo := Boleto.CriarTituloNaLista;
end;

procedure MontarCampoCodigoCedente_Santander_Test.TearDown;
begin
  FreeAndNil(Boleto);
end;

procedure MontarCampoCodigoCedente_Santander_Test.MontarCampoCodigoCedente_Santander_Padrao;
begin
  Boleto.Banco.TipoCobranca   := cobSantander;
  Boleto.Cedente.Agencia      := '1552';
  Boleto.Cedente.AgenciaDigito:= '1';
  Boleto.Cedente.CodigoCedente:= '123456';

  CheckEquals('1552-1/123456', Boleto.Banco.MontarCampoCodigoCedente(Titulo));
end;

procedure MontarCampoCodigoCedente_Santander_Test.MontarCampoCodigoCedente_Santander_Invalido;
begin
  Boleto.Banco.TipoCobranca   := cobSantander;
  Boleto.Cedente.Agencia      := '';
  Boleto.Cedente.AgenciaDigito:= '1';
  Boleto.Cedente.CodigoCedente:= '123456';

  CheckEquals('-1/123456', Boleto.Banco.MontarCampoCodigoCedente(Titulo));
end;

procedure MontarCampoCodigoCedente_Santander_Test.MontarCampoCodigoCedente_Santander_Alfa;
begin
  Boleto.Banco.TipoCobranca   := cobSantander;
  Boleto.Cedente.Agencia      := '11A5';
  Boleto.Cedente.AgenciaDigito:= 'X';
  Boleto.Cedente.CodigoCedente:= '12345x';

  CheckEquals('11A5-X/12345x', Boleto.Banco.MontarCampoCodigoCedente(Titulo));
end;

{ CalcularTamMaximoNossoNumero_Santander_Test }

procedure CalcularTamMaximoNossoNumero_Santander_Test.SetUp;
begin
  Boleto := TACBrBoleto.Create(nil);
  Titulo := Boleto.CriarTituloNaLista;
end;

procedure CalcularTamMaximoNossoNumero_Santander_Test.TearDown;
begin
  FreeAndNil(Boleto);
end;

procedure CalcularTamMaximoNossoNumero_Santander_Test.CalcularTamMaximoNossoNumero_Santander_Padrao11;
begin
  Boleto.Banco.TipoCobranca   := cobSantander;
  Check(Boleto.Banco.TamanhoMaximoNossoNum = 12);
end;

{ CalcularDigitoVerificador_Santander_Test }

procedure CalcularDigitoVerificador_Santander_Test.SetUp;
begin
  Boleto := TACBrBoleto.Create(nil);
  Titulo := Boleto.CriarTituloNaLista;
end;

procedure CalcularDigitoVerificador_Santander_Test.TearDown;
begin
  FreeAndNil(Boleto);
end;

procedure CalcularDigitoVerificador_Santander_Test.CalcularDigitoVerificador_Santander_0;
begin
  Boleto.Banco.TipoCobranca   := cobSantander;
  Titulo.Carteira             := '18';
  Titulo.NossoNumero          := '1231238';

  CheckEquals('0', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Santander_Test.CalcularDigitoVerificador_Santander_1;
begin
  Boleto.Banco.TipoCobranca   := cobSantander;
  Titulo.Carteira             := '18';
  Titulo.NossoNumero          := '1000000009';

  CheckEquals('1', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Santander_Test.CalcularDigitoVerificador_Santander_2;
begin
  Boleto.Banco.TipoCobranca   := cobSantander;
  Titulo.Carteira             := '18';
  Titulo.NossoNumero          := '1231245';

  CheckEquals('2', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Santander_Test.CalcularDigitoVerificador_Santander_3;
begin
  Boleto.Banco.TipoCobranca   := cobSantander;
  Titulo.Carteira             := '18';
  Titulo.NossoNumero          := '1231236';

  CheckEquals('3', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Santander_Test.CalcularDigitoVerificador_Santander_4;
begin
  Boleto.Banco.TipoCobranca   := cobSantander;
  Titulo.Carteira             := '18';
  Titulo.NossoNumero          := '1000000002';

  CheckEquals('4', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Santander_Test.CalcularDigitoVerificador_Santander_5;
begin
  Boleto.Banco.TipoCobranca   := cobSantander;
  Titulo.Carteira             := '18';
  Titulo.NossoNumero          := '1231235';

  CheckEquals('5', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Santander_Test.CalcularDigitoVerificador_Santander_6;
begin
  Boleto.Banco.TipoCobranca   := cobSantander;
  Titulo.Carteira             := '18';
  Titulo.NossoNumero          := '1231257';

  CheckEquals('6', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Santander_Test.CalcularDigitoVerificador_Santander_7;
begin
  Boleto.Banco.TipoCobranca   := cobSantander;
  Titulo.Carteira             := '18';
  Titulo.NossoNumero          := '1000000006';

  CheckEquals('7', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Santander_Test.CalcularDigitoVerificador_Santander_8;
begin
  Boleto.Banco.TipoCobranca   := cobSantander;
  Titulo.Carteira             := '18';
  Titulo.NossoNumero          := '1000000000';

  CheckEquals('8', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Santander_Test.CalcularDigitoVerificador_Santander_9;
begin
  Boleto.Banco.TipoCobranca   := cobSantander;
  Titulo.Carteira             := 'SR';
  Titulo.NossoNumero          := '1234567';

  CheckEquals('9', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Santander_Test.CalcularDigitoVerificador_Santander_Alfa;
begin
  Boleto.Banco.TipoCobranca   := cobSantander;
  Titulo.Carteira             := '18';
  Titulo.NossoNumero          := 'ASC123x';

  CheckEquals('6', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Santander_Test.CalcularDigitoVerificador_Santander_Nulo;
begin
  Boleto.Banco.TipoCobranca   := cobSantander;
  Titulo.Carteira             := '12';
  Titulo.NossoNumero          := '';

  CheckEquals('0', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Santander_Test.CalcularDigitoVerificador_Santander_NumInvalido;
const
  MSG = 'Tamanho Máximo do Nosso Número é: 12';
begin
  try
    Boleto.Banco.TipoCobranca   := cobSantander;
    Titulo.Carteira             := '12';
    Titulo.NossoNumero          := '99999999999999999999999';
    Boleto.Banco.CalcularDigitoVerificador(Titulo);

  except on e: Exception do
    CheckEquals(MSG, e.Message);
  end;

end;

procedure CalcularDigitoVerificador_Santander_Test.CalcularDigitoVerificador_Santander_CarteiraNulo;
begin
  Boleto.Banco.TipoCobranca   := cobSantander;
  Titulo.Carteira             := '';
  Titulo.NossoNumero          := '52172552552';

  CheckEquals('0', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Santander_Test.CalcularDigitoVerificador_Santander_CarteiraInvalido;
begin
  Boleto.Banco.TipoCobranca  := cobSantander;
  Titulo.Carteira             := '45241ABC';
  Titulo.NossoNumero          := '52172552552';

  CheckEquals('0', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

{ GerarRemessa_Santander_Test }

procedure GerarRemessa_Santander_Test.SetUp;
begin
  inherited SetUp;
end;

procedure GerarRemessa_Santander_Test.TearDown;
begin
  inherited TearDown;
end;

procedure GerarRemessa_Santander_Test.GerarRemessa_Santander240;
var
  lArqGerado, lArqValido: TStringList;
begin
  try

    lArqGerado := TStringList.Create;
    lArqValido := TStringList.Create;

    CriaBoletoPadrao('RemessaSantander240.rem', Remessa, c240, cobSantander);

    //Carrega Arquivo Gerado
    lArqGerado.LoadFromFile( CarregarArquivos('RemessaSantander240.rem', Remessa) );

    //Altera a Data Atual gerada pela Data do Arquivo Válido ('ddmmyyyyhhnnss')
    lArqGerado.Strings[0]:= AlteraDataArquivo(lArqGerado.Strings[0], '02122019', 144);

    lArqGerado.Text:= StringReplace(lArqGerado.Text,
                      FormatDateTime('ddmmyyyy',now),'02122019',[rfReplaceAll]);

    //Carrega Arquivo Válido
    lArqValido.LoadFromFile( CarregarArquivos('RemessaSantander240Valido.rem', Remessa) );

    CheckEquals(lArqValido.Text, lArqGerado.Text);

  finally
    FreeAndNil(lArqValido);
    FreeAndNil(lArqGerado);
  end;

end;

procedure GerarRemessa_Santander_Test.GerarRemessa_Santander400;
var
  lArqGerado, lArqValido: TStringList;
begin
  try

    lArqGerado := TStringList.Create;
    lArqValido := TStringList.Create;

    CriaBoletoPadrao('RemessaSantander400.rem', Remessa, c400, cobSantander);

    //Carrega Arquivo Gerado
    lArqGerado.LoadFromFile( CarregarArquivos('RemessaSantander400.rem', Remessa) );

    //Altera a Data Atual gerada pela Data do Arquivo Válido
    lArqGerado.Text:= StringReplace(lArqGerado.Text,
                      FormatDateTime('ddmmyy',now),'160120',[rfReplaceAll]);

    //Carrega Arquivo Válido
    lArqValido.LoadFromFile( CarregarArquivos('RemessaSantander400Valido.rem', Remessa) );

    CheckEquals(lArqValido.Text, lArqGerado.Text);

  finally
    FreeAndNil(lArqValido);
    FreeAndNil(lArqGerado);
  end;

end;

{ GerarRetorno_Santander_Test }

procedure GerarRetorno_Santander_Test.GerarRetorno_Santander240;
var
  SLArqGerado, SLArqValido: TStringList;
begin
  try
    SLArqGerado := TStringList.Create;
    SLArqValido := TStringList.Create;

    //Cria Componente boleto padrão apenas dados Banco e Cedente e Lê o retorno
    CriaBoletoPadrao( 'RetSantander240.ret', Retorno, c240, cobSantander );

    //Carrega Arquivo de Retorno Gerado para comparar dados
    SLArqGerado.LoadFromFile( CarregarArquivos('ResultRetSantander240.ret', Retorno) );

    //Carrega Arquivo Válido
    SLArqValido.LoadFromFile( CarregarArquivos('ResultRetSantander240Valido.ret', Retorno) );

    CheckEquals( SLArqValido.Text, SLArqGerado.Text );

  finally
    FreeAndNil(SLArqValido);
    FreeAndNil(SLArqGerado);
  end;

end;

procedure GerarRetorno_Santander_Test.GerarRetorno_Santander400;
var
  SLArqGerado, SLArqValido: TStringList;
begin
  try
    SLArqGerado := TStringList.Create;
    SLArqValido := TStringList.Create;

    //Cria Componente boleto padrão apenas dados Banco e Cedente e Lê o retorno
    CriaBoletoPadrao( 'RetSantander400.ret', Retorno, c400, cobSantander);

    //Carrega Arquivo de Retorno Gerado para comparar dados
    SLArqGerado.LoadFromFile( CarregarArquivos('ResultRetSantander400.ret', Retorno) );

    //Carrega Arquivo Válido
    SLArqValido.LoadFromFile( CarregarArquivos('ResultRetSantander400Valido.ret', Retorno) );

    CheckEquals( SLArqValido.Text, SLArqGerado.Text );

  finally
    FreeAndNil(SLArqValido);
    FreeAndNil(SLArqGerado);
  end;

end;

  {$ENDREGION}

initialization

  _RegisterTest('Boleto.Santander.ACBrBoleto', CalcularDigitoVerificador_Santander_Test);
  _RegisterTest('Boleto.Santander.ACBrBoleto', CalcularTamMaximoNossoNumero_Santander_Test);
  _RegisterTest('Boleto.Santander.ACBrBoleto', MontarCampoCodigoCedente_Santander_Test);
  _RegisterTest('Boleto.Santander.ACBrBoleto', MontarCampoNossoNumero_Santander_Test);
  _RegisterTest('Boleto.Santander.ACBrBoleto', MontarCodigoBarras_Santander_Test);
  _RegisterTest('Boleto.Santander.ACBrBoleto', GerarRemessa_Santander_Test);
  _RegisterTest('Boleto.Santander.ACBrBoleto', GerarRetorno_Santander_Test);


end.

