unit Frame_CadVenda_Venda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxLayoutContainer, dxCore,
  dxCoreClasses, dxHashUtils, dxSpreadSheetCore, dxSpreadSheetCoreFormulas,
  dxSpreadSheetCoreHistory, dxSpreadSheetCoreStyles, dxSpreadSheetCoreStrs,
  dxSpreadSheetConditionalFormatting, dxSpreadSheetConditionalFormattingRules,
  dxSpreadSheetClasses, dxSpreadSheetContainers, dxSpreadSheetFormulas,
  dxSpreadSheetHyperlinks, dxSpreadSheetFunctions, dxSpreadSheetStyles,
  dxSpreadSheetGraphics, dxSpreadSheetPrinting, dxSpreadSheetTypes,
  dxSpreadSheetUtils, dxSpreadSheetFormattedTextUtils, dxBarBuiltInMenu,
  Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, dxDateRanges, Data.DB, cxDBData, cxCalendar, cxLabel,
  cxDropDownEdit, cxTL, cxImageComboBox, cxMaskEdit, cxButtonEdit,
  cxCurrencyEdit, cxTextEdit, cxTLdxBarBuiltInMenu, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  uWRNotaFiscal, uWRFormataCamposDataSet, uWRCalculaConfiguracoes, cxImageList,
  System.Actions, Vcl.ActnList, frxClass, frxDBSet, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, System.Generics.Collections, WREventos, UCBase,
  cxClasses, dxLayoutLookAndFeels, UCHist_WRGeral, UCHistDataset,
  System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, dxStatusBar,
  dxSpreadSheetFormulaBar, cxInplaceContainer, cxDBTL, cxTLData, cxDBLabel,
  cxDBEdit, cxSpinEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxMemo, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, Vcl.StdCtrls, cxButtons,
  dxSpreadSheet, cxCheckBox, dxLayoutControl, FrFrameMestre, Classes.Venda,
  pcnConversao, PDV_Pagamento, Classes.Financeiro
  {TEFACBr} ,Classes.Venda.TEF, ACBrTEFComum {TEFACBr} , NFSe, CadVendaFrameAgrupamento,
  Frame_CadVenda_Mestre, dxCustomTileControl, dxTileControl, Frame_CadRequisicao_Pocket, dxUIAdorners,
  dxScrollbarAnnotations, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, Routes.Requisicao.Venda, WRButtonsEditAdd;

type
  TFrame_Venda_Venda = class(TFrame_Venda_Mestre)
    RetonarOrcamento: TMenuItem;
    FaturarModificado1: TMenuItem;
    dxLayoutItem6: TdxLayoutItem;
    edtNotaFiscal: TcxDBTextEdit;
    LanarCrdito1: TMenuItem;
    GrupoNotaFiscal: TdxLayoutItem;
    PnlNotaFiscal: TPanel;
    TabNFSe: TdxLayoutGroup;
    pnlNFSe: TPanel;

    dxLayoutItem8: TdxLayoutItem;
    LibtnFaturamentoProducao: TdxLayoutItem;
    btnFaturamentoProducao: TcxButton;
    Action1: TAction;
    GrupoCredito: TdxLayoutGroup;
    liedtCredito: TdxLayoutItem;
    edtCredito: TcxDBCurrencyEdit;
    liedtCreditoDisponivel: TdxLayoutItem;
    edtCreditoDisponivel: TcxDBCurrencyEdit;
    btnAtualizarCredito: TcxButton;
    libtnAtualizarCredito: TdxLayoutItem;
    LibtnFinalizarPedido: TdxLayoutItem;
    btnFinalizarPedido: TcxButton;
    lblTipoFaturamento: TcxLabel;
    LilblTipoFaturamento: TdxLayoutItem;
    UCHist_Financeiro2: TUCHist_DataSet;
    dxLayoutLookAndFeelList2: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    ConfigurarCAIXA1: TMenuItem;
    N8: TMenuItem;
    GrupoFaturamento_Venda: TdxLayoutGroup;
    btnFaturamento: TdxTileControlItem;
    btnCancela_Faturamento: TdxTileControlItem;
    edtDT_Faturamento: TcxDBTextEdit;
    dxTileControl2: TdxTileControl;
    dxTileControlGroup7: TdxTileControlGroup;
    dxTileControlGroup8: TdxTileControlGroup;
    dxTileControlItem14: TdxTileControlItem;
    dxTileControlItem17: TdxTileControlItem;
    dxTileControlItem18: TdxTileControlItem;
    dxTileControlItem19: TdxTileControlItem;
    tcEnviaRequisicao: TdxTileControlItem;
    edtDT_Requisicao: TcxDBTextEdit;
    procedure QuerVenda_TipoBeforeOpen(DataSet: TDataSet);
    procedure btnFaturamentoClick(Sender: TdxTileControlItem);
    procedure FaturarModificado1Click(Sender: TObject);
    procedure RetonarOrcamentoClick(Sender: TObject);
    procedure edtNotaFiscalExit(Sender: TObject);
    procedure edtNotaFiscalPropertiesChange(Sender: TObject);
    procedure MenuDireitaPopup(Sender: TObject);
    procedure LanarCrdito1Click(Sender: TObject);
    procedure GrupoTabsPrincipalTabChanged(Sender: TObject);
    procedure btnCancela_FaturamentoClick(Sender: TdxTileControlItem);
    procedure edtDT_FaturamentoPropertiesChange(Sender: TObject);
    procedure btnNovoClick(Sender: TdxTileControlItem);
    procedure PoupCopiarVendacomProdutosClick(Sender: TObject);
    procedure btnFaturamentoProducaoClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TdxTileControlItem);
    procedure DSStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbxTipo_VendaPropertiesChange(Sender: TObject);
    procedure edtCreditoPropertiesEditValueChanged(Sender: TObject);
    procedure btnAtualizarCreditoClick(Sender: TObject);
    procedure edtPessoa_Responsavel_CodigoPropertiesEditValueChanged(
      Sender: TObject);
    procedure Definiressetipodevendacomopadro1Click(Sender: TObject);
    procedure btnFinalizarPedidoClick(Sender: TObject);

    procedure WREventosCadastroImpressaoBeforePrint(Sender: TObject;
      var APermiteImprimir: Boolean);
    procedure WREventosCadastroConfiguracao_Acoes(Sender: TObject);
    procedure WREventosCadastroValidaComponente(Sender: TObject;
      var AError: Boolean; var ErrorText: TCaption);

    procedure CadastroAfterInsert(DataSet: TDataSet);
    procedure edtOperacaoPropertiesChange(Sender: TObject);
    procedure tcEnviaRequisicaoClick(Sender: TdxTileControlItem);
    procedure edtDT_RequisicaoPropertiesEditValueChanged(Sender: TObject);
    procedure LanarCrdito2Click(Sender: TObject);
    procedure edtValorPropertiesEditValueChanged(Sender: TObject);
    procedure GridProdutoTreeVALORPropertiesEditValueChanged(Sender: TObject);
    procedure edtVendaCodigoPropertiesEditValueChanged(Sender: TObject);
    procedure FrameEnter(Sender: TObject);
    procedure edtValorPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure ConfigurarCAIXA1Click(Sender: TObject);
    procedure CadastroBeforePost(DataSet: TDataSet);
  private
    FFrameNotaFiscal: TFrmFrameMestre;
    FFrameVendaNFSe: TFrmFrameMestre;
    FFrameAgrupamentoVenda : TFrmVendaFrameAgrupamento;
    FFrmPDV_Pagamento: TFrmPDV_Pagamento;
    function GetDocumentoParcelas(AParcela, AQuantidadeParcelas
      : Integer): string;
    procedure FinalizaEstoque;
    function VerificaTipoDeVendaPodeFaturar: Boolean;

    { Private declarations }
  public
    procedure EmiteNFCeTEF;
    procedure EmiteNFSeTEF;
    procedure EmiteNFeTEF;
    procedure CancelarNFeInconsistentePDV;
    procedure GeraParcelaTEF(ParcResp: TACBrTEFResp; ParcVenda: TVenda;
      CodTipoPagamento: Integer);
    procedure Faturar(ASomenteFinanceiro: Boolean = False);
    procedure VerificaVisibleBotoesFaturamento;
    procedure VerificaEnableCamposVenda;
    procedure PessoasAlteraCampoFaturaPrevisao;
    procedure VendaAlteraCampoFaturaPrevisao;
    procedure FinanceiroBaixaParcelasPrevisao;
    procedure FinanceiroRetornaParcelasPrevisao;
    { Public declarations }
  end;

var
  Frame_Venda_Venda: TFrame_Venda_Venda;

implementation

uses
  unitfuncoes, StrUtils, CadVendaFrameNotaFiscal, Classes.WR, wrFuncoes, wrForms,
  wrConversao, VendaTipoSelecao,
  Principal, Utils.Financeiro, Senha, DataModule, wrConstantes, Math,
  Financeiro_Contas_Escolha, dateUtils, Financeiro,
  pcnConversaoNFe, CadProduto_Movimento, CadNotaFiscal, frFrameVendaNFSe,
  frFrameVendaPessoa, CadVenda_Produto, FrmProducaoFaturar, FrmGerarParcelas,
  frFrameHistorico, Base, Base_Venda, Financeiro_Credito, Frame_ConFinanceiro_Mestre,
  Controller.Obrigatorio.Venda.Venda, Controller.Interno.Venda, Classes.APP, Tag.APP, Tag.Componente, Tag.Form, Controller.Venda;

{$R *.dfm}

procedure TFrame_Venda_Venda.Faturar(ASomenteFinanceiro: Boolean = False);
// Nem olhei a função, vou tocar o barco primeiro arrumar as fáceis
var
  QuerX, QuerCheque, QuerProducao, QuerTipo: TFDQuery;
  AControleCaixa: TTipoControleCaixa;
  ADataAtual: TDateTime;
  AMsg: String;
  ACaixa: TCaixaRec;
  ATipoPrevisao: TTipoPagamentoPrevisao;
  // ADtReferenciaPrevisao: TDate;
  ACreditoConsumido: Double;
  QuerWR: TWRDataSet;
  ACodUsuarioQueAutorizou: Integer;
  AFrmVendaNovo, AFrmVendaBackup: TFrmVenda_Base;
  AFrmVendaTemporaria : TFrame_Venda_Venda;
  AListaProduto: TArray<Integer>;
  wr_memoria_venda_produto  : TFDMemTable;
  CodVendaOriginal: String;
  ADTEmissao:  TDateTime;
  ATransaFD: TFDTransaction;
begin
  inherited;
  // ADtReferenciaPrevisao := 0;


  if StartsStr('INATIVO', Cadastro.FieldByName('STATUS').AsString) then  // Isso é se esta ativo
  begin
    ShowMessageWR('Não é permitido movimentar venda Inativa. Reative no "Menu > Reativar Venda" primeiro.');
    Exit;
  end;

// DESATIVADO PQ VAI ENCHER O SACO
//  if not VerificaCustoImprimirOuFaturar(Cadastro.FieldByName('CODIGO').AsString) then
//  begin
//    ShowMessageWR('Não permitido');
//    Exit;
//  end;

  if not VerificaESolicitaValorMinimoTreeList then
    Exit;

  if TConfig.ReadBoolean('NAO_PERMITE_NOME_DIFERENTE_PARCELA') then
  begin
    Venda_Financeiro.first;
    while not Venda_Financeiro.EoF do
    begin
      if Venda_Financeiro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString <> Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString then
      begin
        ShowMessage('[Configuração Ativa] Não é possível Faturar: Responsável pelas parcelas é diferente do responsável da venda');
        abort;
      end;
      Venda_Financeiro.Next;
    end;
  end;




  ACreditoConsumido := 0;
  AControleCaixa := tccPorUsuario;
  LockWindowUpdate(Self.Handle);
  try

    btnFaturamento.Enabled := False;
    try
      if TConfig.ReadBoolean('VENDA_PEDIR_SENHA_PARA_FATURAR') and not UsuarioSenhaFaturar then
        Exit;

      if Not VerificaTipoDeVendaPodeFaturar then
      begin
        ShowMessageWR('Não é possível faturar vendas do tipo ' + Cadastro.FieldByName('VENDA_TIPO').AsString +
          '. Altere o tipo da venda para efetuar o Faturamento.');
        Exit;
      end;
      {
      if not ASomenteFinanceiro and not LbUCPermiteFaturarQualquerTipoVenda.Enabled then
      begin
        QuerX := GeraFDQuery(TransaFD);
        // Meu Deus aqui a pessoa tem como escolher se pode ou não faturar e nem fica registrado a opção
        try
          QuerX.SQL.Text := 'select coalesce(PODE_SER_FATURADO, ''N'') ' + 'from VENDA_TIPO ' + 'where (DESCRICAO = :Desc)';
          QuerX.Params[0].AsString := Cadastro.FieldByName('VENDA_TIPO').AsString;
          QuerX.Open;
          if (QuerX.Fields[0].AsString = 'N') then
          begin
            ShowMessageWR('Não é possível faturar vendas do tipo ' + Cadastro.FieldByName('VENDA_TIPO').AsString +
              '. Altere o tipo da venda para efetuar o Faturamento.');
            Exit;
          end;
        finally
          QuerX.Free;
        end;
      end;    }
      if Venda_Financeiro.IsEmpty then
      begin
        Cadastro.Edit;
        if Cadastro.FieldByName('CODCONDICAOPAGTO').IsNull then
          Cadastro.FieldByName('CODCONDICAOPAGTO').AsInteger := 1;
        btnParcelas.Click;
      end;
      if Venda_Financeiro.IsEmpty then
        Exit;
      ADataAtual := DataHoraSys;
      if not VerificaTotalParcelas then
        Exit;
      try
        venda_produto.DisableControls;
        venda_produto.first;
        while not venda_produto.eof do
        begin
          if venda_produto.FieldByName('PODE_FATURAR').AsString = 'N' then
          begin
            ShowMessageWR('Existem Produtos já Faturados em outras vendas', MB_ICONWARNING);
            Exit;
          end;

          // if venda_produto.FieldByName('PARENT').IsNull then
          // begin
          // try      //aqui eu vou verificar se o item da venda esta finalizado, tem que ver em casos de cancelamento
          // QuerProducao := GeraFDQuery(TransaFD);
          // QuerProducao.SQL.Text := 'select DT_FIM from PRODUCAO P where PROTOCOLO_PRINCIPAL = :PROTOCOLO_PRINCIPAL';
          // QuerProducao.ParamByName('PROTOCOLO_PRINCIPAL').AsString := venda_produto.FieldByName('PROTOCOLO').AsString;
          // QuerProducao.Open;
          // if QuerProducao.RecordCount > 0 then
          // begin
          // if QuerProducao.FieldByName('DT_FIM').IsNull then
          // begin
          // if ShowMessageWR('Existem produtos em produção que ainda não foram finalizados, Deseja ver a Produção',MB_ICONQUESTION) = mrYes  then
          // btnVerProducaoClick(nil);
          // Exit;
          // end;
          // end;
          // finally
          // QuerProducao.Free;
          // end;
          // end;

          // if not LbUCPermiteVenderAbaixoDoValorMinimo.Visible and not VendaValidarProdutoValorAbaixoMinimoDS(Venda_Produto) then
          // Exit;
          // if Venda_Produto.FieldByName('TEM_ESTOQUE_ABAIXO_MINIMO').AsString = 'S' then
          // begin
          // ShowMessageWR('Item ' + Venda_Produto.FieldByName('DESCRICAO').AsString + ' Com Estoque Insuficiente');
          // Exit;
          // end;
          //
          // if Venda_Produto.FieldByName('VALOR_VENDA_MINIMO').AsFloat > 0 then
          // begin
          // if Venda_Produto.FieldByName('VALOR').AsFloat < Venda_Produto.FieldByName('VALOR_VENDA_MINIMO').AsFloat then
          // begin
          // ShowMessage('Item ' + Venda_Produto.FieldByName('DESCRICAO').AsString + ' Valor Abaixo do Minimo Permitido: ' + FloatToStr(Venda_Produto.FieldByName('VALOR_VENDA_MINIMO').AsFloat));
          // Exit;
          // end;
          // end;

          venda_produto.next;
        end;
      finally
        venda_produto.EnableControls;
      end;

      // update nas parcelas emissao pela hora de faturamento para realmente saber quando foi faturado
      QuerX := GeraFDQuery(TransaFD);
      try
        if TConfig.ReadBoolean('VENDA_IMPEDIR_PARCELA_ABERTA') then
        begin
          QuerWR := SQLFinanceiroVerificaParcelasEmAberto(TransaFD, Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString);
          try
            if not QuerX.IsEmpty then
            begin
              ShowMessageWR('Exitem parcelas em aberto para esse cliente.');
              Exit;
            end;
          finally
            QuerWR.Free;
          end;
        end;

        QuerX.SQL.Text := 'update VENDA_FINANCEIRO set EMISSAO = :Emissao ' + 'where (CODVENDA = :CodVenda) ' + '      and (TIPO = :Tipo)';
        QuerX.ParamByName('Emissao').AsDateTime := ADataAtual;
        QuerX.ParamByName('CodVenda').AsString := Cadastro.FieldByName('CODIGO').AsString;
        QuerX.ParamByName('Tipo').AsString := FinanceiroTipoToStr(fitAReceber);
        QuerX.ExecSQL;

        QuerX.SQL.Text := 'update VENDA_FINANCEIRO set DATAPAGTO = :DataPagto ' + 'where (CODVENDA = :CodVenda) ' + '      and (TIPO = :Tipo) ' +
          '      and (coalesce(GERADO_DO_FINANCEIRO, ''N'') = ''N'') ' + '      and ((not(TIPOPAGTO in (''CHEQUE'', ''CHEQUE-PRÉ'', ''DINHEIRO'')) ' +
          '           and DATAPAGTO is null))';
        QuerX.ParamByName('DataPagto').AsDateTime := ADataAtual;
        QuerX.ParamByName('CodVenda').AsString := Cadastro.FieldByName('CODIGO').AsString;
        QuerX.ParamByName('Tipo').AsString := FinanceiroTipoToStr(fitRecebida);
        QuerX.ExecSQL;
        if Procura('TIPO', 'CONTAS', Venda_Financeiro.FieldByName('CODCONTA').AsString) = 'CAIXA' then
        begin
          Venda_Financeiro.Close;
          Venda_Financeiro.Open;
          Venda_Financeiro.first;
          while not Venda_Financeiro.eof do
          begin
            if MatchStr(Venda_Financeiro.FieldByName('TIPO').AsString, ['PAGA', 'RECEBIDA']) then
            begin
              ACaixa := GetSituacaoCaixaSQL(TransaFD, IfThen(Venda_Financeiro.FieldByName('DATAPAGTO').AsDateTime > 0,
                Venda_Financeiro.FieldByName('DATAPAGTO').AsDateTime, DATA_ZERO), Venda_Financeiro.FieldByName('CODCONTA').AsInteger);
              if ACaixa.Situacao = scCaixaFechado then
              begin
                if not UsuarioSenha(False, True) then
                  Exit;
                if FrmPrincipal.Action_Caixa.Enabled then
                begin
                  TFrmFinanceiro_Contas_Escolha.AbrirCaixa(Venda_Financeiro.FieldByName('DATAPAGTO').AsDateTime);
                  // with TFrmFinanceiro_Contas_Escolha.Create(nil) do
                  // try
                  // DataPagto := Venda_Financeiro.FieldByName('DATAPAGTO').AsDateTime;
                  // Show;
                  // repeat
                  // try
                  // Application.HandleMessage;
                  // except
                  // Application.HandleException(nil);
                  // end;
                  // until not Visible;
                  // finally
                  // Destroy;
                  // end;
                end;
                Financeiro.Cancel;
                Exit;
              end;
            end;
            Venda_Financeiro.next;
          end;
          AControleCaixa := TTipoControleCaixa(TConfig.ReadInteger('CAIXA_CONTROLE'));
          Cadastro.Edit; // O post é dado após o loop do Venda_Financeiro.
          if AControleCaixa in [tccPorEmpresa, tccPorUsuario] then
            Cadastro.FieldByName('CODCONTA').AsInteger := ACaixa.CodConta;
          // QuerX.FieldByName('CODCONTA').AsInteger;
        end
        else
        begin
          Cadastro.Edit; // O post é dado após o loop do Venda_Financeiro.
        end;
      finally
        QuerX.Free;
      end;

      // if (not UCControls1.GetComponentRight(LbUCPermiteFaturarPrazoSemCNPJ).Enabled) and
      // (GetCnpjCpf(Procura('CNPJCPF', 'PESSOAS', FControleWR.GetCodigoPessoa(EdtResponsavelÎPessoas))) = '') then
      begin
        Venda_Financeiro.Close;
        Venda_Financeiro.Open;
        Venda_Financeiro.FetchAll;
        while not Venda_Financeiro.eof do
        begin
          if Venda_Financeiro.FieldByName('GERADO_DO_FINANCEIRO').AsString = 'S' then
          begin
            Venda_Financeiro.next;
            Continue;
          end;
          if (DateOf(Venda_Financeiro.FieldByName('VENCTO').AsDateTime) > DateOf(Venda_Financeiro.FieldByName('EMISSAO').AsDateTime)) then
          begin
            { ShowMessageWR('Não é permitido Faturar Venda à Prazo, para Cliente que não tenha CNPJ / CPF.' +
              sLineBreak + 'Verifique!', MB_ICONWARNING);
              btnCancelarClick(nil);
              Exit; }
          end;


          Venda_Financeiro.next;
        end;
      end;
      if (not UsuarioSenha(True, False)) or (HISTORICO = 'nao') then
        Exit;

      Venda_Financeiro.Close;
      // Necessário devido aos updates realizados na rotina acima.
      Venda_Financeiro.Open;
      Venda_Financeiro.first;

      while not Venda_Financeiro.eof do
      begin
        if Venda_Financeiro.FieldByName('GERADO_DO_FINANCEIRO').AsString = 'S' then
        begin
          Venda_Financeiro.next;
          Continue;
        end;
        // Verifica se o caixa selecionado para a parcela determina está aberto - Atualiza a data do pagamento para
        // a data e hora do servidor se a data o dia do pagamento for maior ou igual ao do caixa aberto
        if Procura('TIPO', 'CONTAS', Venda_Financeiro.FieldByName('CODCONTA').AsString) = 'CAIXA' then
        begin
          // if (AControleCaixa in [tccPorEmpresa, tccPorUsuario]) then
          // begin
          // Venda_Financeiro.Edit;                                                                            //LOUCURA ISSO AQUI ASS. Felipe
          // Venda_Financeiro.FieldByName('CODCONTA').AsInteger := Cadastro.FieldByName('CODCONTA').AsInteger; // Isso aqui não pode essa regra tem que ser feita antes
          // Venda_Financeiro.Post;                                                                            // informar no grid dissendo que não pode
          // end;
          QuerX := GeraFDQuery(TransaFD);
          try
            // QuerX.SQL.Text := ' SELECT * FROM CAIXA WHERE (DATA_FECHAMENTO IS NULL) and (CODCONTA=''' + Venda_Financeiro.FieldByName('CODCONTA').AsString + ''')' +
            // ' And((DATA_ABERTURA < ''' + FormatDateTime('MM/DD/YYYY HH:MM:SS', Venda_Financeiro.FieldByName('VENCTO').AsDateTime)
            // + ''')' + '   OR(DATA_ABERTURA < ''' + FormatDateTime('MM/DD/YYYY HH:MM:SS', Venda_Financeiro.FieldByName('DATAPAGTO').AsDateTime) + '''))';
            QuerX.SQL.Text := 'select first 1 1 ' + 'from CAIXA ' + 'where (DATA_FECHAMENTO is null) ' + '      and (CODCONTA = :CodConta) ' +
              '      and ((DATA_ABERTURA < :DtVencto) or (DATA_ABERTURA < :DtPagto))';
            QuerX.ParamByName('CodConta').AsInteger := Venda_Financeiro.FieldByName('CODCONTA').AsInteger;
            QuerX.ParamByName('DtVencto').AsDateTime := Venda_Financeiro.FieldByName('VENCTO').AsDateTime;
            QuerX.ParamByName('DtPagto').AsDateTime := IfThen(Venda_Financeiro.FieldByName('DATAPAGTO').AsDateTime > 0,
              Venda_Financeiro.FieldByName('DATAPAGTO').AsDateTime, DataHoraSys);
            QuerX.Open;
            if QuerX.IsEmpty then
            begin
              AMsg := 'O caixa desse período (' + FormatDateTime('DD/MM/YYYY HH:MM', Venda_Financeiro.FieldByName('VENCTO').AsDateTime);
              if (Venda_Financeiro.FieldByName('DATAPAGTO').AsString <> '') and
                (Venda_Financeiro.FieldByName('DATAPAGTO').AsDateTime <> Venda_Financeiro.FieldByName('VENCTO').AsDateTime) then
                AMsg := AMsg + ' - ' + FormatDateTime('DD/MM/YYYY HH:MM', Venda_Financeiro.FieldByName('DATAPAGTO').AsDateTime);
              AMsg := AMsg + ') está fechado ou não existe. ';
              if Venda_Financeiro.FieldByName('CONTA').AsString <> '' then
                AMsg := AMsg + 'O caixa "' + Venda_Financeiro.FieldByName('CONTA').AsString + '" não está aberto. ';
              AMsg := AMsg + 'Abra seu caixa primeiro.';
              ShowMessageWR(AMsg);
              if not UsuarioSenha(False, True) then
                Exit;
              if FrmPrincipal.Action_Caixa.Enabled then
              begin
                TFrmFinanceiro_Contas_Escolha.AbrirCaixa(Venda_Financeiro.FieldByName('DATAPAGTO').AsDateTime);
                // with TFrmFinanceiro_Contas_Escolha.Create(nil) do
                // try
                // Show;
                // finally
                // Destroy;
                // end;
              end;
              Financeiro.Cancel;
              Exit;
            end;
          finally
            QuerX.Free;
          end;
        end;
        Venda_Financeiro.next;
      end;
      Venda_Financeiro.Close;
      Venda_Financeiro.Open;
      Venda_Financeiro.first;
      while not Venda_Financeiro.eof do
      // Necessário para a verificação da Conta, pois vem de um left join e não aparece no while anterior.
      begin
        if Venda_Financeiro.FieldByName('GERADO_DO_FINANCEIRO').AsString = 'S' then
        begin
          Venda_Financeiro.next;
          Continue;
        end;
        if Venda_Financeiro.FieldByName('RAZAOSOCIAL').AsString = '' then
        begin
          ShowMessageWR('Selecione o responsável pela conta');
          ShowPanelForm(PnlParcela, bsSingle);
          EdtParcelaPlanoContasÎPlanoContas.SetFocusWR;
          Exit;
        end;
        if (Venda_Financeiro.FieldByName('CONTA').AsString = '') and (Venda_Financeiro.FieldByName('TIPOPAGTO').AsString <> 'CRÉDITO') then
        begin
          ShowMessageWR('Antes de faturar selecione um caixa para a parcela nº: ' + Venda_Financeiro.FieldByName('CODIGO').AsString, MB_ICONWARNING);
          Exit;
        end;
        Venda_Financeiro.next;
      end;
      if ASomenteFinanceiro then
      begin
        QuerX := GeraFDQuery(TransaFD);
        try
          QuerX.SQL.Text := 'update FINANCEIRO ' + 'set STATUS = ''INATIVO EXCLUIDO'', ' + '    MOTIVO_EXCLUSAO = :Motivo ' + 'where (CODPEDIDO = :CodPedido) '
            + '      and (STATUS like ''ATIVO%'') ' + '      and ((TIPO = ''A RECEBER'') ' + '           or (TIPO = ''A PAGAR''))';
          QuerX.ParamByName('CodPedido').AsString := Cadastro.FieldByName('CODIGO').AsString;
          QuerX.ParamByName('Motivo').AsString := 'EXCLUSÃO POR REPARCELAMENTO DA VENDA';
          QuerX.ExecSQL;
        finally
          QuerX.Free;
        end;
      end;
      QuerX := GeraFDQuery(Venda_Financeiro.Transaction);
      try
        QuerX.SQL.Text := 'select F.*, CO.DESCRICAO as CONTA, V.DT_EMISSAO as DT_EMISSAO_VENDA, V.PEDIDO_COMPRA, V.DT_COMPETENCIA ' + 'from VENDA_FINANCEIRO F '
          + 'left join CONTAS CO on (F.CODCONTA = CO.CODIGO) ' + 'left join VENDA V on (F.CODVENDA = V.CODIGO) ' + 'where ((F.CODVENDA = :CODIGO) ' +
          '      and (coalesce(F.GERADO_DO_FINANCEIRO, ''N'') = ''N''))';
        // ifThen(ASomenteFinanceiro, ' or ((F.PARCELA_ALTERADA = ''S'') and (F.CODVENDA = :CODIGO))', '');
        QuerX.Params[0].AsString := Cadastro.FieldByName('CODIGO').AsString;
        QuerX.Open;
        while not QuerX.eof do
        begin
          // Caso a parcela em questão seja de Crédito, passa os parâmetros da parcela para a rotina de consumo de crédito
          if AnsiSameText(QuerX.FieldByName('TIPOPAGTO').AsString, 'CRÉDITO') then
          begin
            if (FinanceiroTipoStrToEnum(QuerX.FieldByName('TIPO').AsString) = fitAPagar) then
            begin
              { Caso a parcela seja "Paga" do tipo "Crédito", é lançado o crédito para o cliente }
              TFrmFinanceiro.LancarCredito(TransaFD, QuerX.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString, QuerX.FieldByName('VALOR').AsFloat,
                QuerX.FieldByName('CODPLANOCONTAS').AsString, Cadastro.FieldByName('CODIGO').AsString, QuerX.FieldByName('CODCONTA').AsInteger,
                'CRÉDITO', False);
            end
            else
            begin
              TFrmFinanceiro.ConsumirCredito(TransaFD, QuerX.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString, QuerX.FieldByName('VALOR').AsFloat,
                Cadastro.FieldByName('CODIGO').AsString, QuerX.FieldByName('DOCUMENTO').AsString, Cadastro.FieldByName('NOTAFISCAL').AsString,
                QuerX.FieldByName('CODPLANOCONTAS').AsString, QuerX.FieldByName('HISTORICO').AsString, QuerX.FieldByName('CODCONTA').AsInteger);
              ACreditoConsumido := ACreditoConsumido + QuerX.FieldByName('VALOR').AsFloat;
            end;
            QuerX.next;
            Continue;
          end;

          Financeiro.Open;
          Financeiro.Insert;
          Financeiro.FieldByName('CODIGO').AsInteger := Trunc(GetProximoCodigoGen('CR_FINANCEIRO'));
          // Financeiro.FieldByName('CODIGO').AsCurrency           := QuerX.FieldByName('CODIGO').AsCurrency;
          Financeiro.FieldByName('CODPEDIDO').AsString := Cadastro.FieldByName('CODIGO').AsString;
          Financeiro.FieldByName('DT_EMISSAO_VENDA').AsDateTime := QuerX.FieldByName('DT_EMISSAO_VENDA').AsDateTime;
          Financeiro.FieldByName('DT_COMPETENCIA').AsDateTime := QuerX.FieldByName('DT_COMPETENCIA').AsDateTime;
          Financeiro.FieldByName('TIPO').AsString := QuerX.FieldByName('TIPO').AsString;

          if (QuerX.FieldByName('PESSOA_RESPONSAVEL_TIPO').AsString.Trim <> '') and (QuerX.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString.Trim <> '') and
            (QuerX.FieldByName('PESSOA_RESPONSAVEL_SEQUENCIA').AsString.Trim <> '') then
          begin
            Financeiro.FieldByName('PESSOA_RESPONSAVEL_TIPO').Value := QuerX.FieldByName('PESSOA_RESPONSAVEL_TIPO').Value;
            Financeiro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').Value := QuerX.FieldByName('PESSOA_RESPONSAVEL_CODIGO').Value;
            Financeiro.FieldByName('PESSOA_RESPONSAVEL_SEQUENCIA').Value := QuerX.FieldByName('PESSOA_RESPONSAVEL_SEQUENCIA').Value;
            Financeiro.FieldByName('RAZAOSOCIAL').AsString := QuerX.FieldByName('RAZAOSOCIAL').AsString;
          end
          else
          begin
            Financeiro.FieldByName('PESSOA_RESPONSAVEL_TIPO').Value := QuerX.FieldByName('PESSOA_FORNECEDOR_TIPO').Value;
            Financeiro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').Value := QuerX.FieldByName('PESSOA_FORNECEDOR_CODIGO').Value;
            Financeiro.FieldByName('PESSOA_RESPONSAVEL_SEQUENCIA').Value := QuerX.FieldByName('PESSOA_FORNECEDOR_SEQUENCIA').Value;
            Financeiro.FieldByName('RAZAOSOCIAL').AsString := QuerX.FieldByName('RAZAOSOCIAL').AsString;
          end;

          Financeiro.FieldByName('DOCUMENTO').AsString := QuerX.FieldByName('DOCUMENTO').AsString;
          Financeiro.FieldByName('NOTAFISCAL').AsString := Cadastro.FieldByName('NOTAFISCAL').AsString;
          Financeiro.FieldByName('TIPOPAGTO').AsString := QuerX.FieldByName('TIPOPAGTO').AsString;
          Financeiro.FieldByName('CODPLANOCONTAS').AsString := QuerX.FieldByName('CODPLANOCONTAS').AsString;
          Financeiro.FieldByName('HISTORICO').AsString := QuerX.FieldByName('HISTORICO').AsString + IfThen(QuerX.FieldByName('PEDIDO_COMPRA').AsString <> '',
            ' Pedido de Compra: ' + QuerX.FieldByName('PEDIDO_COMPRA').AsString);
          Financeiro.FieldByName('STATUS').AsString := QuerX.FieldByName('STATUS').AsString;
          Financeiro.FieldByName('CODCONTA').AsString := QuerX.FieldByName('CODCONTA').AsString;
          Financeiro.FieldByName('PARCELA').AsString := QuerX.FieldByName('CODIGO').AsString;
          Financeiro.FieldByName('CONTATOS').AsString := QuerX.FieldByName('CONTATOS').AsString;
          Financeiro.FieldByName('CODUSUARIO').AsInteger := CodigoUsuario;
          if QuerX.FieldByName('STATUS').AsString = 'ATIVO PREVISAO' then
          begin
            Financeiro.FieldByName('PREVISAO').AsFloat := QuerX.FieldByName('VALOR').AsFloat;
            { .$IFDEF DEBUG }
            if (Copy(Venda_Financeiro.FieldByName('TIPOPAGTO').AsString, 1, 6) = 'CARTÃO') then
            begin
              Financeiro.FieldByName('VALOR').AsFloat := Financeiro.FieldByName('PREVISAO').AsFloat;
              // Financeiro.FieldByName('DT_PREVISAO').AsDateTime := QuerX.FieldByName('VENCTO').AsDateTime;
            end;
            { .$ENDIF }
          end
          else
            Financeiro.FieldByName('VALOR').AsFloat := QuerX.FieldByName('VALOR').AsFloat;
          // Financeiro.FieldByName('DESCONTO').AsFloat := QuerX.FieldByName('DESCONTO').AsFloat;
          // Financeiro.FieldByName('JUROS').AsFloat := QuerX.FieldByName('JUROS').AsFloat;
          Financeiro.FieldByName('EMISSAO').AsDateTime := DataHoraSys;
          Financeiro.FieldByName('VENCTO').AsDateTime := QuerX.FieldByName('VENCTO').AsDateTime;
          if StartsText('CHEQU', QuerX.FieldByName('TIPOPAGTO').AsString.Trim) then
          begin
            // CriaSqlTrans(Transa);
            QuerCheque := GeraFDQuery(TransaFD);
            try
              try
                QuerCheque.SQL.Text := 'select * ' + 'from FINANCEIRO_CHEQUE ' + 'where (CODIGO = ' + IntToStr(QuerX.FieldByName('CODIGO').AsInteger) + ') ' +
                  '      and (CODPEDIDO = ' + QuotedStr(QuerX.FieldByName('CODVENDA').AsString) + ') ' + '      and (CODEMPRESA = ' +
                  QuotedStr(Empresa.FieldByName('CODIGO').AsString) + ')';
                QuerCheque.Open;
                if not(QuerCheque.RecordCount > 0) then
                begin
                  QuerCheque.Close;
                  QuerCheque.SQL.Text := 'INSERT INTO FINANCEIRO_CHEQUE (AGENCIA, BANCO, C1, C2, C3, CNPJCPF, CODBANCO, CODEMPRESA,' +
                    'CODIGO, CODPEDIDO, COMPE, CONTA, DEVOLVIDO, DT_CADASTRO, DT_REPASSADO, MOTIVO, ' +
                    'NOME, REPASSADO, STATUS, TIPO, DT_ALTERACAO) VALUES (:AGENCIA, :BANCO, :C1, :C2, :C3, :CNPJCPF,' +
                    ':CODBANCO, :CODEMPRESA, :CODIGO, :CODPEDIDO, :COMPE, :CONTA, :DEVOLVIDO, :DT_CADASTRO, ' +
                    ':DT_REPASSADO, :MOTIVO, :NOME, :REPASSADO, :STATUS, :TIPO, :DT_ALTERACAO)';
                  QuerCheque.ParamByName('CODIGO').AsInteger := Financeiro.FieldByName('CODIGO').AsInteger;
                end
                else
                begin
                  QuerCheque.Close;
                  QuerCheque.SQL.Text := 'UPDATE FINANCEIRO_CHEQUE SET AGENCIA = :AGENCIA, BANCO = :BANCO, C1 = :C1, C2 = :C2, C3 = :C3, ' +
                    'CNPJCPF = :CNPJCPF, CODBANCO = :CODBANCO, CODEMPRESA = :CODEMPRESA, CODIGO = :CODFINANCEIRO, CODPEDIDO = :CODPEDIDO, COMPE = :COMPE, ' +
                    'CONTA = :CONTA, DEVOLVIDO = :DEVOLVIDO, DT_CADASTRO = :DT_CADASTRO, DT_REPASSADO = :DT_REPASSADO, ' +
                    'MOTIVO = :MOTIVO, NOME = :NOME, REPASSADO = :REPASSADO, STATUS = :STATUS, TIPO = :TIPO, DT_ALTERACAO = :DT_ALTERACAO ' +
                    'WHERE CODEMPRESA = :CODEMPRESA AND CODIGO = :CODIGO AND CODPEDIDO = :CODPEDIDO';
                  QuerCheque.ParamByName('CODFINANCEIRO').AsInteger := Financeiro.FieldByName('CODIGO').AsInteger;
                  QuerCheque.ParamByName('CODIGO').AsInteger := QuerX.FieldByName('CODIGO').AsInteger;
                end;
                QuerCheque.ParamByName('CODEMPRESA').AsString := Empresa.FieldByName('CODIGO').AsString;
                QuerCheque.ParamByName('CODPEDIDO').AsString := QuerX.FieldByName('CODVENDA').AsString;
                QuerCheque.ParamByName('AGENCIA').Value := QuerX.FieldByName('CHEQUE_AGENCIA').Value;
                QuerCheque.ParamByName('BANCO').AsString := QuerX.FieldByName('CHEQUE_BANCO').AsString;
                QuerCheque.ParamByName('C1').AsString := QuerX.FieldByName('CHEQUE_C1').AsString;
                QuerCheque.ParamByName('C2').AsString := QuerX.FieldByName('CHEQUE_C2').AsString;
                QuerCheque.ParamByName('C3').AsString := QuerX.FieldByName('CHEQUE_C3').AsString;
                QuerCheque.ParamByName('CNPJCPF').AsString := QuerX.FieldByName('CHEQUE_CNPJCPF').AsString;
                QuerCheque.ParamByName('CODBANCO').Value := QuerX.FieldByName('CHEQUE_CODBANCO').Value;
                QuerCheque.ParamByName('COMPE').Value := QuerX.FieldByName('CHEQUE_COMPE').Value;
                QuerCheque.ParamByName('CONTA').AsString := QuerX.FieldByName('CHEQUE_CONTA').AsString;
                // if QuerX.FieldByName('CHEQUE_DT_BOM_PARA').AsDateTime > 0 then
                // QuerCheque.ParamByName('DT_BOM_PARA').AsDateTime := QuerX.FieldByName('CHEQUE_DT_BOM_PARA').AsDateTime;
                QuerCheque.ParamByName('DT_CADASTRO').Value := QuerX.FieldByName('CHEQUE_DT_CADASTRO').Value;
                QuerCheque.ParamByName('DT_REPASSADO').Value := QuerX.FieldByName('CHEQUE_DT_REPASSADO').Value;
                QuerCheque.ParamByName('NOME').AsString := QuerX.FieldByName('CHEQUE_NOME').AsString;
                QuerCheque.ParamByName('REPASSADO').AsString := QuerX.FieldByName('CHEQUE_REPASSADO').AsString;
                QuerCheque.ParamByName('STATUS').AsString := QuerX.FieldByName('CHEQUE_STATUS').AsString;
                QuerCheque.ParamByName('TIPO').AsString := QuerX.FieldByName('CHEQUE_TIPO').AsString;
                QuerCheque.ParamByName('DT_ALTERACAO').AsDateTime := ADataAtual;
                Financeiro.FieldByName('CHEQUE_NUMERO').AsString := QuerX.FieldByName('CHEQUE_NUMERO').AsString;
                QuerCheque.ExecSQL;
              except
                QuerCheque.ParamByName('CODIGO').AsInteger := QuerX.FieldByName('CODIGO').AsInteger + 1;
                QuerCheque.ExecSQL;
              end;
            finally
              QuerCheque.Free;
            end;
          end;
          Financeiro.FieldByName('CODCONDICAOPAGTO').AsString := QuerX.FieldByName('CODCONDICAOPAGTO').AsString;
          Financeiro.FieldByName('CONDICAOPAGTO').AsString := QuerX.FieldByName('CONDICAOPAGTO').AsString;
          if QuerX.FieldByName('STATUS').AsString = 'ATIVO PREVISAO' then
            Financeiro.FieldByName('STATUS').AsString := 'ATIVO PREVISAO'
          else
            Financeiro.FieldByName('STATUS').AsString := 'ATIVO';
          if not QuerX.FieldByName('DATAPAGTO').IsNull then
            Financeiro.FieldByName('DATAPAGTO').AsDateTime := QuerX.FieldByName('DATAPAGTO').AsDateTime;
          Financeiro.FieldByName('CODEMPRESA').AsString := EmpresaAtiva;

          ATipoPrevisao := TTipoPagamentoPrevisao.GetFromCodigo(ProcuraField('TIPO_DT_PREVISAO', 'TIPO_PAGAMENTO', ['DESCRICAO'],
            [QuerX.FieldByName('TIPOPAGTO').AsString]));
          if ATipoPrevisao <> tptpNenhum then
          begin
            Financeiro.FieldByName('LANCAMENTO_FUTURO').AsString := 'S';
            Financeiro.FieldByName('PREVISAO').AsFloat := Financeiro.FieldByName('VALOR').AsFloat;
            if not(LeftStr(Financeiro.FieldByName('TIPOPAGTO').AsString, 6) = 'CARTÃO') then
              Financeiro.FieldByName('VALOR').AsFloat := 0;
            Financeiro.FieldByName('STATUS').AsString := 'ATIVO PREVISAO';
            { if ADtReferenciaPrevisao = 0 then
              ADtReferenciaPrevisao := DataSis
              else
              ADtReferenciaPrevisao := IncMonth(ADtReferenciaPrevisao); }
            Financeiro.FieldByName('DT_PREVISAO').AsDateTime := ATipoPrevisao.GetDtPrevisao(QuerX.FieldByName('TIPOPAGTO').AsString,
              Financeiro.FieldByName('VENCTO').AsDateTime);
          end;
          ServiceeFinanceiro_VerificaCodUsuarioConta(Financeiro);
          Financeiro.Post;
          Financeiro.Close;
          QuerX.next;
        end;
      finally
        QuerX.Free;
      end;

      // Sinaliza as parcelas da venda como Não Alterada, ou seja, estão exatamente como foram enviadas ao financeiro
      QuerX := GeraFDQuery(TransaFD);
      try
        QuerX.SQL.Text := 'update VENDA_FINANCEIRO set PARCELA_ALTERADA = ''N'' ' + 'where (CODVENDA = :CodVenda)';
        QuerX.Params[0].AsString := Cadastro.FieldByName('CODIGO').AsString;
        QuerX.ExecSQL;
      finally
        QuerX.Free;
      end;
      Cadastro.FieldByName('CREDITO').AsFloat := ACreditoConsumido;


      if Cadastro.FieldByName('CREDITO').AsFloat > 0 then
      begin
        if TConfig.ReadBoolean('VENDA_PEDIR_SENHA_CREDITO_FATURA') then
        begin
          ShowMessage('[Configuração Ativa] Necessario permissão para faturar vendas com crédito');
          if not SolicitaPermissao('ActPermissaoVerCustos',ACodUsuarioQueAutorizou) then
          begin
            ShowMessage('Acesso negado, entre em contato o gerente');
            abort;
          end;
        end;
      end;



      if Cadastro.FieldByName('DT_ENVIO_FATURAMENTO').AsDateTime = 0 then
        Cadastro.FieldByName('DT_ENVIO_FATURAMENTO').AsDateTime := ADataAtual;

      ////////////////////////////////PROCEDURE NOVA\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
      if Cadastro.FieldByName('STATUS').AsString = 'ATIVO PARCIAL' then
      begin
        Cadastro.FieldByName('TOTAL_FATURA').AsFloat := Cadastro.FieldByName('TOTAL').AsFloat;
        ControllerVenda_CriaVendaParcialPrincipal(TransaFD, Cadastro, Venda_Produto,'S');
      end;

      if not ASomenteFinanceiro then
      begin
        // Venda.Edit;
        Cadastro.FieldByName('DT_FATURAMENTO').AsDateTime := ADataAtual;
        Cadastro.FieldByName('IS_VENDA').AsString := 'S';
        Cadastro.FieldByName('CODUSUARIO_FATURAMENTO').AsInteger := CodigoUsuario;
        Cadastro.FieldbyName('OPERACAO').AsString := 'FINALIZADA';
        if TConfig.ReadBoolean('NFE_APOS_FATURAMENTO') then
          Cadastro.FieldByName('PODE_EMITIR_NOTAFISCAL').AsString := 'S';
        // Venda.FieldByName('HISTORICO').AsString:=#13#10+'Movimento: Faturamento '+HISTORICO+Venda.FieldByName('HISTORICO').AsString;
        Cadastro.Post;
        // Finaliza e faz a movimentação do estoque
        FinalizaEstoque;
      end
      else if Cadastro.State in [dsEdit, dsInsert] then
      begin
        Cadastro.FieldByName('DT_FATURAMENTO').AsDateTime := ADataAtual;
        Cadastro.FieldByName('CODUSUARIO_FATURAMENTO').AsInteger := CodigoUsuario;
        Cadastro.FieldbyName('OPERACAO').AsString := 'FINALIZADA';
        Cadastro.Post;
      end;





      AtualizaSTATUSVendaPrincipal(Cadastro, venda_produto, tsfFatura);

      TransaFD.Commit;
      // TransaFD.StartTransaction;
      // Cadastro.Open;
      ControllerVenda_AtualizaSituacaoFinanceira(Cadastro.FieldByName('CODIGO').AsString, 0);
    except
      TransaFD.Rollback;
      // TransaFD.StartTransaction;
      Cadastro.refresh;
      raise;
    end;
  finally
    btnFaturamento.Enabled := (UCControls1.GetComponentRight(btnFaturamento).Enabled);
    LockWindowUpdate(0);
  end;
end;

procedure TFrame_Venda_Venda.FaturarModificado1Click(Sender: TObject);
var
  ACodVenda, ACodVendaNew, AVendaTipoSelecionado, AEstagio, ASituacao,
    AUsuario: string;
  ADataConpetencia: TDateTime;
  AFrmVendaNovo: TFrame_Venda_Mestre;
begin
  // PodeEditarHitorico_Editando(FCodigoHistorico);
  inherited;
  if ShowMessageWR('Deseja gerar um faturamento Modificado?', MB_ICONQUESTION) = mrYes
  then
  begin
//    if TFrmVendaTipoSelecao.GetVendaEstagio(Tag_Venda, AVendaTipoSelecionado,  AEstagio, ASituacao, ADataConpetencia) then
    begin
//      AFrmVendaNovo := TFrame_Venda_Mestre(ConsultaForm(TFrame_Venda_Mestre));

      AFrmVendaNovo.TransaFD.StartTransaction;

      ACodVendaNew := FrameCopiarVendaEFinanceiro(AFrmVendaNovo, Cadastro, Venda_Financeiro, venda_produto, '');

      AFrmVendaNovo.CloseOpen_AbrirRegistro(ACodVendaNew);

//      CopiarVendaComProduto(TFrmVenda, venda_produto, GridProdutoTree, True, AFrmVendaNovo);
      Cadastro.Transaction.Commit;
      // CopiarVendaEFinanceiro Edita a Venda Antiga
      AFrmVendaNovo.TransaFD.Commit;

//      AFrmVendaNovo.FormStyle := fsMDIChild;
      AFrmVendaNovo.MainLayout.EndUpdate;
      Application.ProcessMessages;
      AFrmVendaNovo.Show;
    end;
  end;
end;

procedure TFrame_Venda_Venda.FinalizaEstoque;
// Quando chegar nessa função ja deve ter conferido tudo, e se tem estoque
var // aqui é a rotina que da baixa apenas
  QuerX: TFDQuery;
  AFatorMultiplicador, ACodProduto_Movimento: Integer;
  // Essa função esta acessando tabela errada, tem vários SQL qe não pode existir.
  ABloqueiaEstoqueInsuficiente: Boolean;
  ATipoUso: String;

{$REGION 'Antigo'}
  (* procedure VerificaEstoqueComposicao(AQuerEstoque: TFDQuery;
    ACodVendaProduto: Integer; ACodVenda: string; AQuantPecas: Double);
    var
    QuerZ: TFDQuery;
    AMensagem: string;
    // O cAMPO JA DEVE ESTAR NO SQL, E ESSA INFOMAÇÃO JA DEVE SER SINALIZADA NO GRID DO PRODUTO PRINCIPAL E NA COMPOSIÇÃO
    begin // NÃO PODE IR NO BANCO
    QuerZ := GeraFDQuery(AQuerEstoque.Transaction);
    // não pode fazer acesso aou banco, remover SQL usar as quer da tela
    try // O BOTÃO DA TELA JA DEVE ESTAR VERIFICANDO SE O ESTOQUE ESTA OK
    QuerZ.SQL.Text :=
    'select VC.*, PT.DESCRICAO as PRODUTO_TIPO                  ' +
    'from VENDA_COMPOSICAO VC                                   ' +
    'left join PRODUTO P on P.CODIGO = VC.CODPRODUTO            ' +
    'left join PRODUTO_TIPO PT on PT.CODIGO = P.CODPRODUTO_TIPO ' +
    'where VC.CODVENDA = :CODVENDA                              ' +
    '      and VC.CODVENDA_PRODUTO = :CODVENDA_PRODUTO';
    QuerZ.ParamByName('CODVENDA').AsString := ACodVenda;
    QuerZ.ParamByName('CODVENDA_PRODUTO').AsInteger := ACodVendaProduto;
    QuerZ.Open;
    while not QuerZ.eof do
    begin
    if (QuerZ.FieldByName('CODPRODUTO').AsString <> '') and
    (QuerZ.FieldByName('PRODUTO_TIPO').AsString <> 'SERVIÇO') then
    begin
    AQuerEstoque.Close;
    AQuerEstoque.ParamByName('CodProduto').AsString :=
    QuerZ.FieldByName('CODPRODUTO').AsString;
    AQuerEstoque.ParamByName('CodEmpresa').AsString := EmpresaAtiva;
    AQuerEstoque.Open;
    ABloqueiaEstoqueInsuficiente :=
    'S' = Procura('BLOQUEIA_ESTOQUE_INSUFICIENTE', 'PRODUTO_TIPO',
    Procura('CODPRODUTO_TIPO', 'PRODUTO',
    QuerZ.FieldByName('CODPRODUTO').AsString));
    if ABloqueiaEstoqueInsuficiente and
    (AQuerEstoque.Fields[0].AsFloat < (QuerZ.FieldByName('QUANT')
    .AsFloat * AQuantPecas)) then
    begin
    AMensagem := 'A Composição "' + QuerZ.FieldByName('PRODUTO')
    .AsString + '" do Produto "' + ProcuraField('PRODUTO',
    'VENDA_PRODUTO', ['CODVENDA', 'CODIGO'],
    [ACodVenda, ACodVendaProduto]) +
    '" não possui estoque suficiente.';
    { case ATipoMovimento of
    tmeFaturamento: ShowMessageWR('Não foi possível Faturar esta venda.' + sLineBreak + sLineBreak + AMensagem, MB_ICONWARNING);
    tmeMovimentoIndividual: ShowMessageWR(AMensagem, MB_ICONWARNING);
    end;
    Abort; }
    end;
    end;
    QuerZ.next;
    end;
    finally
    QuerZ.Free;
    end;
    end; *)
{$ENDREGION}
begin
  Produto_Estoque_Reservado.first;
  while not Produto_Estoque_Reservado.eof do
    Produto_Estoque_Reservado.Delete;

  // TODOS ESSES WHILES JA DEVEM SER MOSTRADOS EM CAMPOS NO GRID, E UMA FLAG INFORMADO QUE NÃO PODE SER FATURADO
  // SIMPLES, COMPOSICAO GERA INFORMAÇÃO PARA O PRODUTO E PRODUTO PARA A VENDA. FAZENDO RESUMOS
  AFatorMultiplicador := IfThen(Cadastro.FieldByName('NF_SAIDA_ENTRADA')
    .AsString = tpNFToStr(tnEntrada), 1, -1);
  ATipoUso := IfThen(Cadastro.FieldByName('NF_SAIDA_ENTRADA')
    .AsString = tpNFToStr(tnEntrada), 'Devolucao', 'Normal');
  venda_produto.first;
  while not venda_produto.eof do
  begin
    // Efetua a baixa do produto principal, mesmo se o estoque não é movimentado pela venda
    // if (Venda_Produto.FieldByname('PARENT').IsNull) then   //SE O PARENT È NULL SERVE PARA CONTINUAR A REGRA
    // begin                                                  //O ITEM PRINCIPAL SEMPRE BAIXA
    MovimentaEstoque(Cadastro.Transaction,
      venda_produto.FieldByName('CODPRODUTO').AsString,
      StrCodigoToCodEmpresa(Cadastro.FieldByName('CODIGO').AsString).ToString,
      venda_produto.FieldByName('PRODUTO_ESTOQUE_LOCAL').AsString, '',
      Cadastro.FieldByName('DT_FATURAMENTO').AsDateTime,
      'Venda n: ' + Cadastro.FieldByName('CODIGO').AsString,
      venda_produto.FieldByName('QUANT').AsFloat * AFatorMultiplicador,
      venda_produto.FieldByName('CODPRODUTO_LOTE').AsInteger, CodigoUsuario, '',
      Cadastro.FieldByName('CODIGO').AsString,
      venda_produto.FieldByName('VALOR_COMPRA').AsFloat,
      venda_produto.FieldByName('CALC_VVENDA_CUSTO').AsFloat,
      venda_produto.FieldByName('VALOR').AsFloat, 'FrmVenda', ATipoUso,
      Cadastro.FieldByName('VENDA_TIPO').AsString, ACodProduto_Movimento);
    // end
    // else
    // if Venda_Produto.FieldByName('ESTA_NA_PRODUCAO').AsString <> 'S' then   //CASO TENHA PARENTE E SE O ITEM ESTIVER NA PRODUCAO
    // begin                                                                   //NÃO DA BAIXA POIS A BAIXA É CONTROLADA POR LÁ
    // MovimentaEstoque(Cadastro.Transaction,                                //ESSA MESMA REGRA SE APLICA AO CANCELAR
    // Venda_Produto.FieldByName('CODPRODUTO').AsString,
    // GetCodEmpresaFromCodigo(Cadastro.FieldByName('CODIGO').AsString).ToString,
    // Venda_Produto.FieldByName('PRODUTO_ESTOQUE_LOCAL').AsString, '',
    // Cadastro.FieldByName('DT_FATURAMENTO').AsDateTime,
    // 'Venda n: ' + Cadastro.FieldByName('CODIGO').AsString,
    // Venda_Produto.FieldByName('QUANT').AsFloat * AFatorMultiplicador,
    // Venda_Produto.FieldByName('CODPRODUTO_LOTE').AsInteger, CodigoUsuario, '',
    // Cadastro.FieldByName('CODIGO').AsString,
    // Venda_Produto.FieldByName('VALOR_COMPRA').AsFloat,
    // Venda_Produto.FieldByName('CALC_VVENDA_CUSTO').AsFloat,
    // Venda_Produto.FieldByName('VALOR').AsFloat, 'FrmVenda', ATipoUso,
    // Cadastro.FieldByName('VENDA_TIPO').AsString);
    // end;

    // TRANSFERE PARA OUTRO ESTOQUE
    // if TConfig.ReadBoolean('ESTOQUE_DUPLO') then
    // begin
    // MovimentaEstoque(Cadastro.Transaction,
    // Venda_Produto.FieldByName('CODPRODUTO').AsString,
    // GetCodEmpresaFromCodigo(Cadastro.FieldByName('CODIGO').AsString)
    // .ToString, TConfig.ReadString('DESCRICAO_ESTOQUE_DUPLO'), '',
    // Cadastro.FieldByName('DT_FATURAMENTO').AsDateTime,
    // 'Venda n: ' + Cadastro.FieldByName('CODIGO').AsString,
    // Venda_Produto.FieldByName('QUANT').AsFloat,
    // Venda_Produto.FieldByName('CODPRODUTO_LOTE').AsInteger, CodigoUsuario,
    // '', Cadastro.FieldByName('CODIGO').AsString,
    // Venda_Produto.FieldByName('VALOR_COMPRA').AsFloat,
    // Venda_Produto.FieldByName('CALC_VVENDA_CUSTO').AsFloat,
    // Venda_Produto.FieldByName('VALOR').AsFloat, 'FrmVenda', ATipoUso,
    // Cadastro.FieldByName('VENDA_TIPO').AsString);
    // end;
    venda_produto.next;
  end;
end;

procedure TFrame_Venda_Venda.FormCreate(Sender: TObject);
begin
  inherited;
  // Oculta campo quando não emite NFe.
  GrupoNotaFiscal.Visible := (Empresa.FieldByName('EMITE_NFE').AsString = 'S')
    or (Empresa.FieldByName('EMITE_NFCE').AsString = 'S');
  TabNFSe.Visible := (Empresa.FieldByName('EMITE_NFSE').AsString = 'S');
end;

procedure TFrame_Venda_Venda.FrameEnter(Sender: TObject);
begin
  inherited;

//  ExtraRigthsRoutesVendaVenda(cbxTipo_Venda, TagComponente_Venda_cbxTipo_Venda, TagComponente_Venda_cbxTipo_Venda);
//  ConfigRoutesVendaVenda(cbxTipo_Venda, TagComponente_Venda_cbxTipo_Venda, Tag Tag_Validate_Venda_cbxTipo_Venda);
//  AddBotaoClickHint(edtValor, 'Test', nil, 0);

//  VincularComponenteNaRegra(edtResponsavelÎPessoasÎRAZAOSOCIAL, TagComponente_Venda_edtResponsavelÎPessoasÎRAZAOSOCIAL, TagComponente_Venda_edtResponsavelÎPessoasÎRAZAOSOCIAL, ControllerVendaVendaObrigatorio_RazaoSocialVazia);
//
//  VincularComponenteNaRegraGrid(TagWR_Obrigatorio_NFE_RazaoSocial_Preenchida, cbxAtivo, ControllerVEndaVendaNFE_RazaoSocial_Preenchida);

//  VincularComponenteNaRegra(Tag_Validate_Venda_edtResponsavelÎPessoasÎRAZAOSOCIAL, edtResponsavelÎPessoasÎRAZAOSOCIAL, ControllerVEndaVendaNFE_RazaoSocial_Preenchida);
//  VincularComponenteNaRegra(GrupoRecebimento , Tag_Validate_Venda_GrupoRecebimento);
//  VincularComponenteNaRegra(edtPDesc, Tag_Validate_Venda_edtPDesc);
//  VincularComponenteNaRegra(edtResponsavelÎPessoasÎFONE1 , Tag_Validate_Venda_edtResponsavelÎPessoasÎFONE1);
//  VincularComponenteNaRegra(GridFinanceiro, Tag_Validate_Venda_GridFinanceiro);
//  AplicaConfiguracoesTag(TFrmBase(Owner).tcBase.Tag);
//  VinculaValidate(edtValor, TagComponente_Venda_edtValor);
//  VincularComponenteNaRegra(edtPedidoCliente                    );
//  VincularComponenteNaRegra(edtPedidoRepresentante              );
//  VincularComponenteNaRegra(chkNF_Observacao_Padrao             );
//  VincularComponenteNaRegra(edtNF_Numero                        );
//  VincularComponenteNaRegra(cbxNF_FretePorConta                 );
//  VincularComponenteNaRegra(chkServico_Nota_Padrao              );
//  VincularComponenteNaRegra(edtNF_DT_EMISSAO                    );
//  VincularComponenteNaRegra(edtNF_DT_SaidaEntrada               );
//  VincularComponenteNaRegra(edtResponsavelPessoasCNPJCPF        );
//  VincularComponenteNaRegra(edtResponsavelPessoasCEP            );
//  VincularComponenteNaRegra(edtResponsavelPessoasENDERECO       );
//  VincularComponenteNaRegra(edtResponsavelPessoasNUMERO         );
//  VincularComponenteNaRegra(edtResponsavelPessoasBAIRRO         );
//  VincularComponenteNaRegra(edtResponsavelÎCidades              );
//  VincularComponenteNaRegra(edtResponsavelÎCidadesÎDESCRICAO    );
//  VincularComponenteNaRegra(edtResponsavelÎCidadesÎUF           );
//  VincularComponenteNaRegra(edtResponsavelPessoasINSCIDENT      );
//  VincularComponenteNaRegra(chkNFe_Calcula_Difal                );
//  VincularComponenteNaRegra(edtNF_NREF                          );
//  VincularComponenteNaRegra(EdtCFOPÎNF_CFOP                     );
//  VincularComponenteNaRegra(cxDBButtonEdit1                     );
//  VincularComponenteNaRegra(EdtNCMÎNF_NCM                       );
//  VincularComponenteNaRegra(edtResultadoICMSValor               );
//  VincularComponenteNaRegra(cxDBTextEdit10                      );
//  VincularComponenteNaRegra(edtNF_Transp_QVol                   );
end;

procedure TFrame_Venda_Venda.GeraParcelaTEF(ParcResp: TACBrTEFResp; ParcVenda: TVenda;
  CodTipoPagamento: Integer);
var
  I, ARow: Integer;
begin
  // Aqui deve apagar as parcelas anteriores geradas
  ARow := 1;
  for I := 0 to ParcResp.QtdParcelas - 1 do
  begin
    Venda_Financeiro.Insert;
    Venda_Financeiro.FieldByName('CODIGO').AsInteger := ARow;
    Venda_Financeiro.FieldByName('CODVENDA').AsString := Cadastro.FieldByName('CODIGO').AsString;
    Venda_Financeiro.FieldByName('TIPOPAGTO').AsString := Procura('DESCRICAO', 'TIPO_PAGAMENTO', CodTipoPagamento);
    Venda_Financeiro.FieldByName('CODCONTA').AsString := Procura('CODCONTA_PADRAO', 'TIPO_PAGAMENTO', CodTipoPagamento);
    Venda_Financeiro.FieldByName('DOCUMENTO').AsString := GetDocumentoParcelas(ARow, ParcResp.QtdParcelas);
    Venda_Financeiro.FieldByName('VALOR').AsFloat := ParcResp.Parcelas.Objects[I].Valor; // FormatFloatBr(ValorPago);
    Venda_Financeiro.FieldByName('NSU').AsString := ParcResp.Parcelas.Objects[I].NSUParcela;
    Venda_Financeiro.FieldByName('REDE').AsString := ParcVenda.Pagamentos[0].Rede;
    Venda_Financeiro.FieldByName('TEF_STATUS').AsString := IfThen(ParcVenda.Pagamentos[0].Cancelada, 'Cancelada',
      IfThen(ParcVenda.Pagamentos[0].Confirmada, 'Confirmada', 'Pendente'));
    Venda_Financeiro.FieldByName('CNPJ_CREDENCIADORA').AsString := ParcVenda.Pagamentos[0].RedeCNPJ;
    Venda_Financeiro.FieldByName('PARCELA').AsInteger := ARow;
    Venda_Financeiro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString := Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString;
    Venda_Financeiro.FieldByName('PESSOA_RESPONSAVEL_TIPO').AsString := Cadastro.FieldByName('PESSOA_RESPONSAVEL_TIPO').AsString;
    Venda_Financeiro.FieldByName('PESSOA_RESPONSAVEL_SEQUENCIA').AsInteger := Cadastro.FieldByName('PESSOA_RESPONSAVEL_SEQUENCIA').AsInteger;
    Venda_Financeiro.FieldByName('RAZAOSOCIAL').AsString := Cadastro.FieldByName('RAZAOSOCIAL').AsString;
    Venda_Financeiro.FieldByName('STATUS').AsString := 'ATIVO';
    Venda_Financeiro.FieldByName('TIPO').AsString := 'RECEBIDA';
    Venda_Financeiro.FieldByName('EMISSAO').AsDateTime := ParcVenda.DHInicio;
    Venda_Financeiro.FieldByName('VENCTO').AsDateTime := ParcResp.Parcelas.Objects[I].Vencimento;
    Venda_Financeiro.FieldByName('DATAPAGTO').AsDateTime := ParcVenda.DHInicio;
    Venda_Financeiro.Post;
    Inc(ARow);
  end;

  if ParcResp.QtdParcelas = 0 then
  begin
    Venda_Financeiro.Insert;
    Venda_Financeiro.FieldByName('CODIGO').AsInteger := ARow;
    Venda_Financeiro.FieldByName('CODVENDA').AsString :=
      Cadastro.FieldByName('CODIGO').AsString;
    Venda_Financeiro.FieldByName('TIPOPAGTO').AsString := Procura('DESCRICAO', 'TIPO_PAGAMENTO', CodTipoPagamento);
    // ParcVenda.Pagamentos[0].TipoPagamento + ' - ' + DescricaoTipoPagamento(ParcVenda.Pagamentos[0].TipoPagamento);
    Venda_Financeiro.FieldByName('CODCONTA').AsString := Procura('CODCONTA_PADRAO', 'TIPO_PAGAMENTO', CodTipoPagamento);
    Venda_Financeiro.FieldByName('DOCUMENTO').AsString := GetDocumentoParcelas(ARow, ARow);
    Venda_Financeiro.FieldByName('VALOR').AsFloat := ParcVenda.Pagamentos[0].ValorPago; // FormatFloatBr(ValorPago);
    Venda_Financeiro.FieldByName('NSU').AsString := ParcVenda.Pagamentos[0].NSU;
    Venda_Financeiro.FieldByName('REDE').AsString := ParcVenda.Pagamentos[0].Rede;
    Venda_Financeiro.FieldByName('TEF_STATUS').AsString := IfThen(ParcVenda.Pagamentos[0].Cancelada, 'Cancelada',
      IfThen(ParcVenda.Pagamentos[0].Confirmada, 'Confirmada', 'Pendente'));
    Venda_Financeiro.FieldByName('CNPJ_CREDENCIADORA').AsString := ParcVenda.Pagamentos[0].RedeCNPJ;
    Venda_Financeiro.FieldByName('PARCELA').AsInteger := ARow;
    Venda_Financeiro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString := Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString;
    Venda_Financeiro.FieldByName('PESSOA_RESPONSAVEL_TIPO').AsString := Cadastro.FieldByName('PESSOA_RESPONSAVEL_TIPO').AsString;
    Venda_Financeiro.FieldByName('PESSOA_RESPONSAVEL_SEQUENCIA').AsInteger := Cadastro.FieldByName('PESSOA_RESPONSAVEL_SEQUENCIA').AsInteger;
    Venda_Financeiro.FieldByName('RAZAOSOCIAL').AsString := Cadastro.FieldByName('RAZAOSOCIAL').AsString;
    Venda_Financeiro.FieldByName('STATUS').AsString := 'ATIVO';
    Venda_Financeiro.FieldByName('TIPO').AsString := 'RECEBIDA';
    Venda_Financeiro.FieldByName('EMISSAO').AsDateTime := ParcVenda.DHInicio;
    Venda_Financeiro.FieldByName('VENCTO').AsDateTime := ParcVenda.DHInicio;
    Venda_Financeiro.FieldByName('DATAPAGTO').AsDateTime := ParcVenda.DHInicio;
    Venda_Financeiro.Post;
  end;
end;

procedure TFrame_Venda_Venda.btnConfirmarClick(Sender: TdxTileControlItem);
begin
  inherited;
  // Verifica se as parcelas podem ser alteradas no Confirmar, para não precisar dar F5
  btnParcelas.Enabled := PodeAlterarParcelas;
  // se tem regra o usuário tem possibilidade de interagir ou no mínimo saber que a regra existe e quando ela é ativada
  DS_Financeiro.AutoEdit := PodeAlterarParcelas;
  // O Componente vai possuir um hint bonito informando por ele foi ativado
  GrupoFinanceiroTop.Enabled := PodeAlterarParcelas;
  cxGridViewFinanceiro.OptionsData.Editing := PodeAlterarParcelas;

end;

procedure TFrame_Venda_Venda.btnFaturamentoClick(Sender: TdxTileControlItem);
begin
  if Not Cadastro.Active then
  begin
    ShowMessage('Tabela fechada. Selecione uma venda ou Espere carregar a tela.');
    Exit;
  end;
  if Venda_Produto.RecordCount = 0 then
  begin
    ShowMessage('Não é possivel faturar a venda sem nenhum produto ou serviço.');
    Exit;
  end;
  if (Cadastro.FieldByName('CODVENDA_VINCULADA').AsString <> '') and
     (Cadastro.FieldByName('STATUS').AsString = 'ATIVO CRIADO') then
  begin
    FinanceiroBaixaParcelasPrevisao;
    Faturar(True);
  end
  else
    Faturar(Cadastro.FieldByName('DT_FATURAMENTO').AsString <> '');

  EnviarparaRequisio1Click(Sender);
  //TFrame_ConsuFinanceiro_Mestre.RatearCentroCusto('VENDA', Cadastro.FieldByName('CODIGO').AsString, TransaFD);
end;

procedure TFrame_Venda_Venda.btnNovoClick(Sender: TdxTileControlItem);
begin
  inherited;
  // Deve ficar aqui e no configurar para poder cacular o ISS retido
  Cadastro.FieldByName('NF_VALOR_ISS_ALIQ').AsFloat := Empresa.FieldByName('NFSe_ALIQ_ISS').AsFloat;

  if not (TConfig.ReadString('VENDA_TIPO_PADRAO_VENDA') = '') then
    Cadastro.FieldByName('VENDA_TIPO').AsString := TConfig.ReadString('VENDA_TIPO_PADRAO_VENDA')
  else
  begin
    QuerVenda_Tipo.First;
    Cadastro.FieldByName('VENDA_TIPO').AsString := QuerVenda_Tipo.FieldByName('DESCRICAO').AsString;
  end;
end;

procedure TFrame_Venda_Venda.CadastroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  WRLog('Iniciou a Venda:' + Cadastro.FieldByName('CODIGO').AsString);
end;

procedure TFrame_Venda_Venda.CadastroBeforePost(DataSet: TDataSet);
begin
  inherited;
  if Cadastro.FieldByName('DT_FATURAMENTO').IsNull then
    Cadastro.FieldByName('SITUACAOFINANCEIRA').AsString := 'A Faturar';
end;

procedure TFrame_Venda_Venda.CancelarNFeInconsistentePDV;
begin
  TFrmVendaFrameNotaFiscal.CarregaFrame(FFrameNotaFiscal, PnlNotaFiscal, DS,
  wrNotaFiscal);

  WREventosCadastro.ValidaBuscaComponetesFrame(TWinControl(FFrameNotaFiscal));

  with TFrmVendaFrameNotaFiscal(FFrameNotaFiscal) do
    FFrmNotaFiscal.CancelarNFePDV;
end;

procedure TFrame_Venda_Venda.cbxTipo_VendaPropertiesChange(Sender: TObject);
begin
  inherited;
//  if libtnFaturamento.Visible then
//  begin
//    btnFaturamento.Enabled := {Cadastro.FieldByName('DT_FATURAMENTO').IsNull and}
//      (UCControls1.GetComponentRight(btnFaturamento).Enabled) and
//      (VerificaTipoDeVendaPodeFaturar);
//  end;
//
//  btnFaturamentoProducao.Enabled := Cadastro.FieldByName('DT_FATURAMENTO').IsNull and
//                                    (UCControls1.GetComponentRight(btnFaturamento).Enabled) and
//                                    (VerificaTipoDeVendaPodeFaturar);
end;

procedure TFrame_Venda_Venda.ConfigurarCAIXA1Click(Sender: TObject);
begin
  inherited;
   TFrmPDV_Pagamento.AbrirConfiguracao(FFrmPDV_Pagamento, Self, 0);
end;

procedure TFrame_Venda_Venda.btnAtualizarCreditoClick(Sender: TObject);
begin
  inherited;
  VerificaSePodeAlteraDataSet;
  Cadastro.FieldByName('CREDITO_DISPONIVEL').AsFloat  := TFrmFinanceiro.GetCreditoDisponivel(TransaFD, Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString);
end;

procedure TFrame_Venda_Venda.Definiressetipodevendacomopadro1Click(Sender: TObject);
begin
//  inherited;
  TConfig.SaveString('VENDA_TIPO_PADRAO_VENDA', cbxTipo_Venda.EditValue);
  ShowMessage('Tipo de venda "' + cbxTipo_Venda.EditValue + '" salvo como padrão.')
end;

procedure TFrame_Venda_Venda.DSStateChange(Sender: TObject);
var
  APodeEditar: Boolean;
begin
  inherited;
// APodeEditar                := Cadastro.FieldByName('FATURAMENTO_DT_ENVIO').IsNull;
// TabProdutos.Enabled        := APodeEditar;
// TabFinanceiro.Enabled      := APodeEditar;
// TabDadosAdicionais.Enabled := APodeEditar;

// libtnFaturamento.Visible := Cadastro.FieldByName('DT_FATURAMENTO').IsNull;
  btnFaturamento.Enabled := (Cadastro.State = dsBrowse);
end;

procedure TFrame_Venda_Venda.tcEnviaRequisicaoClick(
  Sender: TdxTileControlItem);
Var
  AEntradaSaida :String;
  QuerX: TFDQuery;
begin
  inherited;
  BtnAlterar.Click;
  QuerX := GeraFDQuery(TransaFD);
  try
    Routes.Requisicao.Venda.SolicitaRequisicaoPelaVenda(TransaFD, Cadastro, Venda_Produto, Cadastro.FieldByName('NF_SAIDA_ENTRADA').AsString);
    try
      QuerX.SQL.Text := 'select * from projeto where codvenda = '+ Cadastro.FieldByName('CODIGO').AsString;
      QuerX.Open;
      if QuerX.RecordCount = 0 then
      begin
        QuerX.SQL.Text := 'select * from projeto';
        QuerX.Insert;
        QuerX.FieldByName('CODIGO').AsInteger                       := trunc(GetProximoCodigoGen('CR_PROJETO'));
        Cadastro.FieldByName('CODPROJETO').AsInteger                := QuerX.FieldByName('CODIGO').AsInteger;
        QuerX.FieldByName('CODVENDA').AsString                      := Cadastro.FieldByName('CODIGO').AsString;
        QuerX.FieldByName('DESCRICAO').AsString                     := Cadastro.FieldByName('RAZAOSOCIAL').AsString;
        QuerX.FieldByName('DT_EMISSAO').AsDateTime                  := DataHoraSys;
        QuerX.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString     := Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString;
        QuerX.FieldByName('PESSOA_RESPONSAVEL_SEQUENCIA').AsInteger := Cadastro.FieldByName('PESSOA_RESPONSAVEL_SEQUENCIA').AsInteger;
        QuerX.FieldByName('PESSOA_RESPONSAVEL_TIPO').AsString       := Cadastro.FieldByName('PESSOA_RESPONSAVEL_TIPO').AsString;
    //    QuerX.FieldByName('DT_INICIO').AsDateTime :=
    //    QuerX.FieldByName('DT_FIM').AsDateTime :=
        QuerX.FieldByName('ATIVO').AsString                         := Cadastro.FieldByName('ATIVO').AsString;
        QuerX.Post;
      end;
      BtnConfirmar.Click;
    finally
      QuerX.free;
    end;
  except
    on E:EWRException do
    begin
      BtnCancelar.Click;
      ShowMessage(E.Message);
    end;
  end;
end;

procedure TFrame_Venda_Venda.btnFaturamentoProducaoClick(Sender: TObject);
var
  QuerProducaoProduto, QuerProducao: TFDQuery;
  AMemTableVendaProduto: TFDMemTable;
  AFrmVendaNovo: TFrame_Venda_Venda;
  ACodVenda, AVendaTipo, ASituacao, AEstagio: String;
  ADataCompetencia : TDateTime;
begin
  if Not VerificaTipoDeVendaPodeFaturar then
  begin
    ShowMessageWR('Não é possível faturar vendas do tipo ' + Cadastro.FieldByName('VENDA_TIPO').AsString +
      '. Altere o tipo da venda para efetuar o Faturamento.');
    Exit;
  end;

  venda_produto.first;
  while not venda_produto.eof do
  begin
    Producao.Close;
    Producao.Open;
    if Producao.FieldByName('DT_FIM').IsNull then
    begin
      if ShowMessageWR('Existem produtos em produção que ainda não foram finalizados, Deseja ver a Produção?', MB_ICONQUESTION) = mrYes then
        btnVerProducaoClick(nil);
      Exit;
    end;
    venda_produto.next;
  end;

  VerificaSePodeAlteraDataSet(Cadastro);
  Cadastro.FieldByName('FATURAMENTO_DT_ENVIO').AsDateTime := DataHoraSys;
  btnConfirmar.Click;

  QuerProducao := GeraFDQuery;
  QuerProducaoProduto := GeraFDQuery;
  try
    QuerProducao.SQL.Text := 'select * from producao p where p.codvenda =:Codvenda';
    QuerProducao.ParamByName('Codvenda').Value := Cadastro.FieldByName('CODIGO').AsString;
    QuerProducao.Open;

    QuerProducaoProduto.SQL.Text :=
      'select * from producao_produto pp where pp.codvenda = :Codvenda and pp.codvenda_produto = :CodVendaProduto and pp.tipo_uso = ''Fatura''';

    ACodVenda := Cadastro.FieldByName('CODIGO').AsString;
    AVendaTipo := Cadastro.FieldByName('VENDA_TIPO').AsString;
    AEstagio := Cadastro.FieldByName('VENDA_ESTAGIO').AsString;
    ASituacao := Cadastro.FieldByName('SITUACAO').AsString;

//    AFrmVendaNovo := TFrmVenda(ConsultaForm(TFrmVenda));
//    CopiarVendaEFinanceiro(AFrmVendaNovo, Cadastro, Venda_Financeiro, venda_produto, '');
    with AFrmVendaNovo do
    begin
      QuerProducao.first;
      while not QuerProducao.eof do
      begin
        AFrmVendaNovo.venda_produto.Insert;
        DSCopiarCamposIguais(QuerProducao, AFrmVendaNovo.venda_produto, ['CODIGO', 'CODVENDA', 'DT_ALTERACAO', 'DT_EMISSAO', 'ORDEM']);
        AFrmVendaNovo.venda_produto.FieldByName('QTDADEPECA_FORMULA').AsFloat := QuerProducao.FieldByName('QUANT').AsFloat;
        AFrmVendaNovo.venda_produto.FieldByName('COMP_FORMULA').AsFloat := QuerProducao.FieldByName('COMP').AsFloat;
        AFrmVendaNovo.venda_produto.FieldByName('LARG_FORMULA').AsFloat := QuerProducao.FieldByName('LARG').AsFloat;
        AFrmVendaNovo.venda_produto.FieldByName('ESP_FORMULA').AsFloat := QuerProducao.FieldByName('ESP').AsFloat;
        AFrmVendaNovo.venda_produto.Post;
        QuerProducaoProduto.Close;
        QuerProducaoProduto.ParamByName('Codvenda').Value := ACodVenda;
        QuerProducaoProduto.ParamByName('CodVendaProduto').Value := venda_produto.FieldByName('CODIGO').AsString;
        QuerProducaoProduto.Open;
        QuerProducaoProduto.first;
        while not QuerProducaoProduto.eof do
        begin
          AFrmVendaNovo.venda_produto.Insert;
          DSCopiarCamposIguais(QuerProducaoProduto, AFrmVendaNovo.venda_produto, ['CODIGO', 'CODVENDA', 'DT_ALTERACAO', 'DT_EMISSAO', 'ORDEM', 'PARENT']);
          AFrmVendaNovo.venda_produto.FieldByName('QTDADEPECA_FORMULA').AsFloat := QuerProducaoProduto.FieldByName('QUANT').AsFloat;
          AFrmVendaNovo.venda_produto.FieldByName('COMP_FORMULA').AsFloat       := QuerProducaoProduto.FieldByName('COMP').AsFloat;
          AFrmVendaNovo.venda_produto.FieldByName('LARG_FORMULA').AsFloat       := QuerProducaoProduto.FieldByName('LARG').AsFloat;
          AFrmVendaNovo.venda_produto.FieldByName('ESP_FORMULA').AsFloat        := QuerProducaoProduto.FieldByName('ESP').AsFloat;
          AFrmVendaNovo.venda_produto.FieldByName('PARENT').AsInteger           := QuerProducaoProduto.FieldByName('CODVENDA_PRODUTO').AsInteger;
          if not(QuerProducaoProduto.FieldByName('PARENT').IsNull) then
            // TEM QUE EVIAR A COMPOSICAO NOVAMEnTE Para TESTAR MELHOR AQUI
            AFrmVendaNovo.venda_produto.FieldByName('PARENT').AsInteger := QuerProducaoProduto.FieldByName('PARENT').AsInteger;

          AFrmVendaNovo.venda_produto.Post;
          QuerProducaoProduto.next;
        end;
        QuerProducao.next;
      end;

//      TFrmVendaTipoSelecao.GetVendaEstagio(TFrmVenda, AVendaTipo, AEstagio, ASituacao, ADataCompetencia);
      AFrmVendaNovo.Cadastro.FieldByName('VENDA_TIPO').AsString    := AVendaTipo;
      AFrmVendaNovo.Cadastro.FieldByName('VENDA_ESTAGIO').AsString := AEstagio;
      AFrmVendaNovo.Cadastro.FieldByName('SITUACAO').AsString      := ASituacao;
      AFrmVendaNovo.Cadastro.FieldByName('DT_COMPETENCIA').AsDateTime:= ADataCompetencia;

//      FormStyle := fsMDIChild;
      MainLayout.EndUpdate;
      Application.ProcessMessages;
      Show;

      WRCalc.SprFechaMemTables; // CalculaProduto
      venda_produto.refresh; // <<<<<<< pRECISO DISSO
      WRCalc.SprVerificaOrdenacao;
      WRCalc.CalcBuild; // CalculaProduto
      WRCalc.SprCopiarFormula; // Resolve eu acho
      WRCalc.SuperCalc; // CalculaProduto
      edtCodProduto.SetFocusWR;
      // if not FGradeAdicionandoProdutos then
      // LimparCampos;
      // GridProdutoTree.FullCollapse;
    end;
  Finally
    QuerProducao.Free;
    QuerProducaoProduto.Free;
  end;

{$REGION 'Codigo Antigo'}
  // AMemTableVendaProduto := TFDMemTable.Create(nil);
  // AMemTableVendaProduto.CopyDataSet(Venda_Produto, [coStructure]);
  // AMemTableVendaProduto.Insert;
  // AMemTableVendaProduto.CopyRecord(Venda_Produto);
  // AMemTableVendaProduto.Post;

  // AMemTableVendaProduto        := TFDMemTable.Create(nil);
  // AMemTableVendaProduto.Data   := Cadastro.Data;
  // QuerProducaoProduto          := GeraFDQuery;
  //
  // Venda_Produto.First;
  // while Venda_Produto.Eof do
  // begin
  // Producao.Close;
  // Producao.Open;
  // if Producao.FieldByName('DT_FIM').IsNull then
  // begin
  // if ShowMessageWR('Existem produtos em produção que ainda não foram finalizados, Deseja ver a Produção',MB_ICONQUESTION) = mrYes  then
  // btnVerProducaoClick(nil);
  // Exit;
  // end;
  // end;
  //
  // try //Se tem CODVENDA_ORIGINAL é porque tem vinculo
  // if not(Venda_Produto.FieldByName('CODVENDA_ORIGINAL').IsNull) then
  // begin
  // AMemTableVendaProduto.first;
  // while AMemTableVendaProduto.Eof do
  // begin                                 //Traz todos os materiais ativos da venda original do produto que está atualmente no while
  // QuerProducaoProduto.SQL.Text := 'select * from producao_produto pp where pp.ATIVO = ''S'' and pp.codvenda = :'+AMemTableVendaProduto.FieldByName('CODVENDA_ORIGINAL').AsString;
  // QuerProducaoProduto.Open;
  // if QuerProducaoProduto.RecordCount > 0 then
  // begin //aqui AVISARIA para cada venda que entrar nas condições, nada de mais, da para desativar
  // ShowMessage('Existe itens na Produção da Venda: '+ AMemTableVendaProduto.FieldByName('CODVENDA_ORIGINAL').AsString +' a Faturar');
  // VerificaSePodeAlteraDataSet(Cadastro);
  // //Aqui teria que ter o DELETE dos MATEIRAIS
  // QuerProducaoProduto.first;
  // while not QuerProducaoProduto.eof do
  // begin
  // venda_produto.Insert;
  // DSCopiarCamposIguais(QuerProducaoProduto, venda_produto,['CODIGO', 'ORDEM', 'PARENT']);
  // //O codvenda_produto da produção tem que ser igual ao codvenda_produto_original(IF de testes)
  // if QuerProducaoProduto.FieldByName('CODVENDA_PRODUTO').AsInteger = AMemTableVendaProduto.FieldByName('CODVENDA_PRODUTO_ORIGINAL').AsInteger then
  // begin
  // venda_produto.FieldByName('PARENT').AsInteger := AMemTableVendaProduto.FieldByName('CODIGO').AsInteger;
  // end;
  // venda_produto.FieldByName('SEQUENCIA').Value   := GridProdutoTree.Count;
  // // TEM QUE ARRUMAR AQUI
  // venda_produto.Post;
  // QuerProducaoProduto.next;
  // end;
  // end;
  // AMemTableVendaProduto.Next;
  // end;
  // WRCalc.SprFechaMemTables; // CalculaProduto
  // venda_produto.refresh; // <<<<<<< pRECISO DISSO
  // WRCalc.SprVerificaOrdenacao;
  // WRCalc.CalcBuild; // CalculaProduto
  // WRCalc.SprCopiarFormula; // Resolve eu acho
  // WRCalc.SuperCalc; // CalculaProduto
  // edtCodProduto.SetFocusWR;
  // // if not FGradeAdicionandoProdutos then
  // // LimparCampos;
  // GridProdutoTree.FullCollapse;
  // end
  // else //METODO ANTIGO, DARIA PARA PEGAR UM ARRAY COM OS CODVENDA E PASSAR APENAS UMA VEZ ENCURTADO O CODIGO, MAS EXISTE ALGO......
  // begin
  // QuerProducaoProduto.SQL.Text :=
  // 'select * from producao_produto pp where pp.codvenda = :CodVenda and pp.PODE_FATURAR = ''S'' ';
  // QuerProducaoProduto.ParamByName('CODVENDA').AsString := Cadastro.FieldByName('CODIGO').AsString;
  // QuerProducaoProduto.Open;
  // if QuerProducaoProduto.RecordCount > 0 then
  // begin
  // ShowMessage('Existe itens na Produção a Faturar');
  // VerificaSePodeAlteraDataSet(Cadastro);
  // QuerProducaoProduto.first;
  // while not QuerProducaoProduto.eof do
  // begin
  // venda_produto.Insert;
  // DSCopiarCamposIguais(QuerProducaoProduto, venda_produto,
  // ['CODIGO', 'ORDEM', 'PARENT']);
  // venda_produto.FieldByName('PARENT').AsInteger :=
  // QuerProducaoProduto.FieldByName('CODVENDA_PRODUTO').AsInteger;
  // venda_produto.FieldByName('SEQUENCIA').Value := GridProdutoTree.Count;
  // // TEM QUE ARRUMAR AQUI
  // venda_produto.Post;
  // QuerProducaoProduto.next;
  // end;
  // WRCalc.SprFechaMemTables; // CalculaProduto
  // venda_produto.refresh; // <<<<<<< pRECISO DISSO
  // WRCalc.SprVerificaOrdenacao;
  // WRCalc.CalcBuild; // CalculaProduto
  // WRCalc.SprCopiarFormula; // Resolve eu acho
  // WRCalc.SuperCalc; // CalculaProduto
  // edtCodProduto.SetFocusWR;
  // // if not FGradeAdicionandoProdutos then
  // // LimparCampos;
  // GridProdutoTree.FullCollapse;
  // end;
  // end;
  // QuerProducaoProduto.SQL.Text := 'Update Producao p set P.DT_VENDA_PRODUCAO :DT_VENDA_PRODUCAO where P.CODVENDA = :CODVENDA';
  // QuerProducaoProduto.ParamByName('DT_VENDA_PRODUCAO').Value := DataHoraSys;
  // QuerProducaoProduto.ParamByName('CODVENDA').Value          := Cadastro.FieldByName('CODIGO').Value;
  // finally
  // QuerProducaoProduto.Free;
  // end;
{$ENDREGION}

  // Perguntar Se quer ver a Produção ou copiar os itens novos para o Faturamento?

end;

procedure TFrame_Venda_Venda.btnCancela_FaturamentoClick(Sender: TdxTileControlItem);
var
  QuerX, QuerAgrupado: TFDQuery;
  AFatorMultiplicador, ACodProduto_Movimento: Integer;
  ACaixaRec: TCaixaRec;
  ADataAtual: TDateTime;
  ASomenteFinanceiro: Boolean;
begin
  inherited;
  ASomenteFinanceiro := False;
  { Dá pra ter venda faturada com status inativo? Como isso? }
  if Copy(Cadastro.FieldByName('STATUS').AsString, 1, 7) = 'INATIVO' then
  begin
    ShowMessage
      ('Não pode movimentar venda INATIVA. Reative no "Menu > Reativar Venda" primeiro.');
    Exit;
  end;
  ADataAtual := DataHoraSys;
  QuerX := GeraFDQuery;
  try
    // Verifica se há parcelas recebidas e se estas estão em caixa fechado
    QuerX.SQL.Text := 'select F.DATAPAGTO, F.CODCONTA, F.STATUS, F.TIPOPAGTO ' +
      'from FINANCEIRO F ' + 'left join CONTAS C on (F.CODCONTA = C.CODIGO) ' +
      'where (F.CODPEDIDO = :Cod) ' + '      and (F.STATUS like ''ATIVO%'') ' +
      '      and (C.TIPO = ''CAIXA'') ' +
      '      and (F.TIPO in (''RECEBIDA'',''PAGA''))';
    QuerX.Params[0].AsString := Cadastro.FieldByName('CODIGO').AsString;
    QuerX.Open;
    while not QuerX.eof do
    begin
      ACaixaRec := GetSituacaoCaixaSQL(TransaFD, QuerX.FieldByName('DATAPAGTO').AsDateTime, QuerX.FieldByName('CODCONTA').AsInteger, True);
      if ACaixaRec.Situacao = scCaixaFechado then
      begin
        ShowMessageWR
          ('Algumas parcelas desta venda já foram recebidas/pagas e o caixa relativo já foi fechado.'
          + sLineBreak + 'Não é possível cancelar o faturamento desta venda.');
        Abort;
      end;
      if (QuerX.FieldByName('STATUS').AsString = 'ATIVO*') and not(QuerX.FieldByName('TIPOPAGTO').AsString = 'CRÉDITO') then
      // impede que o venda seja cancelado caso o cartão ja tenha sido transferido
      begin
        ShowMessageWR
          ('Algumas Parcelas desta venda já foram transferidas para outra conta.'
          + sLineBreak + 'Não é possível cancelar o faturamento desta venda.');
        Abort;
      end;

      QuerX.next;
    end;
    QuerX.Close;
    QuerX.SQL.Text :=
      'select * from FINANCEIRO F where F.CODPEDIDO = :CODPEDIDO';
    QuerX.Params[0].AsString := Cadastro.FieldByName('CODIGO').AsString;
    QuerX.Open;
    QuerX.first;
    while not QuerX.eof do
    begin
      if QuerX.FieldByName('STATUS').AsString = 'INATIVO AGRUPADO' then
      begin
        QuerAgrupado := GeraFDQuery;
        try
          QuerAgrupado.SQL.Text := 'select * from FINANCEIRO F ' +
            'where F.AGRUPADOR = :AGRUPADOR ' + '      and F.STATUS = :STATUS';
          QuerAgrupado.ParamByName('AGRUPADOR').AsInteger :=
            QuerX.FieldByName('AGRUPADOR').AsInteger;
          QuerAgrupado.ParamByName('STATUS').AsString := 'ATIVO AGRUPADO';
          QuerAgrupado.Open;
          if not QuerAgrupado.IsEmpty then
          begin
            GeraExcecao
              ('Existe parcela referente a este pedido que está agrupada!' +
              sLineBreak + 'Não é possível cancelar o faturamento desta venda.'
              + sLineBreak + 'Documento Financeiro: ' +
              QuerX.FieldByName('DOCUMENTO').AsString);
          end;
        finally
          QuerAgrupado.Free;
        end;
      end;

      if QuerX.FieldByName('BOLETO_NOSSO_NR').AsString.Trim <> '' then
        GeraExcecao
          ('Existe parcela referente a este pedido que já foi emitido boleto.' +
          sLineBreak + 'Não é possível cancelar o faturamento dessa venda.' +
          sLineBreak + 'Documento Financeiro: ' + QuerX.FieldByName('DOCUMENTO')
          .AsString);
      if not QuerX.FieldByName('DT_CONCILIADO').IsNull then
        GeraExcecao
          ('Existe parcela referente a este pedido que já foi conciliada.' +
          sLineBreak + 'Não é possível cancelar o faturamento dessa venda.' +
          sLineBreak + 'Documento Financeiro: ' + QuerX.FieldByName('DOCUMENTO')
          .AsString);

      QuerX.next;


    end;


    QuerX.Close;
    QuerX.SQL.Text := 'select (select COUNT(1) from COMISSAO_FINANCEIRO CF' + #13#10 +
       'LEFT JOIN COMISSAO CO ON CO.CODIGO = CF.CODCOMISSAO' + #13#10 +
       'WHERE CF.codfinanceiro = F.codigo and CF.codfinanceiro > 1 and CO.DT_FINANCEIRO IS NOT NULL) as QTD_COMISSAO_PAGA' + #13#10 +
       ' from FINANCEIRO F where f.codpedido = :CODPEDIDO';
    QuerX.Params[0].AsString := Cadastro.FieldByName('CODIGO').AsString;
    QuerX.Open;
    QuerX.first;
    while not QuerX.Eof do
    begin
      if QuerX.FieldByName('QTD_COMISSAO_PAGA').AsInteger > 0 then
      begin
        GeraExcecao('Existe comissão gerada.' +
        sLineBreak + 'Não é possível cancelar o faturamento dessa venda.');
      end;
      QuerX.Next;
    end;





    // Se tiver agrupada em outra venda, não pode cancelar faturamento.
    QuerX.Close;
    QuerX.SQL.Text :=  'SELECT V.CODIGO FROM VENDA V WHERE V.CODIGO IN (SELECT VP.CODVENDA ' +
                       'FROM VENDA_PRODUTO VP ' +
                       'LEFT JOIN VENDA V1 ON V1.CODIGO = VP.CODVENDA ' +
                       'WHERE VP.CODVENDA_ORIGINAL = :codvenda AND V1.ATIVO = ''S'')';
    QuerX.ParamByName('codvenda').AsString := Cadastro.FieldByName('CODIGO').AsString;
    QuerX.Open;
    if QuerX.RecordCount > 0 then
    begin
      GeraExcecao('Este pedido já foi agrupado, não é possível cancelar o faturamento.');
      Abort;
    end;
  finally
    QuerX.Free;
  end;
  LockWindowUpdate(Self.Handle);
  try
    try
      if ShowMessageWR('Deseja CANCELAR o Faturamento dessa Ordem de Serviço',
        MB_ICONQUESTION) = mrYes then
      begin
        if (not UsuarioSenha(True, True)) then
          Exit;
        Cadastro.Edit;
        // Venda.FieldByName('HISTORICO').AsString := #13#10 + 'Movimento: Cancelou Faturamento ' + HISTORICO + Venda.FieldByName('HISTORICO').AsString;
        Cadastro.FieldByName('DT_FATURAMENTO').AsString := '';
        // Cadastro.FieldByName('FATURAMENTO').AsString := 'A FATURAR';
        if (Cadastro.FieldByName('CODVENDA_VINCULADA').AsString <> '') and
           (Cadastro.FieldByName('STATUS').AsString = 'ATIVO CRIADO') then
          ASomenteFinanceiro := True;

        QuerX := GeraFDQuery(TransaFD);
        try
          // Verifica a conta Banco. ATENÇÃO PARA MANTER O WHERE DOS DOIS SQL IGUAIS SEMPRE!!
          QuerX.SQL.Text := 'select TIPO, CODCONTA, DATAPAGTO ' +
            'from FINANCEIRO                  ' + 'where (CODPEDIDO = :Cod)';
          QuerX.Params[0].AsString := Cadastro.FieldByName('CODIGO').AsString;
          QuerX.Open;
          wrFuncoesValidarSituacaoContaBanco(QuerX);
          QuerX.Close;

          // Cancela o lançamento de crédito caso exista
          TFrmFinanceiro.CancelarConsumoCreditoVenda(TransaFD, Cadastro.FieldByName('CODIGO').AsString);
          TFrmFinanceiro.CancelarCreditoLancadoVenda(TransaFD, Cadastro.FieldByName('CODIGO').AsString);

          QuerX.SQL.Text := 'update FINANCEIRO F set F.STATUS = ''INATIVO CANCELADA'', ' +
                            ' F.MOTIVO_EXCLUSAO =  :MOTIVO ,      ' +
                            ' F.DT_ALTERACAO = :Data ' +
                            'where (F.CODPEDIDO = :COD)';
          QuerX.ParamByName('COD').AsString := Cadastro.FieldByName('CODIGO').AsString;
          QuerX.ParamByName('MOTIVO').AsString := 'CANCELAMENTO DE FATURAMENTO DA VENDA - ' +
                                                  'DATA: ' + DateTimeToStr(ADataAtual) + ' - USUÁRIO: ' + Procura('USUARIO', 'USUARIO', CodigoUsuario.ToString);
          QuerX.ParamByName('Data').AsDateTime := DataHoraSys;
          QuerX.ExecSQL;
        finally
          QuerX.Free;
        end;

        // Caso tenha parcelas de vendas agrupadas, vai voltar para ATIVO PENDENTE
        FinanceiroRetornaParcelasPrevisao;

        Cadastro.FieldByName('CODUSUARIO_FATURAMENTO').Clear;
        /// //////////////////// CANCELA NO Financeiro ////////////////////

        AFatorMultiplicador := IfThen(Cadastro.FieldByName('NF_SAIDA_ENTRADA').AsString = tpNFToStr(tnEntrada), -1, 1);
        if (Cadastro.FieldByName('STATUS').AsString <> 'ATIVO AGRUPADO CLIENTE')
        and not ASomenteFinanceiro
        then
        begin
          venda_produto.DisableControls;
          try
            venda_produto.first;
            while not venda_produto.eof do
            begin
              if not MatchStr(venda_produto.FieldByName('CODPRODUTO').AsString,
                ['0', '']) then
              begin
                // if Venda_Produto.FieldByName('PARENT').IsNull then
                // begin
                MovimentaEstoque(Cadastro.Transaction,
                  venda_produto.FieldByName('CODPRODUTO').AsString,
                  StrCodigoToCodEmpresa(Cadastro.FieldByName('CODIGO').AsString).ToString,
                  venda_produto.FieldByName('PRODUTO_ESTOQUE_LOCAL').AsString,
                  '', Cadastro.FieldByName('DT_FATURAMENTO').AsDateTime,
                  'Cancelou Venda n: ' + Cadastro.FieldByName('CODIGO').AsString,
                  venda_produto.FieldByName('QUANT').AsFloat *
                  AFatorMultiplicador,
                  venda_produto.FieldByName('CODPRODUTO_LOTE').AsInteger,
                  CodigoUsuario, '', Cadastro.FieldByName('CODIGO').AsString,
                  venda_produto.FieldByName('VALOR_COMPRA').AsFloat,
                  venda_produto.FieldByName('CALC_VVENDA_CUSTO').AsFloat,
                  venda_produto.FieldByName('VALOR').AsFloat, 'FrmVenda',
                  'Cancelado', Cadastro.FieldByName('VENDA_TIPO').AsString,
                  ACodProduto_Movimento);
                // end
                // else
                // if Venda_Produto.FieldByName('EM_PRODUCAO').AsString <> 'S' then
                // begin
                // MovimentaEstoque(Cadastro.Transaction,
                // venda_produto.FieldByName('CODPRODUTO').AsString,
                // GetCodEmpresaFromCodigo(Cadastro.FieldByName('CODIGO')
                // .AsString).ToString,
                // venda_produto.FieldByName('PRODUTO_ESTOQUE_LOCAL').AsString,
                // '', Cadastro.FieldByName('DT_FATURAMENTO').AsDateTime,
                // 'Cancelou Venda n: ' + Cadastro.FieldByName('CODIGO')
                // .AsString, venda_produto.FieldByName('QUANT').AsFloat *
                // AFatorMultiplicador,
                // venda_produto.FieldByName('CODPRODUTO_LOTE').AsInteger,
                // CodigoUsuario, '', Cadastro.FieldByName('CODIGO').AsString,
                // venda_produto.FieldByName('VALOR_COMPRA').AsFloat,
                // venda_produto.FieldByName('CALC_VVENDA_CUSTO').AsFloat,
                // venda_produto.FieldByName('VALOR').AsFloat, 'FrmVenda',
                // 'Cancelado', Cadastro.FieldByName('VENDA_TIPO').AsString);
                // end;

              end;

              // if ProdutoLocalMovimentoEstoqueStrToEnum(Venda_Produto.FieldByName('ESTOQUE_LOCAL_MOVIMENTO').AsString) = pmeVenda then
              begin
                { Venda_Composicao.First;
                  while not Venda_Composicao.Eof do
                  begin
                  if Venda_Composicao.FieldByName('PODE_RETORNAR_AO_ESTOQUE').AsString <> 'S' then
                  begin
                  MovimentaEstoque(Cadastro.Transaction, Venda_Composicao.FieldByName('CODPRODUTO').AsString, GetCodEmpresaFromCodigo(Cadastro.FieldByName('CODIGO').AsString).ToString, Venda_Composicao.FieldByName('PRODUTO_ESTOQUE_LOCAL').AsString,
                  '', Cadastro.FieldByName('DT_FATURAMENTO').AsDateTime, 'Cancelou Venda n: ' + Cadastro.FieldByName('CODIGO').AsString, Venda_Composicao.FieldByName('QUANT').AsFloat * AFatorMultiplicador,
                  Venda_Composicao.FieldByName('CODPRODUTO_LOTE').AsInteger, CodigoUsuario,'', Cadastro.FieldByName('CODIGO').AsString);
                  end;
                  Venda_Composicao.Next;
                  end; }
              end;
              venda_produto.next;
            end;
          finally
            venda_produto.EnableControls;
          end;
        end;

        if Cadastro.FieldByName('STATUS').AsString = 'ATIVO PARCIAL' then
        begin
          ControllerVenda_CriaVendaParcialPrincipal(TransaFD, Cadastro, Venda_Produto,'N');
        end;

        Cadastro.FieldByName('SITUACAOFINANCEIRA').AsString := 'A Faturar';
        Cadastro.Post;
        AtualizaSTATUSVendaPrincipal(Cadastro, venda_produto, tsfCancelafatura);
        TransaFD.Commit;
        Cadastro.Open;
      end;
    except
      on E: Exception do
      begin
        TransaFD.Rollback;
        Cadastro.Open;
        raise;
      end;
    end;
  finally
    LockWindowUpdate(0);
  end;
end;

procedure TFrame_Venda_Venda.edtCreditoPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  if SimpleRoundTo(Cadastro.FieldByName('CREDITO').AsFloat) > SimpleRoundTo(Cadastro.FieldByName('CREDITO_DISPONIVEL').AsFloat) then
  begin
    ShowMessage('O Valor do Crédito não pode ser maior que o Crédito Disponivel');
    Cadastro.FieldByName('CREDITO').AsFloat := Cadastro.FieldByName('CREDITO_DISPONIVEL').AsFloat;
  end;
end;

procedure TFrame_Venda_Venda.edtDT_FaturamentoPropertiesChange(Sender: TObject);
var
  APodeAlterarCampos: Boolean;
begin
  inherited;
  // Aqui deve conter qual botão pode aparecer para faturar
  VerificaVisibleBotoesFaturamento;


  {$REGION 'Código antigo'}
{
  // EdtVeiculoÎProduto.Enabled     := Cadastro.FieldByName('DT_FATURAMENTO').IsNull;
  edtPDesc.Enabled := Cadastro.FieldByName('DT_FATURAMENTO').IsNull;
  edtVDesc.Enabled := Cadastro.FieldByName('DT_FATURAMENTO').IsNull;
  edtPOutro.Enabled := Cadastro.FieldByName('DT_FATURAMENTO').IsNull;
  edtVOutro.Enabled := Cadastro.FieldByName('DT_FATURAMENTO').IsNull;

  edtDT_Emissao.Enabled := Cadastro.FieldByName('DT_FATURAMENTO').IsNull;
  // btnAtulizarCredito.Enabled     := Cadastro.FieldByName('DT_FATURAMENTO').IsNull;

  edtResponsavelÎPessoas.Enabled := Cadastro.FieldByName('DT_FATURAMENTO').IsNull;
  edtResponsavelÎPessoasÎRAZAOSOCIAL.Enabled := Cadastro.FieldByName('DT_FATURAMENTO').IsNull;

  edtAgenciaÎPessoasÎCOMISSAO.Enabled       := Cadastro.FieldByName('DT_FATURAMENTO').IsNull;
  edtAtendenteÎPessoasÎCOMISSAO.Enabled     := Cadastro.FieldByName('DT_FATURAMENTO').IsNull;
  edtRepresentanteÎPessoasÎCOMISSAO.Enabled := Cadastro.FieldByName('DT_FATURAMENTO').IsNull;
  chkComissao_Agencia_Cobrar.Enabled        := Cadastro.FieldByName('DT_FATURAMENTO').IsNull;
  chkComissao_Funcionario_Cobrar.Enabled    := Cadastro.FieldByName('DT_FATURAMENTO').IsNull;
  chkComissao_Representante_Cobrar.Enabled  := Cadastro.FieldByName('DT_FATURAMENTO').IsNull;

  btnParcelas.Enabled := PodeAlterarParcelas;
  // se tem regra o usuário tem possibilidade de interagir ou no mínimo saber que a regra existe e quando ela é ativada
  DS_Financeiro.AutoEdit := PodeAlterarParcelas;

  // EDUARDO INSERIU ISSO AQUI DIA 30/03/2022 15:30, SE DER MERDA COMENTAR ABAIXO
//  DS.AutoEdit := (Cadastro.FieldByName('DT_FATURAMENTO').AsString = ''); //EDUARDO 15:41 - DEU MERDA

  // O Componente vai possuir um hint bonito informando por ele foi ativado
  GrupoFinanceiroTop.Enabled := PodeAlterarParcelas;
  cxGridViewFinanceiro.OptionsData.Editing := PodeAlterarParcelas;
  GridProdutoTree.OptionsData.Editing :=  Cadastro.FieldByName('DT_FATURAMENTO').IsNull;
  MainLayoutGroup10.Enabled  := Cadastro.FieldByName('DT_FATURAMENTO').IsNull;
 }
  {$ENDREGION}

  VerificaEnableCamposVenda;
  AplicarPermissoes;
end;

procedure TFrame_Venda_Venda.edtDT_RequisicaoPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  tcEnviaRequisicao.Text2.Value := FormatDateTime('DD/MM/YYYY HH:MM:SS', Cadastro.FieldByName('DT_REQUISICAO').AsDateTime);
end;

procedure TFrame_Venda_Venda.VerificaEnableCamposVenda;
var
  APodeAlterarCampos: Boolean;
begin
  inherited;
  // Aqui deve conter qual botão pode aparecer para faturar
  VerificaVisibleBotoesFaturamento;

  APodeAlterarCampos := Cadastro.FieldByName('DT_FATURAMENTO').IsNull
                 and (Cadastro.FieldByName('OPERACAO').AsString <> 'EM PAGAMENTO');

  edtPDesc.Enabled := APodeAlterarCampos;
  edtVDesc.Enabled := APodeAlterarCampos;
  edtPOutro.Enabled := APodeAlterarCampos;
  edtVOutro.Enabled := APodeAlterarCampos;

  edtDT_Emissao.Enabled := APodeAlterarCampos;

  edtResponsavelÎPessoas.Enabled := APodeAlterarCampos;
  edtResponsavelÎPessoasÎRAZAOSOCIAL.Enabled := APodeAlterarCampos;

  edtAgenciaÎPessoasÎCOMISSAO.Enabled       := APodeAlterarCampos;
  edtAtendenteÎPessoasÎCOMISSAO.Enabled     := APodeAlterarCampos;
  edtRepresentanteÎPessoasÎCOMISSAO.Enabled := APodeAlterarCampos;
  chkComissao_Agencia_Cobrar.Enabled        := APodeAlterarCampos;
  chkComissao_Funcionario_Cobrar.Enabled    := APodeAlterarCampos;
  chkComissao_Representante_Cobrar.Enabled  := APodeAlterarCampos;

  btnParcelas.Enabled := PodeAlterarParcelas;
  // se tem regra o usuário tem possibilidade de interagir ou no mínimo saber que a regra existe e quando ela é ativada
  DS_Financeiro.AutoEdit := PodeAlterarParcelas;

  // EDUARDO INSERIU ISSO AQUI DIA 30/03/2022 15:30, SE DER MERDA COMENTAR ABAIXO
//  DS.AutoEdit := (Cadastro.FieldByName('DT_FATURAMENTO').AsString = ''); //EDUARDO 15:41 - DEU MERDA

  // O Componente vai possuir um hint bonito informando por ele foi ativado
  GrupoFinanceiroTop.Enabled := PodeAlterarParcelas;
  cxGridViewFinanceiro.OptionsData.Editing := PodeAlterarParcelas;
  GridProdutoTree.OptionsData.Editing :=  APodeAlterarCampos;
  MainLayoutGroup10.Enabled  := APodeAlterarCampos;

  liedtAgenciaÎPessoas.Enabled       := APodeAlterarCampos;
  dxLayoutControl1Item54.Enabled     := APodeAlterarCampos;
  liedtRepresentanteÎPessoas.Enabled := APodeAlterarCampos;
end;

procedure TFrame_Venda_Venda.edtNotaFiscalExit(Sender: TObject);
var
  ACodEmpresa: Integer;
begin
  if (Cadastro.State in dsEditModes) and
    (Cadastro.FieldByName('NOTAFISCAL').AsInteger > 0) then
  begin
    ACodEmpresa := StrCodigoToCodEmpresa(Cadastro.FieldByName('CODIGO').AsString);
    TFrmNotaFiscal.AtualizaNrNfNoFinanceiro(Cadastro.FieldByName('NOTAFISCAL').AsLargeInt, Cadastro.FieldByName('CODIGO').AsString, ACodEmpresa.ToString,
      Cadastro.FieldByName('VENDA_TIPO').AsString, Cadastro.Transaction);
    // Isso é falha grave, não pode ter acesso a outro setor, execto no faturamento ou nota fiscal
  end;
end;

procedure TFrame_Venda_Venda.edtNotaFiscalPropertiesChange(Sender: TObject);
const // Coloque quando a nota mudou de estado no histórico
  LCOR_CANCELADA = $004646FF;
  LCOR_CONFIRMADA = $0040FF00;
  LCOR_PENDENTE = $0093FFFF;
  LCOR_DENEGADA = clRed;
  LCOR_NENHUM = clWhite;
var
  AStatus: (lstNenhum, lstPendente, lstCancelada, lstDenegaga, lstConfirmada);
  AStatusByte: Byte absolute AStatus;
  AStatusDesc: string;
  QuerX: TFDQuery;

  function LGetStatus(const AStatusStr: string): Byte;
  begin
    if AnsiMatchText(AStatusStr, ['Confirmada', 'Autorizada']) then
      Result := Byte(lstConfirmada)
    else if AnsiMatchText(AStatusStr, ['Denegada', 'Não Autorizada']) then
      Result := Byte(lstDenegaga)
    else if AnsiMatchText(AStatusStr, ['Cancelada']) then
      Result := Byte(lstCancelada)
    else if AnsiMatchText(AStatusStr, ['Pendente']) then
      Result := Byte(lstPendente)
    else
      Result := Byte(lstNenhum);
  end;

begin
  AStatus := lstNenhum;
  if Cadastro.Active and not Cadastro.FieldByName('NOTAFISCAL').IsNull then
  begin
    QuerX := GeraFDQuery(TransaFD);
    try
      QuerX.SQL.Text := 'select N.NF_SITUACAO ' +
      // não pode fazer SQL, Se necessário criar compo em tela
        'from NOTA_FISCAL N ' + 'where (N.CODVENDA = :CodVenda) ' +
        '      and (N.NF_NUMERO = :NotaFiscal) ' +
        '      and (coalesce(N.STATUS, ''ATIVO'') = ''ATIVO'') ' +
        '      and (N.NF_AMBIENTE = 1) ' +
        '      and (N.TIPO in (''NFe'', ''NFSe'', ''NFCe''))';
      QuerX.ParamByName('CodVenda').AsString :=
        Cadastro.FieldByName('CODIGO').AsString;
      QuerX.ParamByName('NotaFiscal').AsLargeInt :=
        Cadastro.FieldByName('NOTAFISCAL').AsLargeInt;
      // LargeInt Fora do Padrão
      QuerX.Open;
      while not QuerX.eof do
      begin
        { Ao verificar o status da nota, esta deve ser obtida na ordem em que o enumerator está declarado. Ou seja,
          os itens maiores no enum tem prioridade maior sobre os itens menores. Ex: se eu tiver uma nota Cancelada e uma
          Confirmada, o status será "Confirmada" pois este item é maior que o Cancelada no enum }
        if LGetStatus(QuerX.Fields[0].AsString) > AStatusByte then
        begin
          AStatusByte := LGetStatus(QuerX.Fields[0].AsString);
          AStatusDesc := QuerX.Fields[0].AsString;
        end;
        QuerX.next;
      end;
    finally
      QuerX.Free;
    end;
  end;
  case AStatus of
    lstNenhum:
      edtNotaFiscal.Style.Color := LCOR_NENHUM;
    lstPendente:
      edtNotaFiscal.Style.Color := LCOR_PENDENTE;
    lstCancelada:
      edtNotaFiscal.Style.Color := LCOR_CANCELADA;
    lstDenegaga:
      edtNotaFiscal.Style.Color := LCOR_DENEGADA;
    lstConfirmada:
      edtNotaFiscal.Style.Color := LCOR_CONFIRMADA;
  end;
  if AStatus = lstNenhum then
    edtNotaFiscal.Hint := ''
  else
    edtNotaFiscal.Hint := AStatusDesc;

end;



procedure TFrame_Venda_Venda.edtOperacaoPropertiesChange(Sender: TObject);
begin
  inherited;
  GrupoFaturamento_Venda.Enabled := (Cadastro.FieldByName('OPERACAO').AsString <> 'EM PAGAMENTO') and (Cadastro.FieldByName('TEM_TEF').AsString <> 'S');
end;

procedure TFrame_Venda_Venda.edtPessoa_Responsavel_CodigoPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  GrupoCredito.Visible := Cadastro.FieldByName('CREDITO_DISPONIVEL').AsFloat > 0;
  VerificaVisibleBotoesFaturamento;

end;

procedure TFrame_Venda_Venda.edtValorPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
 //
end;

procedure TFrame_Venda_Venda.edtValorPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  try
    ControllerVendaVendaObrigatorio_ValorMinimoVendaProduto(DisplayValue, PmPrincipal.Produto);
  except
    on E:EWRException do
    begin
      Error := True;
      ErrorText := E.Message;
    end;
  end;
end;

procedure TFrame_Venda_Venda.edtVendaCodigoPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  VerificaVisibleBotoesFaturamento;
end;

procedure TFrame_Venda_Venda.EmiteNFSeTEF;
begin
  TFrameVendaNFSe.CarregaFrameNota(FFrameVendaNFSe, pnlNFSe, DS,
  wrNotaFiscal);

  WREventosCadastro.ValidaBuscaComponetesFrame(TWinControl(FFrameVendaNFSe));

  with TFrameVendaNFSe(FFrameVendaNFSe) do
    btnNFSe.Click;
end;

procedure TFrame_Venda_Venda.EmiteNFCeTEF;
begin
  TFrmVendaFrameNotaFiscal.CarregaFrame(FFrameNotaFiscal, PnlNotaFiscal, DS,
  wrNotaFiscal);

  WREventosCadastro.ValidaBuscaComponetesFrame(TWinControl(FFrameNotaFiscal));

  with TFrmVendaFrameNotaFiscal(FFrameNotaFiscal) do
    btnNFCe.Click;
end;

procedure TFrame_Venda_Venda.EmiteNFeTEF;
begin
  TFrmVendaFrameNotaFiscal.CarregaFrame(FFrameNotaFiscal, PnlNotaFiscal, DS,
  wrNotaFiscal);

  WREventosCadastro.ValidaBuscaComponetesFrame(TWinControl(FFrameNotaFiscal));

  with TFrmVendaFrameNotaFiscal(FFrameNotaFiscal) do
    btnNFe.Click;
end;

function TFrame_Venda_Venda.GetDocumentoParcelas(AParcela, AQuantidadeParcelas: Integer)
  : string; // OK
var
  AExcluirOS: Boolean;
  ACodigo: string;
begin
  AExcluirOS := TConfig.ReadBoolean
    ('VENDA_EXCLUIR_PREFIXO_OS_PARCELA_FINANCEIRO');
  if MultiEmpresa then
    ACodigo := Cadastro.FieldByName('CODIGO').AsString
  else
    ACodigo := Copy(Cadastro.FieldByName('CODIGO').AsString, 1,
      Pos('-', Cadastro.FieldByName('CODIGO').AsString) - 1);
  Result := IfThen(not AExcluirOS, 'Os ') + ACodigo + ' ' + IntToStr(AParcela) +
    '/' + IntToStr(AQuantidadeParcelas);
end;

procedure TFrame_Venda_Venda.GridProdutoTreeVALORPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
//
end;

procedure TFrame_Venda_Venda.GrupoTabsPrincipalTabChanged(Sender: TObject);
begin
  inherited;
  if GrupoNotaFiscal.ActuallyVisible then
  begin
    TFrmVendaFrameNotaFiscal.CarregaFrame(FFrameNotaFiscal, PnlNotaFiscal, DS,
      wrNotaFiscal);
    WREventosCadastro.ValidaBuscaComponetesFrame(TWinControl(FFrameNotaFiscal));
  end;
  if TabNFSe.ActuallyVisible then
  begin
    TFrameVendaNFSe.CarregaFrameNota(FFrameVendaNFSe, pnlNFSe, DS,
      wrNotaFiscal); //
    WREventosCadastro.ValidaBuscaComponetesFrame(TWinControl(FFrameVendaNFSe));
  end;
end;

procedure TFrame_Venda_Venda.LanarCrdito1Click(Sender: TObject);
begin
  inherited;
  //
end;

procedure TFrame_Venda_Venda.LanarCrdito2Click(Sender: TObject);
begin
  inherited;
  TFrmFinanceiroCredito.AbrirParaLancarCredito(TransaCredito, Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString
           ,0, '', SpnCaixa.Value, 0, 'Os '+Cadastro.FieldByName('CODIGO').AsString , 'Crédito pela venda');
  try
    TransaCredito.Commit;
  except end;
  if ds.AutoEdit then
  begin
    if ds.AutoEdit then
    begin
      if not (Cadastro.State in dsEditModes) then
        Cadastro.Edit;

      Cadastro.FieldByName('CREDITO_DISPONIVEL').AsFloat          := TFrmFinanceiro.GetCreditoDisponivel(TransaFD, Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString);
      if Cadastro.FieldByName('CREDITO_DISPONIVEL').AsFloat > 0 then
        Cadastro.FieldByName('CREDITO').AsFloat                   := RoundTo(Cadastro.FieldByName('CREDITO_DISPONIVEL').AsFloat, -2);

      btnAtualizarCredito.Click;
    end;
  end;
end;

procedure TFrame_Venda_Venda.btnFinalizarPedidoClick(Sender: TObject);
begin
  inherited;
  Faturar;
end;

procedure TFrame_Venda_Venda.MenuDireitaPopup(Sender: TObject);
begin
  inherited;
  RetonarOrcamento.Enabled := (Cadastro.State = dsBrowse) and
    (Cadastro.FieldByName('dt_faturamento').IsNull) and
    (Cadastro.FieldByName('NotaFiscal').IsNull);
  // Tornar isso mais simples, regra única
end;

procedure TFrame_Venda_Venda.PoupCopiarVendacomProdutosClick(Sender: TObject);
begin
  inherited;
  if ShowMessageWR('Deseja duplicar esta venda?', MB_ICONQUESTION) = mrYes then
    TFrmVenda_Base.FrameDuplicaVendaBase(Tag_Venda, Cadastro, Venda_Financeiro, venda_produto,
      GridProdutoTree, False);
end;

procedure TFrame_Venda_Venda.QuerVenda_TipoBeforeOpen(DataSet: TDataSet);
var // tem que passar o sql para TConfig e migrar
  AFiltroSQL: string;
begin
  // inherited;
  QuerVenda_Tipo.SQL.Text := 'select * ' + 'from VENDA_TIPO ' +
    'where (ATIVO = ''S'') and (MODELO = ''VENDA'') ';
  AFiltroSQL := GetSQLPermissaoTipo('VENDA_TIPO_NEGAR_USUARIO');
  { TODO -oFelipe -cTConfig : Migrar isso para TConfig, apenas GetSQLPermissaoTipo('VENDA_TIPO_NEGAR_USUARIO') }
  if AFiltroSQL <> '' then
    QuerVenda_Tipo.SQL.Add('and not (DESCRICAO in (' + AFiltroSQL + '))');
  QuerVenda_Tipo.SQL.Add('order by 1 asc');
end;

procedure TFrame_Venda_Venda.RetonarOrcamentoClick(Sender: TObject);
begin
  // Arrumar isso aqui, não pode só trocar o tipo assim sem nenhuma validação
  // Usar o método TFrmVenda.MigrarTipoDaVenda(ACodVenda, ANovoVendaTipo: string), mas este método também tem que ser
  // ajustado, então fazer tudo de uma vez quando for mexer
  // criar um substituto para o venda audt, toda vez que mudar e gerar um código novo, tem que ser guardado, isso gera avalização de vendedores PROSPECÇÃO ATIVA

  // nÃO PODE DEIXAR PASSAR VENDA COM NOTA E FATURADAS
  if Cadastro.FieldByName('DT_FATURAMENTO').AsDateTime > 0 then
  begin
    ShowMessage('Não pode retornar para Orçamento, por que ja foi faturado. ' +
      sLineBreak + 'Cancele o faturamento Primeiro! ');
    Exit;
  end;
  if not Cadastro.FieldByName('NOTAFISCAL').IsNull then
  begin
    ShowMessage
      ('Não pode retornar para Orçamento, por que tem número de nota informado. '
      + sLineBreak + 'Apague o número da nota fiscal Primeiro! ');
    edtNotaFiscal.SetFocusWR;

    Exit;
  end;
  VerificaSePodeAlteraDataSet;
  Cadastro.FieldByName('VENDA_TIPO').AsString := 'ORÇAMENTO';
  Cadastro.FieldByName('IS_ORCAMENTO').AsString := 'S';
  Cadastro.FieldByName('IS_VENDA').AsString := 'N';
  Cadastro.Post;
end;

function TFrame_Venda_Venda.VerificaTipoDeVendaPodeFaturar: Boolean;
var
  QuerTipo: TFDQuery;
  ACodigo: String;
begin
  QuerTipo := GeraFDQuery(TransaFD);

  try
    QuerTipo.SQL.Text := 'select coalesce(VT.PODE_SER_FATURADO, ''N'')as PODE_SER_FATURADO ' + '   from VENDA_TIPO VT'
      + '   where VT.DESCRICAO = :tipoVenda';

    QuerTipo.ParamByName('tipoVenda').AsString := cbxTipo_Venda.Text;
    QuerTipo.Open;

    Result := (QuerTipo.FieldByName('PODE_SER_FATURADO').AsString = 'S');
  finally
    QuerTipo.Free;
  end;
end;

procedure TFrame_Venda_Venda.WREventosCadastroConfiguracao_Acoes(Sender: TObject);
begin
//  ValidaVendaMestre_CarregaRegras(WREventosCadastro);
//  ValidaVendaVenda_CarregaRegras(WREventosCadastro);
  inherited;
  with WREventosCadastro do
  begin
    with AddForm(Self) do
    begin
      // AddChavePrimaria('VENDA', 'CODIGO', edtCodigo);
      // AddGeneratorMultEmpresa(edtCodigo);

      // AddValorInicial('VENDA', 'ATIVO',                           cbxAtivo,                           'S');

      // AddValorInicial('VENDA', 'NAO_DEDUZ_ISS_RETIDO_TOTAL_NOTA', chkNao_Deduz_ISS_Retido_Total_Nota, 'N');
      // AddValorInicial('VENDA', 'INTERVALO_MENSAL',                chkIntervalo_Mensal,                'N');
      // AddValorInicial('VENDA', 'PESSOA_RESPONSAVEL_TIPO',         edtResponsavelÎPessoas,             'CLI');

      // AddValorInicial('VENDA', 'SERVICO_NOTA_PADRAO',             chkServico_Nota_Padrao,             'S');
      // AddValorInicial('VENDA', 'STATUS',                          edtStatus,                          'ATIVO');
      // AddValorInicial('VENDA', 'PODE_ATUALIZAR_CADASTRO',         chkPodeAtualizarCadastro,           'S');
      // AddValorInicial('VENDA', 'DT_EMISSAO',                      edtDT_Emissao,                      '@DATA');
      // AddValorInicial('VENDA', 'PROJETO_DT_INICIO',                      edtPROJETO_DT_INICIO,                      '@DATA');
      // AddValorInicial('VENDA', 'DT_COMPETENCIA',                  edtDtCompetencia,                   '@DATA');
      // Isso não tem componente na tela
      // AddValorInicial('VENDA', 'SITUACAOFINANCEIRA',              edtSituacaoFinanceira,              'Em Aberto');  // Oculto
      // AddValorInicial('VENDA', 'PODE_RATEAR_FRETE_DESC_OUTRO',    chkPode_Ratear_Frete_Desc_Outro     ,'S');         // Oculto

      AddImpedirDuplicidade('VENDA', 'PEDIDO_COMPRA', edtPedidoCliente,
        ' select first 1 CODIGO from VENDA ' +
        ' where (PESSOA_RESPONSAVEL_CODIGO = :CodCliente) ' +
        '     and (PEDIDO_COMPRA = :PedidoCliente) ' +
        '     and (STATUS like ''ATIVO%'')' + '     and (CODIGO <> :CodVenda) '
        + '     and (CODVENDA IS NULL)');
      AddImpedirDuplicidade('VENDA', 'PEDIDO_REP', edtPedidoRepresentante,
        ' select first 1 CODIGO from VENDA ' +
        ' where (PESSOA_RESPONSAVEL_CODIGO = :CodCliente) ' +
        '     and (PEDIDO_COMPRA = :PedidoCliente) ' +
        '     and (STATUS like ''ATIVO%'')' + '     and (CODIGO <> :CodVenda) '
        + '     and (CODVENDA IS NULL)');
      // Isso ta no frame
      with TFrmVendaFrameNotaFiscal(FFrameNotaFiscal) do
      begin
        AddValorInicialFrame('VENDA', 'NF_OBSERVACAO_PADRAO',
          'chkNF_Observacao_Padrao', 'S');
        AddValorInicialFrame('VENDA', 'NF_NUMERO', 'edtNF_Numero', '1');
        // Número de Caixas do Frete, Padrão 1 Unidade
        AddValorInicialFrame('VENDA', 'NF_FRETEPORCONTA', 'cbxNF_FretePorConta',
          modFreteToStr(mfContaEmitente));
        // AddValorInicialFrame('VENDA', 'PODE_EMITIR_NOTAFISCAL',          'cbxPode_Emitir_NotaFiscal',          'S');
      end;

      with TFrameVendaNFSe(FFrameVendaNFSe) do
      begin
        AddValorInicialFrame('VENDA', 'SERVICO_NOTA_PADRAO', 'chkServico_Nota_Padrao', 'S');
      end;

      with AddAcoesTabela('CONFIRMAR', '',
        'Regras necessárias para poder Confimar.') do
      begin
        // AddObrigatorioValidaComponente('VENDA', 'RAZAOSOCIAL', edtResponsavelÎPessoasÎRAZAOSOCIAL, 'Informar a Descrição do Destinatário(Cliente)');
        AddObrigatorio('VENDA', 'VENDA_TIPO', cbxTipo_Venda,
          'Informe o Tipo de Venda que esta sendo realizada.');
        // Vazio sempre executa
        AddObrigatorio('VENDA', 'ATIVO', cbxAtivo,
          'Informe se o Cadastro esta ATIVO ou DESATIVADO.');

        AddObrigatorioInativo('VENDA','VENDA_ESTAGIO',cbxEstagio,
          'Informe se é Obrigatório o Estagio ao confirmar a venda.');

        AddObrigatorioInativo('VENDA','VENDA_SITUACAO',cbxSituacao,
          'Informe se é Obrigatório a Situação ao confirmar a venda.');

      end;
      with AddAcoesTabela('IMPRIMIR', '',
        'Regras necessárias para poder Imprimir.') do
      begin
        // Regras de Permissão de Impressão
        AddObrigatorio('VENDA', 'RAZAOSOCIAL',
          edtResponsavelÎPessoasÎRAZAOSOCIAL,
          'Informar a Descrição para imprimir');
        AddObrigatorio('VENDA', 'TOTAL', GrupoRecebimento,
          'Valor da Venda é DIFERENTE da soma das parcelas.');

      end;
      with AddAcoesTabela('EXCLUIR', '',
        'Dependencias para poder excluir Excluir.') do
      // Deverá checar as referencias dessa Tabela dentro de Sistema
      begin // Mostrar a Quantidade e abrir o Destino, Filtrando a tela pea Quantidade de registros
        AddDependencia('FINANCEIRO', 'CODPEDIDO');
        // Lista de Tabelas que usam a informação
        AddDependencia('PESSOAS', 'CODIGO');
        // Aqui ainda Vai ter que melhorar e Muito
        AddDependencia('FINANCEIRO', 'CODPEDIDO');
      end;
      with AddAcoesTabela('NFE', '',
        'Regras necessárias para poder Emitir NFe') do
      begin
        AddObrigatorioValidaComponenteFrame('VENDA', 'NF_DT_EMISSAO',
          'edtNF_DT_EMISSAO', '228-Rejeição: Data de Emissão muito atrasada.');
        AddObrigatorioValidaComponenteFrame('VENDA', 'NF_DT_SAIDAENTRADA',
          'edtNF_DT_SaidaEntrada',
          '228-Rejeição: Data de Emissão muito atrasada.');
        AddObrigatorioValidaComponente('VENDA', 'PDESC', edtPDesc,
          '895-Rejeição: Valor do Desconto da Fatura maior que Valor Original da Fatura');

        AddObrigatorioFrame('VENDA', 'RESPONSAVEL_CNPJCPF',
          'edtResponsavelPessoasCNPJCPF',
          'O CNPJ ou CPF não pode estar vazio.');
        // Emit.CNPJCPF := OnlyNumberWR(FEmpresa.FieldByName('CnpjCpf').AsString);
        AddObrigatorio('VENDA', 'RAZAOSOCIAL',
          edtResponsavelÎPessoasÎRAZAOSOCIAL,
          'A Razão Social do Destinatário não pode ficar vazia.');
        // Emit.xNome   := FEmpresa.FieldByName('RazaoSocial').AsString;
        AddObrigatorioFrame('VENDA', 'RESPONSAVEL_CEP',
          'edtResponsavelPessoasCEP',
          'O CEP do Destinatário não pode ficar vazio.');
        // Emit.EnderEmit.CEP     := StrToIntDef(OnlyNumberWR(FEmpresa.FieldByName('CEP').AsString), 0);
        AddObrigatorioFrame('VENDA', 'RESPONSAVEL_ENDERECO',
          'edtResponsavelPessoasENDERECO',
          'A Endereço do Destinatário não pode ficar vazia.');
        // Emit.EnderEmit.xLgr    := FEmpresa.FieldByName('Endereco').AsString;
        AddObrigatorioFrame('VENDA', 'RESPONSAVEL_NUMERO',
          'edtResponsavelPessoasNUMERO',
          'O Número do Destinatário não pode ficar vazio.');
        // Emit.EnderEmit.nro     := FEmpresa.FieldByName('Numero').AsString;
        AddObrigatorioFrame('VENDA', 'RESPONSAVEL_BAIRRO',
          'edtResponsavelPessoasBAIRRO',
          'O Bairro do Destinatário não pode ficar vazio.');
        // Emit.EnderEmit.xBairro := FEmpresa.FieldByName('Bairro').AsString;
        AddObrigatorioFrame('VENDA', 'RESPONSAVEL_CODCIDADE',
          'edtResponsavelÎCidades',
          'A Cidade do Destinatário não pode ficar vazio.');
        // Emit.EnderEmit.xMun    := FEmpresa.FieldByName('Cidade').AsString;
        AddObrigatorioFrame('VENDA', 'RESPONSAVEL_CIDADE',
          'edtResponsavelÎCidadesÎDESCRICAO',
          'A Cidade do Destinatário não pode ficar vazia.');
        // Emit.EnderEmit.xMun    := FEmpresa.FieldByName('Cidade').AsString;
        AddObrigatorioValidaComponenteFrame('VENDA', 'RESPONSAVEL_UF',
          'edtResponsavelÎCidadesÎUF',
          'A UF do Destinatário não pode ficar vazia.');
        // Emit.EnderEmit.UF      := FEmpresa.FieldByName('UF').AsString;
        AddObrigatorioValidaComponente('VENDA', 'TELEFONE',
          edtResponsavelÎPessoasÎFONE1,
          'O telefone da Destinatário não pode estar vazio. ');
        // Emit.EnderEmit.fone    := OnlyNumberWR(FEmpresa.FieldByName('Fone1').AsString);
        AddObrigatorioValidaComponenteFrame('VENDA', 'RESPONSAVEL_INSCIDENT',
          'edtResponsavelPessoasINSCIDENT',
          'A Inscrição Estadual ou Identidade do Destinatário não pode ser vazio.');
        // Emit.IE      := AnsiReplaceText(FEmpresa.FieldByName('InscIdent').AsString,'.','');

        AddObrigatorioValidaComponenteFrame('VENDA', 'NFE_CALCULA_DIFAL',
          'chkNFe_Calcula_Difal',
          'Marcar o campo Calcula DIFAL, recalcular impostos e emitir a NFe novamente.');
        // Emit.IE      := AnsiReplaceText(FEmpresa.FieldByName('InscIdent').AsString,'.','');

        AddObrigatorioValidaComponente('VENDA_FINANCEIRO', 'CODIGO',
          GridFinanceiro,
          'Obrigatório excluir parcelas do Financeiro para NFe Devolução ou Estorno.');
        AddObrigatorioValidaComponenteFrame('VENDA', 'NF_NREF', 'edtNF_NREF',
          'Obrigatório referenciar Chave de Acesso da NFe original para emissão de Devolução ou Estorno.');

        // Antes de Imprimir a NFE ou NFCe
        // Confere os Campos da empresa Necessários para Gerar a NFSe
        // Antes de Imprimir a NFE ou NFCe
        // Confere os Campos da empresa Necessários para Gerar a NFSe
        { Valida('EMPRESA','NFSe');
          Valida('EMPRESA','Certificado');
          Valida('PESSOA','NFSe');
          Valida('Shemas','NFSe'); }

        // AQUI WAGNER
        // with AddGrid(GridProdutoTree) do
        begin

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

        end;

        {
          AddObrigatorio('VENDA', 'Fantasia', EdtFantasia,        'A Fantazia da empresa não pode ficar vazio.');                           // Emit.xFant   := FEmpresa.FieldByName('Fantasia').AsString;
          AddObrigatorio('VENDA', 'CodPais',  edtCodPais,         'A Código do País da empresa não pode ficar vazio.(Brasil = 1058)');                 // Emit.EnderEmit.cPais   := FEmpresa.FieldByName('CodPais').AsInteger;
          AddObrigatorio('VENDA', 'Pais',     edtPais,            'A País da empresa não pode ficar vazio.');                    // Emit.EnderEmit.xPais   := FEmpresa.FieldByName('Pais').AsString;
        }
        AddAcoesTabela('NFE', '',
          'Regras necessárias para poder Emitir NFe.', 'N');
        AddObrigatorioValidaComponenteFrame('VENDA', 'NF_TRANSP_QVOL',
          'edtNF_Transp_QVol', 'Obrigatório Quantidade de Volumes.');
      end;
      with AddAcoesTabela('NFSE', '(EMITE_NFSE = ''S'')', 'Regras necessárias para poder Emitir NFSe.') do //
      begin

        AddObrigatorioFrame('VENDA', 'RESPONSAVEL_ENDERECO', 'edtResponsavelPessoasENDERECO', 'Endereço Obrigatório.');
        AddObrigatorioFrame('VENDA', 'RESPONSAVEL_CNPJCPF',
          'edtResponsavelPessoasCNPJCPF',
          'O CNPJ ou CPF não pode estar vazio.');
        // Emit.CNPJCPF := OnlyNumberWR(FEmpresa.FieldByName('CnpjCpf').AsString)
        AddObrigatorioFrame('VENDA', 'RESPONSAVEL_CEP',
          'edtResponsavelPessoasCEP',
          'A CEP do Destinatário não pode ficar vazio.');
        // Emit.EnderEmit.CEP     := StrToIntDef(OnlyNumberWR(FEmpresa.FieldByName('CEP').AsString), 0);
        AddObrigatorioFrame('VENDA', 'RESPONSAVEL_ENDERECO',
          'edtResponsavelPessoasENDERECO',
          'A Endereço do Destinatário não pode ficar vazio.');
        // Emit.EnderEmit.xLgr    := FEmpresa.FieldByName('Endereco').AsString;
        AddObrigatorioFrame('VENDA', 'RESPONSAVEL_NUMERO',
          'edtResponsavelPessoasNUMERO',
          'A Número do Destinatário não pode ficar vazio.');
        // Emit.EnderEmit.nro     := FEmpresa.FieldByName('Numero').AsString;
        AddObrigatorioFrame('VENDA', 'RESPONSAVEL_BAIRRO',
          'edtResponsavelPessoasBAIRRO',
          'A Bairro do Destinatário não pode ficar vazio.');
        // Emit.EnderEmit.xBairro := FEmpresa.FieldByName('Bairro').AsString;
        AddObrigatorioFrame('VENDA', 'RESPONSAVEL_CODCIDADE',
          'edtResponsavelÎCidades',
          'A Cidade do Destinatário não pode ficar vazio.');
        // Emit.EnderEmit.xMun    := FEmpresa.FieldByName('Cidade').AsString;
        AddObrigatorioFrame('VENDA', 'RESPONSAVEL_CIDADE',
          'edtResponsavelÎCidadesÎDESCRICAO',
          'A Cidade do Destinatário não pode ficar vazio.');
        // Emit.EnderEmit.xMun    := FEmpresa.FieldByName('Cidade').AsString;

        AddObrigatorioValidaComponenteFrame('VENDA', 'RESPONSAVEL_UF',
          'edtResponsavelÎCidadesÎUF',
          'A UF do Destinatário não pode ficar vazia.');
        // Emit.EnderEmit.UF      := FEmpresa.FieldByName('UF').AsString;
        AddObrigatorioValidaComponente('VENDA', 'TELEFONE',
          edtResponsavelÎPessoasÎFONE1,
          'O telefone da Destinatário não pode estar vazio. ');
        AddObrigatorioValidaComponenteFrame('VENDA',
          'RESPONSAVEL_INSC_MUNICIPAL', 'edtResponsavelPessoasINSC_MUNICIPAL',
          'Inscrição Municipal obrigatório para NFSe com ISS Retido.');

        // Antes de Imprimir a NFSe
        // - Aqui deve configurar a Nota e Verificar as Falhas de Validação de Notas
        // 1) Primeiro a regras do certificado digital.
        // 2) Conferir os dados da Empresa
        // 3) Conferir a configuração de Tributação e Serviço
        // 4) Conferir o Provedor escolhido
        // 5) Conferir os dados do Cliente.







        // AddDependencia('FINANCEIRO', 'CODPEDIDO');
        // AddObrigatorio('VENDA', 'RAZAOSOCIAL', edtResponsavelÎPessoasÎRAZAOSOCIAL, 'Informar a Descrição do Destinatário(Cliente)');

        // AddPreRequisito(TFrmEmpresa, 'EMPRESA', 'NFSe');
        // AddPreRequisito(TFrmEmpresa, 'EMPRESA', 'Certificado'); // Aqui tem que verificar se a Prefeitura usa certificado
        // AddPreRequisitoAviso(TFrmPessoas, 'EMPRESA', 'NFSe');   // Logo da Prefeitura e do Cliente
        // AddPreRequisito(TFrmPessoas, 'PESSOAS', 'NFSe');        // Tomador

        // AddValidacaoConfig(Result, rvAviso, 'CERT_DATA', 'Certificado Digital está prestes a expirar.' + IntToStr(DaysBetween(AACBrNFSe.SSL.CertDataVenc, Date)) + ' dia(s) restante(s).', DaysBetween(AACBrNFSe.SSL.CertDataVenc, Date) <= 15)
        // AddValidacaoConfig(Result, rvErro, 'CERT_DATA', 'Certificado Digital expirado', AACBrNFSe.SSL.CertDataVenc < Date);
        // AddValidacaoConfig(Result, rvErro, 'CERT_CNPJ', 'O Certificado Digital informado pertence a outra empresa', OnlyNumberWR(AACBrNFSe.SSL.CertCNPJ) <> OnlyNumberWR(Empresa.FieldByName('CNPJCPF').AsString));
        // AddValidacaoConfig(Result, rvErro, 'CERT_NAO_DEFINIDO', 'Certificado Digital não definido', AACBrNFSe.Configuracoes.Certificados.NumeroSerie = '');
        // AddValidacaoConfig(Result, rvAviso, 'NFSE_USUARIO', 'Usuário não definido', True);
        // AddValidacaoConfig(Result, rvAviso, 'NFSE_SENHA', 'Senha não definida', True);
        // AddValidacaoConfig(AValidacoes, rvErro, 'NFSE_NAT_OPERACAO', 'Natureza da Operação não informada', ANaturezaOperacao = '');
        // AddValidacaoConfig(AValidacoes, rvErro, 'NFSE_LISTA_SERVICO', 'Lista de Serviço não informado', AListaServico = '');
        // AddValidacaoConfig(AValidacoes, rvAviso, 'NFSE_REGIME_TRIBUTACAO', 'Regime Especial de Tributação não informado', ARegimeTributacao = '');
        // AddValidacaoConfig(Result, rvErro, 'NENHUM', 'O provedor não está definido. Verifique se sua Cidade está ' + 'corretamente preenchida no Cadastro da Empresa. Se estiver preenchida, pode ser que sua cidade ainda não esteja ' + 'homologada pelo sistema para emissão de NFSe.', AACBrNFSe.Configuracoes.Geral.Provedor = proNenhum);


        // AddValidacao(EdtCidadeÎCidades , edtIM, edtIM.Text = '' , '"Inscrição Municipal" Obrigatória Para esse Provedor de NFSe.' );

        // Acoes('VENDA', 'N', 'IM',               edtIM,           '"Inscrição Municipal" Obrigatória Para esse Provedor de NFSe.', edtIM.text<>'');
        // Acoes('VENDA', 'N', 'CNAE',             edtCNAE,         '"CNAE" Obrigatório Para esse Provedor de NFSe.',                edtCNAE.text<>''); // COM 7 DIGITOS       // Verifique na cidade do emissor da NFe se é permitido
        // Acoes('VENDA', 'N', 'CNPJCPF',          edtNFSe_CNPJCPF, '"CNPJ" Obrigatório Para esse Provedor de NFSe.',                edtNFSe_CNPJCPF.text<>'');
        // Acoes('VENDA', 'N', 'NFSE_USUARIO',     edtNFSe_Usuario, '"Login na Prefeitura" Obrigatório Para esse Provedor de NFSe.', chkCodProvedorÎNF_PROVEDORÎTEM_OBRIGATORIO_LOGIN.Checked and (edtNFSe_Usuario.text<>'') );
        // Acoes('VENDA', 'N', 'NFSE_SENHA',       edtNFSe_Senha,   '"Senha da Prefeitura" Obrigatório Para esse Provedor de NFSe.', chkCodProvedorÎNF_PROVEDORÎTEM_OBRIGATORIO_SENHA.Checked and (edtNFSe_Senha.text<>''));
        // Acoes('VENDA', 'N', 'CERTIFICADO_SENHA',chkUsaCertificadoPeloExplorer, '"Certificado Digital" Obrigatório Para esse Provedor de NFSe.', chkUsaCertificadoPeloExplorer.Checked And (LbCertNumeroSerie.Caption<>'') );
        // Acoes('VENDA', 'N', 'TEM_CERTIFICADO',  chkUsaCertificadoPeloExplorer, '"Certificado Digital" Obrigatório Para esse Provedor de NFSe.', Not (chkUsaCertificadoPeloExplorer.Checked) And (edtCertificado_Senha.Text<>'') );

        // Acoes('VENDA', 'RAZAOSOCIAL', 'edtResponsavelÎPessoasÎRAZAOSOCIAL', 'Informar a Descricao do Destinatário(Cliente)', '');
        // Acoes('VENDA', 'VENDA_TIPO', 'cbxTipo_Venda', 'Informe o Tipo de Venda que esta sendo realizada.', '');  // Vazio sempre executa
        //
        // Acoes('VENDA', 'SERV_NCM', 'edtListaServicoÎNF_NCM', 'ItemListaServico com tamanho inferior a 4 dígitos', '');
        // Acoes('VENDA', 'SERV_DISCRIMINACAO','', 'Discriminação não preenchida', '');
        // Acoes('VENDA', 'SERV_VALOR', 'edtVendaTotal', 'Valor não preenchido', '');
        // Acoes('VENDA', 'SERV_ALIQUOTA', 'edtListaServicoÎNF_NCMÎALIQ_ISS', 'Aliquota não preenchida', '');
        // Acoes('VENDA', 'SERV_REGIME_TRIBUTACAO', 'edtRegimeEspecialÎNF_Regime_Especial_Tributacao', 'Regime Especial de Tributação não preenchido', '');
        // Acoes('VENDA', 'SERV_NAT_OPERACAO', 'edtNaturezaOperacaoÎNF_Natureza_Operacao', 'Natureza da Operação não preenchida', '');
        //
        // Acoes('VENDA', 'RESP_RAZAOSOCIAL', 'edtResponsavelÎPessoasÎRAZAOSOCIAL', 'Tomador não preenchido', '');
        // Acoes('VENDA', 'RESP_CNPJCPF', 'edtResponsavelPessoasCNPJCPF', 'Tomador sem CNPJ / CPF', '');
        // Acoes('VENDA', 'RESP_ENDERECO', 'edtResponsavelPessoasENDERECO', 'Tomador sem Endereço', '');
        // Acoes('VENDA', 'RESP_CEP', 'edtResponsavelPessoasCEP', 'Tomador sem CEP', '');
        // Acoes('VENDA', 'RESP_NUMERO', 'edtResponsavelPessoasNUMERO', 'Tomador sem Número no Endereço', '');
        // Acoes('VENDA', 'RESP_CODIGO_MUNICIPIO', 'edtResponsavelÎCidades', 'Tomador sem Código do Município', '');
        // Acoes('VENDA', 'RESP_UF', 'edtResponsavelÎCidadesÎUF', 'Tomador sem UF', '');
        // Add('RESP_TELEFONE', 'edtResponsavelPessoasFONE1', 'Tomador sem Telefone', ''););  <<< NÃO EXISTE ISSO AQUI
      end;
      with AddAcoesTabela('NFCe', '(EMITE_NFCE = ''S'') ',
        'Regras necessárias para poder Emitir NFCe.') do
      begin
        AddObrigatorioValidaComponente('VENDA', 'RAZAOSOCIAL',
          edtResponsavelÎPessoasÎRAZAOSOCIAL,
          'A Razão Social do Destinatário não pode ficar vazia.');
        // ****          AddObrigatorioValidaComponente('VENDA', 'RESPONSAVEL_UF',       edtResponsavelÎCidadesÎUF,        'A UF do Destinatário deve ser igual a UF do Emitente.');       // Emit.EnderEmit.UF      := FEmpresa.FieldByName('UF').AsString;
        AddObrigatorioValidaComponenteFrame('VENDA', 'NF_FINALIDADE', 'cbxNF_Finalidade', 'Obrigatório Finalidade Normal para NFC-e.');
        AddObrigatorioValidaComponenteFrame('VENDA', 'NF_SAIDA_ENTRADA',
          'cbxNF_Saida_Entrada', 'Obrigatório operação de Saída para NFC-e.');
        AddObrigatorioValidaComponenteFrame('VENDA', 'CONSUMIDOR_FINAL',
          'edtConsumidor_Final',
          'A UF do Destinatário deve ser igual a UF do Emitente.');
        // ****          AddObrigatorioValidaComponente('VENDA', 'RESPONSAVEL_TIPO_CONTRIBUINTE',       cbxResponsavel_Tipo_Contribuinte,        'Cliente deve ser Não Contribuinte para emissão de NFC-e.');
        AddObrigatorioValidaComponente('VENDA_FINANCEIRO', 'CODIGO', btnParcelas, 'Obrigatório gerar financeiro para emissão de NFC-e');

        // Antes de Imprimir a NFE ou NFCe
        // Acoes('EMPRESA', 'IM', 'edtIM', '<dest><enderDest>', '');          // Emit.IM   := FEmpresa.FieldByName('IM').AsString; // Preencher no caso de existir serviços na nota
        // Acoes('EMPRESA', 'CNAE', 'edtCNAE', '<dest><enderDest>', '');      // Emit.CNAE := FEmpresa.FieldByName('CNAE').AsString;// Verifique na cidade do emissor da NFe se é permitido
        // Acoes('EMPRESA', 'IEST', 'edtIEST', '<dest><enderDest>', '');      // Emit.IEST := AnsiReplaceText(FWRCalc.DBVendaOuCompra.FieldByName('NF_IE_SUBST').AsString, '.', '');
      end; // 718-Rejeição: NFC-e não deve informar IE de Substituto Tributário
      with AddAcoesTabela('APROVAR', '',
        'Regras necessárias para poder Aprovar Orçamento.') do
      begin

      end;
      with AddAcoesTabela('REPROVAR', '',
        'Regras necessárias para poder Reprovar Orçamento.') do
      begin

      end;
      with AddAcoesTabela('PRODUCAO', '',
        'Regras necessárias para poder Produção.') do
      begin

      end;
      with AddAcoesTabela('EXCLUIR', '',
        'Regras necessárias para poder Excluir.') do
      begin

      end;
      with AddAcoesTabela('ORCAMENTO', '',
        'Regras necessárias para poder Fazer Orçamento.') do
      begin
        // regras do Orçamento
      end;
      with AddAcoesTabela('PARCELAS', '',
        'Regras necessárias para poder Gerar Parcelas.') do
      begin
        AddObrigatorioValidaComponente('VENDA', 'RAZAOSOCIAL',
          edtResponsavelÎPessoasÎRAZAOSOCIAL,
          'Para gerar parcelas, o nome do Responsável não pode estar vazio.');
      end;
    end;
    { with AddForm(FFormVenda_Produto) do
      begin
      with AddAcoesTabela('NFE','', '') do
      begin
      // Quais as regras eu tenho que validar dos produtos, e como eu Mostro na Tela

      end;
      // Venda_Produto -  Tabela Extra. Vários registros
      // Regras no Treelist
      with AddAcoesTabela('ADDPRODUTO','', '') do
      begin
      AddObrigatorio('VENDA_PRODUTO', 'CODTIPO_IMPRESSAO',       edtCodTipo_ImpressaoÎTipo_Impressao,   'Informe o Código do tipo de Impressão..');
      // Regras da Baixa do Estoque
      // Adicionar produtos na Venda.
      // Regras do CFOP
      //        PmPrincipal.Produto,
      end;
      with AddAcoesTabela('IMPOSTOS','', '') do
      begin

      end;
      end;
      with AddForm(FFrmProduto_Wizard) do    // Tem que Ser as mesmas regras que o Pai,
      begin                               // Criar um Função que busca a rotina no Pai e colo no filho
      with AddAcoesTabela('NFE','', '') do
      begin
      // Quais as regras eu tenho que validar dos produtos, e como eu Mostro na Tela

      end;
      // Venda_Produto -  Tabela Extra. Vários registros
      // Regras no Treelist
      with AddAcoesTabela('ADDPRODUTO','', '') do
      begin
      // Regras da Baixa do Estoque
      // Adicionar produtos na Venda.
      // Regras do CFOP
      AddAcoesDependente(edtProdutoDescricao, edtProdutoDescricao);
      AddAcoesDependenteTreeList(edtProdutoDescricao, edtProdutoDescricao);
      end;
      with AddAcoesTabela('IMPOSTOS','', '') do
      begin

      end;
      end; }
  end;
end;

procedure TFrame_Venda_Venda.WREventosCadastroImpressaoBeforePrint(Sender: TObject;
  var APermiteImprimir: Boolean);
begin
  APermiteImprimir := True;
  inherited;

  if TConfig.ReadBoolean('VENDA_IMPEDIR_IMPRESSAO_NAO_FATURADA') and Cadastro.FieldByName('DT_FATURAMENTO').IsNull then
  begin
    ShowMessageWR('Impressão bloqueada devido a Não estar Faturada');
    APermiteImprimir := False;
  end;

  if TConfig.ReadBoolean('VENDA_IMPRIMIR_VENDA_SEM_CNPJ_CPF') and
     (Procura('CNPJCPF', 'PESSOAS', Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString) = '')then
  begin
    ShowMessageWR('Impressão bloqueada devido a falta de CNPJ / CPF');
    APermiteImprimir := False;
  end;

  if not VerificaQuantidadeImpressoesEPergunta(Cadastro.FieldByName('CODIGO').AsString, Self.ClassName) then
    APermiteImprimir := False;
end;

procedure TFrame_Venda_Venda.WREventosCadastroValidaComponente(Sender: TObject;
  var AError: Boolean; var ErrorText: TCaption);
begin
  inherited;
  if Sender = GrupoRecebimento then
    AError := VerificaTotalParcelas;

{$REGION 'Validação CadVenda sem frame'}
  if (Sender = edtPDesc) then
  begin
    if (Cadastro.FieldByName('PDESC').AsFloat > 100) then
    begin
      AError := True;
      ErrorText := '895-Rejeição: Valor do Desconto da Fatura maior que Valor Original da Fatura';
    end;
  end;
  if (Sender = btnParcelas) then
  begin
    if (WREventosCadastro.AcaoTabelaAtiva = 'NFCe') and
      (Venda_Financeiro.FieldByName('CODIGO').AsString = '') then
    begin
      AError := True;
      ErrorText := 'Obrigatório gerar financeiro para emitir NFC-e.';
    end;
  end;
  if (Sender = GridFinanceiro) then
  begin
    if (WREventosCadastro.AcaoTabelaAtiva = 'NFE') and
      (Venda_Financeiro.FieldByName('CODIGO').AsString <> '') and
      ((Cadastro.FieldByName('NF_FINALIDADE').AsInteger = 3) or
      (Cadastro.FieldByName('NF_FINALIDADE').AsInteger = 4)) then
    begin
      AError := True;
      ErrorText :=
        'Obrigatório excluir parcelas do Financeiro para NFe Devolução ou Estorno.';
    end;
  end;
  if (Sender = edtResponsavelÎPessoasÎRAZAOSOCIAL) then
  begin
    if (WREventosCadastro.AcaoTabelaAtiva = 'CONFIRMAR') and
      (Trim(Cadastro.FieldByName('RAZAOSOCIAL').AsString) = '') then
    begin
      AError := True;
      ErrorText :=
        'A Razão Social / Nome do Destinatário não pode ficar vazia.';
    end;
    if (WREventosCadastro.AcaoTabelaAtiva = 'PARCELAS') and
      (Trim(Cadastro.FieldByName('RAZAOSOCIAL').AsString) = '') then
    begin
      AError := True;
      ErrorText :=
        'Para gerar parcelas, o nome do Responsável não pode estar vazio.';
    end;
    if (WREventosCadastro.AcaoTabelaAtiva = 'NFCe') and
      (Trim(Cadastro.FieldByName('RAZAOSOCIAL').AsString) = '') then
    begin
      AError := True;
      ErrorText :=
        'A Razão Social / Nome do Destinatário não pode ficar vazia.';
    end;
  end;
{$ENDREGION}
  if Assigned(FFrameNotaFiscal) then
  begin
    with TFrmVendaFrameNotaFiscal(FFrameNotaFiscal) do
    begin
{$REGION 'Validação Frame NFe'}
      if (Sender = edtNF_DT_EMISSAO) then
      try
        ValidaRegra_DataHoraEmissaoNFe(Cadastro.FieldByName('NF_DT_EMISSAO').AsDateTime);
      except on E:EWRException do begin AError := True; ErrorText := E.Message; end;
      end;

      if (Sender = edtNF_DT_SaidaEntrada) then
      begin
        try
          ValidaRegra_DataHoraEntradaSaidaNFe(Cadastro.FieldByName('NF_DT_SAIDAENTRADA').AsDateTime);
        except on E:EWRException do begin AError := True; ErrorText := E.Message; end;
        end;
        try
          ValidaRegra_DataHoraEntradaSaidaMenorQueEmissaoNFe(Cadastro.FieldByName('NF_DT_SAIDAENTRADA').AsDateTime,
                                                             Cadastro.FieldByName('NF_DT_EMISSAO').AsDateTime);
        except on E:EWRException do begin AError := True; ErrorText := E.Message; end;
        end;
      end;

      if (Sender = edtResponsavelÎPessoasÎFONE1) then
      try
        ValidaRegra_TelefoneNFe(Cadastro.FieldByName('TELEFONE').AsString);
      except on E:EWRException do begin AError := True; ErrorText := E.Message; end;
      end;

      if (Sender = cbxNF_Finalidade) then
      try
        ValidaRegra_FinalidadeNFCe(Cadastro.FieldByName('NF_FINALIDADE').AsInteger);
      except on E:EWRException do begin AError := True; ErrorText := E.Message; end;
      end;

      if (Sender = cbxNF_Saida_Entrada) then
      try
        ValidaRegra_EntradaSaidaNFCe(Cadastro.FieldByName('NF_SAIDA_ENTRADA').AsInteger);
      except on E:EWRException do begin AError := True; ErrorText := E.Message; end;
      end;

      if (Sender = edtConsumidor_Final) then
      try
        ValidaRegra_ConsumidorFinalNFCe(Cadastro.FieldByName('CONSUMIDOR_FINAL').AsString);
      except on E:EWRException do begin AError := True; ErrorText := E.Message; end;
      end;

      if (Sender = chkNFe_Calcula_Difal) then
      begin
//        ValidaRegra_ConsumidorFinalNFCe(AError, ErrorText, WREventosCadastro.AcaoTabelaAtiva,
//                                        Cadastro.FieldByName('NF_FINALIDADE').AsString,
//                                        Cadastro.FieldByName('RESPONSAVEL_UF').AsString,
//                                        Empresa.FieldByName('UF').AsString
//                                        Cadastro.FieldByName('RESPONSAVEL_TIPO_CONTRIBUINTE').AsFloat,
//                                        Empresa.FieldByName('CRT').AsString,
//                                        Cadastro.FieldByName('NFE_CALCULA_DIFAL').AsString);
      end;
      if (Sender = edtNF_NREF) then
      begin
        if (WREventosCadastro.AcaoTabelaAtiva = 'NFE') and
          (Cadastro.FieldByName('NF_NREF').AsString = '') and
          ((Cadastro.FieldByName('NF_FINALIDADE').AsString = '3') or
          (Cadastro.FieldByName('NF_FINALIDADE').AsString = '4')) then
        begin
          AError := True;
          ErrorText :=
            'Obrigatório referenciar Chave de Acesso da NFe original para emissão de Devolução ou Estorno.';
        end;
        if (WREventosCadastro.AcaoTabelaAtiva = 'NFE') and
          (Cadastro.FieldByName('NF_NREF').AsString <> '') and
          (Cadastro.FieldByName('NF_NREF').AsString.Length <> 44) and
          ((Cadastro.FieldByName('NF_FINALIDADE').AsString = '3') or
          (Cadastro.FieldByName('NF_FINALIDADE').AsString = '4')) then
        begin
          AError := True;
          ErrorText :=
            'Chave de Acesso da NF de Referência deve conter 44 dígitos.';
        end;
      end;
      // Removido até resolver a questão de ativar/inativar regras
      { if (Sender = edtNF_Transp_QVol) then
        begin
        if (WREventosCadastro.AcaoTabelaAtiva = 'NFE') and
        (Cadastro.FieldByName('NF_TRANSP_QVOL').AsString = '') then
        begin
        AError := True;
        ErrorText := 'Obrigatório Quantidade de Volumes para Emissão de NF-e.';
        end;
        end; }
{$ENDREGION}
    end;
  end;
  if Assigned(FFrameVendaPessoa) then
  begin
    with TFrameVendaPessoa(FFrameVendaPessoa) do
    begin
{$REGION 'Validação Frame Pessoas'}
      if (Sender = edtResponsavelPessoasINSCIDENT) then
      begin
        if (Cadastro.FieldByName('RESPONSAVEL_INSCIDENT').AsString = '') and
          (Cadastro.FieldByName('RESPONSAVEL_TIPO_CONTRIBUINTE').AsFloat = 1)
        then
        begin
          AError := True;
          ErrorText :=
            'Obrigatório Inscrição Estadual do Destinatário p/ tipo Contribuinte';
        end;
        if (StrToFloatDef(Cadastro.FieldByName('RESPONSAVEL_INSCIDENT')
          .AsString, 0) <> 0) and
          (Cadastro.FieldByName('RESPONSAVEL_TIPO_CONTRIBUINTE').AsFloat = 9)
        then
        begin
          AError := True;
          ErrorText :=
            'Inscrição Estadual preenchida. O tipo deve ser Contribuinte ou Isento';
        end;
      end;
      if (Sender = edtResponsavelÎCidadesÎUF) then
      begin
        if (WREventosCadastro.AcaoTabelaAtiva = 'NFCe') and
          (Cadastro.FieldByName('RESPONSAVEL_UF').AsString <>
          Empresa.FieldByName('UF').AsString) then
        begin
          AError := True;
          ErrorText := 'A UF do Destinatário deve ser igual a UF do Emitente';
        end;
        if (WREventosCadastro.AcaoTabelaAtiva = 'NFSE') and
          (Cadastro.FieldByName('RESPONSAVEL_UF').AsString = '') then
        begin
          AError := True;
          ErrorText := 'A UF do Destinatário não pode ficar vazia.';
        end;
        if (WREventosCadastro.AcaoTabelaAtiva = 'NFE') and
          (Cadastro.FieldByName('RESPONSAVEL_UF').AsString = '') then
        begin
          AError := True;
          ErrorText := 'A UF do Destinatário não pode ficar vazia.';
        end;
      end;
      if (Sender = cbxResponsavel_Tipo_Contribuinte) then
      begin
        if (Cadastro.FieldByName('RESPONSAVEL_TIPO_CONTRIBUINTE').AsInteger <> 9)
        then
        begin
          AError := True;
          ErrorText :=
            'Cliente deve ser Não Contribuinte para emissão de NFC-e.';
        end;
      end;
      if (Sender = edtResponsavelPessoasINSC_MUNICIPAL) then
      begin
        if (Cadastro.FieldByName('RESPONSAVEL_INSC_MUNICIPAL').AsString = '')
          and (Cadastro.FieldByName('SERVICO_ISS_RETIDO').AsInteger = 1) then
        begin
          AError := True;
          ErrorText :=
            'Obrigatório Inscrição Municipal para NFSe com ISS Retido.';
        end;
      end;
      if Sender = edtResponsavelPessoasENDERECO then
      begin
        if (Cadastro.FieldByName('RESPONSAVEL_ENDERECO').AsString.Length < 1) or
          (Cadastro.FieldByName('RESPONSAVEL_ENDERECO').AsString.Length > 125)
        then
          ErrorText :=
            'O tamanho mínimo para endereco do Tomador é 1 e o máximo é 125, Atual: '
            + Cadastro.FieldByName('RESPONSAVEL_ENDERECO')
            .AsString.Length.ToString;
      end;
{$ENDREGION}
    end;
  end;

  // AQUI CONTINUA WAGNER
  if Assigned(FFormVenda_Produto) then
  begin
    with TFrmVenda_Produto(FFormVenda_Produto) do
    begin
      if (Sender = EdtCFOPÎNF_CFOP) then
      begin
        if ((venda_produto.FieldByName('CODNF_CFOP').AsString[1] = '1') or
          (venda_produto.FieldByName('CODNF_CFOP').AsString[1] = '2') or
          (venda_produto.FieldByName('CODNF_CFOP').AsString[1] = '3')) and
          (Cadastro.FieldByName('NF_SAIDA_ENTRADA').AsString = '1') then
        begin
          AError := True;
          ErrorText := 'CFOP de Entrada para NFe de Saída.';
        end;
        if ((venda_produto.FieldByName('CODNF_CFOP').AsString[1] = '5') or
          (venda_produto.FieldByName('CODNF_CFOP').AsString[1] = '6') or
          (venda_produto.FieldByName('CODNF_CFOP').AsString[1] = '7')) and
          (Cadastro.FieldByName('NF_SAIDA_ENTRADA').AsString = '0') then
        begin
          AError := True;
          ErrorText := 'CFOP de Saída para NFe de Entrada.';
        end;
        if (venda_produto.FieldByName('CODNF_CFOP').AsString.Length < 4) then
        begin
          AError := True;
          ErrorText := 'CFOP inválido: Deve ter 4 dígitos.';
        end;
      end;
      if (Sender = cxDBButtonEdit1) then // cst
      begin
        if (Empresa.FieldByName('CRT').AsString = 'Simples Nacional') and
          (venda_produto.FieldByName('CODNF_CST').AsString.Length <> 3) and
          (venda_produto.FieldByName('PRODUTO_TIPO').AsString <> 'SERVIÇO') then
        begin
          AError := True;
          ErrorText :=
            'CST/CSOSN inválido: Sua empresa é do Regime Simples Nacional, deve ter 3 dígitos.';
        end;
        if (Empresa.FieldByName('CRT').AsString = 'Regime Normal') and
          (venda_produto.FieldByName('CODNF_CST').AsString.Length <> 2) and
          (venda_produto.FieldByName('PRODUTO_TIPO').AsString <> 'SERVIÇO') then
        begin
          AError := True;
          ErrorText :=
            'CST/CSOSN inválido: Sua empresa é do Regime Normal, deve ter 2 dígitos.';
        end;
      end;
      if (Sender = EdtNCMÎNF_NCM) then
      begin
        if (venda_produto.FieldByName('NCM').AsString <> '') then
        begin
          AError := True;
          ErrorText := 'NCM obrigatório.';
        end;
      end;
      if (Sender = edtResultadoICMSValor) then
      begin
        if (Empresa.FieldByName('CRT').AsString = 'Simples Nacional') and
          (venda_produto.FieldByName('CODNF_CST').AsString <> '400') and
          (venda_produto.FieldByName('CODNF_CST').AsString <> '900') and
          (venda_produto.FieldByName('NF_VICMS').AsFloat <> 0) then
        begin
          AError := True;
          ErrorText :=
            'Sua empresa é do Simples Nacional. Valor de Imposto inválido.';
        end;
      end;
      if (Sender = cxDBTextEdit10) then
      begin
        if (venda_produto.FieldByName('DESCRICAO').AsString = '') then
        begin
          AError := True;
          ErrorText := 'Descrição do Produto é Obrigatória.';
        end;
        if (venda_produto.FieldByName('DESCRICAO').AsString <> '') and
          (venda_produto.FieldByName('DESCRICAO').AsString.Length > 150) then
        begin
          AError := True;
          ErrorText :=
            'Descrição do produto maior que o máximo permitido pela Sefaz (150 caracteres).';
        end;
      end;
    end;
  end;
end;

procedure TFrame_Venda_Venda.VerificaVisibleBotoesFaturamento;
var
  QuerVerificaAFaturar : TFDQuery;
begin
  if Cadastro.FieldByName('DT_FATURAMENTO').AsString = '' then
  begin
    QuerVerificaAFaturar := GeraFDQuery;
    try
      QuerVerificaAFaturar.SQL.Text :=
        ' select Count(1)as Quant from producao_produto pp where pp.codvenda = '
        + QuotedStr(Cadastro.FieldByName('CODIGO').AsString) +
        '  AND PP.TEM_DIVERGENCIA = ''S'' ';
      QuerVerificaAFaturar.Open;
      LibtnFaturamentoProducao.Visible := QuerVerificaAFaturar.FieldByName
        ('Quant').AsInteger > 0;

      if Cadastro.FieldByName('FATURA_PREVISAO').AsString = 'S' then
      begin
        libtnFinalizarPedido.Visible := True;
        btnFaturamento.Visible    := False;
      end else
      begin
        btnFaturamento.Visible    := True;
        libtnFinalizarPedido.Visible := False;
      end;
    finally
      QuerVerificaAFaturar.Free;
    end;
  end
  else
  begin
    btnFaturamento.Visible := False;
    LibtnFaturamentoProducao.Visible := False;
    LibtnFinalizarPedido.Visible := False;
  end;
  btnCancela_Faturamento.Visible := (Cadastro.FieldByName('DT_FATURAMENTO').AsString <> '');

  LilblTipoFaturamento.Visible := AWR_APP[TagAPP_Faturamento].Ativo;
//  LilblPrevisao.Visible := (Cadastro.FieldByName('FATURA_PREVISAO').AsString = 'S');
  if Cadastro.FieldByName('IS_FATURAMENTO_CANCELADO').AsString = 'S' then
  begin
    lblTipoFaturamento.Caption := 'Faturamento Cancelado';
    lblTipoFaturamento.Style.TextColor := clRed;
  end
  else if Cadastro.FieldByName('FATURA_PREVISAO').AsString = 'S' then
  begin
    lblTipoFaturamento.Caption := 'Previsão';
    lblTipoFaturamento.Style.TextColor := clGreen;
  end
  else if Cadastro.FieldByName('CODVENDA_VINCULADA').AsString <> '' then
  begin
    lblTipoFaturamento.Caption := 'Agrupada Faturamento';
    lblTipoFaturamento.Style.TextColor := clNavy;
  end
  else
  begin
    lblTipoFaturamento.Caption := 'Faturamento';
    lblTipoFaturamento.Style.TextColor := clNavy;

    if Cadastro.FieldByName('CREDITO_DISPONIVEL').AsFloat > 0 then
    begin
      lblTipoFaturamento.Caption := lblTipoFaturamento.Caption + ' COM CRÉDITO';
      lblTipoFaturamento.Style.TextColor := clRed;
    end;

  end;
end;

procedure TFrame_Venda_Venda.PessoasAlteraCampoFaturaPrevisao;
begin
//  if not (Endereco_Responsavel.State in [dsEdit, dsInsert]) then
//    Endereco_Responsavel.Edit;
//
//  Endereco_Responsavel.FieldByname('FATURA_PREVISAO').AsString := 'S';
//  Endereco_Responsavel.Post;
end;

procedure TFrame_Venda_Venda.VendaAlteraCampoFaturaPrevisao;
begin
  VerificaSePodeAlteraDataSet;

  Cadastro.FieldByname('FATURA_PREVISAO').AsString := 'S';
//  Cadastro.Post;
end;

procedure TFrame_Venda_Venda.FinanceiroBaixaParcelasPrevisao;
var
  QuerX: TFDQuery;
  UcHist: TUCHist_DataSet;
begin
  QuerX := GeraFDQuery(TransaFD);

  // Cria histórico em tempo de execução
  UcHist := TUCHist_DataSet.Create(Self);
  UcHist.DataSet := QuerX;
  UcHist.CampoPK1 := 'CODIGO';
  UcHist.CampoPK1 := 'CODPEDIDO';
  UcHist.CampoPK1 := 'CODEMPRESA';
  UcHist.ControlHistorico := FrmPrincipal.UCControlHistorico1;
  UcHist.Modulo := 'VENDAS';
  UcHist.Name := 'UcHistFinanceiro1';
  UcHist.Tabela := 'FINANCEIRO';

  try
    QuerX.SQL.Text := 'SELECT F.CODIGO, F.CODPEDIDO, F.STATUS, F.HISTORICO FROM FINANCEIRO F ' +
                      'WHERE F.CODPEDIDO in ' +
                      '(select distinct vp.codvenda_original ' +
                      'from venda_produto vp where vp.codvenda = :CodVenda) ' +
                      'and F.STATUS like ''ATIVO%'' ';
    QuerX.ParamByName('CodVenda').AsString := Cadastro.FieldByName('CODIGO').AsString;
    QuerX.Open;
    QuerX.First;
    while not QuerX.eof do
    begin
      QuerX.Edit;
      QuerX.FieldByName('STATUS').AsString := 'INATIVO PREVISÃO';
      QuerX.FieldByName('HISTORICO').AsString := QuerX.FieldByName('HISTORICO').AsString +
                                                 ' - Inativada da Venda ' +
                                                 QuerX.FieldByName('CODPEDIDO').AsString;
      QuerX.Post;
      QuerX.Next
    end;
  finally
    QuerX.Free;
    UcHist.Free;
  end;
end;

procedure TFrame_Venda_Venda.FinanceiroRetornaParcelasPrevisao;
var
  QuerX: TFDQuery;
  UcHist: TUCHist_DataSet;
begin
  QuerX := GeraFDQuery(TransaFD);

  // Cria histórico em tempo de execução
  UcHist := TUCHist_DataSet.Create(Self);
  UcHist.DataSet := QuerX;
  UcHist.CampoPK1 := 'CODIGO';
  UcHist.CampoPK1 := 'CODPEDIDO';
  UcHist.CampoPK1 := 'CODEMPRESA';
  UcHist.ControlHistorico := FrmPrincipal.UCControlHistorico1;
  UcHist.Modulo := 'VENDAS';
  UcHist.Name := 'UcHistFinanceiro3';
  UcHist.Tabela := 'FINANCEIRO';

  try
    QuerX.SQL.Text := 'SELECT F.CODIGO, F.CODPEDIDO, F.STATUS, F.HISTORICO FROM FINANCEIRO F ' +
                      'WHERE F.CODPEDIDO in ' +
                      '(select distinct vp.codvenda_original ' +
                      'from venda_produto vp where vp.codvenda = :CodVenda) ' +
                      'and F.STATUS like ''INATIVO PENDENTE'' ';
    QuerX.ParamByName('CodVenda').AsString := Cadastro.FieldByName('CODIGO').AsString;
    QuerX.Open;
    QuerX.First;
    while not QuerX.eof do
    begin
      QuerX.Edit;
      QuerX.FieldByName('STATUS').AsString := 'ATIVO';
      QuerX.FieldByName('HISTORICO').AsString := LeftStr(QuerX.FieldByName('HISTORICO').AsString,
                                                 QuerX.FieldByName('HISTORICO').AsString.IndexOf(' - Inativada da Venda ',0));
      QuerX.Post;
      QuerX.Next
    end;
  finally
    QuerX.Free;
    UcHist.Free;
  end;
end;

initialization

RegisterClass(TFrame_Venda_Venda);
RegisterFrameCad(Tag_Venda, TFrame_Venda_Venda);

end.

