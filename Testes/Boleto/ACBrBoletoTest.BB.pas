unit ACBrBoletoTest.BB;

{$I ACBr.inc}

interface

uses
  Classes, SysUtils, ACBrBoleto,
  ACBrBancoCaixa, {ACBrBancoUnicredRS, ACBrBancoUnicredES,}
  typinfo, ACBrBoletoConversao,
  ACBrTests.Util, ACBrBoletoTest.Util;

type

  { CalcularDigitoVerificador_BB_Test }

  CalcularDigitoVerificador_BB_Test= class(TTestCase)
  private
    Boleto : TACBrBoleto;
    Titulo : TACBrTitulo;
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure CalcularDigitoVerificador_BancoBrasil;
    procedure CalcularDigitoVerificador_BancoBrasil_X;
    procedure CalcularDigitoVerificador_BancoBrasil_0;
    procedure CalcularDigitoVerificador_BancoBrasil_1;
    procedure CalcularDigitoVerificador_BancoBrasil_2;
    procedure CalcularDigitoVerificador_BancoBrasil_3;
    procedure CalcularDigitoVerificador_BancoBrasil_4;
    procedure CalcularDigitoVerificador_BancoBrasil_5;
    procedure CalcularDigitoVerificador_BancoBrasil_6;
    procedure CalcularDigitoVerificador_BancoBrasil_7;
    procedure CalcularDigitoVerificador_BancoBrasil_8;
    procedure CalcularDigitoVerificador_BancoBrasil_9;
    procedure CalcularDigitoVerificador_BancoBrasil_Alfa;
    procedure CalcularDigitoVerificador_BancoBrasil_Nulo;
    procedure CalcularDigitoVerificador_BancoBrasil_NumInvalido;
  end;

  { CalcularTamMaximoNossoNumero_BB_Test}

  CalcularTamMaximoNossoNumero_BB_Test= class(TTestCase)
  private
    Boleto : TACBrBoleto;
    Titulo : TACBrTitulo;
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure CalcularTamMaximoNossoNumero_BancoBrasil_Tam5;
    procedure CalcularTamMaximoNossoNumero_BancoBrasil_Tam7;
    procedure CalcularTamMaximoNossoNumero_BancoBrasil_Tam10;
    procedure CalcularTamMaximoNossoNumero_BancoBrasil_Tam11;
    procedure CalcularTamMaximoNossoNumero_BancoBrasil_Tam17;
    procedure CalcularTamMaximoNossoNumero_BancoBrasil_Padrao;
    procedure CalcularTamMaximoNossoNumero_BancoBrasil_Alfa;
    procedure CalcularTamMaximoNossoNumero_BancoBrasil_Nulo;
    procedure CalcularTamMaximoNossoNumero_BancoBrasil_CarteiraNulo;
    procedure CalcularTamMaximoNossoNumero_BancoBrasil_ConvenioNulo;
    procedure CalcularTamMaximoNossoNumero_BancoBrasil_NossoNumInvalido;
    procedure CalcularTamMaximoNossoNumero_BancoBrasil_CarteiraInvalido;
    procedure CalcularTamMaximoNossoNumero_BancoBrasil_ConvenioInvalido;
  end;

  { MontarCampoCodigoCedente_BB_Test }

  MontarCampoCodigoCedente_BB_Test= class(TTestCase)
  private
    Boleto : TACBrBoleto;
    Titulo : TACBrTitulo;
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure MontarCampoCodigoCedente_BancoBrasil_Padrao;
    procedure MontarCampoCodigoCedente_BancoBrasil_Invalido;
    procedure MontarCampoCodigoCedente_BancoBrasil_Alfa;
  end;

  { MontarCampoNossoNumero_BB_Test }

  MontarCampoNossoNumero_BB_Test= class(TTestCase)
  private
    Boleto : TACBrBoleto;
    Titulo : TACBrTitulo;
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure MontarCampoNossoNumero_BancoBrasil_17Digitos;
    procedure MontarCampoNossoNumero_BancoBrasil_11Digitos;
    procedure MontarCampoNossoNumero_BancoBrasil_SemConvenio;
    procedure MontarCampoNossoNumero_BancoBrasil_SemCarteira;
    procedure MontarCampoNossoNumero_BancoBrasil_SemNossoNumero;
    procedure MontarCampoNossoNumero_BancoBrasil_Alfa;
    procedure MontarCampoNossoNumero_BancoBrasil_NossoNumeroInvalido;
    procedure MontarCampoNossoNumero_BancoBrasil_ConvenioInvalido;
    procedure MontarCampoNossoNumero_BancoBrasil_CarteiraInvalido;
    procedure MontarCampoNossoNumero_BancoBrasil_ConvenioAte4Dig;
    procedure MontarCampoNossoNumero_BancoBrasil_Convenio5Dig;
    procedure MontarCampoNossoNumero_BancoBrasil_Convenio6Dig;
    procedure MontarCampoNossoNumero_BancoBrasil_Convenio7Dig;
    procedure MontarCampoNossoNumero_BancoBrasil_ConvenioMaior7Dig;

  end;

  { MontarCodigoBarras_BB_Test }

  MontarCodigoBarras_BB_Test= class(TTestCase)
  private
    Boleto : TACBrBoleto;
    Titulo : TACBrTitulo;
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure MontarCodigoBarras_BancoBrasil_cod17;
    procedure MontarCodigoBarras_BancoBrasil_cod11;
    procedure MontarCodigoBarras_BancoBrasil_Alfa;
    procedure MontarCodigoBarras_BancoBrasil_CodIncompleto;
    procedure MontarCodigoBarras_BancoBrasil_DataNula;
    procedure MontarCodigoBarras_BancoBrasil_valorZero;
    procedure MontarCodigoBarras_BancoBrasil_SemConvenio;
    procedure MontarCodigoBarras_BancoBrasil_SemCarteira;
    procedure MontarCodigoBarras_BancoBrasil_SemNossoNumero;

  end;

  { MontarCampoCarteira_BB_Test }

  MontarCampoCarteira_BB_Test= class(TTestCase)
  private
    Boleto : TACBrBoleto;
    Titulo : TACBrTitulo;
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure MontarCampoCarteira_BancoBrasil_Padrao;
    procedure MontarCampoCarteira_BancoBrasil_Modalidade;
  end;

  { GerarRemessa_BB_Test }

  GerarRemessa_BB_Test= class(TTestCase)
  private
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure GerarRemessa_BancoBrasil400;
    procedure GerarRemessa_BancoBrasil240;
  end;

   { GerarRetorno_BB_Test }

  GerarRetorno_BB_Test= class(TTestCase)
  protected
  published
    procedure GerarRetorno_BB400;
    procedure GerarRetorno_BB240;
  end;


implementation

uses
  dateutils, ACBrUtil, forms;

  { GerarRemessa_BB_Test }

procedure GerarRemessa_BB_Test.SetUp;
begin
  inherited;
end;

procedure GerarRemessa_BB_Test.TearDown;
begin
  inherited;
end;

procedure GerarRemessa_BB_Test.GerarRemessa_BancoBrasil400;
var
  lArqGerado, lArqValido: TStringList;
begin
  try

    lArqGerado := TStringList.Create;
    lArqValido := TStringList.Create;

    CriaBoletoPadrao('RemessaBB400.rem', Remessa, c400, cobBancoDoBrasil);

    //Carrega Arquivo Gerado
    lArqGerado.LoadFromFile( CarregarArquivos('RemessaBB400.rem', Remessa) );

    //Altera a Data Atual gerada pela Data do Arquivo Válido
    lArqGerado.Text:= StringReplace(lArqGerado.Text,
                      FormatDateTime('ddmmyy',now),'291119',[rfReplaceAll]);

    //Carrega Arquivo Válido
    lArqValido.LoadFromFile( CarregarArquivos('RemessaBB400Valido.rem', Remessa) );

    CheckEquals(lArqValido.Text, lArqGerado.Text);

  finally
    FreeAndNil(lArqValido);
    FreeAndNil(lArqGerado);
  end;

end;

procedure GerarRemessa_BB_Test.GerarRemessa_BancoBrasil240;
var
  lArqGerado, lArqValido: TStringList;
begin
  try

    lArqGerado := TStringList.Create;
    lArqValido := TStringList.Create;

    CriaBoletoPadrao('RemessaBB240.rem', Remessa, c240, cobBancoDoBrasil);

    //Carrega Arquivo Gerado
    lArqGerado.LoadFromFile( CarregarArquivos('RemessaBB240.rem', Remessa) );

    //Altera a Data Atual gerada pela Data do Arquivo Válido
    lArqGerado.Strings[0]:= AlteraDataArquivo(lArqGerado.Strings[0], '29112019000000', 144);

    lArqGerado.Text:= StringReplace(lArqGerado.Text,
                      FormatDateTime('ddmmyyyy',now),'29112019',[rfReplaceAll]);

    //Carrega Arquivo Válido
    lArqValido.LoadFromFile( CarregarArquivos('RemessaBB240Valido.rem', Remessa) );

    CheckEquals(lArqValido.Text, lArqGerado.Text);

  finally
    FreeAndNil(lArqValido);
    FreeAndNil(lArqGerado);
  end;

end;

{ GerarRetorno_BB_Test }

procedure GerarRetorno_BB_Test.GerarRetorno_BB400;
var
  SLArqGerado, SLArqValido: TStringList;
begin
  try
    SLArqGerado := TStringList.Create;
    SLArqValido := TStringList.Create;

    //Cria Componente boleto padrão apenas dados Banco e Cedente e Lê o retorno
    CriaBoletoPadrao( 'RetBB400.ret', Retorno, c400, cobBancoDoBrasil );

    //Carrega Arquivo de Retorno Gerado para comparar dados
    SLArqGerado.LoadFromFile( CarregarArquivos('ResultRetBB400.ret', Retorno) );

    //Carrega Arquivo Válido
    SLArqValido.LoadFromFile( CarregarArquivos('ResultRetBB400Valido.ret', Retorno) );

    CheckEquals( SLArqValido.Text, SLArqGerado.Text );

  finally
    FreeAndNil(SLArqValido);
    FreeAndNil(SLArqGerado);
  end;
end;

procedure GerarRetorno_BB_Test.GerarRetorno_BB240;
begin

end;


{ MontarCampoCarteira_BB_Test }

procedure MontarCampoCarteira_BB_Test.SetUp;
begin
  Boleto := TACBrBoleto.Create(nil);
  Titulo := Boleto.CriarTituloNaLista;
end;

procedure MontarCampoCarteira_BB_Test.TearDown;
begin
  FreeAndNil(Boleto);
end;

procedure MontarCampoCarteira_BB_Test.MontarCampoCarteira_BancoBrasil_Padrao;
begin
  Boleto.Banco.TipoCobranca   := cobBancoDoBrasil;
  Titulo.Carteira             := '16';
  CheckEquals('16', Boleto.Banco.MontarCampoCarteira(Titulo));
end;

procedure MontarCampoCarteira_BB_Test.MontarCampoCarteira_BancoBrasil_Modalidade;
begin
  Boleto.Banco.TipoCobranca   := cobBancoDoBrasil;
  Boleto.Cedente.Modalidade   := '21';
  Titulo.Carteira             := '16';
  CheckEquals('16/21', Boleto.Banco.MontarCampoCarteira(Titulo));
end;

{ MontarCodigoBarras_BB_Test }

procedure MontarCodigoBarras_BB_Test.SetUp;
begin
  Boleto := TACBrBoleto.Create(nil);
  Titulo := Boleto.CriarTituloNaLista;
end;

procedure MontarCodigoBarras_BB_Test.TearDown;
begin
  FreeAndNil(Boleto);
end;

procedure MontarCodigoBarras_BB_Test.MontarCodigoBarras_BancoBrasil_cod17;
begin
  Boleto.Banco.TipoCobranca   := cobBancoDoBrasil;
  Boleto.Banco.Numero         := 1;
  Boleto.Cedente.Agencia      := '2351';
  Boleto.Cedente.Conta        := '0452148';
  Boleto.Cedente.Convenio     := '123456';
  Titulo.Vencimento           := EncodeDate(2017,06,30);
  Titulo.ValorDocumento       := 100.60;
  Titulo.Carteira             := '16';
  Titulo.NossoNumero          := '00345678901234567';
  CheckEquals('00193720600000100601234560034567890123456721', Boleto.Banco.MontarCodigoBarras(Titulo));

  Titulo.Carteira             := '18';
  CheckEquals('00193720600000100601234560034567890123456721', Boleto.Banco.MontarCodigoBarras(Titulo));

end;

procedure MontarCodigoBarras_BB_Test.MontarCodigoBarras_BancoBrasil_cod11;
begin
  Boleto.Banco.TipoCobranca   := cobBancoDoBrasil;
  Boleto.Banco.Numero         := 1;
  Boleto.Cedente.Agencia      := '2351';
  Boleto.Cedente.Conta        := '0452148';
  Boleto.Cedente.Convenio     := '1234';
  Titulo.Vencimento           := EncodeDate(2017,06,30);
  Titulo.ValorDocumento       := 100.60;
  Titulo.Carteira             := '16';
  Titulo.NossoNumero          := '1234567';
  CheckEquals('00191720600000100601234123456723510045214816', Boleto.Banco.MontarCodigoBarras(Titulo));

  Boleto.Cedente.Agencia      := '';
  Boleto.Cedente.Conta        := '';
  Titulo.Carteira             := '21';
  CheckEquals('00198720600000100601234123456700000000000021', Boleto.Banco.MontarCodigoBarras(Titulo));

end;

procedure MontarCodigoBarras_BB_Test.MontarCodigoBarras_BancoBrasil_Alfa;
begin
  Boleto.Banco.TipoCobranca   := cobBancoDoBrasil;
  Boleto.Banco.Numero         := 1;
  Boleto.Cedente.Agencia      := '2351';
  Boleto.Cedente.Conta        := '045214X';
  Boleto.Cedente.Convenio     := '1234';
  Titulo.Vencimento           := EncodeDate(2017,06,30);
  Titulo.ValorDocumento       := 100.60;
  Titulo.Carteira             := 'RG';
  Titulo.NossoNumero          := '12ABC34567X';
  CheckEquals('001997206000001006012341234567235100045214RG', Boleto.Banco.MontarCodigoBarras(Titulo));

end;

procedure MontarCodigoBarras_BB_Test.MontarCodigoBarras_BancoBrasil_CodIncompleto;
begin
  Boleto.Banco.TipoCobranca   := cobBancoDoBrasil;
  Boleto.Banco.Numero         := 1;
  Boleto.Cedente.Agencia      := '2351';
  Boleto.Cedente.Conta        := '045214';
  Boleto.Cedente.Convenio     := '1234';
  Titulo.Vencimento           := EncodeDate(2017,06,30);
  Titulo.ValorDocumento       := 100;
  Titulo.Carteira             := 'RG';
  Titulo.NossoNumero          := '11512';
  CheckEquals('001987206000001000012340011512235100045214RG', Boleto.Banco.MontarCodigoBarras(Titulo));
end;

procedure MontarCodigoBarras_BB_Test.MontarCodigoBarras_BancoBrasil_DataNula;
begin
  Boleto.Banco.TipoCobranca   := cobBancoDoBrasil;
  Boleto.Banco.Numero         := 1;
  Boleto.Cedente.Agencia      := '2351';
  Boleto.Cedente.Conta        := '045214';
  Boleto.Cedente.Convenio     := '1234';
  Titulo.ValorDocumento       := 100;
  Titulo.Carteira             := '18';
  Titulo.NossoNumero          := '1';
  CheckEquals('00192000000000100001234000000123510004521418', Boleto.Banco.MontarCodigoBarras(Titulo));
end;

procedure MontarCodigoBarras_BB_Test.MontarCodigoBarras_BancoBrasil_valorZero;
begin
  Boleto.Banco.TipoCobranca   := cobBancoDoBrasil;
  Boleto.Banco.Numero         := 1;
  Boleto.Cedente.Agencia      := '2351';
  Boleto.Cedente.Conta        := '045214';
  Boleto.Cedente.Convenio     := '1234';
  Titulo.Vencimento           := EncodeDate(2017,06,30);
  Titulo.Carteira             := '28';
  Titulo.NossoNumero          := '45211';
  CheckEquals('00195720600000000001234004521123510004521428', Boleto.Banco.MontarCodigoBarras(Titulo));

end;

procedure MontarCodigoBarras_BB_Test.MontarCodigoBarras_BancoBrasil_SemConvenio;
const
  MSG = 'Banco do Brasil requer que o Convênio do Cedente seja informado.';
begin
  try
    Boleto.Banco.TipoCobranca   := cobBancoDoBrasil;
    Boleto.Banco.Numero         := 1;
    Boleto.Cedente.Agencia      := '2351';
    Boleto.Cedente.Conta        := '0452148';
    Boleto.Cedente.Convenio     := '';
    Titulo.Vencimento           := EncodeDate(2017,06,30);
    Titulo.ValorDocumento       := 100.00;
    Titulo.Carteira             := '16';
    Titulo.NossoNumero          := '1234567';
    Boleto.Banco.MontarCodigoBarras(Titulo);

  except on e: Exception do
    CheckEquals(MSG,e.Message);
  end;

end;

procedure MontarCodigoBarras_BB_Test.MontarCodigoBarras_BancoBrasil_SemCarteira;
const
  MSG = 'Banco do Brasil requer que a carteira seja informada antes do Nosso Número.';
begin
  try
    Boleto.Banco.TipoCobranca   := cobBancoDoBrasil;
    Boleto.Banco.Numero         := 1;
    Boleto.Cedente.Agencia      := '2351';
    Boleto.Cedente.Conta        := '0452148';
    Boleto.Cedente.Convenio     := '4521';
    Titulo.Vencimento           := EncodeDate(2017,06,30);
    Titulo.ValorDocumento       := 100.00;
    Titulo.Carteira             := '';
    Titulo.NossoNumero          := '1234567';
    Boleto.Banco.MontarCodigoBarras(Titulo);

  except on e: Exception do
    CheckEquals(MSG, e.Message);
  end;

end;

procedure MontarCodigoBarras_BB_Test.MontarCodigoBarras_BancoBrasil_SemNossoNumero;
begin
  Boleto.Banco.TipoCobranca   := cobBancoDoBrasil;
  Boleto.Banco.Numero         := 1;
  Boleto.Cedente.Agencia      := '2351';
  Boleto.Cedente.Conta        := '0452148';
  Boleto.Cedente.Convenio     := '4521';
  Titulo.Vencimento           := EncodeDate(2017,06,30);
  Titulo.ValorDocumento       := 100.00;
  Titulo.Carteira             := '18';
  Titulo.NossoNumero          := '';
  CheckEquals('00191720600000100004521000000023510045214818', Boleto.Banco.MontarCodigoBarras(Titulo));

end;

{ MontarCampoNossoNumero_BB_Test }

procedure MontarCampoNossoNumero_BB_Test.SetUp;
begin
  Boleto := TACBrBoleto.Create(nil);
  Titulo := Boleto.CriarTituloNaLista;

end;

procedure MontarCampoNossoNumero_BB_Test.TearDown;
begin
  FreeAndNil(Boleto);

end;

procedure MontarCampoNossoNumero_BB_Test.MontarCampoNossoNumero_BancoBrasil_17Digitos;
begin
  Boleto.Banco.TipoCobranca   := cobBancoDoBrasil;
  Boleto.Cedente.Convenio     := '123456';
  Titulo.Carteira             := '16';
  Titulo.NossoNumero          := '00345678901234567';
  CheckEquals('00345678901234567', Boleto.Banco.MontarCampoNossoNumero(Titulo));

  Titulo.Carteira             := '18';
  CheckEquals('00345678901234567', Boleto.Banco.MontarCampoNossoNumero(Titulo));

  Titulo.Carteira             := 'RG';
  Boleto.Cedente.Convenio     := '1234567';
  CheckEquals('12345678901234567', Boleto.Banco.MontarCampoNossoNumero(Titulo));

end;

procedure MontarCampoNossoNumero_BB_Test.MontarCampoNossoNumero_BancoBrasil_11Digitos;
begin
  Boleto.Banco.TipoCobranca   := cobBancoDoBrasil;
  Boleto.Cedente.Convenio     := '1233';
  Titulo.Carteira             := 'RG';
  Titulo.NossoNumero          := '1234567';
  CheckEquals('12331234567-X', Boleto.Banco.MontarCampoNossoNumero(Titulo));

  Boleto.Cedente.Convenio     := '12335';
  CheckEquals('01233512345-0', Boleto.Banco.MontarCampoNossoNumero(Titulo));
end;

procedure MontarCampoNossoNumero_BB_Test.MontarCampoNossoNumero_BancoBrasil_SemConvenio;
const
  MSG = 'Banco do Brasil requer que o Convênio do Cedente seja informado.';
begin
  try
    Boleto.Banco.TipoCobranca   := cobBancoDoBrasil;
    Boleto.Cedente.Convenio     := '';
    Titulo.Carteira             := 'RG';
    Titulo.NossoNumero          := '1254213';
    Boleto.Banco.MontarCampoNossoNumero(Titulo);

  except on e: Exception do
    CheckEquals( MSG, e.Message );

  end;

end;

procedure MontarCampoNossoNumero_BB_Test.MontarCampoNossoNumero_BancoBrasil_SemCarteira;
const
  MSG = 'Banco do Brasil requer que a carteira seja informada antes do Nosso Número.';
begin
    try
      Boleto.Banco.TipoCobranca   := cobBancoDoBrasil;
      Boleto.Cedente.Convenio     := '55414';
      Titulo.Carteira             := '';
      Titulo.NossoNumero          := '1254213';
      Boleto.Banco.MontarCampoNossoNumero(Titulo);

    except on e: Exception do
      CheckEquals( MSG, e.Message );

    end;
end;

procedure MontarCampoNossoNumero_BB_Test.MontarCampoNossoNumero_BancoBrasil_SemNossoNumero;
begin
  Boleto.Banco.TipoCobranca   := cobBancoDoBrasil;
  Boleto.Cedente.Convenio     := '14526';
  Titulo.Carteira             := '0';
  Titulo.NossoNumero          := '';
  CheckEquals('01452600000-7', Boleto.Banco.MontarCampoNossoNumero(Titulo));
end;

procedure MontarCampoNossoNumero_BB_Test.MontarCampoNossoNumero_BancoBrasil_Alfa;
begin
  Boleto.Banco.TipoCobranca   := cobBancoDoBrasil;
  Boleto.Cedente.Convenio     := '1452X';
  Titulo.Carteira             := '0';
  Titulo.NossoNumero          := '54214X';
  CheckEquals('01452X54214-2', Boleto.Banco.MontarCampoNossoNumero(Titulo));
end;

procedure MontarCampoNossoNumero_BB_Test.MontarCampoNossoNumero_BancoBrasil_NossoNumeroInvalido;
const
  MSG = 'Tamanho Máximo do Nosso Número é: 5';
begin
  try
    Boleto.Banco.TipoCobranca   := cobBancoDoBrasil;
    Boleto.Cedente.Convenio     := '1452X';
    Titulo.Carteira             := 'RG';
    Titulo.NossoNumero          := '5421X55244241555';
    Boleto.Banco.MontarCampoNossoNumero(Titulo);

  except on e: Exception do
    CheckEquals( MSG, e.Message );

  end;
end;

procedure MontarCampoNossoNumero_BB_Test.MontarCampoNossoNumero_BancoBrasil_ConvenioInvalido;
begin
  Boleto.Banco.TipoCobranca   := cobBancoDoBrasil;
  Boleto.Cedente.Convenio     := '145244142555214471';
  Titulo.Carteira             := 'RG';
  Titulo.NossoNumero          := '554225';

  CheckEquals('0000554225-1', Boleto.Banco.MontarCampoNossoNumero(Titulo));
end;

procedure MontarCampoNossoNumero_BB_Test.MontarCampoNossoNumero_BancoBrasil_CarteiraInvalido;
begin
  Boleto.Banco.TipoCobranca   := cobBancoDoBrasil;
  Boleto.Cedente.Convenio     := '14526';
  Titulo.Carteira             := 'Zz';
  Titulo.NossoNumero          := '54225';

  CheckEquals('01452654225-X', Boleto.Banco.MontarCampoNossoNumero(Titulo));
end;

procedure MontarCampoNossoNumero_BB_Test.MontarCampoNossoNumero_BancoBrasil_ConvenioAte4Dig;
begin
  Boleto.Banco.TipoCobranca   := cobBancoDoBrasil;
  Boleto.Cedente.Convenio     := '525';
  Titulo.Carteira             := '16';
  Titulo.NossoNumero          := '5415256';
  CheckEquals('05255415256-0', Boleto.Banco.MontarCampoNossoNumero(Titulo));

end;

procedure MontarCampoNossoNumero_BB_Test.MontarCampoNossoNumero_BancoBrasil_Convenio5Dig;
begin
  Boleto.Banco.TipoCobranca   := cobBancoDoBrasil;
  Boleto.Cedente.Convenio     := '52585';
  Titulo.Carteira             := '16';
  Titulo.NossoNumero          := '54151';
  CheckEquals('05258554151-8', Boleto.Banco.MontarCampoNossoNumero(Titulo));
end;

procedure MontarCampoNossoNumero_BB_Test.MontarCampoNossoNumero_BancoBrasil_Convenio6Dig;
begin
  Boleto.Banco.TipoCobranca   := cobBancoDoBrasil;
  Boleto.Cedente.Convenio     := '521475';
  Titulo.Carteira             := '16';
  Titulo.NossoNumero          := '25415214526';
  CheckEquals('00000025415214526', Boleto.Banco.MontarCampoNossoNumero(Titulo));

  Titulo.Carteira             := '18';
  Titulo.NossoNumero          := '25851414599';
  CheckEquals('00000025851414599', Boleto.Banco.MontarCampoNossoNumero(Titulo));

  Titulo.Carteira             := '12';
  Titulo.NossoNumero          := '25851';
  CheckEquals('52147525851-1', Boleto.Banco.MontarCampoNossoNumero(Titulo));

  Titulo.Carteira             := '15';
  Titulo.NossoNumero          := '25858';
  CheckEquals('52147525858-9', Boleto.Banco.MontarCampoNossoNumero(Titulo));

  Titulo.Carteira             := '17';
  Titulo.NossoNumero          := '25859';
  CheckEquals('52147525859-7', Boleto.Banco.MontarCampoNossoNumero(Titulo));

  Titulo.Carteira             := '18';
  Titulo.NossoNumero          := '85451';
  CheckEquals('52147585451-3', Boleto.Banco.MontarCampoNossoNumero(Titulo));

  Titulo.Carteira             := 'RG';
  Titulo.NossoNumero          := '87411478714';
  CheckEquals('52147587411-5', Boleto.Banco.MontarCampoNossoNumero(Titulo));

end;

procedure MontarCampoNossoNumero_BB_Test.MontarCampoNossoNumero_BancoBrasil_Convenio7Dig;
begin
  Boleto.Banco.TipoCobranca   := cobBancoDoBrasil;
  Boleto.Cedente.Convenio     := '5214758';
  Titulo.Carteira             := '18';
  Titulo.NossoNumero          := '15415214523';
  CheckEquals('52147585415214523', Boleto.Banco.MontarCampoNossoNumero(Titulo));

  Titulo.Carteira             := '12';
  Titulo.NossoNumero          := '25857';
  CheckEquals('52147580000025857', Boleto.Banco.MontarCampoNossoNumero(Titulo));

end;

procedure MontarCampoNossoNumero_BB_Test.MontarCampoNossoNumero_BancoBrasil_ConvenioMaior7Dig;
begin
  Boleto.Banco.TipoCobranca   := cobBancoDoBrasil;
  Boleto.Cedente.Convenio     := '85215214758';
  Titulo.Carteira             := '18';
  Titulo.NossoNumero          := '4115415';
  CheckEquals('0004115415-0', Boleto.Banco.MontarCampoNossoNumero(Titulo));
end;

{ MontarCampoCodigoCedente_BB_Test }

procedure MontarCampoCodigoCedente_BB_Test.SetUp;
begin
  Boleto := TACBrBoleto.Create(nil);
  Titulo := Boleto.CriarTituloNaLista;
end;

procedure MontarCampoCodigoCedente_BB_Test.TearDown;
begin
  FreeAndNil(Boleto);
end;

procedure MontarCampoCodigoCedente_BB_Test.MontarCampoCodigoCedente_BancoBrasil_Padrao;
begin
  Boleto.Banco.TipoCobranca      := cobBancoDoBrasil;
  Boleto.Cedente.Agencia         := '2541';
  Boleto.Cedente.AgenciaDigito   := '1';
  Titulo.ACBrBoleto.Cedente.Conta:= '0523218';
  Boleto.Cedente.ContaDigito     := '4';

  CheckEquals('2541-1/523218-4', Boleto.Banco.MontarCampoCodigoCedente(Titulo));
end;

procedure MontarCampoCodigoCedente_BB_Test.MontarCampoCodigoCedente_BancoBrasil_Invalido;
begin
  Boleto.Banco.TipoCobranca      := cobBancoDoBrasil;
  Boleto.Cedente.Agencia         := '5214';
  Boleto.Cedente.AgenciaDigito   := '1';
  Titulo.ACBrBoleto.Cedente.Conta:= '0523218';
  Boleto.Cedente.ContaDigito     := '4';

  CheckNotEquals('5214-1/0523218-4', Boleto.Banco.MontarCampoCodigoCedente(Titulo));
end;

procedure MontarCampoCodigoCedente_BB_Test.MontarCampoCodigoCedente_BancoBrasil_Alfa;
begin
  Boleto.Banco.TipoCobranca      := cobBancoDoBrasil;
  Boleto.Cedente.Agencia         := '5214';
  Boleto.Cedente.AgenciaDigito   := '1';
  Titulo.ACBrBoleto.Cedente.Conta:= '0523218';
  Boleto.Cedente.ContaDigito     := 'X';

  CheckEquals('5214-1/523218-X', Boleto.Banco.MontarCampoCodigoCedente(Titulo));
end;

{ CalcularDigitoVerificador_BB_Test }

procedure CalcularDigitoVerificador_BB_Test.SetUp;
begin
  Boleto := TACBrBoleto.Create(nil);
  Titulo := Boleto.CriarTituloNaLista;
end;

procedure CalcularDigitoVerificador_BB_Test.TearDown;
begin
  FreeAndNil(Boleto);
end;

procedure CalcularDigitoVerificador_BB_Test.CalcularDigitoVerificador_BancoBrasil;
begin
  Boleto.Banco.TipoCobranca   := cobBancoDoBrasil;
  Boleto.Cedente.Convenio     := '12345';
  Titulo.Carteira             := 'RG';
  Titulo.NossoNumero          := '12345';

  CheckEquals('3', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_BB_Test.CalcularDigitoVerificador_BancoBrasil_X;
begin
  Boleto.Banco.TipoCobranca   := cobBancoDoBrasil;
  Boleto.Cedente.Convenio     := '1233';
  Titulo.Carteira             := 'RG';
  Titulo.NossoNumero          := '1234567';

  CheckEquals('X', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_BB_Test.CalcularDigitoVerificador_BancoBrasil_0;
begin
  Boleto.Banco.TipoCobranca   := cobBancoDoBrasil;
  Boleto.Cedente.Convenio     := '185';
  Titulo.Carteira             := 'RG';
  Titulo.NossoNumero          := '8547125';

  CheckEquals('0', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_BB_Test.CalcularDigitoVerificador_BancoBrasil_1;
begin
  Boleto.Banco.TipoCobranca   := cobBancoDoBrasil;
  Boleto.Cedente.Convenio     := '521475';
  Titulo.Carteira             := '18';
  Titulo.NossoNumero          := '25851';

  CheckEquals('1', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_BB_Test.CalcularDigitoVerificador_BancoBrasil_2;
begin
  Boleto.Banco.TipoCobranca   := cobBancoDoBrasil;
  Boleto.Cedente.Convenio     := '185551';
  Titulo.Carteira             := 'RG';
  Titulo.NossoNumero          := '84145';

  CheckEquals('2', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_BB_Test.CalcularDigitoVerificador_BancoBrasil_3;
begin
  Boleto.Banco.TipoCobranca   := cobBancoDoBrasil;
  Boleto.Cedente.Convenio     := '521475';
  Titulo.Carteira             := '18';
  Titulo.NossoNumero          := '85451';

  CheckEquals('3', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_BB_Test.CalcularDigitoVerificador_BancoBrasil_4;
begin
  Boleto.Banco.TipoCobranca   := cobBancoDoBrasil;
  Boleto.Cedente.Convenio     := '185444';
  Titulo.Carteira             := 'RG';
  Titulo.NossoNumero          := '90257919';

  CheckEquals('4', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_BB_Test.CalcularDigitoVerificador_BancoBrasil_5;
begin
  Boleto.Banco.TipoCobranca   := cobBancoDoBrasil;
  Boleto.Cedente.Convenio     := '185444';
  Titulo.Carteira             := 'RG';
  Titulo.NossoNumero          := '50257112';

  CheckEquals('5', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_BB_Test.CalcularDigitoVerificador_BancoBrasil_6;
begin
  Boleto.Banco.TipoCobranca   := cobBancoDoBrasil;
  Boleto.Cedente.Convenio     := '185444';
  Titulo.Carteira             := 'RG';
  Titulo.NossoNumero          := '7016252';

  CheckEquals('6', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_BB_Test.CalcularDigitoVerificador_BancoBrasil_7;
begin
  Boleto.Banco.TipoCobranca   := cobBancoDoBrasil;
  Boleto.Cedente.Convenio     := '0';
  Titulo.Carteira             := 'RG';
  Titulo.NossoNumero          := '2541572';

  CheckEquals('7', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_BB_Test.CalcularDigitoVerificador_BancoBrasil_8;
begin
  Boleto.Banco.TipoCobranca   := cobBancoDoBrasil;
  Boleto.Cedente.Convenio     := '185551';
  Titulo.Carteira             := 'RG';
  Titulo.NossoNumero          := '8114145';

  CheckEquals('8', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_BB_Test.CalcularDigitoVerificador_BancoBrasil_9;
begin
  Boleto.Banco.TipoCobranca   := cobBancoDoBrasil;
  Boleto.Cedente.Convenio     := '185444';
  Titulo.Carteira             := 'RG';
  Titulo.NossoNumero          := '00257478';

  CheckEquals('9', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_BB_Test.CalcularDigitoVerificador_BancoBrasil_Alfa;
begin
  Boleto.Banco.TipoCobranca   := cobBancoDoBrasil;
  Boleto.Cedente.Convenio     := '0C12345A';
  Titulo.Carteira             := 'RG';
  Titulo.NossoNumero          := '1B0055D';

  CheckEquals('2', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_BB_Test.CalcularDigitoVerificador_BancoBrasil_Nulo;
begin
  Boleto.Banco.TipoCobranca   := cobBancoDoBrasil;
  Boleto.Cedente.Convenio     := '0C12345A';
  Titulo.Carteira             := 'RG';
  Titulo.NossoNumero          := '';

  CheckEquals('0', Boleto.Banco.CalcularDigitoVerificador(Titulo));
end;

procedure CalcularDigitoVerificador_BB_Test.CalcularDigitoVerificador_BancoBrasil_NumInvalido;
const
  MSG = 'Tamanho Máximo do Nosso Número é: 10';
begin
  try
    Boleto.Banco.TipoCobranca   := cobBancoDoBrasil;
    Boleto.Cedente.Convenio     := '000000000000000';
    Titulo.Carteira             := 'XX';
    Titulo.NossoNumero          := '323232322323232323232232';
    Boleto.Banco.CalcularDigitoVerificador(Titulo);

  except on e: Exception do
     CheckEquals( MSG,e.Message );

  end;

end;

{ CalcularTamMaximoNossoNumero_BB_Test }

procedure CalcularTamMaximoNossoNumero_BB_Test.SetUp;
begin
  Boleto := TACBrBoleto.Create(nil);
  Titulo := Boleto.CriarTituloNaLista;
end;

procedure CalcularTamMaximoNossoNumero_BB_Test.TearDown;
begin
  FreeAndNil(Boleto);
end;

procedure CalcularTamMaximoNossoNumero_BB_Test.CalcularTamMaximoNossoNumero_BancoBrasil_Tam5;
begin
  Boleto.Banco.TipoCobranca   := cobBancoDoBrasil;
  Boleto.Cedente.Convenio     := '65465';
  Titulo.Carteira             := '12';
  Titulo.NossoNumero          := '12312';
  CheckEquals(5, Boleto.Banco.CalcularTamMaximoNossoNumero( Titulo.Carteira, Titulo.NossoNumero,
                                                               Boleto.Cedente.Convenio));

  Titulo.Carteira             := '15';
  CheckEquals(5, Boleto.Banco.CalcularTamMaximoNossoNumero( Titulo.Carteira, Titulo.NossoNumero,
                                                               Boleto.Cedente.Convenio));

  Titulo.Carteira             := '17';
  CheckEquals(5, Boleto.Banco.CalcularTamMaximoNossoNumero( Titulo.Carteira, Titulo.NossoNumero,
                                                               Boleto.Cedente.Convenio));

  Titulo.Carteira             := '18';
  CheckEquals(5, Boleto.Banco.CalcularTamMaximoNossoNumero( Titulo.Carteira, Titulo.NossoNumero,
                                                               Boleto.Cedente.Convenio));
end;

procedure CalcularTamMaximoNossoNumero_BB_Test.CalcularTamMaximoNossoNumero_BancoBrasil_Tam7;
begin
  Boleto.Banco.TipoCobranca   := cobBancoDoBrasil;
  Boleto.Cedente.Convenio     := '654';
  Titulo.Carteira             := '18';
  Titulo.NossoNumero          := '1231234';

  CheckEquals(7, Boleto.Banco.CalcularTamMaximoNossoNumero( Titulo.Carteira, Titulo.NossoNumero,
                                                             Boleto.Cedente.Convenio));
end;

procedure CalcularTamMaximoNossoNumero_BB_Test.CalcularTamMaximoNossoNumero_BancoBrasil_Tam10;
begin
  Boleto.Banco.TipoCobranca   := cobBancoDoBrasil;
  Boleto.Cedente.Convenio     := '6548549';
  Titulo.Carteira             := 'RG';
  Titulo.NossoNumero          := '12312342';

  CheckEquals(10, Boleto.Banco.CalcularTamMaximoNossoNumero( Titulo.Carteira, Titulo.NossoNumero,
                                                               Boleto.Cedente.Convenio));
end;

procedure CalcularTamMaximoNossoNumero_BB_Test.CalcularTamMaximoNossoNumero_BancoBrasil_Tam11;
begin
  Boleto.Banco.TipoCobranca   := cobBancoDoBrasil;
  Boleto.Cedente.Convenio     := '654854';
  Titulo.Carteira             := 'RG';
  Titulo.NossoNumero          := '12312342';

  CheckEquals(11, Boleto.Banco.CalcularTamMaximoNossoNumero( Titulo.Carteira, Titulo.NossoNumero,
                                                             Boleto.Cedente.Convenio));
end;

procedure CalcularTamMaximoNossoNumero_BB_Test.CalcularTamMaximoNossoNumero_BancoBrasil_Tam17;
begin
  Boleto.Banco.TipoCobranca   := cobBancoDoBrasil;
  Boleto.Cedente.Convenio     := '6543217';
  Titulo.Carteira             := '18';
  Titulo.NossoNumero          := '123456789101';
  CheckEquals(17, Boleto.Banco.CalcularTamMaximoNossoNumero( Titulo.Carteira, Titulo.NossoNumero,
                                                             Boleto.Cedente.Convenio));

  Boleto.Cedente.Convenio     := '654321';
  Titulo.Carteira             := '16';
  CheckEquals(17, Boleto.Banco.CalcularTamMaximoNossoNumero( Titulo.Carteira, Titulo.NossoNumero,
                                                             Boleto.Cedente.Convenio));

  Boleto.Cedente.Convenio     := '654545';
  Titulo.Carteira             := '18';
  CheckEquals(17, Boleto.Banco.CalcularTamMaximoNossoNumero( Titulo.Carteira, Titulo.NossoNumero,
                                                             Boleto.Cedente.Convenio));
end;

procedure CalcularTamMaximoNossoNumero_BB_Test.CalcularTamMaximoNossoNumero_BancoBrasil_Padrao;
begin
  Boleto.Banco.TipoCobranca   := cobBancoDoBrasil;
  Boleto.Cedente.Convenio     := '654155155';
  Titulo.Carteira             := '18';
  Titulo.NossoNumero          := '5214123122';

  CheckEquals(10, Boleto.Banco.CalcularTamMaximoNossoNumero( Titulo.Carteira, Titulo.NossoNumero,
                                                               Boleto.Cedente.Convenio));
end;

procedure CalcularTamMaximoNossoNumero_BB_Test.CalcularTamMaximoNossoNumero_BancoBrasil_Alfa;
begin
  Boleto.Banco.TipoCobranca   := cobBancoDoBrasil;
  Boleto.Cedente.Convenio     := '654';
  Titulo.Carteira             := '18';
  Titulo.NossoNumero          := '1231RG234';

  CheckEquals(7, Boleto.Banco.CalcularTamMaximoNossoNumero( Titulo.Carteira, Titulo.NossoNumero,
                                                             Boleto.Cedente.Convenio));
end;

procedure CalcularTamMaximoNossoNumero_BB_Test.CalcularTamMaximoNossoNumero_BancoBrasil_Nulo;
begin
  Boleto.Banco.TipoCobranca   := cobBancoDoBrasil;
  Boleto.Cedente.Convenio     := '654';
  Titulo.Carteira             := '18';
  Titulo.NossoNumero          := '';

  CheckEquals(7, Boleto.Banco.CalcularTamMaximoNossoNumero( Titulo.Carteira, Titulo.NossoNumero,
                                                             Boleto.Cedente.Convenio));
end;

procedure CalcularTamMaximoNossoNumero_BB_Test.CalcularTamMaximoNossoNumero_BancoBrasil_CarteiraNulo;
const
  MSG = 'Banco do Brasil requer que a carteira seja informada antes do Nosso Número.';
begin
  try
    Boleto.Banco.TipoCobranca   := cobBancoDoBrasil;
    Boleto.Cedente.Convenio     := '654';
    Titulo.Carteira             := '';
    Titulo.NossoNumero          := '1231234';
    Boleto.Banco.CalcularTamMaximoNossoNumero( Titulo.Carteira, Titulo.NossoNumero,
                                               Boleto.Cedente.Convenio);
  except on e: exception do
      CheckEquals(MSG, e.Message);

  end;

end;

procedure CalcularTamMaximoNossoNumero_BB_Test.CalcularTamMaximoNossoNumero_BancoBrasil_ConvenioNulo;
const
  MSG = 'Banco do Brasil requer que o Convênio do Cedente seja informado.';
begin
  try
    Boleto.Banco.TipoCobranca   := cobBancoDoBrasil;
    Boleto.Cedente.Convenio     := '';
    Titulo.Carteira             := '18';
    Titulo.NossoNumero          := '1231234';
    Boleto.Banco.CalcularTamMaximoNossoNumero( Titulo.Carteira, Titulo.NossoNumero,
                                               Boleto.Cedente.Convenio);
  except on e: exception do
    CheckEquals(MSG, e.Message);

  end;

end;

procedure CalcularTamMaximoNossoNumero_BB_Test.CalcularTamMaximoNossoNumero_BancoBrasil_NossoNumInvalido;
const
  MSG = 'Tamanho Máximo do Nosso Número é: 7';
begin
  try
    Boleto.Banco.TipoCobranca   := cobBancoDoBrasil;
    Boleto.Cedente.Convenio     := '654';
    Titulo.Carteira             := '18';
    Titulo.NossoNumero          := '45644444522541156633252';
    Boleto.Banco.CalcularTamMaximoNossoNumero( Titulo.Carteira, Titulo.NossoNumero,
                                               Boleto.Cedente.Convenio);

  except on e: exception do
    CheckEquals(MSG, e.Message);

  end;

end;

procedure CalcularTamMaximoNossoNumero_BB_Test.CalcularTamMaximoNossoNumero_BancoBrasil_CarteiraInvalido;
begin
  Boleto.Banco.TipoCobranca   := cobBancoDoBrasil;
  Boleto.Cedente.Convenio     := '654';
  Titulo.Carteira             := 'zZ';
  Titulo.NossoNumero          := '4414452';

  CheckEquals(7, Boleto.Banco.CalcularTamMaximoNossoNumero( Titulo.Carteira, Titulo.NossoNumero,
                                                            Boleto.Cedente.Convenio));

end;

procedure CalcularTamMaximoNossoNumero_BB_Test.CalcularTamMaximoNossoNumero_BancoBrasil_ConvenioInvalido;
begin
  Boleto.Banco.TipoCobranca   := cobBancoDoBrasil;
  Boleto.Cedente.Convenio     := '65456252552400';
  Titulo.Carteira             := 'zZzzz';
  Titulo.NossoNumero          := '84414';

  CheckEquals(10, Boleto.Banco.CalcularTamMaximoNossoNumero( Titulo.Carteira, Titulo.NossoNumero,
                                                            Boleto.Cedente.Convenio));
end;

initialization

  _RegisterTest('Boleto.BancoBrasil.ACBrBoleto', CalcularDigitoVerificador_BB_Test);
  _RegisterTest('Boleto.BancoBrasil.ACBrBoleto', CalcularTamMaximoNossoNumero_BB_Test);
  _RegisterTest('Boleto.BancoBrasil.ACBrBoleto', MontarCampoCodigoCedente_BB_Test);
  _RegisterTest('Boleto.BancoBrasil.ACBrBoleto', MontarCampoNossoNumero_BB_Test);
  _RegisterTest('Boleto.BancoBrasil.ACBrBoleto', MontarCodigoBarras_BB_Test);
  _RegisterTest('Boleto.BancoBrasil.ACBrBoleto', MontarCampoCarteira_BB_Test);
  _RegisterTest('Boleto.BancoBrasil.ACBrBoleto', GerarRemessa_BB_Test);
  _RegisterTest('Boleto.BancoBrasil.ACBrBoleto', GerarRetorno_BB_Test);

end.

