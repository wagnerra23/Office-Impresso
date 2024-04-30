unit Frame_ConProducao_Kanban;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Frame_Con, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData, dxLayoutContainer, dxLayoutcxEditAdapters, dxLayoutControlAdapters, cxContainer,
  Vcl.Menus, cxLabel, Vcl.ComCtrls, dxCore, cxDateUtils, cxSchedulerStorage, cxSchedulerCustomControls, cxSchedulerDateNavigator, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, dxScreenTip, FireDAC.Comp.Client, cxCustomStatusKeeper, cxStatusKeeper, UCHistDataset, System.Generics.Collections, WREventos, frxClass,
  frxDBSet, FireDAC.Comp.DataSet, System.ImageList, Vcl.ImgList, cxImageList, System.Actions, Vcl.ActnList, dxCustomHint, cxHint, Vcl.ExtCtrls,
  dxLayoutLookAndFeels, dxPSCore, dxPScxCommon, cxClasses, cxDateNavigator, cxDateProfileButton, cxDropDownEdit, cxCalendar, cxTextEdit, cxMaskEdit,
  dxCustomTileControl, dxTileControl, cxGridViewLayoutContainer, cxGridLayoutView, cxGridCustomTableView, cxGridDBLayoutView, Vcl.StdCtrls, cxButtons,
  cxGridLevel, cxGridCustomLayoutView, cxGridCustomView, cxGridTableView, cxGridDBTableView, cxGrid, dxLayoutControl, Frame_ConProducao_Mestre,
  FrFrameKanban, cxImage, dxRatingControl, cxHyperLinkEdit, dxTokenEdit, cxProgressBar, cxImageComboBox, cxButtonEdit, cxTL, cxTLdxBarBuiltInMenu,
  FireDAC.Stan.StorageBin, cxEditRepositoryItems, dxBar, dxRibbon, UCBase, cxInplaceContainer, cxDBTL, cxTLData, cxGridWinExplorerView, cxGridDBWinExplorerView,
  cxGridBandedTableView, cxGridDBBandedTableView, Classes.APP, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TFrame_ConsuProducao_Kanban = class(TConsu_Frame)
    liSplitGantt: TdxLayoutSplitterItem;
    Bevel_Topo: TBevel;
    GridConsultaDBLayoutView1Group1: TdxLayoutGroup;
    GridConsultaDBLayoutView1PRIORIDADE_PRODUCAO: TcxGridDBLayoutViewItem;
    dxLayoutItem1: TdxLayoutItem;
    btnEquipe: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    btnFiltro_Funcionario: TcxButton;
    pnlFiltro_Equipe: TPanel;
    tcFiltrosPanel_Equipe: TdxTileControl;
    dxTileControlGroup12: TdxTileControlGroup;
    dxTileControlItem3: TdxTileControlItem;
    tcFiltrosPanel_Equipe_Retirar: TdxTileControlItem;
    pnlFiltro_Funcionario: TPanel;
    tcFiltrosPanel_Funcionario: TdxTileControl;
    dxTileControlGroup13: TdxTileControlGroup;
    dxTileControlItem5: TdxTileControlItem;
    tcFiltrosPanel_Funcionario_Retirar: TdxTileControlItem;
    tcEncaminhar: TdxTileControlItem;
    PopupMenu1: TPopupMenu;
    Abrir1: TMenuItem;
    Abrir2: TMenuItem;
    Encaminhar1: TMenuItem;
    N1: TMenuItem;
    tcAgrupadorItem1: TdxTileControlItem;
    GridConsultaDBLayoutView1LayoutItem15: TcxGridLayoutItem;
    GridConsultaDBLayoutView1CODIGO: TcxGridDBLayoutViewItem;
    EstiloKanbanProduto: TcxStyle;
    GridConsultaDBLayoutView1LayoutItem14: TcxGridLayoutItem;
    GridConsultaDBLayoutView1Centro: TcxGridDBLayoutViewItem;
    GridConsultaDBLayoutView1AutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    procedure FrameEnter(Sender: TObject);
    procedure WREventosConsultaSQLTrataNomes(Sender: TObject; var ASQL: string);
    procedure WREventosConsultaGetFiltrosConsulta(Sender: TObject);
    procedure ConsultaBeforeOpen(DataSet: TDataSet);
    procedure GridConsultaDBLayoutView1CellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure GridConsultaDBLayoutView1PRIORIDADE_PRODUCAOPropertiesEditValueChanged(Sender: TObject);
    procedure AplicaAgrupamento(AAgrupamento: TWR_Agrupador); override;
    procedure cbxFuncionarioPropertiesEditValueChanged(Sender: TObject);
    procedure btnEquipeClick(Sender: TObject);
    procedure btnFiltro_FuncionarioClick(Sender: TObject);
    procedure pnlFiltro_FuncionarioExit(Sender: TObject);
    procedure pnlFiltro_EquipeExit(Sender: TObject);
    procedure tcFiltrosPanel_Equipe_RetirarClick(Sender: TdxTileControlItem);
    procedure Encaminhar1Click(Sender: TObject);
    procedure GridConsultaDBTableView1DblClick(Sender: TObject);
    procedure WREventosCadastroValidaEdicaoCampos(var AFieldName,
      AFieldNameTratado: string; AValue: Variant; ADataSet: TDataSet);
    procedure tiDataClick(Sender: TdxTileControlItem);
    procedure ConsultaAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    FFiltro_Equipe: Variant;
    FFiltro_Funcionario: Variant;
    FBuscaSuper: Boolean;
    procedure GeraTiles(ADataSet:TDataSet; ATileControl:TdxTileControl);
  public
    { Public declarations }
  end;

var
  Frame_ConsuProducao_Kanban: TFrame_ConsuProducao_Kanban;

implementation

{$R *.dfm}

Uses Base, wrFuncoes, wrPreencheLookup, Consulta, UnitFuncoes, DataModule, StrUtils, CadEncaminhar, Classes.WR, Registry, Tag.Agrupador, Tag.Form;


procedure TFrame_ConsuProducao_Kanban.GeraTiles(ADataSet:TDataSet; ATileControl:TdxTileControl);
var
  I: integer;
begin
  while ATileControl.Items.Count > 1 do
    ATileControl.Items.Remove(ATileControl.Items[1]);

  ADataSet.First;
  while Not ADataSet.Eof do
  begin
    with ATileControl.Items.Add do
    begin
//      Tag                   := ADataSet.FieldByName('Codigo').Asiteger;
      GroupIndex            := 0;
      IndexInGroup          := ATileControl.Items.Count+1;
      Size                  := tcisLarge;
      Text1.Align           := oaTopCenter;
      Text1.AssignedValues  := [avFont];
      Text1.Font.Charset    := ANSI_CHARSET;
      Text1.Font.Color      := clDefault;
      Text1.Font.Height     := -16;
      Text1.Font.Name       := 'Segoe UI Semibold';
      Text1.Font.Style      := [fsBold];
      Text1.Value           := ADataSet.FieldByName('Descricao').AsString;
      Text2.AssignedValues  := [];
      Text2.IndentHorz      := -10000;
      Text2.Value           := ADataSet.FieldByName('Codigo').Value;
      Text3.AssignedValues  := [];
//      Text4.Align           := oaBottomCenter;
//      Text4.AssignedValues  := [];
//      Text4.Font.Color      := Style.GradientBeginColor;
//      Text4.Value           := ADataSet.FieldByName('Codigo').Value;
      OnClick               := tcFiltrosPanel_Equipe_RetirarClick;
    end;
    ADataSet.Next;
  end;
end;

procedure TFrame_ConsuProducao_Kanban.AplicaAgrupamento(AAgrupamento: TWR_Agrupador);
begin
//  inherited;
  AgruparLayoutChange(AAgrupamento);
  if Assigned(FListaKanban) then
  begin
    Consulta.Close;
    Consulta.Open;
//
//    if Consulta.RecordCount = 0 then
//    begin
//      Consulta.Close;
//      FBuscaSuper := True;
//      Consulta.Open;
//    end;

//    CarregaFramesKanban(Consulta, AAgrupamento.Agrupamento);
  end;
end;

procedure TFrame_ConsuProducao_Kanban.cbxFuncionarioPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  AplicaAgrupamento(FAgrupamento);
end;

procedure TFrame_ConsuProducao_Kanban.ConsultaAfterOpen(DataSet: TDataSet);
var
  QuerX :TFDQuery;
begin
  inherited;
  try
    QuerX := GeraFDQuery;
    QuerX.SQL.Text := 'select S.DESCRICAO AS CODIGO, S.DESCRICAO AS DESCRICAO, S.DESCRICAO as CHAVE, S.ORDEM, 1 as QUANT from WR_KANBAN s where s.coluna = '+QuotedStr(FAgrupamento.Agrupamento)+' group by 1, 2, 3, 4 Order By 4 ';
    QuerX.Open;


    if Assigned(FListaKanban) then
      CarregaFramesKanban(QuerX, FAgrupamento.Agrupamento);
  finally
    QuerX.free;
  end;
end;

procedure TFrame_ConsuProducao_Kanban.ConsultaBeforeOpen(DataSet: TDataSet);
begin
  inherited;
//  QuerX := GeraFDQuery;
//  QuerX.SQL.Text := 'select * from WR_KANBAN where COLUNA = '+QuotedStr(FAgrupamento.Agrupamento)+;
//  QuerX.Open;
//  i

  Consulta.SQL.Text:= 'select S.'+FAgrupamento.Agrupamento+' AS CODIGO, S.'+FAgrupamento.Campo_Categoria+' AS DESCRICAO, S.'+FAgrupamento.Codigo_Agrupamento+' as CHAVE, cast(count(1) as bigint) as QUANT from ( ';
  Consulta.SQL.Add(SQLInit);
  Consulta.SQL.Add(SQLWhere.Text);
  Consulta.SQL.Add(')S group by 1, 2, 3 Order By 3 ');

//  Aqui deve refazer o SQl dos filhos
//  if FBuscaSuper then
//  begin
//    Consulta.SQL.Text:= 'select S.'+FAgrupamento.Agrupamento+' AS CODIGO, S.'+FAgrupamento.Campo_Categoria+' AS DESCRICAO, cast(count(1) as bigint) as QUANT from ( ';
//    Consulta.SQL.Add(SQLInit);
//    Consulta.SQL.Add(SQLWhere.Text);
//    Consulta.SQL.Add(')S group by 1, 2 Order By 2 ');
//  end
//  else
//    Consulta.SQL.Text:= 'select WR.DESCRICAO AS CODIGO, WR.DESCRICAO AS DESCRICAO ' +
//                    'from WR_KANBAN WR WHERE WR.COLUNA = ' + QuotedStr(FAgrupamento.Agrupamento) + ' ORDER BY WR.ORDEM ASC';



end;

procedure TFrame_ConsuProducao_Kanban.Encaminhar1Click(Sender: TObject);
begin
  inherited;
  with TFrmEncaminhar.Create(Self) do
  try
//    cbxSituacao.Text          := Consulta.FieldByName('SITUACAO').AsString;
    LblAssunto.Caption        := '';
//    LblProduto.Caption        := Consulta.FieldByName('DESCRICAO').AsString;
//    EdtTempoEstimado.Text     := MinutosToHoras(Max(0, 0));
    MemoObservacao.Lines.Text := '';
    if ShowModal = mrOk then
    begin
      AcaoSelecaoFieldLimpaECria(['SITUACAO', 'PESSOA_FUNCIONARIO_CODIGO', 'PRODUCAO_ESTAGIO','PRODUCAO_MOTIVO','OBSERVACAO_ENCAMINHAMENTO']);
      AcaoSelecaoFieldAddValue('SITUACAO',                  cbxSituacao.EditingValue);
      AcaoSelecaoFieldAddValue('PESSOA_FUNCIONARIO_CODIGO', cbxFuncionario.EditingValue);
      AcaoSelecaoFieldAddValue('PRODUCAO_ESTAGIO',          cbxEstagio.text);
      AcaoSelecaoFieldAddValue('PRODUCAO_MOTIVO',           cbxProducao_Motivo.EditingValue);
      AcaoSelecaoFieldAddValue('OBSERVACAO_ENCAMINHAMENTO', MemoObservacao.Text);

      AcaoSelecionados('CODCENTRO_TRABALHO', IntToStr(cbxCodCentro_Trabalho.EditingValue));
    end;
  finally
    Free;
  end;
end;

procedure TFrame_ConsuProducao_Kanban.btnEquipeClick(Sender: TObject);
begin
  inherited;
  pnlFiltro_Equipe.Left:= btnEquipe.Left;
  pnlFiltro_Equipe.Top := btnEquipe.Top  + btnEquipe.Height;
  Mostrar(pnlFiltro_Equipe);
  pnlFiltro_Equipe.SetFocusWR;
end;

procedure TFrame_ConsuProducao_Kanban.btnFiltro_FuncionarioClick(Sender: TObject);
begin
  inherited;
  pnlFiltro_Funcionario.Left:= btnFiltro_Funcionario.Left;
  pnlFiltro_Funcionario.Top := btnFiltro_Funcionario.Top  + btnFiltro_Funcionario.Height;
  Mostrar(pnlFiltro_Funcionario);
  pnlFiltro_Funcionario.SetFocusWR;
end;

procedure TFrame_ConsuProducao_Kanban.FrameEnter(Sender: TObject);
Var
  I : Integer;
  Reg: TRegistry;
begin
  if Not Assigned(FListaKanban) then
  begin
    SetAgrupamento(Tag_Agrupador_Producao_Situacao);
    FFiltro_Equipe     := null;
    FFiltro_Funcionario:= null;
    GeraTiles(SQLCentrosTrabalho,tcFiltrosPanel_Equipe);
    GeraTiles(SQLCentrosTrabalho_Funcionario(FFiltro_Funcionario), tcFiltrosPanel_Funcionario);
  end;
  CbCamposData.Properties.Items.Clear;
  CbCamposData.Properties.Items.Add(FormataNomeCampo('DT_EMISSAO'));
  CbCamposData.Properties.Items.Add(FormataNomeCampo('DT_ALTERACAO'));
  CbCamposData.Properties.Items.Add(FormataNomeCampo('DT_ENTREGA'));
  CbCamposData.Properties.Items.Add(FormataNomeCampo('DT_FIM'));
  CbCamposData.Properties.Items.Add(FormataNomeCampo('CALENDARIO_DT_PREVISAO_FIM'));

  CbCamposData.ItemIndex := 1;

  inherited;
  if tcAgrupador.Items[0] = tiAgrupar_Desagrupar then
    tcAgrupador.Items.Delete(0);

  if Not Assigned(FListaKanban) then
  begin
    FListaKanban := TObjectList<TFrameKanban>.Create;
    CarregaFramesKanban(Consulta, FAgrupamento.Agrupamento);
  end;



end;

procedure TFrame_ConsuProducao_Kanban.GridConsultaDBLayoutView1CellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  AKeys:Variant;
begin
  inherited;
//  if ACellViewInfo.Item.Index = GridConsultaDBLayoutView1PRIORIDADE_PRODUCAO.Index then
//    ShowMessage('Prioridade');
//   GridConsultaDBLayoutView1PRIORIDADE_PRODUCAO

  if Assigned(TFrmBase(Owner).FPocket) and  TFrmBase(Owner).FPocket.Visible then
  begin
    if WREventosCadastro.UsaCadastroPocket then
    begin
      AKeys:= Sender.Items[GridConsultaDBLayoutView1CODIGO.Index].EditValue;
      TFrmBase(Owner).FPocket.ShowCadastroPocketItem(TFrmBase(Owner).tcBase.Tag, AKeys, WREventosCadastro.UsaTravaCadastroPocket);
//      AtualizarKanban;
    end
  end;
end;

procedure TFrame_ConsuProducao_Kanban.GridConsultaDBLayoutView1PRIORIDADE_PRODUCAOPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
//  if ACellViewInfo.Item.Index = GridConsultaDBLayoutView1PRIORIDADE_PRODUCAO.Index then
//    ShowMessage('Prioridade');
end;

procedure TFrame_ConsuProducao_Kanban.GridConsultaDBTableView1DblClick(Sender: TObject);
var
  AKeys:Variant;
begin
//  inherited;
  FSelecionouRegistro := True;

//  IF TFDQuery(TcxGridDBLayoutView(Sender).DataController.DataSet).ResourceOptions.CmdExecMode <> amBlocking then Exit;
  AKeys:=null;
//  if ARecord.Values[GridConsultaDBTableView1ATIVO.Index] = 'N' then
  if (Consulta.State = dsBrowse) then
    AKeys:=TcxGridLayoutViewSite(Sender).GridView.Items[GridConsultaDBLayoutView1CODIGO.Index].EditValue;
//
////  GridConsultaDBTableView1.DataController.GetKeyFieldsValues;
//
  if WREventosCadastro.UsaCadastroPocket then
  begin
    if not Assigned(TFrmBase(Owner).FPocket) then
      TFrmBase(Owner).FPocket := TFrmBase(ABaseClass_Pocket[TFrmBase(Owner).tcBase.Tag].Create(TForm(Self.Owner)));
    TFrmBase(Owner).FPocket.ShowCadastroPocketItem(TFrmBase(Owner).tcBase.Tag, AKeys, WREventosCadastro.UsaTravaCadastroPocket);

    AtualizarKanban;
  end
//  else
//  if TForm(Owner).FormStyle <> fsMDIChild then
//  begin
//    MultiploSelectMemTable(Consulta);
//    TForm(Owner).Hide;
//  end;
//  ApenasConsulta := False;  //isso morre e vira apenas visivel
end;

procedure TFrame_ConsuProducao_Kanban.pnlFiltro_EquipeExit(Sender: TObject);
begin
  inherited;
  Ocultar(pnlFiltro_Equipe);
end;

procedure TFrame_ConsuProducao_Kanban.pnlFiltro_FuncionarioExit(Sender: TObject);
begin
  inherited;
  Ocultar(pnlFiltro_Funcionario);
end;

procedure TFrame_ConsuProducao_Kanban.tcFiltrosPanel_Equipe_RetirarClick(Sender: TdxTileControlItem);
begin
  inherited;
//  tcFiltrosPanel_Equipe_Retirar
  if Sender.TileControl = tcFiltrosPanel_Equipe  then
  begin
    FFiltro_Equipe:= Sender.Text2.Value;
    GeraTiles(SQLCentrosTrabalho_Funcionario(FFiltro_Equipe), tcFiltrosPanel_Funcionario);
    if Sender.Index = 0 then
    begin
      btnEquipe.Caption:='Equipe';
      FFiltro_Equipe:= null;
    end
    else
      btnEquipe.Caption:= Sender.Text1.Value;
  end;
  if Sender.TileControl = tcFiltrosPanel_Funcionario  then
  begin
    FFiltro_Funcionario:= Sender.Text2.Value;
    if Sender.Index = 0 then
    begin
      btnFiltro_Funcionario.Caption:='Funcionário';
      FFiltro_Funcionario:= null;
    end
    else
      btnFiltro_Funcionario.Caption:= Sender.Text1.Value;
  end;
  AplicaAgrupamento(FAgrupamento);
end;

procedure TFrame_ConsuProducao_Kanban.tiDataClick(Sender: TdxTileControlItem);
begin
  inherited;
  AgruparLayoutChange(FAgrupamento);
//  AplicaAgrupamento(FAgrupamento);
end;

procedure TFrame_ConsuProducao_Kanban.WREventosCadastroValidaEdicaoCampos(
  var AFieldName, AFieldNameTratado: string; AValue: Variant;
  ADataSet: TDataSet);
var
  APessoa: TPessoaRetorno;
  ATipoPreferencial: String;
begin
  inherited;

  if(AFieldName = 'FUNCIONARIO') then          // Aqui no value chega a razão social
    AFieldNameTratado := 'PESSOA_FUNCIONARIO_CODIGO';

  if(AFieldName = 'REPRESENTANTE') then
    AFieldNameTratado := 'PESSOA_REPRESENTANTE_CODIGO';

  if(AFieldName = 'AGENCIA') then
    AFieldNameTratado := 'PESSOA_AGENCIA_CODIGO';
  // Precisa preencher TIPO e SEQUENCIA, essa função serve pra todas
  if pos('PESSOA_',AFieldNameTratado) > 0 then
  begin
    PessoaBusca(TransaDragAndDrop, ADataSet.FieldByName(AFieldNameTratado).AsString, APessoa, ATipoPreferencial);
//    ADataSet.FieldByName(AFieldNameTratado).AsString := AnsiUpperCase(APessoa.Tipo.Descricao);
    ADataSet.FieldByName('PESSOA_'+AFieldName+'_TIPO').AsString := AnsiUpperCase(APessoa.Tipo.Descricao);
    ADataSet.FieldByName('PESSOA_'+AFieldName+'_SEQUENCIA').AsString := APessoa.Sequencia.ToString;
  end;
end;

procedure TFrame_ConsuProducao_Kanban.WREventosConsultaGetFiltrosConsulta(Sender: TObject);
begin
  inherited;
  if FFiltro_Equipe <> null then
  begin
    SQLWhere.AddAnd('P.CODCENTRO_TRABALHO = '+IntToStr(FFiltro_Equipe));
  end;
  if FFiltro_Funcionario <> null then
  begin
    SQLWhere.AddAnd('P.PESSOA_FUNCIONARIO_CODIGO = '''+FFiltro_Funcionario+''' ');
  end;
end;

procedure TFrame_ConsuProducao_Kanban.WREventosConsultaSQLTrataNomes(Sender: TObject; var ASQL: string);
begin
  inherited;
  ASQL := ReplaceText(ASQL, '(CODCENTRO_TRABALHO', '(P.CODCENTRO_TRABALHO');
  ASQL := ReplaceText(ASQL, '(PESSOA_FUNCIONARIO_CODIGO', '(P.PESSOA_FUNCIONARIO_CODIGO');
  ASQL := ReplaceText(ASQL, '(CENTRO_TRABALHO', '(CT.DESCRICAO');
  ASQL := ReplaceText(ASQL, '(PRODUTO', '(P.PRODUTO');
  ASQL := ReplaceText(ASQL, '(LOCAL', '(L.DESCRICAO');
//  ASQL := ReplaceText(ASQL, '(CALENDARIO_DT_PREVISAO_FIM', '(P.CALENDARIO_DT_PREVISAO_FIM');
  ASQL := ReplaceText(ASQL, '(PRODUCAO_ESTAGIO', '(P.PRODUCAO_ESTAGIO');
  ASQL := ReplaceText(ASQL, '(PRIORIDADE_PRODUCAO', '(P.PRIORIDADE_PRODUCAO');
  ASQL := ReplaceText(ASQL, '(TEMPO_ESTIMADO', '(P.TEMPO_ESTIMADO');
  ASQL := ReplaceText(ASQL, '(DT_FIM', '(P.DT_FIM');
  ASQL := ReplaceText(ASQL, '(DT_ALTERACAO', '(P.DT_ALTERACAO');
  ASQL := ReplaceText(ASQL, '(FUNCIONARIO', '(FUN.FANTASIA');         //     FUN.FANTASIA AS FUNCIONARIO
//  ASQL := ReplaceText(ASQL, '(PRAZOENTREGA', '(P.CALENDARIO_DT_PREVISAO_FIM');
//  ASQL := ReplaceText(ASQL, '(RAZAOSOCIAL', '(V.RAZAOSOCIAL');
//  ASQL := ReplaceText(ASQL, '(CODPRODUCAO', '(PO.CODPRODUCAO');
  ASQL := ReplaceText(ASQL, '(DT_EMISSAO', '(P.DT_EMISSAO');
  ASQL := ReplaceText(ASQL, '(CODPRODUTO', '(P.CODPRODUTO');
  ASQL := ReplaceText(ASQL, '(CODUSUARIO', '(P.CODUSUARIO');

  ASQL := ReplaceText(ASQL, '(QTDADEPECA', '(P.QTDADEPECA');
//  ASQL := ReplaceText(ASQL, '(EMISSAO_OP', '(P.DT_EMISSAO');
  ASQL := ReplaceText(ASQL, '(PCONCLUSAO', '(P.PCONCLUSAO');
//  ASQL := ReplaceText(ASQL, '(TEM_ARQUIVADO', '(PO.TEM_ARQUIVADO');
  ASQL := ReplaceText(ASQL, '(DESCRICAO', '(P.DESCRICAO');
  ASQL := ReplaceText(ASQL, '(ESPESSURA', '(P.ESPESSURA');
  ASQL := ReplaceText(ASQL, '(ORDENACAO', '(P.ORDENACAO');
  ASQL := ReplaceText(ASQL, '(SITUACAO', '(P.SITUACAO');
//  ASQL := ReplaceText(ASQL, '(CODVENDA', '(V.CODIGO');
  ASQL := ReplaceText(ASQL, '(PRODUTO', '(P.PRODUTO');
  ASQL := ReplaceText(ASQL, '(CODIGO', '(P.CODIGO');
  ASQL := ReplaceText(ASQL, '(DT_FIM', '(P.DT_FIM');
  ASQL := ReplaceText(ASQL, '(ATIVO', '(P.ATIVO');
  ASQL := ReplaceText(ASQL, '(LOCAL', '(P.LOCAL');

  if ASQL = 'ATIVO' then
    ASQL := 'P.ATIVO';
end;

initialization
  RegisterClass(TFrame_ConsuProducao_Kanban);
  RegisterFrameCon(Tag_Agenda_Kanban, TFrame_ConsuProducao_Kanban);

end.
