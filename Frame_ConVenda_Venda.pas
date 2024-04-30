unit Frame_ConVenda_Venda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Frame_ConVenda_Mestre, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxLayoutContainer, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  Data.DB, cxDBData, cxCalendar, cxLabel, cxCurrencyEdit, cxTL, cxMaskEdit, cxTLdxBarBuiltInMenu, Vcl.ComCtrls, dxCore, cxDateUtils, cxSchedulerStorage,
  cxSchedulerCustomControls, cxSchedulerDateNavigator, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, dxScreenTip, dxBar, dxRibbon, uWRFormataCamposDataSet,
  cxEditRepositoryItems, UCBase, FireDAC.Comp.Client, cxCustomStatusKeeper, cxStatusKeeper, UCHistDataset, System.Generics.Collections, WREventos, frxClass,
  frxDBSet, System.ImageList, Vcl.ImgList, cxImageList, System.Actions, Vcl.ActnList, dxCustomHint, cxHint, Vcl.ExtCtrls, dxLayoutLookAndFeels,
  FireDAC.Comp.DataSet, dxPSCore, dxPScxCommon, cxClasses, cxDateNavigator, cxDateProfileButton, cxDropDownEdit, cxInplaceContainer, cxDBTL, cxTLData,
  dxActivityIndicator, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Buttons, cxButtonEdit, dxCustomTileControl, dxTileControl, uButtonFlat, cxGridViewLayoutContainer,
  cxGridLayoutView, cxGridDBLayoutView, cxGridLevel, cxGridChartView, cxGridDBChartView, cxGridCustomLayoutView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxButtons, cxTextEdit, dxLayoutControl,
  dxScrollbarAnnotations, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TFrame_ConsuVenda_Venda = class(TFrame_ConsuVenda_Mestre)
    tiFiltroPedidosSemFat: TdxTileControlItem;
    tiFiltrosPedidosAFaturar: TdxTileControlItem;
    btnDesagrupar: TdxTileControlItem;
    btnFaturar: TdxTileControlItem;
    btnCancelarFaturamento: TdxTileControlItem;
    btnFaturarProducao: TdxTileControlItem;
    btnNotaFiscal: TdxTileControlItem;
    procedure WREventosConsultaGetFiltrosConsulta(Sender: TObject);
    procedure WRFormataCamposDataSets1CarregaDataSets(Sender: TObject);
    procedure btnDesagruparClick(Sender: TdxTileControlItem);
    procedure btnCancelarFaturamentoClick(Sender: TdxTileControlItem);
    procedure btnFaturarClick(Sender: TdxTileControlItem);
    procedure btnNotaFiscalClick(Sender: TdxTileControlItem);
    procedure btnFaturarProducaoClick(Sender: TdxTileControlItem);
    procedure GridConsultaDBTableView1CellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure tiAFaturarClick(Sender: TdxTileControlItem);
    procedure tiPedidosAFaturarClick(Sender: TdxTileControlItem);
    procedure WREventosCadastroLayoutChange(Sender: TObject);
    procedure GridConsultaDBTableView1SelectionChanged(
      Sender: TcxCustomGridTableView);
    procedure GridConsultaDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frame_ConsuVenda_Venda: TFrame_ConsuVenda_Venda;

implementation

{$R *.dfm}

Uses Base, Base_Venda, UnitFuncoes, wrFuncoes, wrForms, wrConversao, Frame_CadVenda_Mestre, Tag.APP,
    Frame_CadVenda_Venda, Tag.Form, DateUtils;

procedure TFrame_ConsuVenda_Venda.btnDesagruparClick(Sender: TdxTileControlItem);
begin
  inherited;
  if GridConsultaDBTableView1.DataController.GetSelectedCount > 1 then
  begin
    ShowMessageWR('Não é possível desagrupar mais de uma venda por vez');
    Exit;
  end;

  if  (Consulta.FieldByName('STATUS').AsString <> 'ATIVO CRIADO') and
      (Consulta.FieldByName('CODVENDA_VINCULADA').AsString = '')
  then
  begin
    ShowMessageWR('Para desagrupar é necessário selecionar uma venda agrupada.');
    Exit;
  end;

  if (Consulta.FieldByName('DT_FATURAMENTO').AsString <> '')
  then
  begin
    ShowMessageWR('Não é possível desagrupar vendas Faturadas');
    Exit;
  end;

  if (Consulta.FieldByName('NOTAFISCAL').AsString <> '')
  then
  begin
    ShowMessageWR('Não pode desagrupar por que tem número de nota informado. '
      + sLineBreak + 'Apague o número da nota fiscal Primeiro!.');
    Exit;
  end;

  with ABaseClass_MidChild[Tag_Venda].Create(Application) do
  begin
    ShowCadastroItem(Tag_Venda, Consulta.FieldByName('CODIGO').Value);
    with FrameCadastro do
    begin
      // Se for agrupado faz o desagrupamento, senão exclui.
      if (Consulta.FieldByName('STATUS').AsString = 'ATIVO CRIADO') and
         (Consulta.FieldByName('CODVENDA_VINCULADA').AsString <> '')
      then
        TFrame_Venda_Mestre(FrameCadastro).CancelarFaturamentoAgrupado
      else
        btnExcluir.Click;
    end;
  end;
  RefreshConsulta;
end;

procedure TFrame_ConsuVenda_Venda.btnFaturarClick(Sender: TdxTileControlItem);
var
  ACodVendaNew, ATipo, ACliente, AVendasSelecionadas, AVendasSelecionadasSQL: string;
  I, QuantVendas: Integer;
  AGridRecord: TcxCustomGridRecord;
  ACaixaRec: TCaixaRec;
  QuerX, QuerY: TFDQuery;
  AFrmVendaNovo: TFrmVenda_Base;
  AFrmVenda, AFrmVendaTemporaria: TFrame_Venda_Venda;
  APrevisao, AMensagem: String;
begin
  inherited;
  ACliente := '';
//  ShowMessage('Função desativada.');
//  Exit;
  for I := 0 to GridConsultaDBTableView1.DataController.GetSelectedCount - 1 do
  begin
    AGridRecord := GridConsultaDBTableView1.Controller.SelectedRows[I];
    if (VarToStr(AGridRecord.Values[GridConsultaDBTableView1CODVENDA_VINCULADA.Index]) <> '') then
    begin
      ShowMessageWR('Não é possível agrupar vendas do tipo Agrupadas.');
      Exit;
    end;
  end;
  QuerX := GeraFDQuery(Transa);
  QuerY := GeraFDQuery;
  try
    QuerX.SQL.Text := 'select first 1 1 ' + 'from VENDA_PRODUTO ' + 'where (CODVENDA = :Cod)';
    for I := 0 to GridConsultaDBTableView1.Controller.SelectedRecordCount - 1 do
    begin
      QuerX.Close;
      QuerX.Params[0].Value := GridConsultaDBTableView1.Controller.SelectedRecords[I].Values[GridConsultaDBTableView1CODIGO.Index];
      QuerX.Open;
      if QuerX.IsEmpty then
      begin
        ShowMessageWR('Não é possível agrupar vendas que não contenham nenhum produto.', MB_ICONWARNING);
        Exit;
      end;
    end;
    QuerX.SQL.Text :=  'select VT.PODE_SER_FATURADO, VT.DESCRICAO, V.PESSOA_RESPONSAVEL_CODIGO' +
                            '   from VENDA_TIPO VT' +
                            '   left join VENDA V on V.VENDA_TIPO = VT.DESCRICAO' +
                            '   where V.CODIGO = :cod';
    for I := 0 to GridConsultaDBTableView1.Controller.SelectedRecordCount - 1 do
    begin
      QuerX.Close;
      QuerX.Params[0].Value := GridConsultaDBTableView1.Controller.SelectedRecords[I].Values[GridConsultaDBTableView1CODIGO.Index];
      QuerX.Open;

      if (ACliente <> '') and
         (ACliente <> QuerX.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString) then
      begin
        ShowMessageWR('Não é possível agrupar pedidos com clientes diferentes. Confira o cliente e tente novamente.', MB_ICONWARNING);
        Exit;
      end;
      ACliente := QuerX.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString;

      if (QuerX.FieldByName('PODE_SER_FATURADO').AsString = 'N') then
      begin
        ShowMessageWR('O Tipo de Venda ' + QuerX.FieldByName('DESCRICAO').AsString + ' não pode ser faturado.', MB_ICONWARNING);
        Exit;
      end;
    end;

    // Verifica se há parcelas recebidas e se estas estão em caixa fechado
    QuerX.SQL.Text := 'select F.DATAPAGTO, F.CODCONTA, F.STATUS ' +
      'from FINANCEIRO F ' + 'left join CONTAS C on (F.CODCONTA = C.CODIGO) ' +
      'where (F.CODPEDIDO = :Cod) ' + '      and (F.STATUS like ''ATIVO%'') ' +
      '      and (C.TIPO = ''CAIXA'') ' +
      '      and (F.TIPO in (''RECEBIDA'',''PAGA''))';
    for I := 0 to GridConsultaDBTableView1.Controller.SelectedRecordCount - 1 do
    begin
      QuerX.Close;
      QuerX.Params[0].AsString := GridConsultaDBTableView1.Controller.SelectedRecords[I].Values[GridConsultaDBTableView1CODIGO.Index];
      QuerX.Open;
      while not QuerX.eof do
      begin
        ACaixaRec := GetSituacaoCaixaSQL(Transa, QuerX.FieldByName('DATAPAGTO')
          .AsDateTime, QuerX.FieldByName('CODCONTA').AsInteger, True);
        if ACaixaRec.Situacao = scCaixaFechado then
        begin
          ShowMessageWR
            ('Algumas parcelas desta venda já foram recebidas/pagas e o caixa relativo já foi fechado.'
            + sLineBreak + 'Não é possível agrupar para faturar.');
          Exit;
        end;
        if QuerX.FieldByName('STATUS').AsString = 'ATIVO*' then
        // impede que o venda seja cancelado caso o cartão ja tenha sido transferido
        begin
          ShowMessageWR
            ('Algumas Parcelas desta venda já foram transferidas para outra conta.'
            + sLineBreak + 'Não é possível agrupar para faturar.');
          Exit;
        end;
        QuerX.next;
      end;
    end;

//    QuerX.Close;
//    QuerX.SQL.Text := 'SELECT P.CODIGO, P.FATURA_PREVISAO FROM PESSOAS P WHERE P.CODIGO = :codcliente';
//    QuerX.ParamByName('codcliente').AsString := ACliente;
//    QuerX.Open;
//    if QuerX.FieldByName('FATURA_PREVISAO').AsString <> 'S' then
//    begin
//      if ShowMessageWR('Este cliente não está habilitado para faturamento agrupado. Deseja habilitar?', MB_ICONQUESTION) = mrYes then
//      begin
//        QuerY.SQL.Text := 'Update PESSOAS P set P.FATURA_PREVISAO = ''S'' WHERE P.CODIGO = :Cod';
//        QuerY.ParamByName('Cod').AsString := ACliente;
//        QuerY.ExecSQL;
//      end;
//    end;

    QuerX.Close;
    QuerX.SQL.Text := 'SELECT VP.PODE_FATURAR FROM VENDA_PRODUTO VP WHERE VP.CODVENDA = :codvenda';
    for I := 0 to GridConsultaDBTableView1.Controller.SelectedRecordCount - 1 do
    begin
      QuerX.Close;
      QuerX.Params[0].Value := GridConsultaDBTableView1.Controller.SelectedRecords[I].Values[GridConsultaDBTableView1CODIGO.Index];
      QuerX.Open;
      if QuerX.FieldByName('PODE_FATURAR').AsString = 'N' then
      begin
        ShowMessageWR
          ('O Pedido ' + GridConsultaDBTableView1.Controller.SelectedRecords[I].Values[GridConsultaDBTableView1CODIGO.Index] +
           ' já foi agrupado anteriormente. Apenas é possível agrupá-lo excluindo o agrupamento original.');
        Exit;
      end;
    end;

  finally
    QuerX.Free;
    QuerY.Free;
  end;



//  for I := 0 to GridProdutos.DataController.GetSelectedCount - 1 do
//  begin
//    AGridRecord := GridProdutos.Controller.SelectedRows[I];
//    if not VarIsNull(AGridRecord.Values[GridProdutosCODVENDA_ORIGINAL.Index]) and (VarToStrDef(AGridRecord.Values
//      [GridProdutosCODVENDA_ORIGINAL.Index], '') <> VarToStrDef(AGridRecord.Values[GridProdutosCODVENDA.Index],
//      '')) then
//    begin
//      ShowMessageWR('Um ou mais produtos selecionados foram originados em outras vendas, além das selecionadas. '
//        + 'Possivelmente você selecionou uma venda que já é uma fatura, contendo produtos de outras vendas. '
//        + 'Verifique os produtos e vendas selecionados e tente novamente.' + LineBreakWR(2) +
//        'Confira a coluna "Venda Original" no grid de produtos, ela deve estar vazia ou ter o mesmo ' +
//        'valor da coluna "Cód. Venda"', MB_ICONWARNING);
//      Exit;
//    end;
//  end;

//  if GridProdutos.DataController.RecordCount <> GridProdutos.DataController.GetSelectedCount then
//    ATipo := 'Parcial'
//  else
//    ATipo := 'Integral';
//  for I := 0 to GridProdutos.DataController.GetSelectedCount - 1 do
//  begin
//    if not VarSameValueWR(GridProdutos.DataController.Values[I, GridProdutosCODVENDA.Index],
//      Consulta.FieldByName('CODIGO').AsString) then
//      ATipo := 'Agrupado';
//  end;
  if GridConsultaDBTableView1.DataController.GetSelectedCount > 1 then
  begin
    ATipo := 'Agrupada';
    QuantVendas := GridConsultaDBTableView1.DataController.GetSelectedCount;
    APrevisao := 'S';
  end
  else
    ATipo := 'Única';

    //////////MODIFICAO FELIPE - PERMITE FATURAR UNICA NA TELA DE VENDA SEM DUPLICAR O PEDIDO
  if (ATipo = 'Única') and (VarToStr(AGridRecord.Values[GridConsultaDBTableView1FATURA_PREVISAO.Index]) <> 'S') then
    APrevisao := 'N'
  else
    APrevisao := 'S';

  if APrevisao = 'S' then
    AMensagem := 'Deseja criar um Venda deste Pedido? '
  else
    AMensagem := 'Deseja Faturar esta Venda? ';
   /////////////////////////////////////////////////////////////////////////////////////

  // Para cada venda antes de faturar precisa colocar Fatura_Previsao = S

  if ShowMessageWR(AMensagem + '(' + ATipo + ')', MB_ICONQUESTION) = mrYes then
  begin

//    AFrmVendaTemporaria := TFrame_Venda_Venda(ConsultaTag_Frame(Self, Tag_Venda));
//    AFrmVendaTemporaria.FrameEnter(AFrmVendaTemporaria);
    AFrmVendaTemporaria := TFrame_Venda_Venda.Create(Application);
    AFrmVendaTemporaria.FrameEnter(Self);
    AVendasSelecionadas := ' ';
    try
      GridConsultaDBTableView1.DataController.ChangeFocusedRecordIndex(GridConsultaDBTableView1.Controller.SelectedRecords[0].RecordIndex);
      AFrmVendaTemporaria.CloseOpen_AbrirRegistro(Consulta.FieldByName('CODIGO').AsString);
      //Abaixo altera o cadastro do funcionário
//      TFrmVenda(AFrmVendaTemporaria).PessoasAlteraCampoFaturaPrevisao;

//      AFrmVendaTemporaria.Cadastro.Edit;
//      AFrmVendaTemporaria.Cadastro.FieldByName('FATURA_PREVISAO').AsString := 'S';
//      AFrmVendaTemporaria.Cadastro.Post;

      // Ao Agrupar, fatura
//      TFrmVendaBase(AFrmVendaTemporaria).VendaProdutoAtualizaPodeFaturar('N');
      if AFrmVendaTemporaria.Cadastro.FieldByName('DT_FATURAMENTO').AsString = '' then
      begin
        if APrevisao = 'S' then
          AFrmVendaTemporaria.VendaAlteraCampoFaturaPrevisao;

        AFrmVendaTemporaria.btnParcelas.Click;
        AFrmVendaTemporaria.btnFinalizarPedido.Click;
      end;

      if AFrmVendaTemporaria.Cadastro.FieldByName('DT_FATURAMENTO').AsString = '' then
        ShowMessage('Não faturou');

      if APrevisao = 'S' then   ///SE FOR PEDIDO DUPLICA PARA CRIAR UMA VENDA, SE NÃO APENAS FATURA
      begin
        AFrmVendaNovo := TFrmVenda_Base.FrameDuplicaVendaBase(Tag_Venda, AFrmVendaTemporaria.Cadastro, AFrmVendaTemporaria.Venda_Financeiro, AFrmVendaTemporaria.Venda_Produto, AFrmVendaTemporaria.GridProdutoTree, True);
        AVendasSelecionadas := Consulta.FieldByName('CODIGO').AsString;
        AVendasSelecionadasSQL := Consulta.FieldByName('CODIGO').AsString;
        for I := 1 to GridConsultaDBTableView1.DataController.GetSelectedCount - 1 do
        begin
          if not GridConsultaDBTableView1.Controller.SelectedRecords[i].IsData then
            Continue;
          GridConsultaDBTableView1.DataController.ChangeFocusedRecordIndex(GridConsultaDBTableView1.Controller.SelectedRecords[i].RecordIndex);

          AFrmVendaTemporaria.CloseOpen_AbrirRegistro(Consulta.FieldByName('CODIGO').AsString);

  //        TFrmVendaBase(AFrmVendaTemporaria).VendaProdutoAtualizaPodeFaturar('N');
          // Ao Agrupar, fatura todas as que foram agrupadas
          if AFrmVendaTemporaria.Cadastro.FieldByName('DT_FATURAMENTO').AsString = '' then
          begin
            AFrmVendaTemporaria.VendaAlteraCampoFaturaPrevisao;
            AFrmVendaTemporaria.btnParcelas.Click;
  //        VendaProdutoAtualizaPodeFaturar('N');

            AFrmVendaTemporaria.btnFinalizarPedido.Click;
          end;
          if AFrmVendaTemporaria.Cadastro.FieldByName('DT_FATURAMENTO').AsString = '' then
            ShowMessage('Não faturou');

          AVendasSelecionadas := AVendasSelecionadas + ', ' + Consulta.FieldByName('CODIGO').AsString;
          AVendasSelecionadasSQL := AVendasSelecionadasSQL + ''',''' + Consulta.FieldByName('CODIGO').AsString;

          TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).FrameCopiarVendaComProduto(Tag_Venda, AFrmVendaTemporaria.Venda_Produto, AFrmVendaTemporaria.GridProdutoTree, True, TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro), FVendasSelecionadas.DelimitedTextWR);
        end;
        // Atualiza vendas para IS_PEDIDO = 'S'
  //      ShowMessage(AVendasSelecionadasSQL);
        QuerX := GeraFDQuery(TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).TransaFD);
        try
          QuerX.SQL.Text := 'UPDATE VENDA V SET V.IS_PEDIDO = ''S'', V.IS_VENDA = ''N'' WHERE V.CODIGO IN (''' + AVendasSelecionadasSQL + ''')';
          QuerX.ExecSQL;

          QuerX.Close;
          QuerX.SQL.Text := 'update VENDA_PRODUTO VP set VP.PODE_FATURAR = ''N'' ' +
                            'where VP.CODVENDA in (''' + AVendasSelecionadasSQL + ''')';
          QuerX.ExecSQL;
        finally
          QuerX.Free;
        end;
        with TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro) do
        begin
          Cadastro.FieldByName('OBSERVACAO').AsString := Cadastro.FieldByName('OBSERVACAO').AsString + ' ' + AVendasSelecionadas;
          Cadastro.FieldByName('CODVENDA_VINCULADA').AsString := AVendasSelecionadas;
          Cadastro.FieldByName('FATURA_PREVISAO').AsString := 'N';
          Cadastro.FieldByName('IS_VENDA').AsString := 'S';
          Cadastro.FieldByName('IS_PEDIDO').AsString := 'N';
          WRCalc.SprFechaMemTables;  //CalculaProduto
          Venda_Produto.Refresh;  //<<<<<<< pRECISO DISSO
          WRCalc.CalcBuild;  //CalculaProduto
          WRCalc.SprCopiarFormula;
          WRCalc.SuperCalc;
          TransaFD.Commit;
        end;
      end;

    finally
      AFrmVendaTemporaria.Free;
    end;
    if APrevisao = 'S' then
    begin
      TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).cbxTipo_Venda.Properties.OnChange(Self);
      TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).VerificaVisibleBotoesFaturamento;
    end;
    if APrevisao = 'N' then
      Consulta.refresh;
  end;
end;

procedure TFrame_ConsuVenda_Venda.btnNotaFiscalClick(Sender: TdxTileControlItem);
var
  ACodVendaNew, ATipo, AVendaTipoSelecionado, ACliente, AVendasSelecionadas: string;
  AFrmVendaNovo:  TFrmVenda_Base;
  AFrmVendaTemporaria : TFrame_Venda_Venda;
  I, QuantVendas: Integer;
  QuerX: TFDQuery;
begin
  inherited;
  ACliente := '';
//  ShowMessage('Função desativada.');
//  Exit;
  QuerX := GeraFDQuery;
  try
    QuerX.SQL.Text := 'select first 1 1 ' + 'from VENDA_PRODUTO ' + 'where (CODVENDA = :Cod)';
    for I := 0 to GridConsultaDBTableView1.Controller.SelectedRecordCount - 1 do
    begin
      QuerX.Close;
      QuerX.Params[0].Value := GridConsultaDBTableView1.Controller.SelectedRecords[I].Values[GridConsultaDBTableView1CODIGO.Index];
      QuerX.Open;
      if QuerX.IsEmpty then
      begin
        ShowMessageWR('Não é possível agrupar vendas que não contenham nenhum produto.', MB_ICONWARNING);
        Exit;
      end;
    end;
    QuerX.SQL.Text :=  'select VT.PODE_SER_FATURADO, VT.DESCRICAO, V.PESSOA_RESPONSAVEL_CODIGO' +
                            '   from VENDA_TIPO VT' +
                            '   left join VENDA V on V.VENDA_TIPO = VT.DESCRICAO' +
                            '   where V.CODIGO = :cod';
    for I := 0 to GridConsultaDBTableView1.Controller.SelectedRecordCount - 1 do
    begin
      QuerX.Close;
      QuerX.Params[0].Value := GridConsultaDBTableView1.Controller.SelectedRecords[I].Values[GridConsultaDBTableView1CODIGO.Index];
      QuerX.Open;

      if (ACliente <> '') and
         (ACliente <> QuerX.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString) then
      begin
        ShowMessageWR('Não é possível agrupar pedidos com clientes diferentes. Confira o cliente e tente novamente.', MB_ICONWARNING);
        Exit;
      end;
      ACliente := QuerX.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString;
    end;
  finally
    QuerX.Free;
  end;
 // ShowMessage('Função desativada.');
 // Exit;

//  if GridProdutos.DataController.RecordCount <> GridProdutos.DataController.GetSelectedCount then
//    ATipo := 'Parcial'
//  else
//    ATipo := 'Integral';
//  for I := 0 to GridProdutos.DataController.GetSelectedCount - 1 do
//  begin
//    if not VarSameValueWR(GridProdutos.DataController.Values[I, GridProdutosCODVENDA.Index],
//      Consulta.FieldByName('CODIGO').AsString) then
//      ATipo := 'Agrupado';
//  end;

  if GridConsultaDBTableView1.DataController.GetSelectedCount > 1 then
  begin
    ATipo := 'Agrupada';
    QuantVendas := GridConsultaDBTableView1.DataController.GetSelectedCount;
  end
  else
    ATipo := 'Única';

  if ShowMessageWR('Deseja criar uma nota fiscal desta venda? (' + ATipo + ')', MB_ICONQUESTION) = mrYes then
  begin
    AFrmVendaTemporaria := TFrame_Venda_Venda.Create(Application);
    AVendasSelecionadas := ' ';
    try
      GridConsultaDBTableView1.DataController.ChangeFocusedRecordIndex(GridConsultaDBTableView1.Controller.SelectedRecords[0].RecordIndex);
      AFrmVendaTemporaria.CloseOpen_AbrirRegistro(Consulta.FieldByName('CODIGO').AsString);
      AFrmVendaNovo := TFrmVenda_Base.FrameDuplicaVendaBase(Tag_Venda_NotaFiscal, AFrmVendaTemporaria.Cadastro, AFrmVendaTemporaria.Venda_Financeiro, AFrmVendaTemporaria.Venda_Produto,AFrmVendaTemporaria.GridProdutoTree, True);
      AVendasSelecionadas := Consulta.FieldByName('CODIGO').AsString;
      for I := 1 to GridConsultaDBTableView1.DataController.GetSelectedCount - 1 do
      begin
        if not GridConsultaDBTableView1.Controller.SelectedRecords[i].IsData then
          Continue;
        GridConsultaDBTableView1.DataController.ChangeFocusedRecordIndex(GridConsultaDBTableView1.Controller.SelectedRecords[i].RecordIndex);

        AFrmVendaTemporaria.CloseOpen_AbrirRegistro(Consulta.FieldByName('CODIGO').AsString);
        AVendasSelecionadas := AVendasSelecionadas + ', ' + Consulta.FieldByName('CODIGO').AsString;

        TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).FrameCopiarVendaComProduto(Tag_Venda, AFrmVendaTemporaria.Venda_Produto, AFrmVendaTemporaria.GridProdutoTree, True, TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro), FVendasSelecionadas.DelimitedTextWR);
      end;
      with TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro) do
      begin
        Cadastro.FieldByName('OBSERVACAO').AsString := Cadastro.FieldByName('OBSERVACAO').AsString + ' ' + AVendasSelecionadas;
        Cadastro.FieldByName('IS_VENDA').AsString := 'N';
        Cadastro.FieldByName('IS_NOTAFISCAL').AsString := 'S';
  //      Cadastro.FieldByName('CODVENDA').AsString := AVendasSelecionadas;
        WRCalc.SprFechaMemTables;  //CalculaProduto
        Venda_Produto.Refresh;  //<<<<<<< pRECISO DISSO
        WRCalc.CalcBuild;  //CalculaProduto
        WRCalc.SprCopiarFormula;
        WRCalc.SuperCalc;
        TransaFD.Commit;
      end;
    finally
      AFrmVendaTemporaria.Free;
    end;
    TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).cbxTipo_Venda.Properties.OnChange(Self);

  {$REGION 'CÓDIGO ANTERIOR - COMENTADO PELO EDUARDO (ESTAVA DANDO PAU)'}
    { ANTIGO - EDUARDO COMENTOU


    AFrmVendaNovo := TFrmVenda(ConsultaForm(TFrmVenda));
    AFrmVendaTemporaria := TFrmVenda(ConsultaForm(TFrmVenda));

//    if not TFrmVendaTipoSelecao.GetVendaTipo(vtmNotaFiscal, AVendaTipoSelecionado) then
//      Exit;
    with AFrmVendaNovo do // só vai funcionar se a pessoa ja entrou no cadastro
    try
      CloseOpen_AbrirRegistro(Consulta.FieldByName('CODIGO').AsString);
      TransaFD.StartTransaction;
      ACodVendaNew := CopiarVendaEFinanceiro(AFrmVendaNovo, Consulta, Venda_Financeiro, Venda_Produto, '');
      //confirma
      CloseOpen_AbrirRegistro(ACodVendaNew);

      for I := 0 to GridConsultaDBTableView1.DataController.GetSelectedCount - 1 do
      begin
        if not GridConsultaDBTableView1.Controller.SelectedRecords[i].IsData then
          Continue;
        GridConsultaDBTableView1.DataController.ChangeFocusedRecordIndex(GridConsultaDBTableView1.Controller.SelectedRecords[i].RecordIndex);
        AFrmVendaTemporaria.CloseOpen_AbrirRegistro(Consulta.FieldByName('CODIGO').AsString);
        CopiarVendaComProduto(TFrmVenda, AFrmVendaTemporaria.Venda_Produto, AFrmVendaTemporaria.GridProdutoTree, False, AFrmVendaNovo);
      end;
      TransaFD.Commit;

    finally
      AFrmVendaNovo.FormStyle := fsMDIChild;
      AFrmVendaNovo.MainLayout.EndUpdate;
      Application.ProcessMessages;
      AFrmVendaNovo.Show;
      AFrmVendaTemporaria.Free;
    end;
    ANTIGO - EDUARDO COMENTOU }
     {$ENDREGION}
  end;
end;

procedure TFrame_ConsuVenda_Venda.tiAFaturarClick(
  Sender: TdxTileControlItem);
begin
  inherited;
  tiFiltroPedidosSemFat.Click;
end;

procedure TFrame_ConsuVenda_Venda.tiPedidosAFaturarClick(
  Sender: TdxTileControlItem);
begin
  inherited;
  tiFiltrosPedidosAFaturar.Click;
end;

procedure TFrame_ConsuVenda_Venda.GridConsultaDBTableView1CellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
  function LRecordValue(AColuna: TcxGridDBColumn): Variant;
  begin
    Result := Null;
    try
      if Assigned(ACellViewInfo) and
//         (ACellViewInfo is TcxGridTableController )and
         Assigned(ACellViewInfo.GridView) then
        Result := ACellViewInfo.GridRecord.Values[AColuna.Index];
    except  end;
  end;

begin
//  inherited;
//  /// eSSA FUNÇÃO AQUI ESTA ATRAVESSADA ENTRE MODELOS, TIPO PODE SER NOTA FISCAL E ESTAR FATURADA, PODE SER VENDE E ESTAR FATURADA, ENTÃO NÃO DA PARA DECIDIR SE APARECE OU NÃO POR APENAS 1 CAMPO
//  // dEVE SER ALGO DO TIPO IS_PEDIDO IS_VENDA IS_NOTAFISCAL
//
//  if Consulta.Active and Assigned(Sender)and(Sender.ItemCount > 0) then
//  begin
////    if edtRapidoModelo.Text = 'Orçamento' then
////    begin
////      LibtnAprovar.Visible := (Consulta.FieldByName('IS_ORCAMENTO').AsString = 'S');   //Visíble é só no começo da tela
////    end;
////
////    if edtRapidoModelo.Text = 'Venda' then
////    begin
//  //    LibtnDesagrupar.Visible := (VarToStrDef(LRecordValue(GridConsultaDBTableView1STATUS), '') =
//  //      'ATIVO AGRUPADO');
//  //    Desagrupar1.Visible := (VarToStrDef(LRecordValue(GridConsultaDBTableView1STATUS), '') =
//  //      'ATIVO AGRUPADO');
//      btnDesagrupar.Visible := (VarToStrDef(LRecordValue(GridConsultaDBTableView1CODVENDA_VINCULADA), '') <> '') and (VarToStrDef(LRecordValue(GridConsultaDBTableView1ATIVO), '') = 'S');
//
////      GrupoVenda.Enabled := False;// Comentado porque não tem uso, caso voltar só substituir pelo Seguinte: (VarIsNull(LRecordValue(GridConsultaDBTableView1DT_FATURAMENTO)) or (LRecordValue(GridConsultaDBTableView1FATURA_PREVISAO) = 'S') );
//
//      btnFaturar.Visible := AAPP[TagAPP_Venda_Pedido].Ativo and
//                            (VarToStrDef(LRecordValue(GridConsultaDBTableView1CODVENDA_VINCULADA), '') = '') and
//                            (VarToStrDef(LRecordValue(GridConsultaDBTableView1ATIVO), '') = 'S') and
//                            (VarIsNull(LRecordValue(GridConsultaDBTableView1DT_FATURAMENTO)) or
//                            (LRecordValue(GridConsultaDBTableView1FATURA_PREVISAO) = 'S'));  //GrupoFaturamento.Visible;  EDU
//      //GrupoFaturamento.Visible         := true; GrupoVenda.Enabled; EDU
//
//      btnCancelarFaturamento.Visible := AAPP[TagAPP_Venda_Pedido].Ativo and
//                                        (VarToStrDef(LRecordValue(GridConsultaDBTableView1DT_FATURAMENTO),'') <> '');
//      btnFaturarProducao.Visible:= AAPP[TagAPP_Ordem_Producao].Ativo;//Not LibtnCancelarEnvioFaturamento.Visible;  //TagAPP_Venda_Pedido
//
////      LibtnEnviarFaturamento.Visible:= False;//Not LibtnCancelarEnvioFaturamento.Visible;
////      btnEnviarFaturamento.Enabled := Not LibtnCancelarEnvioFaturamento.Visible;
////      LibtnAgrupar.Visible := GrupoVenda.Enabled;
////    end;
//
//
////    if edtRapidoModelo.Text ='Notas Fiscais' then
////    begin
////      //GrupoFaturamento.Visible := VarIsNull(LRecordValue(GridConsultaDBTableView1DT_FATURAMENTO));
////    end;
//    // Se a venda existir o módulo de faturamento, a nota fical só tira no faturamento
////    if MatchStr(edtRapidoModelo.Text,['Venda', 'Faturamento', 'Notas Fiscais']) then
////    begin
//      //NotaFiscal1.Visible :=  VarIsNull(LRecordValue(GridConsultaDBTableView1NOTAFISCAL));
//      btnNotaFiscal.Visible := VarIsNull(LRecordValue(GridConsultaDBTableView1NOTAFISCAL)) and (VarToStrDef(LRecordValue(GridConsultaDBTableView1ATIVO), '') = 'S'); //True;  EDU
////    end;
//  end;
//
//  //Este Visible é temporário apenas enquanto Cancelar Faturamento não está
////  GrupoFaturamento.Visible :=   (LibtnFaturarProducao.Visible or
////                                libtnFaturar.Visible or
////                                libtnCancelarFaturamento.Visible or
////                                LibtnCancelarEnvioFaturamento.Visible or
////                                LibtnEnviarFaturamento.Visible or
////                                LibtnAgrupar.Visible or
////                                LibtnNotaFiscal.Visible) and
////                                pktFaturamento.Ativo;
end;

procedure TFrame_ConsuVenda_Venda.GridConsultaDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  ARecord: TcxCustomGridRecord;
  AValue : Variant;
  ADataLimite, ADataAtual : TDateTime;
begin
  inherited;
  if AViewInfo.Item.Index = GridConsultaDBTableView1PROJETO_DT_FIM.Index then
  begin
    AValue := AViewInfo.GridRecord.Values[GridConsultaDBTableView1PROJETO_DT_FIM.Index];
    if not VarIsNull(AValue) then
    begin
      ADataLimite := AValue;
      ADataLimite := DateOf(ADataLimite);
      ADataAtual  := DateOf(Now);
      if ADataLimite < ADataAtual then
        ACanvas.Brush.Color := clRed
      else if ADataLimite < IncDay(ADataAtual, 30) then
        ACanvas.Brush.Color := clYellow
      else if ADataLimite < IncDay(ADataAtual, 60) then
        ACanvas.Brush.Color := clMoneyGreen
      else if ADataLimite < IncDay(ADataAtual, 90) then
        ACanvas.Brush.Color := clSkyBlue;
    end;
  end;
end;

procedure TFrame_ConsuVenda_Venda.GridConsultaDBTableView1SelectionChanged(
  Sender: TcxCustomGridTableView);
var
  ARecord: TcxCustomGridRecord;
begin
  inherited;
  if Consulta.Active and Assigned(Sender)and (GridConsultaDBTableView1.Controller.SelectedRecordCount > 0) then
  begin
//    if edtRapidoModelo.Text = 'Orçamento' then
//    begin
//      LibtnAprovar.Visible := (Consulta.FieldByName('IS_ORCAMENTO').AsString = 'S');   //Visíble é só no começo da tela
//    end;
//
//    if edtRapidoModelo.Text = 'Venda' then
//    begin
  //    LibtnDesagrupar.Visible := (VarToStrDef(LRecordValue(GridConsultaDBTableView1STATUS), '') =
  //      'ATIVO AGRUPADO');
  //    Desagrupar1.Visible := (VarToStrDef(LRecordValue(GridConsultaDBTableView1STATUS), '') =
  //      'ATIVO AGRUPADO');
    ARecord := GridConsultaDBTableView1.Controller.SelectedRecords[0];
    btnDesagrupar.Visible := (VarToStrDef(ARecord.Values[GridConsultaDBTableView1CODVENDA_VINCULADA.Index], '') <> '') and (VarToStrDef(ARecord.Values[GridConsultaDBTableView1ATIVO.Index], '') = 'S');

//      GrupoVenda.Enabled := False;// Comentado porque não tem uso, caso voltar só substituir pelo Seguinte: (VarIsNull(LRecordValue(GridConsultaDBTableView1DT_FATURAMENTO)) or (LRecordValue(GridConsultaDBTableView1FATURA_PREVISAO) = 'S') );

    btnFaturar.Visible := AWR_APP[TagAPP_Venda_Pedido].Ativo and
                          (VarToStrDef(ARecord.Values[GridConsultaDBTableView1CODVENDA_VINCULADA.Index], '') = '') and
                          (VarToStrDef(ARecord.Values[GridConsultaDBTableView1ATIVO.Index], '') = 'S') and
                          (VarIsNull(ARecord.Values[GridConsultaDBTableView1DT_FATURAMENTO.Index])) or
                          (ARecord.Values[GridConsultaDBTableView1FATURA_PREVISAO.Index] = 'S');  //GrupoFaturamento.Visible;  EDU
    //GrupoFaturamento.Visible         := true; GrupoVenda.Enabled; EDU

    btnCancelarFaturamento.Visible := AWR_APP[TagAPP_Venda_Pedido].Ativo and
                                      (VarToStrDef(ARecord.Values[GridConsultaDBTableView1DT_FATURAMENTO.Index],'') <> '');
    btnFaturarProducao.Visible:= AWR_APP[TagAPP_Ordem_Producao].Ativo;//Not LibtnCancelarEnvioFaturamento.Visible;  //TagAPP_Venda_Pedido

//      LibtnEnviarFaturamento.Visible:= False;//Not LibtnCancelarEnvioFaturamento.Visible;
//      btnEnviarFaturamento.Enabled := Not LibtnCancelarEnvioFaturamento.Visible;
//      LibtnAgrupar.Visible := GrupoVenda.Enabled;
//    end;


//    if edtRapidoModelo.Text ='Notas Fiscais' then
//    begin
//      //GrupoFaturamento.Visible := VarIsNull(LRecordValue(GridConsultaDBTableView1DT_FATURAMENTO));
//    end;
    // Se a venda existir o módulo de faturamento, a nota fical só tira no faturamento
//    if MatchStr(edtRapidoModelo.Text,['Venda', 'Faturamento', 'Notas Fiscais']) then
//    begin
      //NotaFiscal1.Visible :=  VarIsNull(LRecordValue(GridConsultaDBTableView1NOTAFISCAL));
    btnNotaFiscal.Visible := VarIsNull(ARecord.Values[GridConsultaDBTableView1NOTAFISCAL.Index]) and (VarToStrDef(ARecord.Values[GridConsultaDBTableView1ATIVO.Index], '') = 'S'); //True;  EDU
//    end;
  end;

//Este Visible é temporário apenas enquanto Cancelar Faturamento não está
//  GrupoFaturamento.Visible :=   (LibtnFaturarProducao.Visible or
//                                libtnFaturar.Visible or
//                                libtnCancelarFaturamento.Visible or
//                                LibtnCancelarEnvioFaturamento.Visible or
//                                LibtnEnviarFaturamento.Visible or
//                                LibtnAgrupar.Visible or
//                                LibtnNotaFiscal.Visible) and
//                                pktFaturamento.Ativo;
end;

procedure TFrame_ConsuVenda_Venda.btnFaturarProducaoClick(Sender: TdxTileControlItem);
var
  AFrmVendaNovo: TFrmVenda_Base;
  AFrmVendaTemporaria : TFrame_Venda_Venda;
  I : Integer;
begin
  inherited;
  // Conferir se o produto esta Produzido
  // Marcar a Venda Original Informando que o produto ja foi faturado
  // Verificar se tem produção
  // Verificar se pode faturar produto não Produzido

  // Colocar a data de faturamento após o conclusão do serviço
  // Buscar na produção todos os produto Pode_Faturar = S

  // Duplicar a Venda Orignal e Copiar os itens da produção
  // Item principal e suas composições, agrupado pelo Protocolo_Principal, protocolos

  if VerificaEM_PRODUCAOGrid(Venda_ProdutoT) then
  begin
    ShowMessage('Existe produtos não finalizados na Produção');
    Exit;
  end;

  if ShowMessageWR('Deseja criar um Faturamento dessa produção? ', MB_ICONQUESTION) = mrYes then
  begin

    AFrmVendaTemporaria := TFrame_Venda_Venda.Create(Application);

//    if not TFrmVendaTipoSelecao.GetVendaTipo(vtmNotaFiscal, AVendaTipoSelecionado) then
//      Exit;
//    with AFrmVendaTemporaria do // só vai funcionar se a pessoa ja entrou no cadastro
    try
      GridConsultaDBTableView1.DataController.ChangeFocusedRecordIndex(GridConsultaDBTableView1.Controller.SelectedRecords[0].RecordIndex);
      AFrmVendaTemporaria.CloseOpen_AbrirRegistro(Consulta.FieldByName('CODIGO').AsString);
      AFrmVendaNovo := TFrmVenda_Base.FrameDuplicaVendaBase(Tag_Venda, AFrmVendaTemporaria.Cadastro, AFrmVendaTemporaria.Venda_Financeiro, AFrmVendaTemporaria.Venda_Produto, AFrmVendaTemporaria.GridProdutoTree, True);

//      //Aqui deve usar outra função com acesso a venda e Financeiro
//      ACodVendaNew := CopiarVendaEFinanceiro(AFrmVendaNovo, Consulta, Consulta, Consulta, FVendasSelecionadas.DelimitedTextWR);

      //Copia vendas selecionadas para a venda nova
      for I := 1 to GridConsultaDBTableView1.DataController.GetSelectedCount - 1 do
      begin
        if not GridConsultaDBTableView1.Controller.SelectedRecords[i].IsData then
          Continue;
        GridConsultaDBTableView1.DataController.ChangeFocusedRecordIndex(GridConsultaDBTableView1.Controller.SelectedRecords[i].RecordIndex);

        AFrmVendaTemporaria.CloseOpen_AbrirRegistro(Consulta.FieldByName('CODIGO').AsString);


        TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).FrameCopiarVendaComProduto(Tag_Venda, AFrmVendaTemporaria.Venda_Produto, AFrmVendaTemporaria.GridProdutoTree, True, TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro), FVendasSelecionadas.DelimitedTextWR);
      end;

      TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).TransaFD.Commit;
    finally
//      AFrmVendaNovo.FormStyle := fsMDIChild;
//      AFrmVendaNovo.MainLayout.EndUpdate;
//      Application.ProcessMessages;
//      AFrmVendaNovo.Show;
      AFrmVendaTemporaria.Free;
    end;
  end;
end;

procedure TFrame_ConsuVenda_Venda.btnCancelarFaturamentoClick(Sender: TdxTileControlItem);
var
  AFrmVendaTemporaria: TFrame_Venda_Venda;
  I :Integer;
  QuerX :TFDQuery;
begin
  inherited;
  if ShowMessageWR('Deseja Cancelar a Fatura dessas Vendas? ', MB_ICONQUESTION) = mrYes then
  begin
    QuerX := GeraFDQuery;
    Try
      QuerX.Close;
      QuerX.SQL.Text := 'SELECT VP.PODE_FATURAR FROM VENDA_PRODUTO VP WHERE VP.CODVENDA = :codvenda';
      for I := 0 to GridConsultaDBTableView1.Controller.SelectedRecordCount - 1 do
      begin
        QuerX.Close;
        QuerX.Params[0].Value := GridConsultaDBTableView1.Controller.SelectedRecords[I].Values[GridConsultaDBTableView1CODIGO.Index];
        QuerX.Open;
        if QuerX.FieldByName('PODE_FATURAR').AsString = 'N' then
        begin
          ShowMessageWR
            ('O Pedido ' + GridConsultaDBTableView1.Controller.SelectedRecords[I].Values[GridConsultaDBTableView1CODIGO.Index] +
             ' já foi agrupado anteriormente. Apenas é possível Cancelar a Fatura excluindo o agrupamento original.');
          Exit;
        end;
      end;
      AFrmVendaTemporaria := TFrame_Venda_Venda.Create(Application);
      for I := 0 to GridConsultaDBTableView1.DataController.GetSelectedCount - 1 do
      begin
        if not GridConsultaDBTableView1.Controller.SelectedRecords[i].IsData then
          Continue;
        GridConsultaDBTableView1.DataController.ChangeFocusedRecordIndex(GridConsultaDBTableView1.Controller.SelectedRecords[i].RecordIndex);

        AFrmVendaTemporaria.CloseOpen_AbrirRegistro(Consulta.FieldByName('CODIGO').AsString);

        AFrmVendaTemporaria.btnCancela_Faturamento.Click;
      end;
    Finally
      AFrmVendaTemporaria.Free;
      QuerX.Free;
    End;
    Consulta.Refresh;
  end;
end;

procedure TFrame_ConsuVenda_Venda.WREventosCadastroLayoutChange(
  Sender: TObject);
begin
  inherited;
  UCControls1.AplicaDireito(dxTileControlItem1,'Frame_Venda_Venda.btnNovo');
end;

procedure TFrame_ConsuVenda_Venda.WREventosConsultaGetFiltrosConsulta(Sender: TObject);
begin
  inherited;
  SQLWhere.AddAnd('P.IS_VENDA = ''S''');

//  if edtRapidoFiltro.text = 'A Faturar' then
//  begin
//    SQLWhere.AddAnd('P.DT_FATURAMENTO IS NULL');
//  end;
//
//  if  edtRapidoFiltro.text = 'Pedidos A Faturar' then
//  begin
//    SQLWhere.AddAnd('P.DT_FATURAMENTO IS NULL and P.DT_ENVIO_FATURAMENTO IS NOT NULL');
//  end;


end;

procedure TFrame_ConsuVenda_Venda.WRFormataCamposDataSets1CarregaDataSets(Sender: TObject);
begin
  inherited;
  {
  BtnAprovar.Enabled := UCControls1.GetComponentRight('FrmVenda', 'BtnAprovar').Enabled;

  libtnFaturar.Enabled := UCControls1.GetComponentRight('FrmVenda', 'btnFaturamento').Enabled;
  libtnCancelarFaturamento.Enabled := UCControls1.GetComponentRight('FrmVenda', 'btnCancela_Faturamento').Enabled;
  }
end;

initialization
  RegisterClass(TFrame_ConsuVenda_Venda);
  RegisterFrameCon(Tag_Venda, TFrame_ConsuVenda_Venda);

end.
