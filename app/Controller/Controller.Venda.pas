unit Controller.Venda;

interface

uses Horse, Horse.Jhonson, System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, System.StrUtils, System.SysUtils,
  ACBrBoleto, ACBrBoletoRetorno, Math, System.Variants, DateUtils, VCL.Controls;


procedure ControllerVenda_AtualizaSituacaoFinanceira(const ACodPedido, ACodFinanceiroAgrupador: Variant);
procedure ControllerVenda_ValidaNFe(var AError: Boolean; var AErrorText: TCaption; ACadastro: TFDQuery);
procedure ControllerVenda_Configuracao_Acoes(Sender: TObject);
procedure ControllerVenda_KPIVendaFaturada(ADataSet :TDataset);
procedure ControllerVenda_CriaVendaParcialPrincipal(ATransaFD :TFDTransaction; ACadastro, AVenda_Produto :TFDQuery; AFatura: String);

implementation

Uses UnitFuncoes, SQL.Boleto, Utils.Boleto, Utils.Boleto.Retorno, Classes.WR, Services.Boleto, ACBrBoletoConversao,
  Services.Venda, SQL.Venda, Controller.Interno.Venda, Tag.WREventosCadastro, Tag.Form, wrPreencheLookup, pcnConversaoNFe, Base_Venda_Modal, Frame_CadVenda_Venda, vcl.forms;

//Funções de entrada
procedure ControllerVenda_AtualizaSituacaoFinanceira(const ACodPedido, ACodFinanceiroAgrupador: Variant);
var
  QuerX, AVenda: TFDQuery;
  AStrCodPedido: string;
  AIntCodAgrupador: Integer;
begin
  {Rotina que busca as vendas para atualizar a situação financeira. Os parâmetros são facultativos, pode ser utilizado
   apenas um ou outro, ou ambos...
   O código do grupo financeiro é usado para pegar o código do pedido a partir do agrupador, pois ao dar baixa em uma
   parcela agrupada no financeiro, o mesmo não possui o código do pedido, o CODPEDIDO lá é '0', então é usado o
   agrupador para buscar quais pedidos fazem parte desse agrupamento}
  AStrCodPedido    := VarToStrDef(ACodPedido, '');
  AIntCodAgrupador := VarToIntDef(ACodFinanceiroAgrupador, 0);

  //Se ja tem um codpedido, atualiza ele
  if not MatchStr(AStrCodPedido, ['', '0']) then
    ServicesVenda_SituacaoFinanceira(AStrCodPedido);

  //Se tem um agrupador, busca as vendas desse agrupador e atualiza uma a uma
  if AIntCodAgrupador <> 0 then
  begin
    QuerX := GeraFDQuery;
    try
      QuerX.SQL.Text := 'select distinct CODPEDIDO ' +
                        'from FINANCEIRO ' +
                        'where (AGRUPADOR = :Cod)';
      QuerX.Params[0].AsInteger := AIntCodAgrupador;
      QuerX.Open;
      while not QuerX.Eof do
      begin
        //Ignora '', '0' e a venda que já foi atualizada acima
        if not MatchStr(QuerX.Fields[0].AsString, ['', '0', AStrCodPedido]) then
          ServicesVenda_SituacaoFinanceira(QuerX.Fields[0].AsString);
        QuerX.Next;
      end;
    finally
      QuerX.Free;
    end;
  end;
end;

procedure ControllerVenda_KPIVendaFaturada(ADataSet :TDataset);
//var
//  QuerX :TFDQuery;
begin
//  if (ADataSet.FieldByName('ATIVO').AsString = 'S') and (ADataSet.FieldByName('IS_VENDA').AsString = 'S') and not(ADataSet.FieldByName('DT_FATURAMENTO').IsNull) then
//  begin
//    QuerX := GeraFDQuery;
//    try
//      QuerX.SQL.Text := 'select * from WR_CLASSIFICACAO';
//      QuerX.Open;
//      QuerX.Insert;
//      QuerX.FieldByName('CODIGO').AsInteger := 1;
//      QuerX.FieldByName('CHAVE_PK1').AsInteger := ACodigoInt;
//      QuerX.FieldByName('CHAVE_PK2').AsString := ACodigoStr;
//      QuerX.FieldByName('CHAVE_PK3').AsString := ACodigoStr2;
//      QuerX.FieldByName('TABELA').AsString := ATabela;
//      QuerX.FieldByName('TAG').AsString  := ATag;
//      QuerX.Post;
//      QuerX.ExecSQL;
//    finally
//
//    end;
//  end else
//  delete
//    ADataSet.FieldByName('VENDA_FINALIZADO').AsString := 'S';
//
//  if (ADataSet.FieldByName('ATIVO').AsString = 'S') and (ADataSet.FieldByName('IS_VENDA').AsString = 'S') and (ADataSet.FieldByName('DT_FATURAMENTO').IsNull) then
//    ADataSet.FieldByName('VENDA_FINALIZADO').AsString := 'N';
//
//  if (ADataSet.FieldByName('ATIVO').AsString = 'N') and (ADataSet.FieldByName('IS_VENDA').AsString = 'S') and (ADataSet.FieldByName('DT_FATURAMENTO').IsNull) then
//    ADataSet.FieldByName('VENDA_FINALIZADO').AsString := 'E';
//
//  if (ADataSet.FieldByName('ATIVO').AsString = 'S') and (ADataSet.FieldByName('IS_ORCAMENTO').AsString = 'S') and not(ADataSet.FieldByName('DT_ORCAMENTO_FINALIZADO').IsNull) then
//    ADataSet.FieldByName('ORCAMENTO_FINALIZADO').AsString := 'S'
//  else
//  if (ADataSet.FieldByName('ATIVO').AsString = 'S') and (ADataSet.FieldByName('IS_ORCAMENTO').AsString = 'S') and (ADataSet.FieldByName('DT_ORCAMENTO_FINALIZADO').IsNull) then
//    ADataSet.FieldByName('ORCAMENTO_FINALIZADO').AsString := 'N';
//  //////////////////////////PEDIDO\\\\\\\\\\\\\\\\\\\\\\
//  if (ADataSet.FieldByName('ATIVO').AsString = 'S') and (ADataSet.FieldByName('IS_PEDIDO').AsString = 'S') and not(ADataSet.FieldByName('DT_ENVIO_FATURAMENTO').IsNull) then
//    ADataSet.FieldByName('PEDIDO_FINALIZADO').AsString := 'S'
//  else
//  if (ADataSet.FieldByName('ATIVO').AsString = 'S') and (ADataSet.FieldByName('IS_PEDIDO').AsString = 'S') and (ADataSet.FieldByName('DT_ENVIO_FATURAMENTO').IsNull) then
//    ADataSet.FieldByName('PEDIDO_FINALIZADO').AsString := 'N';
end;

procedure ControllerVenda_ValidaNFe(var AError: Boolean; var AErrorText: TCaption; ACadastro: TFDQuery);
begin
  try
    ValidaRegra_DataHoraEmissaoNFe(ACadastro.FieldByName('NF_DT_EMISSAO').AsDateTime);
  except on E:EWRException do begin AError := True; AErrorText := AErrorText + '§' + E.Message; end;
  end;

  try
    ValidaRegra_DataHoraEntradaSaidaNFe(ACadastro.FieldByName('NF_DT_SAIDAENTRADA').AsDateTime);
  except on E:EWRException do begin AError := True; AErrorText := AErrorText + '§' + E.Message; end;
  end;

  try
    ValidaRegra_DataHoraEntradaSaidaMenorQueEmissaoNFe(ACadastro.FieldByName('NF_DT_SAIDAENTRADA').AsDateTime,
                                                       ACadastro.FieldByName('NF_DT_EMISSAO').AsDateTime);
  except on E:EWRException do begin AError := True; AErrorText := AErrorText + '§' + E.Message; end;
  end;

  try
    ValidaRegra_TelefoneNFe(ACadastro.FieldByName('TELEFONE').AsString);
  except on E:EWRException do begin AError := True; AErrorText := AErrorText + '§' + E.Message; end;
  end;

  try
    ValidaRegra_FinalidadeNFCe(ACadastro.FieldByName('NF_FINALIDADE').AsInteger);
  except on E:EWRException do begin AError := True; AErrorText := AErrorText + '§' + E.Message; end;
  end;

  try
    ValidaRegra_EntradaSaidaNFCe(ACadastro.FieldByName('NF_SAIDA_ENTRADA').AsString);
  except on E:EWRException do begin AError := True; AErrorText := AErrorText + '§' + E.Message; end;
  end;

  try
    ValidaRegra_ConsumidorFinalNFCe(ACadastro.FieldByName('CONSUMIDOR_FINAL').AsString);
  except on E:EWRException do begin AError := True; AErrorText := AErrorText + '§' + E.Message; end;
  end;
end;


procedure ControllerVenda_Configuracao_Acoes(Sender: TObject);
begin
  with AWREventosCadastro[Tag_Venda] do
  begin
    AddImpedirDuplicidadeFrame('VENDA', 'PEDIDO_COMPRA', 'edtPedidoCliente',
      ' select first 1 CODIGO from VENDA ' +
      ' where (PESSOA_RESPONSAVEL_CODIGO = :CodCliente) ' +
      '     and (PEDIDO_COMPRA = :PedidoCliente) ' +
      '     and (STATUS like ''ATIVO%'')' + '     and (CODIGO <> :CodVenda) '
      + '     and (CODVENDA IS NULL)');
    AddImpedirDuplicidadeFrame('VENDA', 'PEDIDO_REP', 'edtPedidoRepresentante',
      ' select first 1 CODIGO from VENDA ' +
      ' where (PESSOA_RESPONSAVEL_CODIGO = :CodCliente) ' +
      '     and (PEDIDO_COMPRA = :PedidoCliente) ' +
      '     and (STATUS like ''ATIVO%'')' + '     and (CODIGO <> :CodVenda) '
      + '     and (CODVENDA IS NULL)');
    // Isso ta no frame
//    AddValorInicialFrame(TAG, 'VENDA', 'chkNF_Observacao_Padrao', 'S');  PRECISA TER ESSA ESTRUTURA
    AddValorInicialFrame('VENDA', 'NF_OBSERVACAO_PADRAO',
      'chkNF_Observacao_Padrao', 'S');
    AddValorInicialFrame('VENDA', 'NF_NUMERO', 'edtNF_Numero', '1');
    AddValorInicialFrame('VENDA', 'NF_FRETEPORCONTA', 'cbxNF_FretePorConta', modFreteToStr(mfContaEmitente));

    AddValorInicialFrame('VENDA', 'SERVICO_NOTA_PADRAO', 'chkServico_Nota_Padrao', 'S');

    with AddAcoesTabela('CONFIRMAR', '',
      'Regras necessárias para poder Confimar.') do
    begin
      AddObrigatorioFrame('VENDA', 'VENDA_TIPO', 'cbxTipo_Venda', 'Informe o Tipo de Venda que esta sendo realizada.');
      AddObrigatorioFrame('VENDA', 'ATIVO', 'cbxAtivo', 'Informe se o Cadastro esta ATIVO ou DESATIVADO.');
//    AddObrigatorioInativo('VENDA','VENDA_ESTAGIO',cbxEstagio, 'Informe se é Obrigatório o Estagio ao confirmar a venda.');
//    AddObrigatorioInativo('VENDA','VENDA_SITUACAO',cbxSituacao, 'Informe se é Obrigatório a Situação ao confirmar a venda.');

    end;

    with AddAcoesTabela('IMPRIMIR', '',
      'Regras necessárias para poder Imprimir.') do
    begin
      // Regras de Permissão de Impressão
      AddObrigatorioFrame('VENDA', 'RAZAOSOCIAL', 'edtResponsavelÎPessoasÎRAZAOSOCIAL', 'Informar a Descrição para imprimir');
      AddObrigatorioFrame('VENDA', 'TOTAL', 'GrupoRecebimento', 'Valor da Venda é DIFERENTE da soma das parcelas.');
    end;

    with AddAcoesTabela('EXCLUIR', '', 'Dependencias para poder excluir Excluir.') do
    // Deverá checar as referencias dessa Tabela dentro de Sistema
    begin // Mostrar a Quantidade e abrir o Destino, Filtrando a tela pea Quantidade de registros
      AddDependencia('FINANCEIRO', 'CODPEDIDO');
      AddDependencia('PESSOAS', 'CODIGO');
      AddDependencia('FINANCEIRO', 'CODPEDIDO');
    end;

    with AddAcoesTabela('NFE', '',
      'Regras necessárias para poder Emitir NFe') do
    begin
      AddObrigatorioValidaComponenteFrame('VENDA', 'NF_DT_EMISSAO', 'edtNF_DT_EMISSAO',
        '228-Rejeição: Data de Emissão muito atrasada.');
      AddObrigatorioValidaComponenteFrame('VENDA', 'NF_DT_SAIDAENTRADA', 'edtNF_DT_SaidaEntrada',
        '228-Rejeição: Data de Emissão muito atrasada.');
      AddObrigatorioValidaComponenteFrame('VENDA', 'PDESC', 'edtPDesc',
        '895-Rejeição: Valor do Desconto da Fatura maior que Valor Original da Fatura');

      AddObrigatorioFrame('VENDA', 'RESPONSAVEL_CNPJCPF',
        'edtResponsavelPessoasCNPJCPF',
        'O CNPJ ou CPF não pode estar vazio.');
      AddObrigatorioFrame('VENDA', 'RAZAOSOCIAL', 'edtResponsavelÎPessoasÎRAZAOSOCIAL',
        'A Razão Social do Destinatário não pode ficar vazia.');
      AddObrigatorioFrame('VENDA', 'RESPONSAVEL_CEP', 'edtResponsavelPessoasCEP',
        'O CEP do Destinatário não pode ficar vazio.');
      AddObrigatorioFrame('VENDA', 'RESPONSAVEL_ENDERECO',
        'edtResponsavelPessoasENDERECO',
        'A Endereço do Destinatário não pode ficar vazia.');
      AddObrigatorioFrame('VENDA', 'RESPONSAVEL_NUMERO',
        'edtResponsavelPessoasNUMERO',
        'O Número do Destinatário não pode ficar vazio.');
      AddObrigatorioFrame('VENDA', 'RESPONSAVEL_BAIRRO',
        'edtResponsavelPessoasBAIRRO',
        'O Bairro do Destinatário não pode ficar vazio.');
      AddObrigatorioFrame('VENDA', 'RESPONSAVEL_CODCIDADE',
        'edtResponsavelÎCidades',
        'A Cidade do Destinatário não pode ficar vazio.');
      AddObrigatorioFrame('VENDA', 'RESPONSAVEL_CIDADE',
        'edtResponsavelÎCidadesÎDESCRICAO',
        'A Cidade do Destinatário não pode ficar vazia.');
      AddObrigatorioValidaComponenteFrame('VENDA', 'RESPONSAVEL_UF',
        'edtResponsavelÎCidadesÎUF',
        'A UF do Destinatário não pode ficar vazia.');
      AddObrigatorioValidaComponenteFrame('VENDA', 'TELEFONE',
        'edtResponsavelÎPessoasÎFONE1',
        'O telefone da Destinatário não pode estar vazio. ');
      AddObrigatorioValidaComponenteFrame('VENDA', 'RESPONSAVEL_INSCIDENT',
        'edtResponsavelPessoasINSCIDENT',
        'A Inscrição Estadual ou Identidade do Destinatário não pode ser vazio.');
      AddObrigatorioValidaComponenteFrame('VENDA', 'NFE_CALCULA_DIFAL',
        'chkNFe_Calcula_Difal',
        'Marcar o campo Calcula DIFAL, recalcular impostos e emitir a NFe novamente.');
      AddObrigatorioValidaComponenteFrame('VENDA_FINANCEIRO', 'CODIGO',
        'GridFinanceiro',
        'Obrigatório excluir parcelas do Financeiro para NFe Devolução ou Estorno.');
      AddObrigatorioValidaComponenteFrame('VENDA', 'NF_NREF', 'edtNF_NREF',
        'Obrigatório referenciar Chave de Acesso da NFe original para emissão de Devolução ou Estorno.');

        AddObrigatorioValidaComponenteFrame('VENDA_PRODUTO', 'CODNF_CFOP',
          'EdtCFOPÎNF_CFOP', 'CFOP Incorreto');
        AddObrigatorioValidaComponenteFrame('VENDA_PRODUTO', 'CODNF_CST',
          'cxDBButtonEdit1',
          'CFOP CST/CSOSN inválido: Sua empresa é do Regime Simples Nacional, deve ter 3 dígitos.');
        AddObrigatorioValidaComponenteFrame('VENDA_PRODUTO', 'CODNF_NCM',
          'EdtNCMÎNF_NCM', 'NCM Obrigatório.');
        AddObrigatorioValidaComponenteFrame('VENDA_PRODUTO', 'NF_VICMS',
          'edtResultadoICMSValor',
          'Valor de Imposto Inválido para emitente do Simples Nacional.');
        AddObrigatorioValidaComponenteFrame('VENDA_PRODUTO', 'DESCRICAO',
          'cxDBTextEdit10', 'Descrição do Produto é Obrigatória.');

      AddAcoesTabela('NFE', '',
        'Regras necessárias para poder Emitir NFe.', 'N');
      AddObrigatorioValidaComponenteFrame('VENDA', 'NF_TRANSP_QVOL',
        'edtNF_Transp_QVol', 'Obrigatório Quantidade de Volumes.');
    end;

    with AddAcoesTabela('NFSE', '(EMITE_NFSE = ''S'')', 'Regras necessárias para poder Emitir NFSe.') do //
    begin

      AddObrigatorioFrame('VENDA', 'RESPONSAVEL_ENDERECO', 'edtResponsavelPessoasENDERECO', 'Endereço Obrigatório.');

//    AddObrigatorioComponente(Tag_Validacao, Tag_Componente);     Seria isso aqui a estrutura
//    AddObrigatorioCampo(Tag_Validacao, Tag_Campo);

      AddObrigatorioFrame('VENDA', 'RESPONSAVEL_CNPJCPF',
        'edtResponsavelPessoasCNPJCPF',
        'O CNPJ ou CPF não pode estar vazio.');
      AddObrigatorioFrame('VENDA', 'RESPONSAVEL_CEP',
        'edtResponsavelPessoasCEP',
        'A CEP do Destinatário não pode ficar vazio.');
      AddObrigatorioFrame('VENDA', 'RESPONSAVEL_ENDERECO',
        'edtResponsavelPessoasENDERECO',
        'A Endereço do Destinatário não pode ficar vazio.');
      AddObrigatorioFrame('VENDA', 'RESPONSAVEL_NUMERO',
        'edtResponsavelPessoasNUMERO',
        'A Número do Destinatário não pode ficar vazio.');
      AddObrigatorioFrame('VENDA', 'RESPONSAVEL_BAIRRO',
        'edtResponsavelPessoasBAIRRO',
        'A Bairro do Destinatário não pode ficar vazio.');
      AddObrigatorioFrame('VENDA', 'RESPONSAVEL_CODCIDADE',
        'edtResponsavelÎCidades',
        'A Cidade do Destinatário não pode ficar vazio.');
      AddObrigatorioFrame('VENDA', 'RESPONSAVEL_CIDADE',
        'edtResponsavelÎCidadesÎDESCRICAO',
        'A Cidade do Destinatário não pode ficar vazio.');
      AddObrigatorioValidaComponenteFrame('VENDA', 'RESPONSAVEL_UF',
        'edtResponsavelÎCidadesÎUF',
        'A UF do Destinatário não pode ficar vazia.');
      AddObrigatorioValidaComponenteFrame('VENDA', 'TELEFONE',
        'edtResponsavelÎPessoasÎFONE1',
        'O telefone da Destinatário não pode estar vazio. ');
      AddObrigatorioValidaComponenteFrame('VENDA',
        'RESPONSAVEL_INSC_MUNICIPAL', 'edtResponsavelPessoasINSC_MUNICIPAL',
        'Inscrição Municipal obrigatório para NFSe com ISS Retido.');
    end;
    with AddAcoesTabela('NFCe', '(EMITE_NFCE = ''S'') ',
      'Regras necessárias para poder Emitir NFCe.') do
    begin
      AddObrigatorioValidaComponenteFrame('VENDA', 'RAZAOSOCIAL',
        'edtResponsavelÎPessoasÎRAZAOSOCIAL',
        'A Razão Social do Destinatário não pode ficar vazia.');
      AddObrigatorioValidaComponenteFrame('VENDA', 'NF_FINALIDADE', 'cbxNF_Finalidade', 'Obrigatório Finalidade Normal para NFC-e.');
      AddObrigatorioValidaComponenteFrame('VENDA', 'NF_SAIDA_ENTRADA',
        'cbxNF_Saida_Entrada', 'Obrigatório operação de Saída para NFC-e.');
      AddObrigatorioValidaComponenteFrame('VENDA', 'CONSUMIDOR_FINAL',
        'edtConsumidor_Final',
        'A UF do Destinatário deve ser igual a UF do Emitente.');
      AddObrigatorioValidaComponenteFrame('VENDA_FINANCEIRO', 'CODIGO', 'btnParcelas', 'Obrigatório gerar financeiro para emissão de NFC-e');
    end; // 718-Rejeição: NFC-e não deve informar IE de Substituto Tributário
    with AddAcoesTabela('PARCELAS', '',
      'Regras necessárias para poder Gerar Parcelas.') do
    begin
      AddObrigatorioValidaComponenteFrame('VENDA', 'RAZAOSOCIAL',
        'edtResponsavelÎPessoasÎRAZAOSOCIAL',
        'Para gerar parcelas, o nome do Responsável não pode estar vazio.');
    end;

//  with AddForm(TFrame_Venda_Mestre) do
//  begin
    AddChavePrimariaFrame('VENDA', 'CODIGO', 'edtCodigo');
    AddGeneratorMultEmpresaFrame('edtCodigo');
    AddValorInicialFrame('VENDA', 'ATIVO',                           'cbxAtivo',                    'S');
    AddValorInicialFrame('VENDA', 'INTERVALO_MENSAL',                'chkIntervalo_Mensal',         'N');
    AddValorInicialFrame('VENDA', 'PESSOA_RESPONSAVEL_TIPO',         'edtResponsavelÎPessoas',      'CLI');
    AddValorInicialFrame('VENDA', 'STATUS',                          'edtStatus',                   'ATIVO');
    AddValorInicialFrame('VENDA', 'DT_EMISSAO',                      'edtDT_Emissao',               '@DATA');
    AddValorInicialFrame('VENDA', 'PROJETO_DT_INICIO',               'edtPROJETO_DT_INICIO',        '@DATA');
    AddValorInicialFrame('VENDA', 'DT_COMPETENCIA',                  'edtDtCompetencia',            '@DATA');
    AddValorInicialFrame('VENDA', 'OPERACAO',                        'edtOperacao',                 'EM VENDA');


    AddImpedirDuplicidadeFrame('VENDA', 'PEDIDO_COMPRA',    'edtPedidoCliente'     , ' select first 1 CODIGO from VENDA ' +
                                                                 ' and (CODVENDA IS NULL)');
    AddImpedirDuplicidadeFrame('VENDA', 'PEDIDO_REP',    'edtPedidoRepresentante'  , ' select first 1 CODIGO from VENDA ' +
                                                                              ' where (PESSOA_RESPONSAVEL_CODIGO = :CodCliente) ' +
                                                                              '     and (PEDIDO_COMPRA = :PedidoCliente) ' +
                                                                              '     and (STATUS like ''ATIVO%'')' +
                                                                              '     and (CODIGO <> :CodVenda) ' +
                                                                              '     and (CODVENDA IS NULL)');
    AddValorInicialFrame('VENDA', 'PODE_RATEAR_FRETE_DESC_OUTRO',    '',           'S');

//    with TFrameVendaPessoa do
//    begin
      AddValorInicialFrame('VENDA', 'PODE_ATUALIZAR_CADASTRO',         'chkPodeAtualizarCadastro',           'S');
//    end;
    with AddAcoesTabela('CONFIRMAR','', 'Regras necessárias para poder Confimar.', 'S') do
    begin
      AddObrigatorioValidaComponenteFrame('VENDA', 'RAZAOSOCIAL', 'edtResponsavelÎPessoasÎRAZAOSOCIAL', 'Informar a Descrição do Destinatário(Cliente)');
      AddObrigatorioFrame('VENDA', 'VENDA_TIPO',  'cbxTipo_Venda',                      'Informe o Tipo de Venda que esta sendo realizada.');  // Vazio sempre executa
      AddObrigatorioFrame('VENDA', 'ATIVO',       'cbxAtivo',                           'Informe se o Cadastro esta ATIVO ou DESATIVADO.');
    end;


    with AddAcoesTabela('EXCLUIR','', 'Dependencias para poder excluir Excluir.') do   // Deverá checar as referencias dessa Tabela dentro de Sistema
    begin  // Mostrar a Quantidade e abrir o Destino, Filtrando a tela pea Quantidade de registros
       AddDependencia('FINANCEIRO', 'CODPEDIDO');    // Lista de Tabelas que usam a informação
       AddDependencia('PESSOAS', 'CODIGO');          // Aqui ainda Vai ter que melhorar e Muito
       AddDependencia('FINANCEIRO', 'CODPEDIDO');
    end;

    with AddAcoesTabela('PARCELAS','', 'Regras necessárias para poder Gerar Parcelas.') do
    begin
      AddObrigatorioValidaComponenteFrame('VENDA', 'RAZAOSOCIAL', 'edtResponsavelÎPessoasÎRAZAOSOCIAL', 'Para gerar parcelas, o nome do Responsável não pode estar vazio.');
    end;

//  with AddForm(TFrmProduto_Wizard) do    // Tem que Ser as mesmas regras que o Pai,
//  begin                               // Criar um Função que busca a rotina no Pai e colo no filho
    with AddAcoesTabela('ADDPRODUTO','', '') do
    begin
//      AddAcoesDependente(edtProdutoDescricao, edtProdutoDescricao);
//      AddAcoesDependenteTreeList(edtProdutoDescricao, edtProdutoDescricao);
    end;
  end;
end;


procedure ControllerVenda_CriaVendaParcialPrincipal(ATransaFD :TFDTransaction; ACadastro, AVenda_Produto :TFDQuery; AFatura: String);
var
  AFrmVendaNovo, AFrmVendaBackup: TFrmVenda_Modal;
  AFrmVendaTemporaria : TFrame_Venda_Venda;
  AListaProduto: TArray<Integer>;
  wr_memoria_venda_produto  : TFDMemTable;
  CodVendaOriginal, CodVendaAtual, CodVendaNovo: String;
  ADTEmissao:  TDateTime;
  AFatorMultiplicador: Integer;
  AQuant: Double;
  QuerX: TFDQuery;
begin
  ////////////////////////////////PROCEDURE NOVA\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
  QuerX := GeraFDQuery(ATransaFD);
  wr_memoria_venda_produto:= TFDMemTable.Create(nil);

  if wr_memoria_venda_produto.Active then
    wr_memoria_venda_produto.Close;

  wr_memoria_venda_produto.Data := AVenda_Produto.Data;

  try
    CodVendaAtual := ACadastro.FieldByName('CODIGO').AsString;
    CodVendaOriginal := ACadastro.FieldByName('CODVENDA_VINCULADA').AsString;
    AFrmVendaTemporaria := TFrame_Venda_Venda.Create(Application);
    AFrmVendaTemporaria.CloseOpen_AbrirRegistro(ACadastro.FieldByName('CODVENDA_PRINCIPAL').AsString);

    with TFrame_Venda_Venda(AFrmVendaTemporaria) do
    begin
      ADTEmissao := TFrame_Venda_Venda(AFrmVendaTemporaria).Cadastro.FieldByName('DT_EMISSAO').AsDateTime;
      TFrame_Venda_Venda(AFrmVendaTemporaria).Cadastro.transaction := ATransaFD;
      TFrame_Venda_Venda(AFrmVendaTemporaria).Cadastro.Edit;
      TFrame_Venda_Venda(AFrmVendaTemporaria).Cadastro.FieldByName('STATUS').AsString := 'INATIVO PRINCIPAL';
      TFrame_Venda_Venda(AFrmVendaTemporaria).Cadastro.FieldByName('ATIVO').AsString := 'N';
      TFrame_Venda_Venda(AFrmVendaTemporaria).Cadastro.Post;
    end;


//    AFrmVendaBackup := TFrmVenda_Base.FrameDuplicaVendaBaseSilent(40, AFrmVendaTemporaria.Cadastro, AFrmVendaTemporaria.Venda_Financeiro, AFrmVendaTemporaria.Venda_Produto, AFrmVendaTemporaria.GridProdutoTree, True);

    AFrmVendaNovo := TFrmVenda_Modal.FrameDuplicaApenasVendaBaseSilent(40, AFrmVendaTemporaria.Cadastro, AFrmVendaTemporaria.Venda_Financeiro, AFrmVendaTemporaria.Venda_Produto, AFrmVendaTemporaria.GridProdutoTree, True);

    TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).FrameCopiarVendaComProduto(40, AFrmVendaTemporaria.Venda_Produto, AFrmVendaTemporaria.GridProdutoTree, True, TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro));
                                                                                               //AFrmVendaTemporaria.Venda_Produto
    with TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro) do
    begin

      wr_memoria_venda_produto.open;

      AFatorMultiplicador := IfThen(AFatura <> 'S', 1, -1);

      CodVendaNovo := TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).Cadastro.FieldByName('CODIGO').AsString;

//      TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).Cadastro.transaction      := ATransaFD;
//      TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).Venda_Produto.transaction := ATransaFD;

      TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).Venda_Produto.First;
      while not TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).Venda_Produto.Eof do
      begin
        if (TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).Venda_Produto.FieldByName('PARENT').IsNull) or (TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).Venda_Produto.FieldByName('PARENT').AsInteger = 0) then
        begin
          wr_memoria_venda_produto.first;
          while not wr_memoria_venda_produto.Eof do
          begin
            if wr_memoria_venda_produto.FieldByName('CODIGO').AsInteger = TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).Venda_Produto.FieldByName('CODIGO').AsInteger then
            begin
              AQuant := wr_memoria_venda_produto.FieldByName('QTDADEPECA').AsFloat * AFatorMultiplicador;
            //  TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).Venda_Produto.transaction := ATransaFD;
              TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).Venda_Produto.Edit;
              TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).Venda_Produto.FieldByName('QTDADEPECA').AsFloat           := TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).Venda_Produto.FieldByName('QTDADEPECA').AsFloat + AQuant;
              TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).Venda_Produto.FieldByName('QTDADEPECA_FORMULA').AsString  := TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).Venda_Produto.FieldByName('QTDADEPECA').AsString;
              TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).Venda_Produto.FieldByName('QUANTFATURADA').AsFloat        := wr_memoria_venda_produto.FieldByName('QTDADEPECA').AsFloat;
              TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).Venda_Produto.FieldByName('CODVENDA_ORIGINAL').AsString   := CodVendaOriginal;
//                    TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).Venda_Produto.FieldByName('LARG').AsFloat       :=  wr_memoria_venda_produto.FieldByName('LARG').AsFloat;
//                    TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).Venda_Produto.FieldByName('ESPESSURA').AsFloat  :=  wr_memoria_venda_produto.FieldByName('ESPESSURA').AsFloat;
//              TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).btnConfirmarClick(nil);
//              TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).Venda_Produto.Post;
            end;
            wr_memoria_venda_produto.Next;
          end;
        end;
          TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).Venda_Produto.Next;
      end;

//      QuerX.SQL.Text := 'UPDATE venda_produto vp ' +
//                        'SET vp.CODVENDA_ORIGINAL = ' + QuotedStr(TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).Cadastro.FieldByName('CODIGO').AsString) +
//                        'WHERE EXISTS (SELECT 1 ' +
//                                    'FROM venda v ' +
//                                    'WHERE v.codvenda_vinculada = '+ QuotedStr(CodVendaOriginal);
//      QuerX.ExecSQL;


      TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).Cadastro.FieldByName('DT_EMISSAO').AsDateTime        := ADTEmissao;
      TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).Cadastro.FieldByName('CODIGOVENDA').AsString         := CodVendaOriginal;
      TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).Cadastro.FieldByName('CODVENDA_VINCULADA').AsString  := CodVendaOriginal;
      TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).Cadastro.FieldByName('OBSERVACAO').AsString          := Cadastro.FieldByName('OBSERVACAO').AsString;
      TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).Cadastro.FieldByName('IS_VENDA').AsString            := 'N';
      TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).Cadastro.FieldByName('IS_PEDIDO').AsString           := 'S';
      TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).Cadastro.FieldByName('IS_PARCIAL').AsString          := 'S';
      TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).Cadastro.FieldByName('STATUS').AsString              := 'ATIVO PRINCIPAL';
      TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).WRCalc.SprFechaMemTables;  //CalculaProduto
      TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).Venda_Produto.Refresh;  //<<<<<<< pRECISO DISSO
      TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).WRCalc.CalcBuild;  //CalculaProduto
      TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).WRCalc.SprCopiarFormula;
      TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).WRCalc.SuperCalc;
//      TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).Cadastro.Post;
      TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).btnConfirmarClick(nil);
    end;

//    SQLVenda_AtualizaVendaPrincipalParcial(CodVendaNovo, CodVendaOriginal);
    QuerX.SQL.Text := 'UPDATE VENDA V SET V.CODVENDA_PRINCIPAL = ' + QuotedStr(CodVendaNovo) +
         'Where V.CODVENDA_VINCULADA = ' + QuotedStr(CodVendaOriginal) + 'and V.STATUS in (''ATIVO PARCIAL'',''INATIVO PARCIAL'') ';
    QuerX.ExecSQL;



    QuerX.SQL.Text := 'merge into VENDA_PRODUTO VP' + #13#10 +
                      'using (select VP.CODIGO, VP.CODVENDA, VP.CODPRODUTO, VP.CODVENDA_ORIGINAL, V.CODVENDA_VINCULADA' + #13#10 +
                             'from VENDA_PRODUTO VP join(select V.CODVENDA_VINCULADA, V.CODIGO' + #13#10 +
                                                        'from VENDA V) V on V.CODIGO = VP.CODVENDA' + #13#10 +
                             'where V.CODVENDA_VINCULADA = '+ QuotedStr(CodVendaOriginal) +' ) X' + #13#10 +
                      'on VP.CODVENDA = X.CODVENDA' + #13#10 +
                      'when matched then' + #13#10 +
                          'update set VP.CODVENDA_ORIGINAL = ' + QuotedStr(CodVendaNovo);
    QuerX.ExecSQL;

  finally
    AFrmVendaTemporaria.Free;
    wr_memoria_venda_produto.Free;
    QuerX.Free;
  end;
end;

end.

