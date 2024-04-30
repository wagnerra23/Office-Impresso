unit Frame_ConEstoque_Requisicao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Frame_Con, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  Vcl.Menus, cxContainer, cxLabel, dxLayoutContainer, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, Vcl.ComCtrls, dxCore, cxDateUtils, cxSchedulerStorage,
  cxSchedulerCustomControls, cxSchedulerDateNavigator, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  dxScreenTip, FireDAC.Comp.Client, cxCustomStatusKeeper, cxStatusKeeper,
  UCHistDataset, System.Generics.Collections, WREventos, frxClass, frxDBSet,
  System.ImageList, Vcl.ImgList, cxImageList, System.Actions, Vcl.ActnList,
  dxCustomHint, cxHint, Vcl.ExtCtrls, dxLayoutLookAndFeels,
  FireDAC.Comp.DataSet, dxPSCore, dxPScxCommon, cxClasses, cxDateNavigator,
  cxDateProfileButton, cxDropDownEdit, cxCalendar, cxButtonEdit,
  dxCustomTileControl, dxTileControl, cxTextEdit, cxMaskEdit, uButtonFlat,
  cxGridViewLayoutContainer, cxGridLayoutView, cxGridCustomTableView,
  cxGridDBLayoutView, Vcl.StdCtrls, cxButtons, cxGridLevel,
  cxGridCustomLayoutView, cxGridCustomView, cxGridTableView, cxGridDBTableView,
  cxGrid, dxLayoutControl, cxCurrencyEdit, cxCheckBox, cxCustomListBox,
  cxCheckListBox, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxScrollbarAnnotations, cxGroupBox, cxCheckGroup;

type
  TConsuEstoque_Requisicao = class(TConsu_Frame)
    GridConsultaDBTableView1CODIGO: TcxGridDBColumn;
    GridConsultaDBTableView1CODVENDA: TcxGridDBColumn;
    GridConsultaDBTableView1CODPRODUTO: TcxGridDBColumn;
    GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn;
    GridConsultaDBTableView1QUANT: TcxGridDBColumn;
    GridConsultaDBTableView1COMP: TcxGridDBColumn;
    GridConsultaDBTableView1LARG: TcxGridDBColumn;
    GridConsultaDBTableView1ESPESSURA: TcxGridDBColumn;
    GridConsultaDBTableView1QTDADEPECA: TcxGridDBColumn;
    GridConsultaDBTableView1MEDIDAS: TcxGridDBColumn;
    GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn;
    GridConsultaDBTableView1UNIDADE: TcxGridDBColumn;
    GridConsultaDBTableView1QUANT_PREVISTA: TcxGridDBColumn;
    GridConsultaDBTableView1TIPO_USO: TcxGridDBColumn;
    GridConsultaDBTableView1PRODUTO_ESTOQUE_LOCAL: TcxGridDBColumn;
    GridConsultaDBTableView1DT_ESTOQUE_BAIXA: TcxGridDBColumn;
    GridConsultaDBTableView1CODCENTRO_TRABALHO: TcxGridDBColumn;
    GridConsultaDBTableView1CODUSUARIO: TcxGridDBColumn;
    GridConsultaDBTableView1QUANT_FATURAR: TcxGridDBColumn;
    GridConsultaDBTableView1DT_EMISSAO: TcxGridDBColumn;
    GridConsultaDBTableView1CODPRODUTO_MOVIMENTO: TcxGridDBColumn;
    GridConsultaDBTableView1STATUS: TcxGridDBColumn;
    GridConsultaDBTableView1EQUIPE: TcxGridDBColumn;
    GridConsultaDBTableView1USUARIO: TcxGridDBColumn;
    GridConsultaDBTableView1PRODUTO: TcxGridDBColumn;
    GridConsultaDBTableView1EMPRESA: TcxGridDBColumn;
    GridConsultaDBTableView1ENTRADA_SAIDA: TcxGridDBColumn;
    GridConsultaDBTableView1CORMOTIVO: TcxGridDBColumn;
    GridConsultaDBTableView1MOTIVO: TcxGridDBColumn;
    tcAgrupadorItem1: TdxTileControlItem;
    tcAgrupadorItem2: TdxTileControlItem;
    tcAgrupadorItem3: TdxTileControlItem;
    GridConsultaDBTableView1FUNCIONARIO: TcxGridDBColumn;
    GridConsultaDBTableView1CUSTO_EXTRA: TcxGridDBColumn;
    GridConsultaDBTableView1CUSTO: TcxGridDBColumn;
    GridConsultaDBTableView1PRODUTO_ESTOQUE_ORIGEM: TcxGridDBColumn;
    GridConsultaDBTableView1CODPRODUCAO_OS: TcxGridDBColumn;
    tcAgrupadorItem4: TdxTileControlItem;
    tcFiltrosPanelItem1: TdxTileControlItem;
    Pendencias: TFDQuery;
    AggregateField1: TAggregateField;
    AggregateField2: TAggregateField;
    tcFiltrosPanelItem2: TdxTileControlItem;
    GridConsultaDBTableView1CENTRO_CUSTO: TcxGridDBColumn;
    tcEntregarRequisicao: TdxTileControlItem;
    tcRecusarRequisicao: TdxTileControlItem;
    dxLayoutItem1: TdxLayoutItem;
    cxCheckGroup1: TcxCheckGroup;
    ConsultaCODIGO: TIntegerField;
    ConsultaCODEMPRESA: TStringField;
    ConsultaCODPRODUTO_REQUISICAO: TIntegerField;
    ConsultaCODPRODUCAO_OS: TIntegerField;
    ConsultaCODVENDA: TStringField;
    ConsultaCODPRODUTO: TStringField;
    ConsultaMODULO: TStringField;
    ConsultaQUANT: TFloatField;
    ConsultaCOMP: TFloatField;
    ConsultaLARG: TFloatField;
    ConsultaESPESSURA: TFloatField;
    ConsultaQTDADEPECA: TFloatField;
    ConsultaMEDIDAS: TStringField;
    ConsultaATIVO: TStringField;
    ConsultaDT_ALTERACAO: TSQLTimeStampField;
    ConsultaUNIDADE: TStringField;
    ConsultaQUANT_PREVISTA: TFloatField;
    ConsultaTIPO_USO: TStringField;
    ConsultaCUSTO_VENDA: TFloatField;
    ConsultaVALOR: TFloatField;
    ConsultaPESO: TFloatField;
    ConsultaCUSTO_VENDA_UNITARIO: TFloatField;
    ConsultaPARENT: TIntegerField;
    ConsultaACABAMENTO: TStringField;
    ConsultaAPROVEITAMENTO: TStringField;
    ConsultaCALC_PACRESC_PRAZO: TFloatField;
    ConsultaCALC_PCOMPRA_EXTRA: TFloatField;
    ConsultaCALC_PDESC_ATACADO: TFloatField;
    ConsultaCALC_PDESC_MANUAL: TFloatField;
    ConsultaCALC_PLUCRO_DESEJADO: TFloatField;
    ConsultaCALC_PMARGEM_CONTRIBUICAO: TFloatField;
    ConsultaCALC_PMARKUP: TFloatField;
    ConsultaCALC_POUTRO_MANUAL: TFloatField;
    ConsultaCALC_PVENDA_EXTRA: TFloatField;
    ConsultaCALC_QANTERIOR_ESTOQUE: TFloatField;
    ConsultaCALC_QPESO_BRUTO: TFloatField;
    ConsultaCALC_QPESO_LIQUIDO: TFloatField;
    ConsultaCALC_TIPO_DESCONTO: TStringField;
    ConsultaCALC_VALOR_ORIGINAL: TFloatField;
    ConsultaCALC_VANTERIOR_CUSTO: TFloatField;
    ConsultaCALC_VATACADO: TFloatField;
    ConsultaCALC_VCOMPRA_EXTRA: TFloatField;
    ConsultaCALC_VCOMPRA_TOTAL: TFloatField;
    ConsultaCALC_VDESC_MANUAL: TFloatField;
    ConsultaCALC_VENDA_MINIMO_QUANT: TIntegerField;
    ConsultaCALC_VENDA_MINIMO_VALOR: TFloatField;
    ConsultaCALC_VLUCRO: TFloatField;
    ConsultaCALC_VMINIMO_VENDA: TFloatField;
    ConsultaCALC_VOUTRO_MANUAL: TFloatField;
    ConsultaCALC_VPOR_PECA: TFloatField;
    ConsultaCALC_VPRAZO: TFloatField;
    ConsultaCALC_VVENDA_CUSTO: TFloatField;
    ConsultaCALC_VVENDA_CUSTO_MINIMO: TFloatField;
    ConsultaCALC_VVENDA_CUSTO_TOTAL: TFloatField;
    ConsultaCALC_VVENDA_EXTRA: TFloatField;
    ConsultaCALC_VVENDA_TOTAL: TFloatField;
    ConsultaCODACABAMENTO: TIntegerField;
    ConsultaCODCOR: TIntegerField;
    ConsultaCODFABRICA: TStringField;
    ConsultaCODIGOEAN: TStringField;
    ConsultaCODLOCAL: TIntegerField;
    ConsultaCODPRODUTO_GRUPO: TStringField;
    ConsultaCODPRODUTO_LOTE: TIntegerField;
    ConsultaCODPRODUTO_MARCA: TIntegerField;
    ConsultaCODPRODUTO_ORIGEM: TStringField;
    ConsultaCODTIPO_IMPRESSAO: TIntegerField;
    ConsultaCODVENDA_AGRUPADA: TStringField;
    ConsultaCODVENDA_FATURADO: TStringField;
    ConsultaCODVENDA_ORIGINAL: TStringField;
    ConsultaCODVENDA_PRODUTO_ORIGINAL: TIntegerField;
    ConsultaCOMP_FORMULA: TStringField;
    ConsultaCOR: TStringField;
    ConsultaCUSTO: TFloatField;
    ConsultaCUSTO_EXTRA: TFloatField;
    ConsultaCUSTO_FABR_TOTAL: TFloatField;
    ConsultaDESCRICAO_NFE: TStringField;
    ConsultaDT_VALOR_ORIGINAL: TSQLTimeStampField;
    ConsultaESPESSURA_FORMULA: TStringField;
    ConsultaPRODUTO_ESTOQUE_ORIGEM: TStringField;
    ConsultaESTOQUE_MAX: TFloatField;
    ConsultaESTOQUE_MIN: TFloatField;
    ConsultaFATURADO: TIntegerField;
    ConsultaLARG_FORMULA: TStringField;
    ConsultaLOCAL: TStringField;
    ConsultaMARGEM: TFloatField;
    ConsultaMETODO_CALCULO_PRECO: TIntegerField;
    ConsultaOBSERVACAO_PRODUTO: TMemoField;
    ConsultaOBS_FATURAMENTO: TStringField;
    ConsultaOBS_PRODUCAO: TMemoField;
    ConsultaPASSADAS: TIntegerField;
    ConsultaPATH: TStringField;
    ConsultaPDESC: TFloatField;
    ConsultaPESSOA_FORNECEDOR_CODIGO: TStringField;
    ConsultaPESSOA_FORNECEDOR_SEQUENCIA: TIntegerField;
    ConsultaPESSOA_FORNECEDOR_TIPO: TStringField;
    ConsultaPODE_FATURAR: TStringField;
    ConsultaPODE_PESO_CALCULADO_COMPOSICAO: TStringField;
    ConsultaPODE_RECALCULAR_IMPOSTOS: TStringField;
    ConsultaPODE_RETORNAR_AO_ESTOQUE: TStringField;
    ConsultaPOUTRO: TFloatField;
    ConsultaPREDMVAST: TFloatField;
    ConsultaPRODUTO_ESTOQUE_LOCAL: TStringField;
    ConsultaPRODUTO_TIPO: TStringField;
    ConsultaQTDADEPECA_FORMULA: TStringField;
    ConsultaRATEIO: TFloatField;
    ConsultaSERIAL: TStringField;
    ConsultaTAMANHO: TStringField;
    ConsultaTEM_ARTE: TStringField;
    ConsultaTEM_COMPOSICAO: TStringField;
    ConsultaTEM_FRENTE_VERSO: TStringField;
    ConsultaTEM_INSTALACAO: TStringField;
    ConsultaTEM_LOGO: TStringField;
    ConsultaTEM_MATERIAL_REVISADO: TStringField;
    ConsultaTEM_PRODUCAO_ACEITA: TStringField;
    ConsultaTEM_PRODUCAO_FINALIZADA: TStringField;
    ConsultaTEM_PRODUCAO_FINALIZADA_NOENVIO: TStringField;
    ConsultaTEM_REVERSO: TStringField;
    ConsultaTEM_TABELA_PRECO_FIXO: TStringField;
    ConsultaTEM_TABELA_PRECO_QTDADEPECA: TStringField;
    ConsultaTIPO_IMPRESSAO: TStringField;
    ConsultaTOTAL: TFloatField;
    ConsultaTOTAL_RELATORIO: TFloatField;
    ConsultaVALOR_COMPRA: TFloatField;
    ConsultaVALOR_RELATORIO: TFloatField;
    ConsultaVDESC: TFloatField;
    ConsultaVEICULO_ANO_FABRICACAO: TStringField;
    ConsultaVEICULO_ANO_MODELO: TStringField;
    ConsultaVEICULO_CHASSI: TStringField;
    ConsultaVEICULO_CILINDRADA: TFloatField;
    ConsultaVEICULO_CMOD: TStringField;
    ConsultaVEICULO_COMBUSTIVEL: TStringField;
    ConsultaVEICULO_CONDICAO_VEICULO: TStringField;
    ConsultaVEICULO_COR_DENATRAN: TStringField;
    ConsultaVEICULO_DIST: TStringField;
    ConsultaVEICULO_ESPECIE: TStringField;
    ConsultaVEICULO_HP: TFloatField;
    ConsultaVEICULO_KM: TStringField;
    ConsultaVEICULO_MOTOR: TStringField;
    ConsultaVEICULO_NUMERO_SERIE: TStringField;
    ConsultaVEICULO_PASSAGEIROS: TFloatField;
    ConsultaVEICULO_PLACA: TStringField;
    ConsultaVEICULO_RENAVAN: TStringField;
    ConsultaVEICULO_TIPO: TStringField;
    ConsultaVOUTRO: TFloatField;
    ConsultaCALC_VUNITARIO_DESC: TFloatField;
    ConsultaCALC_VUNITARIO_OUTRO: TFloatField;
    ConsultaCALC_VUNITARIO_FRETE: TFloatField;
    ConsultaCALC_VUNITARIO_LUCRO_DESEJADO: TFloatField;
    ConsultaDT_ESTOQUE_BAIXA: TSQLTimeStampField;
    ConsultaESTOQUE_BAIXADO: TStringField;
    ConsultaTEMPO_ESTIMADO: TFloatField;
    ConsultaCODPRODUTO_CATEGORIA: TStringField;
    ConsultaCATEGORIA: TStringField;
    ConsultaCODCENTRO_TRABALHO: TIntegerField;
    ConsultaCODUSUARIO: TIntegerField;
    ConsultaDT_EMISSAO: TSQLTimeStampField;
    ConsultaPODE_ALTERAR_ESTOQUE: TStringField;
    ConsultaPROTOCOLO: TStringField;
    ConsultaQUANT_FATURAR: TSingleField;
    ConsultaOBSERVACAO: TStringField;
    ConsultaCODVENDA_PRODUTO: TIntegerField;
    ConsultaTEM_DIVERGENCIA: TStringField;
    ConsultaPROTOCOLO_PRINCIPAL: TStringField;
    ConsultaPESSOA_FUNCIONARIO_CODIGO: TStringField;
    ConsultaPROTOCOLO_BAIXA: TStringField;
    ConsultaCODPRODUTO_MOVIMENTO: TStringField;
    ConsultaSTATUS: TStringField;
    ConsultaESTOQUE_LOCAL_ORIGEM: TStringField;
    ConsultaPRODUTO: TStringField;
    ConsultaCODUSUARIO_BAIXA: TIntegerField;
    ConsultaCODCENTRO_CUSTO: TIntegerField;
    ConsultaTIPO_MOVIMENTACAO: TStringField;
    ConsultaCODNF_ENTRADA: TStringField;
    ConsultaCODPRODUTO_REQUISICAO_MOTIVO: TIntegerField;
    ConsultaCOMPETENCIA: TStringField;
    ConsultaCENTRO_TRABALHO: TStringField;
    ConsultaUSUARIO: TStringField;
    ConsultaEMPRESA: TStringField;
    ConsultaCORMOTIVO: TIntegerField;
    ConsultaMOTIVO: TStringField;
    ConsultaFUNCIONARIO: TStringField;
    ConsultaCENTRO_CUSTO: TStringField;
    procedure WREventosConsultaSQLTrataNomes(Sender: TObject; var ASQL: string);
    procedure GridConsultaDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure tcEntregarRequisicaoClick(Sender: TdxTileControlItem);
    procedure tcRecusarRequisicaoClick(Sender: TdxTileControlItem);
    procedure GridConsultaDBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure WREventosConsultaGetFiltrosConsulta(Sender: TObject);
    procedure FrameEnter(Sender: TObject);
    procedure GridConsultaDBTableView1DataControllerSummaryAfterSummary(
      ASender: TcxDataSummary);
    procedure ConsultaAfterOpen(DataSet: TDataSet);
    procedure tcAgrupadorItem1Click(Sender: TdxTileControlItem);
    procedure tcAgrupadorItem2Click(Sender: TdxTileControlItem);
    procedure tcAgrupadorItem3Click(Sender: TdxTileControlItem);
    procedure tcAgruparRequisicaoClick(Sender: TdxTileControlItem);
    procedure tcConcluirRequisicaoClick(Sender: TdxTileControlItem);
    procedure tiFiltrosClick(Sender: TdxTileControlItem);
    procedure ConsultaBeforeClose(DataSet: TDataSet);
    procedure cxCheckGroup1PropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConsuEstoque_Requisicao: TConsuEstoque_Requisicao;

implementation

{$R *.dfm}

uses
  UnitFuncoes, wrConstantes, wrFuncoes, Classes.WR, StrUtils, Base, Frame_CadRequisicao_Pocket,
  FrmBaixa_Requisicao, Routes.Requisicao.Estoque, Utils.Requisicao, Services.Requisicao, Tag.Form;

procedure TConsuEstoque_Requisicao.ConsultaAfterOpen(DataSet: TDataSet);
var
  ATotalNormal, ATotalAnormal, ARatio :Double;
begin
  inherited;
  Pendencias.Open;
end;

procedure TConsuEstoque_Requisicao.ConsultaBeforeClose(DataSet: TDataSet);
begin
  inherited;
  Pendencias.Close;
end;

procedure TConsuEstoque_Requisicao.cxCheckGroup1PropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if not (Consulta.state = dsInactive) then
    RefreshConsulta;
end;

procedure TConsuEstoque_Requisicao.tcAgrupadorItem1Click(Sender: TdxTileControlItem);
begin
  inherited;
//  AgrupaComboBoxTile(Sender, GridConsultaDBTableView1, GridConsultaDBTableView1FUNCIONARIO, TdxSortOrder.soDescending);
end;

procedure TConsuEstoque_Requisicao.tcAgrupadorItem2Click(Sender: TdxTileControlItem);
begin
  inherited;
//  AgrupaComboBoxTile(Sender, GridConsultaDBTableView1, GridConsultaDBTableView1EQUIPE, TdxSortOrder.soDescending);
end;

procedure TConsuEstoque_Requisicao.tcAgrupadorItem3Click(Sender: TdxTileControlItem);
begin
  inherited;
//  AgrupaComboBoxTile(Sender, GridConsultaDBTableView1, GridConsultaDBTableView1PRODUTO, TdxSortOrder.soDescending);
end;

procedure TConsuEstoque_Requisicao.tcAgruparRequisicaoClick(Sender: TdxTileControlItem);
var
  I, ACodRequsicaoAgrupada: Integer;
  AGridRecord: TcxCustomGridRecord;
  ACodProduto: String;
  AQuant: Double;
begin
  inherited;

  AGridRecord := GridConsultaDBTableView1.Controller.SelectedRows[0];
  ACodProduto := VarToStr(AGridRecord.Values[GridConsultaDBTableView1CODPRODUTO.Index]);


  for I := 0 to GridConsultaDBTableView1.DataController.GetSelectedCount - 1 do
  begin
    AGridRecord := GridConsultaDBTableView1.Controller.SelectedRows[I];
    if (VarToStr(AGridRecord.Values[GridConsultaDBTableView1CODPRODUTO.Index]) <> ACodProduto) then
    begin
      ShowMessageWR('Não é possível agrupar produtos diferentes.');
      Exit;
    end;
  end;

  if ShowMessageWR('Deseja Agrupar estes itens selecionados?', MB_ICONQUESTION) = mrYes then
  begin
    TransaDragAndDrop.StartTransaction;
//    try
    for I := 0 to GridConsultaDBTableView1.DataController.GetSelectedCount - 1 do
    begin
      GridConsultaDBTableView1.Controller.SelectedRows[I];

      AGridRecord := GridConsultaDBTableView1.Controller.SelectedRows[I];
      AQuant := AQuant + VarToDoubleDef(AGridRecord.Values[GridConsultaDBTableView1QUANT_PREVISTA.Index],0);

//      EditaCampo('CODPRODUTO_TIPO', VarToStr(AProdutoTipoSelecionado), GridConsultaDBTableView1.Controller.SelectedRecords[I].Values[GridConsultaDBTableView1CODIGO.Index]);
//      EditaCampo('TEM_' + Produto_TipoClassificacaoToStr(ProdutoTipoImgIndexToClassificacao(ATag)), 'S', GridConsultaDBTableView1.Controller.SelectedRecords[I].Values[GridConsultaDBTableView1CODIGO.Index]);
//      EditaCampo('TEM_PRODUTO', 'N', GridConsultaDBTableView1.Controller.SelectedRecords[I].Values[GridConsultaDBTableView1CODIGO.Index]);
    end;


    GridConsultaDBTableView1.DataController.ChangeFocusedRecordIndex(GridConsultaDBTableView1.Controller.SelectedRecords[0].RecordIndex);
    QueryDragAndDrop.Open;
    try
      ACodRequsicaoAgrupada := Services.Requisicao.InsertProdutoRequisicao_CriaRequisicao(Consulta.FieldByname('MODULO').AsString,   // Pode ter CriaRequisicao??
                                              Consulta.FieldByname('CODPRODUTO').AsString,
                                              Consulta.FieldByname('PRODUTO').AsString,
                                              Consulta.FieldByname('UNIDADE').AsString,
                                              '',//CODVENDA
                                              Consulta.FieldByname('PRODUTO_ESTOQUE_ORIGEM').AsString,
                                              Consulta.FieldByname('PRODUTO_ESTOQUE_LOCAL').AsString,
                                              Consulta.FieldByname('OBSERVACAO').AsString,
                                              Consulta.FieldByname('TIPO_MOVIMENTACAO').AsString,
                                              AQuant,
                                              Consulta.FieldByname('CUSTO').AsFloat,
                                              Consulta.FieldByname('VALOR').AsFloat,
                                              Consulta.FieldByname('VALOR_COMPRA').AsFloat,
                                              Consulta.FieldByname('CODCENTRO_TRABALHO').AsInteger,
                                              Consulta.FieldByname('CODEMPRESA').AsInteger,
                                              Usuario.Codigo,
                                              QueryDragAndDrop,
                                              Consulta.FieldByname('CODCENTRO_TRABALHO').AsInteger);







      TransaDragAndDrop.Commit;
      ShowMessage('Concluído com sucesso.');
    except
      on E:EWRException do
        ShowMessage(E.message);
    end;
//    except
//      TransaDragAndDrop.Rollback;
//    end;
  end;

  RefreshConsulta;
end;

procedure TConsuEstoque_Requisicao.tcConcluirRequisicaoClick(
  Sender: TdxTileControlItem);
begin
  inherited;
  TransaDragAndDrop.StartTransaction;
//  try
    QueryDragAndDrop.Close;
    QueryDragAndDrop.ParamByName('CODIGO').AsInteger := Consulta.FieldByName('CODIGO').AsInteger;
    QueryDragAndDrop.Open;
    QueryDragAndDrop.Edit;
    QueryDragAndDrop.FieldByName('CUSTO_EXTRA').AsFloat := Utils.Requisicao.CalculaValores(Consulta.FieldByName('QUANT_PREVISTA').AsFloat,
                                                                         Consulta.FieldByName('QUANT').AsFloat,
                                                                         Consulta.FieldByName('CUSTO').AsFloat);
    QueryDragAndDrop.Post;

    TransaDragAndDrop.Commit;
    ShowMessage('Concluído com sucesso.');
//  except
//    TransaDragAndDrop.Rollback;
//  end;

end;

procedure TConsuEstoque_Requisicao.tcEntregarRequisicaoClick(Sender: TdxTileControlItem);
var
  I: Integer;
  AQuant, AQuantPrevista: Double;
  ACodProduto, AProduto, ABaixaRequisicao, AEntradaSaida, AStatus, ANomeEstoque, AObservacao: String;
  ACodFuncionario, ACodCentroTrabalho, ACodMotivo: Integer;
begin
  inherited;
  ABaixaRequisicao := 'N';
//  QueryDragAndDrop.Open;
  try
    for I := 0 to GridConsultaDBTableView1.DataController.GetSelectedCount - 1 do
    begin
      GridConsultaDBTableView1.Controller.SelectedRows[I];

      AQuantPrevista := GridConsultaDBTableView1.Controller.SelectedRecords[I].Values[GridConsultaDBTableView1QUANT_PREVISTA.Index];
      ACodProduto    := VarToStrDef(GridConsultaDBTableView1.Controller.SelectedRecords[I].Values[GridConsultaDBTableView1CODPRODUTO.Index],'');
      AProduto       := VarToStrDef(GridConsultaDBTableView1.Controller.SelectedRecords[I].Values[GridConsultaDBTableView1PRODUTO.Index],'');
      AEntradaSaida  := VarToStrDef(GridConsultaDBTableView1.Controller.SelectedRecords[I].Values[GridConsultaDBTableView1ENTRADA_SAIDA.Index],'');
      ANomeEstoque   := 'Principal';

      if TFormBaixa_Requisicao.AbreFormBaixa_Requisicao(Self, AQuant, AQuantPrevista, ACodProduto, AProduto, AEntradaSaida, ANomeEstoque, AStatus, ACodFuncionario, ACodCentroTrabalho, ACodMotivo, AObservacao) = 'Consumir' then
      begin
        ABaixaRequisicao := 'S';
        Routes.Requisicao.Estoque.BaixaRequisicao(TransaDragAndDrop, GridConsultaDBTableView1.Controller.SelectedRecords[I].Values[GridConsultaDBTableView1CODIGO.Index], QueryDragAndDrop, AQuant, AStatus, ACodFuncionario, ACodCentroTrabalho, ACodMotivo, AObservacao);
      end;
    end;

    if ABaixaRequisicao = 'S' then
    begin
//      TransaDragAndDrop.Commit;
      ShowMessage('Concluído com sucesso.');
    end
    else
      raise Exception.Create('Nenhuma requisição foi concluída');
  except
    On E:EWRException do
    begin
      ShowMessage(E.Message);
      TransaDragAndDrop.Rollback;
    end;
  end;

  RefreshConsulta;
end;

procedure TConsuEstoque_Requisicao.tcRecusarRequisicaoClick(Sender: TdxTileControlItem);
var
  I: Integer;
begin
  inherited;

  for I := 0 to GridConsultaDBTableView1.DataController.GetSelectedCount - 1 do
  begin
    GridConsultaDBTableView1.Controller.SelectedRows[I];

    Routes.Requisicao.Estoque.RecusarRequisicao(TransaDragAndDrop, GridConsultaDBTableView1.Controller.SelectedRecords[I].Values[GridConsultaDBTableView1CODIGO.Index], QueryDragAndDrop);
  end;

  try
    TransaDragAndDrop.Commit;
    ShowMessage('Concluído com sucesso.');
  except
    TransaDragAndDrop.Rollback;
  end;

  RefreshConsulta;
end;

procedure TConsuEstoque_Requisicao.tiFiltrosClick(Sender: TdxTileControlItem);
begin
  Pendencias.Refresh;
  tcFiltrosPanelItem1.Text2.Value := IntToStr(Pendencias.FieldByName('QUANTIDADE').AsInteger) + ' ' + 'Pendências';
  inherited;
end;

procedure TConsuEstoque_Requisicao.FrameEnter(Sender: TObject);
begin
  cxCheckGroup1.States[2] := cbsChecked; //Abrir filtrando sempre pelo pendentes
  inherited;
end;

procedure TConsuEstoque_Requisicao.GridConsultaDBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
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
  inherited;
  tcEntregarRequisicao.Enabled := VarIsNull(LRecordValue(GridConsultaDBTableView1DT_ESTOQUE_BAIXA));
  tcRecusarRequisicao.Enabled := VarIsNull(LRecordValue(GridConsultaDBTableView1DT_ESTOQUE_BAIXA));
end;

procedure TConsuEstoque_Requisicao.GridConsultaDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  AValue : Variant;
  ARecord: TcxCustomGridRecord;
begin
  inherited;
  ACanvas.Font.Color := $00484848;
  ARecord := AViewInfo.GridRecord;
  if not (ARecord is TcxGridGroupRow) then
  begin
    if AViewInfo.Item.Index = GridConsultaDBTableView1STATUS.Index then
    begin
//      if ARecord.Values[GridConsultaDBTableView1STATUS.Index] = 'DEVOLUCAO' then
//        ACanvas.Brush.Color := $ADDEFF;//VarToIntDef(AValue, clOlive);
//
//      if ARecord.Values[GridConsultaDBTableView1STATUS.Index] = 'NORMAL'then
//        ACanvas.Brush.Color := $00C8FFC4;//VarToIntDef(AValue, clGreen);
//
//      if ARecord.Values[GridConsultaDBTableView1STATUS.Index] = 'ANORMAL'then
//        ACanvas.Brush.Color := $009EA8FC;//VarToIntDef(AValue, clRed);

      if ARecord.Values[GridConsultaDBTableView1STATUS.Index] = 'PENDENTE'then
        ACanvas.Brush.Color := $0098FCFA;//VarToIntDef(AValue, clYellow); AMARELO
    end;

    if AViewInfo.Item.Index = GridConsultaDBTableView1MOTIVO.Index then
    begin
      AValue := ARecord.Values[GridConsultaDBTableView1CORMOTIVO.Index];
      if AValue<>null then
        ACanvas.Brush.Color := VarToIntDef(AValue, clBlack);
    end;

    if AViewInfo.Item.Index = GridConsultaDBTableView1CUSTO_EXTRA.Index then
    begin
//      try
        AValue := ARecord.Values[GridConsultaDBTableView1CUSTO_EXTRA.Index];
        if AValue < 0 then
          ACanvas.Font.Color := clRed
        else
          ACanvas.Font.Color := clGreen;
//      except
//
//      end;
      ACanvas.Font.Style := [fsBold];
    end;

//    if AViewInfo.Item.Index = GridConsultaDBTableView1QUANT_ATUAL.Index then
//    begin
//      try
//        if (VarAsType(AViewInfo.GridRecord.DisplayTexts[GridConsultaDBTableView1QUANT_ATUAL.Index], varDouble) < 0) then
//          ACanvas.Font.Color := clRed
//        else
//          ACanvas.Font.Color := clGreen;
//      except
//
//      end;
//      ACanvas.Font.Style := [fsBold];
//      ACanvas.Brush.Color := clMoneyGreen;
//    end;


  end;
end;

procedure TConsuEstoque_Requisicao.GridConsultaDBTableView1DataControllerSummaryAfterSummary(
  ASender: TcxDataSummary);
var
  AIndex: Integer;
  AValue: Variant;
  AQuantNormal, AQuantAnormal: Double;
begin
  inherited;

///////RENDIMENTO
  AIndex := GridConsultaDBTableView1.DataController.Summary.FooterSummaryItems.IndexOfItemLink(GridConsultaDBTableView1CUSTO_EXTRA);
  AValue := GridConsultaDBTableView1.DataController.Summary.FooterSummaryValues[AIndex];

{  if not VarIsNull(AValue) then
    lblRendimento.Caption := VarAsType(AValue, varString);
  if AValue  >= 0 then
    lblRendimento.Style.TextColor := clgreen
  else
    lblRendimento.Style.TextColor := clred;   }
//
/////////QUANT UTILIZADA
//  AIndex := GridConsultaDBTableView1.DataController.Summary.FooterSummaryItems.IndexOfItemLink(GridConsultaDBTableView1QUANT);
//  AValue := GridConsultaDBTableView1.DataController.Summary.FooterSummaryValues[AIndex];
//
//  if not VarIsNull(AValue) then
//    edtTotalQuantUtilizada.Value := VarAsType(AValue, varDouble);


///////PERDA



////  else
////    AQuantNormal:=0;
////
////  AQuantNormal := VarAsType(AValue, varDouble);
//
//  edtTotalAproveitamento.Value := AQuantNormal;



//
//    if not VarIsNull(AValue) then
//      edtTotalISS.Value := VarAsType(AValue, varDouble)
//    else
//      edtTotalISS.Value := 0;
//
////    AValue := EdtTotal.Value - edtTotalISS.Value;
//    AValue := EdtTotal.Value + edtTotalISS.Value;
//    if not VarIsNull(AValue) then
//      edtTotalSemISS.Value := VarAsType(AValue, varDouble)
//    else
//      edtTotalSemISS.Value := 0;

end;

procedure TConsuEstoque_Requisicao.WREventosConsultaGetFiltrosConsulta(Sender: TObject);
Var
  ACampo_Codigo: String;
  ACampo_Sql: String;
begin
  inherited;
  LiGridSubGrid.Visible:= (GridConsultaDBTableView1.GroupedColumnCount > 0);
  if GridConsultaDBTableView1.GroupedColumnCount > 0 then
  begin
    with TcxGridDBColumn(GridConsultaDBTableView1.GroupedColumns[0]).DataBinding do
    try
      ACampo_Codigo    := FieldName;
      if ACampo_Codigo = 'USUARIO' then
      begin
        ACampo_Sql       := 'U.'+ACampo_Codigo;
      end
      else
      if ACampo_Codigo = 'FUNCIONARIO' then
      begin
         ACampo_Sql := 'PESSOA_FUNCIONARIO_CODIGO';
         ACampo_Codigo := 'PESSOA_FUNCIONARIO_CODIGO';
      end
      else
      if ACampo_Codigo = 'CENTRO_TRABALHO' then
      begin
         ACampo_Sql := 'CODCENTRO_TRABALHO';
         ACampo_Codigo := 'CODCENTRO_TRABALHO';
      end
      else
      if ACampo_Codigo = 'PRODUTO' then
      begin
         ACampo_Sql    := 'PR.CODPRODUTO';
         ACampo_Codigo := 'CODPRODUTO';
      end

//      else if ACampo_Codigo = 'USUARIO_CONTA' then
//      begin
//        ACampo_Sql       := 'UC.USUARIO';
//        ACampo_Codigo    := 'USUARIO';
//      end
//      else if ACampo_Codigo = 'PLANOCONTAS' then   // C.DESCRICAO as CONTA, U.USUARIO, UC.USUARIO as USUARIO_CONTA
//      begin
//        ACampo_Sql       := 'PC.DESCRICAO';
//        ACampo_Codigo    := 'CODPLANOCONTAS';
//      end



      else
      begin
        if Consulta.FieldByName(FieldName).AutoGenerateValue <> TAutoRefreshFlag(arNone) then
          ACampo_Codigo    := 'COD'+FieldName;

        ACampo_Sql       := ACampo_Codigo;
      end;
       AgrupaSubGrid(ACampo_Codigo, FieldName, ACampo_Sql );
    finally
    end;
    LiGridSubGrid.Visible:= True;
  end;

  SplitSubGrid.Visible:= LiGridSubGrid.Visible;
  if not (cxCheckGroup1.States[0] = cbsChecked) then
    SQLWhere.AddAnd('(PR.STATUS <> ''NORMAL'')');
  if not (cxCheckGroup1.States[1] = cbsChecked) then
    SQLWhere.AddAnd('(PR.STATUS <> ''ANORMAL'')');
  if not (cxCheckGroup1.States[2] = cbsChecked) then
    SQLWhere.AddAnd('(PR.STATUS <> ''PENDENTE'')');
end;

procedure TConsuEstoque_Requisicao.WREventosConsultaSQLTrataNomes(Sender: TObject;
  var ASQL: string);
begin
  inherited;
  ASQL := ReplaceText(ASQL, 'ATIVO', 'PR.ATIVO');
  ASQL := ReplaceText(ASQL, 'PESSOA_FUNCIONARIO_CODIGO', 'PR.PESSOA_FUNCIONARIO_CODIGO');
  ASQL := ReplaceText(ASQL, 'DT_ALTERACAO', 'PR.DT_ALTERACAO');

end;

initialization
  RegisterClass(TConsuEstoque_Requisicao);
  RegisterFrameCon(Tag_Estoque_Requisicao, TConsuEstoque_Requisicao);

end.
