unit ACBrBoletoTest.UnicredES;

{$I ACBr.inc}

interface

uses
  Classes, SysUtils, ACBrBoleto,
  ACBrBancoCaixa, {ACBrBancoUnicredRS, ACBrBancoUnicredES,}
  typinfo, ACBrBoletoConversao,
  ACBrTests.Util, ACBrBoletoTest.Util;

type

  {$REGION - Classes UnicredES}

  { MontarCampoNossoNumero_UnicredES_Test}

  MontarCampoNossoNumero_UnicredES_Test = class(TTestCase)
  private
    Boleto : TACBrBoleto;
    Titulo : TACBrTitulo;
  protected
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure MontarCampoNossoNumero_UnicredES_Padrao;
    procedure MontarCampoNossoNumero_UnicredES_SemNossoNumero;
    procedure MontarCampoNossoNumero_UnicredES_Alfa;
    procedure MontarCampoNossoNumero_UnicredES_NossoNumeroInvalido;

  end;

  {$ENDREGION}

implementation

uses
  dateutils, ACBrUtil, forms;

  {$REGION - Implementação Classes Banco UnicredES }

{ MontarCampoNossoNumero_UnicredES_Test }

procedure MontarCampoNossoNumero_UnicredES_Test.SetUp;
begin
  Boleto := TACBrBoleto.Create(nil);
  Titulo := Boleto.CriarTituloNaLista;
end;

procedure MontarCampoNossoNumero_UnicredES_Test.TearDown;
begin
  FreeAndNil(Boleto);
end;

procedure MontarCampoNossoNumero_UnicredES_Test.MontarCampoNossoNumero_UnicredES_Padrao;
begin
  Boleto.Banco.TipoCobranca   := cobUnicredES;
  Titulo.NossoNumero          := '1234567890';

  CheckEquals('1234567890-0', Boleto.Banco.MontarCampoNossoNumero(Titulo));

end;

procedure MontarCampoNossoNumero_UnicredES_Test.MontarCampoNossoNumero_UnicredES_SemNossoNumero;
begin
  Boleto.Banco.TipoCobranca   := cobUnicredES;
  Titulo.NossoNumero          := '';

  CheckEquals('0000000000-0', Boleto.Banco.MontarCampoNossoNumero(Titulo));
end;

procedure MontarCampoNossoNumero_UnicredES_Test.MontarCampoNossoNumero_UnicredES_Alfa;
begin
  Boleto.Banco.TipoCobranca   := cobUnicredES;
  Titulo.NossoNumero          := '12435A552x';

  CheckEquals('0012435552-8', Boleto.Banco.MontarCampoNossoNumero(Titulo));
end;

procedure MontarCampoNossoNumero_UnicredES_Test.MontarCampoNossoNumero_UnicredES_NossoNumeroInvalido;
const
  MSG = 'Tamanho Máximo do Nosso Número é: 10';
begin
  try
    Boleto.Banco.TipoCobranca   := cobUnicredES;
    Titulo.NossoNumero          := '12423423422335A552x';

    CheckEquals('0012435552-9', Boleto.Banco.MontarCampoNossoNumero(Titulo));

  except on e: Exception do
    CheckEquals( MSG, e.Message );
  end;
end;

  {$ENDREGION}

initialization

  _RegisterTest('Boleto.Unicred.ACBrBoleto', MontarCampoNossoNumero_UnicredES_Test);


end.

