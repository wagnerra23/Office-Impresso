unit ACBrBoletoTest.Util;

{$I ACBr.inc}

interface

uses
  Classes, SysUtils, ACBrBoleto,
  ACBrBancoCaixa, {ACBrBancoUnicredRS, ACBrBancoUnicredES,}
  typinfo, ACBrBoletoConversao,
  ACBrTests.Util;

type
  TTipoArquivo = (Remessa, Retorno);

procedure CriaBoletoPadrao(NomeArquivo: String; Diretorio: TTipoArquivo;
                           CNAB: TACBrLayoutRemessa; Banco: TACBrTipoCobranca);
function GravaRetorno(NomeArquivo: String; Boleto: TACBrBoleto): String;
function CarregarArquivos(NomeArquivo: String; Diretorio: TTipoArquivo ): String;
function AlteraDataArquivo(Str, Valor: String; Posicao: Integer): String;

//function GeraRemessa_DosBoletosPendentes(ACodConta: Integer): Integer;

implementation

uses
  dateutils, ACBrUtil, forms;

  {Cria Objeto Boleto Padrão ccom campos para Geração de Remessa e Dados Cabeçalho para Retorno}
procedure CriaBoletoPadrao(NomeArquivo: String; Diretorio: TTipoArquivo;
                               CNAB: TACBrLayoutRemessa; Banco: TACBrTipoCobranca);
var
  I: Integer;
  Boleto: TACBrBoleto;
  Titulo: TACBrTitulo;
begin
  try
    Boleto := TACBrBoleto.Create(nil);

    if (Diretorio = Remessa) then
      Boleto.DirArqRemessa      := ExtractFilePath(Application.ExeName) + 'Testes\Boleto\Arquivo\Remessa\'
    else
      Boleto.DirArqRetorno      := ExtractFilePath(Application.ExeName) + 'Testes\Boleto\Arquivo\Retorno\';
    Boleto.NomeArqRemessa       := NomeArquivo;
    Boleto.NomeArqRetorno       := NomeArquivo;
    Boleto.LayoutRemessa        := CNAB;
    Boleto.Banco.TipoCobranca   := banco;
    Boleto.Cedente.Agencia      := '2145';
    Boleto.Cedente.AgenciaDigito:= '1';
    Boleto.Cedente.Conta        := '545144';
    Boleto.Cedente.ContaDigito  := '2';
    Boleto.Cedente.Convenio     := '2354187';
    Boleto.Cedente.Bairro       := 'Centro';
    Boleto.Cedente.CEP          := '18460000';
    Boleto.Cedente.Cidade       := 'Tatuí';
    Boleto.Cedente.CNPJCPF      := '18760540000139';
    Boleto.Cedente.Logradouro   := 'Rua São Pedro, 124';
    Boleto.Cedente.Nome         := 'Nome do Cedente Completo';
    Boleto.Cedente.NumeroRes    := '524';
    Boleto.Cedente.UF           := 'SP';
    Boleto.Cedente.ResponEmissao:= tbCliEmite;
    Boleto.Cedente.Modalidade   := '019';
    Boleto.Cedente.TipoInscricao:= pJuridica;
    Boleto.Cedente.TipoCarteira := tctSimples;
    Boleto.Cedente.TipoDocumento:= Escritural;
    Boleto.Cedente.CaracTitulo  := tcSimples;
    Boleto.LeCedenteRetorno     := True;

    //Para Retorno Lê o arquivo modelo e Grava Resultado para comparar
    if (Diretorio = Retorno) then
    begin
      Boleto.LerRetorno();
      GravaRetorno('Result' + NomeArquivo, Boleto);

    end
    else
    begin //Para Remessa Gera Arquivo Remessa para comparar com arquivo modelo
      for I := 1 to 3 do
      begin
        Titulo:= Boleto.CriarTituloNaLista;
        with Titulo do
        begin
           LocalPagamento    := 'Pagar preferêncialmente nas agências do '+ Boleto.Banco.Nome;
           Vencimento        := IncMonth(EncodeDate(2017,07,10),I);
           DataDocumento     := EncodeDate(2017,07,10);
           if ( Banco = cobCaixaEconomica ) then
             Carteira        := 'RG'
           else
             Carteira        := '15';
           NumeroDocumento   := PadRight(IntToStr(I),6,'0');
           EspecieDoc        := 'DM';
           Aceite            := atSim;
           DataProcessamento := EncodeDate(2017,07,20);
           NossoNumero       := PadLeft( IntToStr(I), 7, '0');
           ValorDocumento    := 121.15 * (I+0.5);
           Sacado.NomeSacado := 'Jose da Silva ' + IntToStr(I) ;
           Sacado.CNPJCPF    := '1234567890' + IntToStr(I);
           Sacado.Logradouro := 'Rua da Esperança';
           Sacado.Numero     := '100';
           Sacado.Bairro     := 'Centro';
           Sacado.Cidade     := 'Tatui';
           Sacado.UF         := 'SP';
           Sacado.CEP        := '18270000';
           ValorAbatimento   := 1.10;
           DataAbatimento    := Vencimento-5;
           ValorMoraJuros    := 0.20;
           ValorDesconto     := 2.30;
           DataMoraJuros     := Vencimento+5;
           DataDesconto      := Vencimento-1;
           DataProtesto      := Vencimento+10;
           DataMulta         := Vencimento+1;
           PercentualMulta   := 5;
           Mensagem.Text     := 'Teste Mensagem 1'+ sLineBreak +'Teste Mensagem 2'+sLineBreak+'Teste Mensagem 1' ;
           OcorrenciaOriginal.Tipo  := toRemessaRegistrar;
           Instrucao1        := 'teste de instrução 01';
           if Boleto.Banco.TipoCobranca = cobSantander then
             Instrucao2        := '2'
           else
             Instrucao2        := 'teste de instrução 02';
           sacado.SacadoAvalista.NomeAvalista:= 'xxxxxxxx';
           sacado.SacadoAvalista.CNPJCPF:='99999999999';
           sacado.SacadoAvalista.Logradouro:='xxxxxxx xxxxxxxxx xxxxxxxxxx';
        end;
      end;
      Boleto.GerarRemessa(1);

    end;

  finally
    FreeAndNil(Boleto);
  end;

end;

function GravaRetorno(NomeArquivo: String; Boleto: TACBrBoleto): String;
var
  SLRetorno: TStringList;
  NomeArq:   String;
  I, J: Integer;
begin
  try
    result := '';
    with Boleto do
    begin
      if (ListadeBoletos.Count < 1) then
        raise Exception.Create(ACBrStr('Lista de Boletos está vazia'));

      NomeArq := DirArqRetorno + NomeArquivo;
      SLRetorno := TStringList.Create;

      with SLRetorno do
        begin
        add(Cedente.Nome);
        add(Cedente.CNPJCPF);
        add(Cedente.CodigoCedente);
        add(Cedente.Modalidade);
        add(Cedente.CodigoTransmissao);
        add(Cedente.Convenio);
        add(inttostr(Banco.Numero));
        add(GetEnumName( TypeInfo(TACBrTipoCobranca), Integer(Banco.TipoCobranca) ));
        add(Cedente.Conta);
        add(Cedente.ContaDigito);
        add(Cedente.Agencia);
        add(Cedente.AgenciaDigito);
        add(GetEnumName( TypeInfo(TACBrPessoaCedente), Integer(Cedente.TipoInscricao) ));
        for I:= 0 to ListadeBoletos.Count - 1 do
        begin
          add(ListadeBoletos[I].Sacado.NomeSacado);
          add(ListadeBoletos[I].Sacado.CNPJCPF);
          add(DateToStr(ListadeBoletos[I].Vencimento));
          add(DateToStr(ListadeBoletos[I].DataDocumento));
          add(ListadeBoletos[I].NumeroDocumento);
          add(ListadeBoletos[I].NossoNumero);
          add(ListadeBoletos[I].Carteira);
          add(ListadeBoletos[I].CodigoLiquidacao);
          add(ListadeBoletos[I].CodigoLiquidacaoDescricao);
          add(inttostr(ListadeBoletos[I].Liquidacao.Banco));
          add(ListadeBoletos[I].Liquidacao.Agencia);
          add(ListadeBoletos[I].Liquidacao.Origem);
          add(ListadeBoletos[I].Liquidacao.FormaPagto);
          add(FloatToStr(ListadeBoletos[I].ValorDocumento));
          add(DateToStr(ListadeBoletos[I].DataOcorrencia));
          add(DateToStr(ListadeBoletos[I].DataCredito));
          add(DateToStr(ListadeBoletos[I].DataBaixa));
          add(FloatToStr(ListadeBoletos[I].ValorDespesaCobranca));
          add(FloatToStr(ListadeBoletos[I].ValorAbatimento));
          add(FloatToStr(ListadeBoletos[I].ValorDesconto));
          add(FloatToStr(ListadeBoletos[I].ValorMoraJuros));
          add(FloatToStr(ListadeBoletos[I].ValorIOF));
          add(FloatToStr(ListadeBoletos[I].ValorOutrasDespesas));
          add(FloatToStr(ListadeBoletos[I].ValorOutrosCreditos));
          add(FloatToStr(ListadeBoletos[I].ValorRecebido));
          add(FloatToStr(ListadeBoletos[I].ValorPago));
          add(ListadeBoletos[I].SeuNumero);
          add(GetEnumName( TypeInfo(TACBrTipoOcorrencia),
                       Integer(ListadeBoletos[I].OcorrenciaOriginal.Tipo)));
          add(ListadeBoletos[I].OcorrenciaOriginal.Descricao);

          for J:= 0 to ListadeBoletos[I].DescricaoMotivoRejeicaoComando.Count-1 do
          begin
             add(ListadeBoletos[I].MotivoRejeicaoComando[J]);
             add(ListadeBoletos[I].DescricaoMotivoRejeicaoComando[J]);
          end;

        end;
      end;

      SLRetorno.SaveToFile( NomeArq );
      Result:= NomeArquivo;
    end;

  finally
    FreeAndNil(SLRetorno);
  end;
end;

 {Carrega Arquivos Conforme Parametros do Diretório e Nome do Arquivo}
function CarregarArquivos(NomeArquivo: String;
  Diretorio: TTipoArquivo):String;
var
  tpArq : String;
begin
  Result := '';
  case Diretorio of
    Remessa : tpArq := 'Testes\Boleto\Arquivo\Remessa\';
    Retorno : tpArq := 'Testes\Boleto\Arquivo\Retorno\';
  end;

  if not FilesExists( ExtractFilePath(Application.ExeName) + tpArq + NomeArquivo ) then
    Raise Exception.Create( ACBrStr('Arquivo para Validação não Encontrado em: ' +
                          ExtractFilePath(Application.ExeName) + tpArq + NomeArquivo   ) )
  else
   Result := ExtractFilePath(Application.ExeName) + tpArq + NomeArquivo;
end;

function AlteraDataArquivo(Str, Valor: String; Posicao: Integer): String;
begin
  Delete(str, posicao, Length(Valor) );
  Insert(Valor, Str, Posicao);
  Result:= Str;
end;

//function GeraRemessa_DosBoletosPendentes(ACodConta: Integer): Integer;
//begin
//  try
//    Result := RoutesBoletoArquivo_VerifcaPendenciaEnvio(ACodConta);
//  except
//    on E:Exception do
//      Raise Exception.Create('Erro na geração da remessa '+ E.Message);
//  end;
//end;

end.

