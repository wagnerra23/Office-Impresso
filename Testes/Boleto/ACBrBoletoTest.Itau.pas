unit ACBrBoletoTest.Itau;

{$I ACBr.inc}

interface

uses
  Classes, SysUtils, ACBrBoleto,
  ACBrBancoCaixa, {ACBrBancoUnicredRS, ACBrBancoUnicredES,}
  typinfo, ACBrBoletoConversao,
  ACBrTests.Util, ACBrBoletoTest.Util;

type
  {$REGION - Classes Banco Itau}

  { CalcularDigitoVerificador_Itau_Test }

    CalcularDigitoVerificador_Itau_Test= class(TTestCase)
    private
      Boleto : TACBrBoleto;
      Titulo : TACBrTitulo;
    protected
      procedure SetUp; override;
      procedure TearDown; override;
    published
      procedure CalcularDigitoVerificador_Itau_0;
      procedure CalcularDigitoVerificador_Itau_1;
      procedure CalcularDigitoVerificador_Itau_2;
      procedure CalcularDigitoVerificador_Itau_3;
      procedure CalcularDigitoVerificador_Itau_4;
      procedure CalcularDigitoVerificador_Itau_5;
      procedure CalcularDigitoVerificador_Itau_6;
      procedure CalcularDigitoVerificador_Itau_7;
      procedure CalcularDigitoVerificador_Itau_8;
      procedure CalcularDigitoVerificador_Itau_9;
      procedure CalcularDigitoVerificador_Itau_Alfa;
      procedure CalcularDigitoVerificador_Itau_Nulo;
      procedure CalcularDigitoVerificador_Itau_NumInvalido;
      procedure CalcularDigitoVerificador_Itau_CarteiraNulo;
      procedure CalcularDigitoVerificador_Itau_CarteiraInvalido;
    end;

  { CalcularTamMaximoNossoNumero_Itau_Test }

  CalcularTamMaximoNossoNumero_Itau_Test= class(TTestCase)
  private
    Boleto : TACBrBoleto;
    Titulo : TACBrTitulo;
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure CalcularTamMaximoNossoNumero_Itau_Padrao8;
  end;

  { MontarCampoCodigoCedente_Itau_Test }

  MontarCampoCodigoCedente_Itau_Test= class(TTestCase)
  private
    Boleto : TACBrBoleto;
    Titulo : TACBrTitulo;
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure MontarCampoCodigoCedente_Itau_Padrao;
    procedure MontarCampoCodigoCedente_Itau_Invalido;
    procedure MontarCampoCodigoCedente_Itau_Alfa;
  end;

  { MontarCampoNossoNumero_Itau_Test }

  MontarCampoNossoNumero_Itau_Test= class(TTestCase)
  private
    Boleto : TACBrBoleto;
    Titulo : TACBrTitulo;
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure MontarCampoNossoNumero_Itau_Padrao;
    procedure MontarCampoNossoNumero_Itau_SemNossoNumero;
    procedure MontarCampoNossoNumero_Itau_Alfa;
    procedure MontarCampoNossoNumero_Itau_NossoNumeroInvalido;
    procedure MontarCampoNossoNumero_Itau_CarteiraInvalido;

  end;

  { MontarCodigoBarras_Itau_Test }

  MontarCodigoBarras_Itau_Test= class(TTestCase)
  private
    Boleto : TACBrBoleto;
    Titulo : TACBrTitulo;
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure MontarCodigoBarras_Itau_Padrao;
    procedure MontarCodigoBarras_Itau_Alfa;
    procedure MontarCodigoBarras_Itau_NossoNumeroInvalido;
    procedure MontarCodigoBarras_Itau_CarteiraInvalida;
    procedure MontarCodigoBarras_Itau_SemNossoNumero;
    procedure MontarCodigoBarras_Itau_ContaAgenciaInvalida;
    procedure MontarCodigoBarras_Itau_VencimentoNulo;
  end;

  { GerarRemessa_Itau_Test }

  GerarRemessa_Itau_Test= class(TTestCase)
  private
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure GerarRemessa_Itau240;
    procedure GerarRemessa_Itau400;
  end;

  { GerarRetorno_Itau_Test }

  GerarRetorno_Itau_Test= class(TTestCase)
  protected
  published
    procedure GerarRetorno_Itau240;
    procedure GerarRetorno_Itau400;
  end;

  {$ENDREGION}

implementation

uses
  dateutils, ACBrUtil, forms;

  {$REGION - Implementação Classes Banco Itau}

{ MontarCodigoBarras_Itau_Test }

procedure MontarCodigoBarras_Itau_Test.SetUp;
begin
  Boleto := TACBrBoleto.Create(nil);
  Titulo := Boleto.CriarTituloNaLista;
end;

procedure MontarCodigoBarras_Itau_Test.TearDown;
begin
  FreeAndNil(Boleto);
end;

procedure MontarCodigoBarras_Itau_Test.MontarCodigoBarras_Itau_Padrao;
begin
  Boleto.Banco.TipoCobranca   := cobItau;
  Boleto.Cedente.Agencia      := '5526';
  Boleto.Cedente.Conta        := '2145';
  Titulo.Vencimento           := EncodeDate(2017,06,30);
  Titulo.ValorDocumento       := 300;
  Titulo.Carteira             := '127';
  Titulo.NossoNumero          := '00345678';

  CheckEquals('3419772060000030000127003456789552602145000', Boleto.Banco.MontarCodigoBarras(Titulo));
end;

procedure MontarCodigoBarras_Itau_Test.MontarCodigoBarras_Itau_Alfa;
begin
  Boleto.Banco.TipoCobranca   := cobItau;
  Boleto.Cedente.Agencia      := '5545';
  Boleto.Cedente.Conta        := '214554';
  Titulo.Vencimento           := EncodeDate(2017,06,30);
  Titulo.ValorDocumento       := 300;
  Titulo.Carteira             := '127';
  Titulo.NossoNumero          := '003AVB45';

  CheckEquals('3419872060000030000127000003455554521455000', Boleto.Banco.MontarCodigoBarras(Titulo));
end;

procedure MontarCodigoBarras_Itau_Test.MontarCodigoBarras_Itau_NossoNumeroInvalido;
const
  MSG = 'Tamanho Máximo do Nosso Número é: 8';
begin
  try
    Boleto.Banco.TipoCobranca   := cobItau;
    Boleto.Cedente.Agencia      := '5526';
    Boleto.Cedente.Conta        := '2145';
    Titulo.Vencimento           := EncodeDate(2017,06,30);
    Titulo.ValorDocumento       := 300;
    Titulo.Carteira             := '127';
    Titulo.NossoNumero          := '555555555554545554542';
    Boleto.Banco.MontarCodigoBarras(Titulo);

 except on e: Exception do
   CheckEquals(MSG, e.Message);
 end;

end;

procedure MontarCodigoBarras_Itau_Test.MontarCodigoBarras_Itau_CarteiraInvalida;
begin
    Boleto.Banco.TipoCobranca   := cobItau;
    Boleto.Cedente.Agencia      := '5545';
    Boleto.Cedente.Conta        := '214554';
    Titulo.Vencimento           := EncodeDate(2017,06,30);
    Titulo.ValorDocumento       := 100.00;
    Titulo.Carteira             := '';
    Titulo.NossoNumero          := '24565551';

    CheckEquals('3419272060000010000245655511554521455000', Boleto.Banco.MontarCodigoBarras(Titulo));
end;

procedure MontarCodigoBarras_Itau_Test.MontarCodigoBarras_Itau_SemNossoNumero;
begin
  Boleto.Banco.TipoCobranca   := cobItau;
  Boleto.Cedente.Agencia      := '5545';
  Boleto.Cedente.Conta        := '214554';
  Titulo.Vencimento           := EncodeDate(2017,06,30);
  Titulo.ValorDocumento       := 100.80;
  Titulo.Carteira             := '15';
  Titulo.NossoNumero          := '';

  CheckEquals('3419172060000010080015000000003554521455000', Boleto.Banco.MontarCodigoBarras(Titulo));
end;

procedure MontarCodigoBarras_Itau_Test.MontarCodigoBarras_Itau_ContaAgenciaInvalida;
begin
  Boleto.Banco.TipoCobranca   := cobItau;
  Titulo.Vencimento           := EncodeDate(2017,06,30);
  Titulo.ValorDocumento       := 100.80;
  Titulo.Carteira             := '15';
  Titulo.NossoNumero          := '';

  CheckEquals('3419572060000010080015000000008000', Boleto.Banco.MontarCodigoBarras(Titulo));
end;

procedure MontarCodigoBarras_Itau_Test.MontarCodigoBarras_Itau_VencimentoNulo;
begin
  Boleto.Banco.TipoCobranca   := cobItau;
  Titulo.ValorDocumento       := 100.80;
  Titulo.Carteira             := '126';
  Titulo.NossoNumero          := '55954855';

  CheckEquals('3419100000000010080126559548550000', Boleto.Banco.MontarCodigoBarras(Titulo));
end;

{ MontarCampoNossoNumero_Itau_Test }

procedure MontarCampoNossoNumero_Itau_Test.SetUp;
begin
  Boleto := TACBrBoleto.Create(nil);
  Titulo := Boleto.CriarTituloNaLista;
end;

procedure MontarCampoNossoNumero_Itau_Test.TearDown;
begin
  FreeAndNil(Boleto);
end;

procedure MontarCampoNossoNumero_Itau_Test.MontarCampoNossoNumero_Itau_Padrao;
begin
  Boleto.banco.TipoCobranca := cobItau;
  Titulo.NossoNumero        := '5214524';
  Titulo.Carteira           := 'RG';

  CheckEquals('RG0/5214524-0', Boleto.Banco.MontarCampoNossoNumero(Titulo));
end;

procedure MontarCampoNossoNumero_Itau_Test.MontarCampoNossoNumero_Itau_SemNossoNumero;
begin
  Boleto.banco.TipoCobranca := cobItau;
  Titulo.NossoNumero        := '';
  Titulo.Carteira           := 'RG';

  CheckEquals('RG0/0000000-0', Boleto.Banco.MontarCampoNossoNumero(Titulo));
end;

procedure MontarCampoNossoNumero_Itau_Test.MontarCampoNossoNumero_Itau_Alfa;
begin
  Boleto.banco.TipoCobranca := cobItau;
  Titulo.NossoNumero        := '23DER234';
  Titulo.Carteira           := '18';

  CheckEquals('018/00023234-0', Boleto.Banco.MontarCampoNossoNumero(Titulo));
end;

procedure MontarCampoNossoNumero_Itau_Test.MontarCampoNossoNumero_Itau_NossoNumeroInvalido;
const
  MSG = 'Tamanho Máximo do Nosso Número é: 8';
begin
  try
    Boleto.banco.TipoCobranca := cobItau;
    Titulo.NossoNumero        := '16454654514525844';
    Titulo.Carteira           := '18';
    Boleto.Banco.MontarCampoNossoNumero(Titulo);

  except on e: Exception do
    CheckEquals(MSG,e.Message);
  end;

end;

procedure MontarCampoNossoNumero_Itau_Test.MontarCampoNossoNumero_Itau_CarteiraInvalido;
begin
  Boleto.banco.TipoCobranca := cobItau;
  Titulo.NossoNumero        := '44745884';
  Titulo.Carteira           := '';

  CheckEquals('447/45884-5', Boleto.Banco.MontarCampoNossoNumero(Titulo));
end;

{ MontarCampoCodigoCedente_Itau_Test }

procedure MontarCampoCodigoCedente_Itau_Test.SetUp;
begin
  Boleto := TACBrBoleto.Create(nil);
  Titulo := Boleto.CriarTituloNaLista;
end;

procedure MontarCampoCodigoCedente_Itau_Test.TearDown;
begin
  FreeAndNil(Boleto);
end;

procedure MontarCampoCodigoCedente_Itau_Test.MontarCampoCodigoCedente_Itau_Padrao;
begin
  Boleto.Banco.TipoCobranca   := cobItau;
  Boleto.Cedente.Agencia      := '1552';
  Boleto.Cedente.AgenciaDigito:= '1';
  Boleto.Cedente.Conta        := '5425525';
  Boleto.Cedente.ContaDigito  := '3';

  CheckEquals('1552/54255-3', Boleto.Banco.MontarCampoCodigoCedente(Titulo));
end;

procedure MontarCampoCodigoCedente_Itau_Test.MontarCampoCodigoCedente_Itau_Invalido;
begin
  Boleto.Banco.TipoCobranca   := cobItau;
  Boleto.Cedente.Agencia      := '';
  Boleto.Cedente.AgenciaDigito:= '1';
  Boleto.Cedente.Conta        := '5425525';
  Boleto.Cedente.ContaDigito  := '';

  CheckEquals('/54255-', Boleto.Banco.MontarCampoCodigoCedente(Titulo));
end;

procedure MontarCampoCodigoCedente_Itau_Test.MontarCampoCodigoCedente_Itau_Alfa;
begin
  Boleto.Banco.TipoCobranca   := cobItau;
  Boleto.Cedente.Agencia      := '11A5';
  Boleto.Cedente.AgenciaDigito:= 'X';
  Boleto.Cedente.Conta        := '542XX55';
  Boleto.Cedente.ContaDigito  := 'x';

  CheckEquals('11A5/542XX55-x', Boleto.Banco.MontarCampoCodigoCedente(Titulo));
end;

{ CalcularTamMaximoNossoNumero_Itau_Test }

procedure CalcularTamMaximoNossoNumero_Itau_Test.SetUp;
begin
  Boleto := TACBrBoleto.Create(nil);
  Titulo := Boleto.CriarTituloNaLista;
end;

procedure CalcularTamMaximoNossoNumero_Itau_Test.TearDown;
begin
  FreeAndNil(Boleto);
end;

procedure CalcularTamMaximoNossoNumero_Itau_Test.CalcularTamMaximoNossoNumero_Itau_Padrao8;
begin
  Boleto.Banco.TipoCobranca   := cobItau;
  Check(Boleto.Banco.TamanhoMaximoNossoNum = 8);
end;

{ CalcularDigitoVerificador_Itau_Test }

procedure CalcularDigitoVerificador_Itau_Test.SetUp;
begin
  Boleto := TACBrBoleto.Create(nil);
  Titulo := Boleto.CriarTituloNaLista;
end;

procedure CalcularDigitoVerificador_Itau_Test.TearDown;
begin
  FreeAndNil(Boleto);
end;

procedure CalcularDigitoVerificador_Itau_Test.CalcularDigitoVerificador_Itau_0;
begin
  Boleto.Banco.TipoCobranca   := cobItau;
  Titulo.Carteira             := '18';
  Titulo.NossoNumero          := '1231246';

  CheckEquals('0', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Itau_Test.CalcularDigitoVerificador_Itau_1;
begin
  Boleto.Banco.TipoCobranca   := cobItau;
  Titulo.Carteira             := '18';
  Titulo.NossoNumero          := '1231236';

  CheckEquals('1', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Itau_Test.CalcularDigitoVerificador_Itau_2;
begin
  Boleto.Banco.TipoCobranca   := cobItau;
  Titulo.Carteira             := '18';
  Titulo.NossoNumero          := '1231245';

  CheckEquals('2', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Itau_Test.CalcularDigitoVerificador_Itau_3;
begin
  Boleto.Banco.TipoCobranca   := cobItau;
  Titulo.Carteira             := '18';
  Titulo.NossoNumero          := '1231235';

  CheckEquals('3', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Itau_Test.CalcularDigitoVerificador_Itau_4;
begin
  Boleto.Banco.TipoCobranca   := cobItau;
  Titulo.Carteira             := 'SR';
  Titulo.NossoNumero          := '1234567';

  CheckEquals('4', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Itau_Test.CalcularDigitoVerificador_Itau_5;
begin
  Boleto.Banco.TipoCobranca   := cobItau;
  Titulo.Carteira             := '18';
  Titulo.NossoNumero          := '1231244';

  CheckEquals('5', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Itau_Test.CalcularDigitoVerificador_Itau_6;
begin
  Boleto.Banco.TipoCobranca   := cobItau;
  Titulo.Carteira             := '116';
  Titulo.NossoNumero          := '12312362';

  CheckEquals('6', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Itau_Test.CalcularDigitoVerificador_Itau_7;
begin
  Boleto.Banco.TipoCobranca   := cobItau;
  Titulo.Carteira             := '117';
  Titulo.NossoNumero          := '1231257';

  CheckEquals('7', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Itau_Test.CalcularDigitoVerificador_Itau_8;
begin
  Boleto.Banco.TipoCobranca   := cobItau;
  Titulo.Carteira             := '116';
  Titulo.NossoNumero          := '12312361';

  CheckEquals('8', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Itau_Test.CalcularDigitoVerificador_Itau_9;
begin
  Boleto.Banco.TipoCobranca   := cobItau;
  Titulo.Carteira             := '136';
  Titulo.NossoNumero          := '1231256';

  CheckEquals('9', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Itau_Test.CalcularDigitoVerificador_Itau_Alfa;
begin
  Boleto.Banco.TipoCobranca   := cobItau;
  Titulo.Carteira             := '168';
  Titulo.NossoNumero          := 'ASC123x';

  CheckEquals('5', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Itau_Test.CalcularDigitoVerificador_Itau_Nulo;
begin
  Boleto.Banco.TipoCobranca   := cobItau;
  Titulo.Carteira             := '112';
  Titulo.NossoNumero          := '';

  CheckEquals('3', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Itau_Test.CalcularDigitoVerificador_Itau_NumInvalido;
const
  MSG = 'Tamanho Máximo do Nosso Número é: 8';
begin
  try
    Boleto.Banco.TipoCobranca   := cobItau;
    Titulo.Carteira             := '12';
    Titulo.NossoNumero          := '99999999999999999999999';
    Boleto.Banco.CalcularDigitoVerificador(Titulo);

  except on e: Exception do
    CheckEquals(MSG, e.Message);
  end;

end;

procedure CalcularDigitoVerificador_Itau_Test.CalcularDigitoVerificador_Itau_CarteiraNulo;
begin
  Boleto.Banco.TipoCobranca   := cobItau;
  Titulo.Carteira             := '';
  Titulo.NossoNumero          := '52172552';

  CheckEquals('3', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Itau_Test.CalcularDigitoVerificador_Itau_CarteiraInvalido;
begin
  Boleto.Banco.TipoCobranca  := cobItau;
  Titulo.Carteira             := '45241ABC';
  Titulo.NossoNumero          := '52172552';

  CheckEquals('7', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

{ GerarRemessa_Itau_Test }

procedure GerarRemessa_Itau_Test.SetUp;
begin
  inherited SetUp;
end;

procedure GerarRemessa_Itau_Test.TearDown;
begin
  inherited TearDown;
end;

procedure GerarRemessa_Itau_Test.GerarRemessa_Itau240;
var
  lArqGerado, lArqValido: TStringList;
begin
  try

    lArqGerado := TStringList.Create;
    lArqValido := TStringList.Create;

    CriaBoletoPadrao('RemessaItau240.rem', Remessa, c240, cobItau);

    //Carrega Arquivo Gerado
    lArqGerado.LoadFromFile( CarregarArquivos('RemessaItau240.rem', Remessa) );

    //Altera a Data Atual gerada pela Data do Arquivo Válido ('ddmmyyyyhhnnss')
    lArqGerado.Strings[0]:= AlteraDataArquivo(lArqGerado.Strings[0], '02122019000000', 144);

    lArqGerado.Text:= StringReplace(lArqGerado.Text,
                      FormatDateTime('ddmmyyyy',now),'02122019',[rfReplaceAll]);

    //Carrega Arquivo Válido
    lArqValido.LoadFromFile( CarregarArquivos('RemessaItau240Valido.rem', Remessa) );

    CheckEquals(lArqValido.Text, lArqGerado.Text);

  finally
    FreeAndNil(lArqValido);
    FreeAndNil(lArqGerado);
  end;

end;

procedure GerarRemessa_Itau_Test.GerarRemessa_Itau400;
var
  lArqGerado, lArqValido: TStringList;
begin
  try

    lArqGerado := TStringList.Create;
    lArqValido := TStringList.Create;

    CriaBoletoPadrao('RemessaItau400.rem', Remessa, c400, cobItau);

    //Carrega Arquivo Gerado
    lArqGerado.LoadFromFile( CarregarArquivos('RemessaItau400.rem', Remessa) );

    //Altera a Data Atual gerada pela Data do Arquivo Válido
    lArqGerado.Text:= StringReplace(lArqGerado.Text,
                      FormatDateTime('ddmmyy',now),'160120',[rfReplaceAll]);

    //Carrega Arquivo Válido
    lArqValido.LoadFromFile( CarregarArquivos('RemessaItau400Valido.rem', Remessa) );

    CheckEquals(lArqValido.Text, lArqGerado.Text);

  finally
    FreeAndNil(lArqValido);
    FreeAndNil(lArqGerado);
  end;

end;

{ GerarRetorno_Itau_Test }

procedure GerarRetorno_Itau_Test.GerarRetorno_Itau240;
var
  SLArqGerado, SLArqValido: TStringList;
begin
  try
    SLArqGerado := TStringList.Create;
    SLArqValido := TStringList.Create;

    //Cria Componente boleto padrão apenas dados Banco e Cedente e Lê o retorno
    CriaBoletoPadrao( 'RetItau240.ret', Retorno, c240, cobItau );

    //Carrega Arquivo de Retorno Gerado para comparar dados
    SLArqGerado.LoadFromFile( CarregarArquivos('ResultRetItau240.ret', Retorno) );

    //Carrega Arquivo Válido
    SLArqValido.LoadFromFile( CarregarArquivos('ResultRetItau240Valido.ret', Retorno) );

    CheckEquals( SLArqValido.Text, SLArqGerado.Text );

  finally
    FreeAndNil(SLArqValido);
    FreeAndNil(SLArqGerado);
  end;

end;

procedure GerarRetorno_Itau_Test.GerarRetorno_Itau400;
var
  SLArqGerado, SLArqValido: TStringList;
begin
  try
    SLArqGerado := TStringList.Create;
    SLArqValido := TStringList.Create;

    //Cria Componente boleto padrão apenas dados Banco e Cedente e Lê o retorno
    CriaBoletoPadrao( 'RetItau400.ret', Retorno, c400, cobItau);

    //Carrega Arquivo de Retorno Gerado para comparar dados
    SLArqGerado.LoadFromFile( CarregarArquivos('ResultRetItau400.ret', Retorno) );

    //Carrega Arquivo Válido
    SLArqValido.LoadFromFile( CarregarArquivos('ResultRetItau400Valido.ret', Retorno) );

    CheckEquals( SLArqValido.Text, SLArqGerado.Text );

  finally
    FreeAndNil(SLArqValido);
    FreeAndNil(SLArqGerado);
  end;

end;

  {$ENDREGION}

initialization

  _RegisterTest('Boleto.Itau.ACBrBoleto', CalcularDigitoVerificador_Itau_Test);
  _RegisterTest('Boleto.Itau.ACBrBoleto', CalcularTamMaximoNossoNumero_Itau_Test);
  _RegisterTest('Boleto.Itau.ACBrBoleto', MontarCampoCodigoCedente_Itau_Test);
  _RegisterTest('Boleto.Itau.ACBrBoleto', MontarCampoNossoNumero_Itau_Test);
  _RegisterTest('Boleto.Itau.ACBrBoleto', MontarCodigoBarras_Itau_Test);
  _RegisterTest('Boleto.Itau.ACBrBoleto', GerarRemessa_Itau_Test);
  _RegisterTest('Boleto.Itau.ACBrBoleto', GerarRetorno_Itau_Test);


end.

