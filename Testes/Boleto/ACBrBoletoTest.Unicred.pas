unit ACBrBoletoTest.Unicred;

{$I ACBr.inc}

interface

uses
  Classes, SysUtils, ACBrBoleto,
  ACBrBancoCaixa, {ACBrBancoUnicredRS, ACBrBancoUnicredES,}
  typinfo, ACBrBoletoConversao,
  ACBrTests.Util, ACBrBoletoTest.Util;

type
  { CalcularDigitoVerificador_Unicred_Test }

  CalcularDigitoVerificador_Unicred_Test= class(TTestCase)
  private
    Boleto : TACBrBoleto;
    Titulo : TACBrTitulo;
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure CalcularDigitoVerificador_Unicred;
    procedure CalcularDigitoVerificador_Unicred_0;
    procedure CalcularDigitoVerificador_Unicred_1;
    procedure CalcularDigitoVerificador_Unicred_2;
    procedure CalcularDigitoVerificador_Unicred_3;
    procedure CalcularDigitoVerificador_Unicred_4;
    procedure CalcularDigitoVerificador_Unicred_5;
    procedure CalcularDigitoVerificador_Unicred_6;
    procedure CalcularDigitoVerificador_Unicred_7;
    procedure CalcularDigitoVerificador_Unicred_8;
    procedure CalcularDigitoVerificador_Unicred_9;
    procedure CalcularDigitoVerificador_Unicred_Alfa;
    procedure CalcularDigitoVerificador_Unicred_Nulo;
    procedure CalcularDigitoVerificador_Unicred_NumInvalido;
    procedure CalcularDigitoVerificador_Unicred_CarteiraNulo;
    procedure CalcularDigitoVerificador_Unicred_CarteiraInvalido;
  end;

  { CalcularTamMaximoNossoNumero_Unicred_Test}

  CalcularTamMaximoNossoNumero_Unicred_Test= class(TTestCase)
  private
    Boleto : TACBrBoleto;
    Titulo : TACBrTitulo;
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure CalcularTamMaximoNossoNumero_Unicred;
  end;

  { MontarCampoCodigoCedente_Unicred_Test }

  MontarCampoCodigoCedente_Unicred_Test= class(TTestCase)
  private
    Boleto : TACBrBoleto;
    Titulo : TACBrTitulo;
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure MontarCampoCodigoCedente_Unicred_Padrao;
    procedure MontarCampoCodigoCedente_Unicred_Invalido;
    procedure MontarCampoCodigoCedente_Unicred_Alfa;
  end;

  { MontarCampoNossoNumero_Unicred_Test }

  MontarCampoNossoNumero_Unicred_Test= class(TTestCase)
  private
    Boleto : TACBrBoleto;
    Titulo : TACBrTitulo;
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure MontarCampoNossoNumero_Unicred_Padrao;
    procedure MontarCampoNossoNumero_Unicred_SemNossoNumero;
    procedure MontarCampoNossoNumero_Unicred_Alfa;
    procedure MontarCampoNossoNumero_Unicred_NossoNumeroInvalido;
    procedure MontarCampoNossoNumero_Unicred_CarteiraInvalido;

  end;

  { MontarCodigoBarras_Unicred_Test }

  MontarCodigoBarras_Unicred_Test= class(TTestCase)
  private
    Boleto : TACBrBoleto;
    Titulo : TACBrTitulo;
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure MontarCodigoBarras_Unicred_Padrao;
    procedure MontarCodigoBarras_Unicred_Alfa;
    procedure MontarCodigoBarras_Unicred_NossoNumeroInvalido;
    procedure MontarCodigoBarras_Unicred_SemNossoNumero;
    procedure MontarCodigoBarras_Unicred_ContaAgenciaInvalida;
    procedure MontarCodigoBarras_Unicred_VencimentoNulo;
  end;

  { GerarRemessa_Unicred_Test }

  GerarRemessa_Unicred_Test= class(TTestCase)
  private
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure GerarRemessa_Unicred400;
  end;

  { GerarRetorno_Unicred_Test }

  GerarRetorno_Unicred_Test= class(TTestCase)
  protected
  published
    procedure GerarRetorno_Unicred400;
  end;

implementation

uses
  dateutils, ACBrUtil, forms;

  {$REGION - Implementação Classes Banco Unicred }

{ GerarRetorno_Unicred_Test }

procedure GerarRetorno_Unicred_Test.GerarRetorno_Unicred400;
var
  SLArqGerado, SLArqValido: TStringList;
begin
  try
    SLArqGerado := TStringList.Create;
    SLArqValido := TStringList.Create;

    //Cria Componente boleto padrão apenas dados Banco e Cedente e Lê o retorno
    CriaBoletoPadrao( 'RetUnicred400.ret', Retorno, c400, cobUnicredRS );

    //Carrega Arquivo de Retorno Gerado para comparar dados
    SLArqGerado.LoadFromFile( CarregarArquivos('ResultRetUnicred400.ret', Retorno) );

    //Carrega Arquivo Válido
    SLArqValido.LoadFromFile( CarregarArquivos('ResultRetUnicred400Valido.ret', Retorno) );

    CheckEquals( SLArqValido.Text, SLArqGerado.Text );

  finally
    FreeAndNil(SLArqValido);
    FreeAndNil(SLArqGerado);
  end;
end;

{ GerarRemessa_Unicred_Test }

procedure GerarRemessa_Unicred_Test.SetUp;
begin
  inherited;
end;

procedure GerarRemessa_Unicred_Test.TearDown;
begin
  inherited;
end;

procedure GerarRemessa_Unicred_Test.GerarRemessa_Unicred400;
var
  lArqGerado, lArqValido: TStringList;
begin
  try

    lArqGerado := TStringList.Create;
    lArqValido := TStringList.Create;

    CriaBoletoPadrao('RemessaUnicred400.rem', Remessa, c400, cobUnicredRS);

    //Carrega Arquivo Gerado
    lArqGerado.LoadFromFile( CarregarArquivos('RemessaUnicred400.rem', Remessa) );

    //Altera a Data Atual gerada pela Data do Arquivo Válido
    lArqGerado.Text:= StringReplace(lArqGerado.Text,
                      FormatDateTime('ddmmyy',now),'160120',[rfReplaceAll]);

    //Carrega Arquivo Válido
    lArqValido.LoadFromFile( CarregarArquivos('RemessaUnicred400Valido.rem', Remessa) );

    CheckEquals(lArqValido.Text, lArqGerado.Text);

  finally
    FreeAndNil(lArqValido);
    FreeAndNil(lArqGerado);
  end;

end;

{ MontarCodigoBarras_Unicred_Test }

procedure MontarCodigoBarras_Unicred_Test.SetUp;
begin
  Boleto := TACBrBoleto.Create(nil);
  Titulo := Boleto.CriarTituloNaLista;
end;

procedure MontarCodigoBarras_Unicred_Test.TearDown;
begin
  FreeAndNil(Boleto);
end;

procedure MontarCodigoBarras_Unicred_Test.MontarCodigoBarras_Unicred_Padrao;
begin
  Boleto.Banco.TipoCobranca   := cobUnicredRS;
  Boleto.Cedente.Agencia      := '5526';
  Boleto.Cedente.Conta        := '2145';
  Boleto.Cedente.ContaDigito  := '1';
  Titulo.Vencimento           := EncodeDate(2017,06,30);
  Titulo.ValorDocumento       := 300;
  Titulo.Carteira             := '17';
  Titulo.NossoNumero          := '003456789';

  CheckEquals('09191720600000300005526000002145100034567897', Boleto.Banco.MontarCodigoBarras(Titulo));
end;

procedure MontarCodigoBarras_Unicred_Test.MontarCodigoBarras_Unicred_Alfa;
begin
  Boleto.Banco.TipoCobranca   := cobUnicredRS;
  Boleto.Cedente.Agencia      := '5526';
  Boleto.Cedente.Conta        := '2145';
  Boleto.Cedente.ContaDigito  := '0';
  Titulo.Vencimento           := EncodeDate(2017,06,30);
  Titulo.ValorDocumento       := 300;
  Titulo.Carteira             := 'RG';
  Titulo.NossoNumero          := '0034SS56789';

  CheckEquals('09196720600000300005526000002145000034567891', Boleto.Banco.MontarCodigoBarras(Titulo));
end;

procedure MontarCodigoBarras_Unicred_Test.MontarCodigoBarras_Unicred_NossoNumeroInvalido;
const
  MSG = 'Tamanho Máximo do Nosso Número é: 10';
begin
  try
    Boleto.Banco.TipoCobranca   := cobUnicredRS;
    Boleto.Cedente.Agencia      := '5526';
    Boleto.Cedente.Conta        := '2145';
    Boleto.Cedente.ContaDigito  := '0';
    Titulo.Vencimento           := EncodeDate(2017,06,30);
    Titulo.ValorDocumento       := 300;
    Titulo.Carteira             := '17';
    Titulo.NossoNumero          := '111111111111111111111111111';

    Boleto.Banco.MontarCodigoBarras(Titulo);

  except on e: Exception do
    CheckEquals( MSG, e.Message )
  end;
end;

procedure MontarCodigoBarras_Unicred_Test.MontarCodigoBarras_Unicred_SemNossoNumero;
begin
  Boleto.Banco.TipoCobranca   := cobUnicredRS;
  Boleto.Cedente.Agencia      := '5526';
  Boleto.Cedente.Conta        := '2145';
  Boleto.Cedente.ContaDigito  := '0';
  Titulo.Vencimento           := EncodeDate(2017,06,30);
  Titulo.ValorDocumento       := 300;
  Titulo.Carteira             := '18';
  Titulo.NossoNumero          := '';

  CheckEquals('09191720600000300005526000002145000000000000', Boleto.Banco.MontarCodigoBarras(Titulo));
end;

procedure MontarCodigoBarras_Unicred_Test.MontarCodigoBarras_Unicred_ContaAgenciaInvalida;
begin
  Boleto.Banco.TipoCobranca   := cobUnicredRS;
  Boleto.Cedente.Agencia      := '';
  Boleto.Cedente.Conta        := '';
  Boleto.Cedente.ContaDigito  := '';
  Titulo.Vencimento           := EncodeDate(2017,06,30);
  Titulo.ValorDocumento       := 300;
  Titulo.Carteira             := '18';
  Titulo.NossoNumero          := '123456789';

  CheckEquals('09197720600000300000000000000000001234567892', Boleto.Banco.MontarCodigoBarras(Titulo));
end;

procedure MontarCodigoBarras_Unicred_Test.MontarCodigoBarras_Unicred_VencimentoNulo;
begin
  Boleto.Banco.TipoCobranca   := cobUnicredRS;
  Boleto.Cedente.Agencia      := '1254';
  Boleto.Cedente.Conta        := '12353';
  Boleto.Cedente.ContaDigito  := '1';
  Titulo.ValorDocumento       := 300;
  Titulo.Carteira             := '18';
  Titulo.NossoNumero          := '123456789';

  CheckEquals('09195000000000300001254000012353101234567892', Boleto.Banco.MontarCodigoBarras(Titulo));
end;

{ MontarCampoNossoNumero_Unicred_Test }

procedure MontarCampoNossoNumero_Unicred_Test.SetUp;
begin
  Boleto := TACBrBoleto.Create(nil);
  Titulo := Boleto.CriarTituloNaLista;
end;

procedure MontarCampoNossoNumero_Unicred_Test.TearDown;
begin
  FreeAndNil(Boleto);
end;

procedure MontarCampoNossoNumero_Unicred_Test.MontarCampoNossoNumero_Unicred_Padrao;
begin
  Boleto.Banco.TipoCobranca   := cobUnicredRS;
  Titulo.Carteira             := '17';
  Titulo.NossoNumero          := '1234567890';

  CheckEquals('17/1234567890-9', Boleto.Banco.MontarCampoNossoNumero(Titulo));
end;

procedure MontarCampoNossoNumero_Unicred_Test.MontarCampoNossoNumero_Unicred_SemNossoNumero;
begin
  Boleto.Banco.TipoCobranca   := cobUnicredRS;
  Titulo.Carteira             := '17';
  Titulo.NossoNumero          := '';

  CheckEquals('17/0000000000-6', Boleto.Banco.MontarCampoNossoNumero(Titulo));
end;

procedure MontarCampoNossoNumero_Unicred_Test.MontarCampoNossoNumero_Unicred_Alfa;
begin
  Boleto.Banco.TipoCobranca   := cobUnicredRS;
  Titulo.Carteira             := 'RG';
  Titulo.NossoNumero          := 'A12345x';

  CheckEquals('RG/0000012345-5', Boleto.Banco.MontarCampoNossoNumero(Titulo));
end;

procedure MontarCampoNossoNumero_Unicred_Test.MontarCampoNossoNumero_Unicred_NossoNumeroInvalido;
const
  MSG = 'Tamanho Máximo do Nosso Número é: 10';
begin
  try
    Boleto.Banco.TipoCobranca   := cobUnicredRS;
    Titulo.Carteira             := '17';
    Titulo.NossoNumero          := '5421X5524424155211565225';
    Boleto.Banco.MontarCampoNossoNumero(Titulo);

  except on e: Exception do
    CheckEquals( MSG, e.Message );

  end;
end;

procedure MontarCampoNossoNumero_Unicred_Test.MontarCampoNossoNumero_Unicred_CarteiraInvalido;
begin
  Boleto.Banco.TipoCobranca   := cobUnicredRS;
  Titulo.Carteira             := '';
  Titulo.NossoNumero          := '123';

  CheckEquals('00/0000000123-6', Boleto.Banco.MontarCampoNossoNumero(Titulo));
end;

{ MontarCampoCodigoCedente_Unicred_Test }

procedure MontarCampoCodigoCedente_Unicred_Test.SetUp;
begin
  Boleto := TACBrBoleto.Create(nil);
  Titulo := Boleto.CriarTituloNaLista;
end;

procedure MontarCampoCodigoCedente_Unicred_Test.TearDown;
begin
  FreeAndNil(Boleto);
end;

procedure MontarCampoCodigoCedente_Unicred_Test.MontarCampoCodigoCedente_Unicred_Padrao;
begin
  Boleto.Banco.TipoCobranca   := cobUnicredRS;
  Boleto.Cedente.Agencia      := '1552';
  Boleto.Cedente.AgenciaDigito:= '1';
  Boleto.Cedente.Conta        := '5425525';
  Boleto.Cedente.ContaDigito  := '3';

  CheckEquals('1552-1/5425525-3', Boleto.Banco.MontarCampoCodigoCedente(Titulo));
end;

procedure MontarCampoCodigoCedente_Unicred_Test.MontarCampoCodigoCedente_Unicred_Invalido;
begin
  Boleto.Banco.TipoCobranca   := cobUnicredRS;
  Boleto.Cedente.Agencia      := '';
  Boleto.Cedente.AgenciaDigito:= '1';
  Boleto.Cedente.Conta        := '';
  Boleto.Cedente.ContaDigito  := '3';

  CheckEquals('-1/-3', Boleto.Banco.MontarCampoCodigoCedente(Titulo));
end;

procedure MontarCampoCodigoCedente_Unicred_Test.MontarCampoCodigoCedente_Unicred_Alfa;
begin
  Boleto.Banco.TipoCobranca   := cobUnicredRS;
  Boleto.Cedente.Agencia      := '1552';
  Boleto.Cedente.AgenciaDigito:= 'x';
  Boleto.Cedente.Conta        := '5425x525';
  Boleto.Cedente.ContaDigito  := 'x';

  CheckEquals('1552-x/5425x525-x', Boleto.Banco.MontarCampoCodigoCedente(Titulo));
end;

{ CalcularTamMaximoNossoNumero_Unicred_Test }

procedure CalcularTamMaximoNossoNumero_Unicred_Test.SetUp;
begin
  Boleto := TACBrBoleto.Create(nil);
  Titulo := Boleto.CriarTituloNaLista;
end;

procedure CalcularTamMaximoNossoNumero_Unicred_Test.TearDown;
begin
  FreeAndNil(Boleto);
end;

procedure CalcularTamMaximoNossoNumero_Unicred_Test.CalcularTamMaximoNossoNumero_Unicred;
begin
  Boleto.Banco.TipoCobranca   := cobUnicredRS;
  Check(Boleto.Banco.TamanhoMaximoNossoNum = 10);
end;

{ CalcularDigitoVerificador_Unicred_Test }

procedure CalcularDigitoVerificador_Unicred_Test.SetUp;
begin
  Boleto := TACBrBoleto.Create(nil);
  Titulo := Boleto.CriarTituloNaLista;
end;

procedure CalcularDigitoVerificador_Unicred_Test.TearDown;
begin
  FreeAndNil(Boleto);
end;

procedure CalcularDigitoVerificador_Unicred_Test.CalcularDigitoVerificador_Unicred;
begin
  Boleto.Banco.TipoCobranca   := cobUnicredRS;
  Titulo.Carteira             := '18';
  Titulo.NossoNumero          := '12345';

  CheckEquals('5', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Unicred_Test.CalcularDigitoVerificador_Unicred_0;
begin
  Boleto.Banco.TipoCobranca   := cobUnicredRS;
  Titulo.Carteira             := '17';
  Titulo.NossoNumero          := '12345678';

  CheckEquals('0', Boleto.Banco.CalcularDigitoVerificador(Titulo));

end;

procedure CalcularDigitoVerificador_Unicred_Test.CalcularDigitoVerificador_Unicred_1;
begin
  Boleto.Banco.TipoCobranca   := cobUnicredRS;
  Titulo.Carteira             := '17';
  Titulo.NossoNumero          := '1238';

  CheckEquals('1', Boleto.Banco.CalcularDigitoVerificador(Titulo));

end;

procedure CalcularDigitoVerificador_Unicred_Test.CalcularDigitoVerificador_Unicred_2;
begin
  Boleto.Banco.TipoCobranca   := cobUnicredRS;
  Titulo.Carteira             := '17';
  Titulo.NossoNumero          := '1232';

  CheckEquals('2', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Unicred_Test.CalcularDigitoVerificador_Unicred_3;
begin
  Boleto.Banco.TipoCobranca   := cobUnicredRS;
  Titulo.Carteira             := '17';
  Titulo.NossoNumero          := '1237';

  CheckEquals('3', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Unicred_Test.CalcularDigitoVerificador_Unicred_4;
begin
  Boleto.Banco.TipoCobranca   := cobUnicredRS;
  Titulo.Carteira             := '17';
  Titulo.NossoNumero          := '1231';

  CheckEquals('4', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Unicred_Test.CalcularDigitoVerificador_Unicred_5;
begin
  Boleto.Banco.TipoCobranca   := cobUnicredRS;
  Titulo.Carteira             := '17';
  Titulo.NossoNumero          := '1236';

  CheckEquals('5', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Unicred_Test.CalcularDigitoVerificador_Unicred_6;
begin
  Boleto.Banco.TipoCobranca   := cobUnicredRS;
  Titulo.Carteira             := '17';
  Titulo.NossoNumero          := '123456';

  CheckEquals('6', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Unicred_Test.CalcularDigitoVerificador_Unicred_7;
begin
  Boleto.Banco.TipoCobranca   := cobUnicredRS;
  Titulo.Carteira             := '17';
  Titulo.NossoNumero          := '1235';

  CheckEquals('7', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Unicred_Test.CalcularDigitoVerificador_Unicred_8;
begin
  Boleto.Banco.TipoCobranca   := cobUnicredRS;
  Titulo.Carteira             := '02';
  Titulo.NossoNumero          := '1';

  CheckEquals('8', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Unicred_Test.CalcularDigitoVerificador_Unicred_9;
begin
  Boleto.Banco.TipoCobranca   := cobUnicredRS;
  Titulo.Carteira             := '17';
  Titulo.NossoNumero          := '1234';

  CheckEquals('9', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Unicred_Test.CalcularDigitoVerificador_Unicred_Alfa;
begin
  Boleto.Banco.TipoCobranca   := cobUnicredRS;
  Titulo.Carteira             := 'RG';
  Titulo.NossoNumero          := '1234cd';

  CheckEquals('3', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Unicred_Test.CalcularDigitoVerificador_Unicred_Nulo;
begin
  Boleto.Banco.TipoCobranca   := cobUnicredRS;
  Titulo.Carteira             := '17';
  Titulo.NossoNumero          := '';

  CheckEquals('6', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Unicred_Test.CalcularDigitoVerificador_Unicred_NumInvalido;
const
  MSG = 'Tamanho Máximo do Nosso Número é: 10';
begin
  try
    Boleto.Banco.TipoCobranca   := cobUnicredRS;
    Titulo.Carteira             := 'RG';
    Titulo.NossoNumero          := '9999999999999999999999999999999';
    Boleto.Banco.CalcularDigitoVerificador(Titulo);

  except on e: Exception do
    CheckEquals(MSG, e.Message);
  end;

end;

procedure CalcularDigitoVerificador_Unicred_Test.CalcularDigitoVerificador_Unicred_CarteiraNulo;
begin
  Boleto.Banco.TipoCobranca   := cobUnicredRS;
  Titulo.Carteira             := '';
  Titulo.NossoNumero          := '';

  CheckEquals('0', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_Unicred_Test.CalcularDigitoVerificador_Unicred_CarteiraInvalido;
begin
  Boleto.Banco.TipoCobranca   := cobUnicredRS;
  Titulo.Carteira             := '1565';
  Titulo.NossoNumero          := '123';

  CheckEquals('1', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

  {$ENDREGION}

initialization

  _RegisterTest('Boleto.Unicred.ACBrBoleto', CalcularDigitoVerificador_Unicred_Test);
  _RegisterTest('Boleto.Unicred.ACBrBoleto', CalcularTamMaximoNossoNumero_Unicred_Test);
  _RegisterTest('Boleto.Unicred.ACBrBoleto', MontarCampoCodigoCedente_Unicred_Test);
  _RegisterTest('Boleto.Unicred.ACBrBoleto', MontarCampoNossoNumero_Unicred_Test);
  _RegisterTest('Boleto.Unicred.ACBrBoleto', MontarCodigoBarras_Unicred_Test);
  _RegisterTest('Boleto.Unicred.ACBrBoleto', GerarRemessa_Unicred_Test);
  _RegisterTest('Boleto.Unicred.ACBrBoleto', GerarRetorno_Unicred_Test);

end.

