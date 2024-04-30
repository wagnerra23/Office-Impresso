unit Frame_ConComissao_Selecao_Financeiro;

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
  cxGrid, dxLayoutControl, cxCurrencyEdit, cxCheckBox,
  uWRFormataCamposDataSet, cxCustomListBox, cxCheckListBox, cxMemo, System.StrUtils, Frame_ConFinanceiro_Mestre, dxSkinsCore, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxScrollbarAnnotations,
  cxGroupBox, cxCheckGroup;

type
  TFrame_ConsuComissao_Selecao_Financeiro = class(TFrame_ConsuFinanceiro_Mestre)
    Comissao_Financeiro: TFDQuery;
    DSComissao_Financeiro: TDataSource;
    dxLayoutItem2: TdxLayoutItem;
    cxGrid1: TcxGrid;
    cxCheckListBox10: TcxCheckListBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1IS_PAGAR: TcxGridDBColumn;
    cxGrid1DBTableView1CODCOMISSAO: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1PERC_COMISSAO: TcxGridDBColumn;
    cxGrid1DBTableView1VALOR_COMISSAO: TcxGridDBColumn;
    cxGrid1DBTableView1Pendente: TcxGridDBColumn;
    cxGrid1DBTableView1GERA_COMISSAO: TcxGridDBColumn;
    cxGrid1DBTableView1COMISSAO_STATUS: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1RAZAOSOCIAL: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    dxLayoutGroup1: TdxLayoutGroup;
    cxGrid1DBTableView1FRASE: TcxGridDBColumn;
    GridConsultaDBTableView1QTD_COMISSAO_PAGA: TcxGridDBColumn;
    procedure ConsultaAfterOpen(DataSet: TDataSet);
    procedure ConsultaBeforeClose(DataSet: TDataSet);
    procedure tcTopoBtnItem1Click(Sender: TdxTileControlItem);
    procedure WREventosCadastroValidaEdicaoCamposAfter(Sender: TObject);
    procedure GridSubGridViewDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure WREventosConsultaGetFiltrosConsulta(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure GridConsultaDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxCheckListBox10ClickCheck(Sender: TObject; AIndex: Integer;
      APrevState, ANewState: TcxCheckBoxState);
    procedure QueryDragAndDropBeforePost(DataSet: TDataSet);
    procedure CreateDaTelaCarregaDataSets(Sender: TObject);
    procedure FrameExit(Sender: TObject);
  private
    { Private declarations }
  public
    destructor Destroy; override;
    { Public declarations }
  end;

var
  Frame_ConsuComissao_Selecao_Financeiro: TFrame_ConsuComissao_Selecao_Financeiro;

implementation

{$R *.dfm}

uses UnitFuncoes, Base, wrFuncoes, Registry, DateUtils, Tag.Form;

destructor TFrame_ConsuComissao_Selecao_Financeiro.Destroy;
begin
  inherited Destroy;
end;

procedure TFrame_ConsuComissao_Selecao_Financeiro.ConsultaAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  Comissao_Financeiro.Open;
end;

procedure TFrame_ConsuComissao_Selecao_Financeiro.ConsultaBeforeClose(
  DataSet: TDataSet);
begin
  inherited;
  Comissao_Financeiro.Close;
end;

procedure TFrame_ConsuComissao_Selecao_Financeiro.CreateDaTelaCarregaDataSets(Sender: TObject);
Var
  Reg: TRegistry;
begin
  inherited;
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey(GetRegPathCon, True) then
    begin
      tcData.Tag := Reg.ReadIntegerWR('tcData');


      if tcData.Tag = 0  then
      begin
        EdtDataInicio.Date := StartOfTheYear(Now);
        EdtDataFim.Date    := EndOfTheYear(Now);

        Reg.WriteInteger('tcData', 4); // Coloca o ano como mínimo
        Reg.WriteDate('DataInicio', EdtDataInicio.Date);
        Reg.WriteDate('DataFim', EdtDataFim.Date);
      end;
    end;
  finally
     Reg.Free;
  end;
end;

procedure TFrame_ConsuComissao_Selecao_Financeiro.cxCheckListBox10ClickCheck(
  Sender: TObject; AIndex: Integer; APrevState, ANewState: TcxCheckBoxState);
begin
  inherited;
  GridConsultaDBTableView1.DataController.Filter.BeginUpdate;
  GridConsultaDBTableView1.DataController.Filter.Root.Clear;
  if cxCheckListBox10.Items[0].Checked then
  begin
    GridConsultaDBTableView1.DataController.Filter.Root.AddItem(GridConsultaDBTableView1QTD_COMISSAO_PAGA,
                                                                foEqual,
                                                                '0',
                                                                'SEM COMISSÃO');
  end;
  GridConsultaDBTableView1.DataController.Filter.Active := True;
  GridConsultaDBTableView1.DataController.Filter.EndUpdate;
end;

procedure TFrame_ConsuComissao_Selecao_Financeiro.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if AViewInfo.Focused or AViewInfo.Selected then
    ACanvas.Brush.Color := clWhite
  else
    ACanvas.Brush.Color := clWhite;

  if (trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[cxGrid1DBTableView1IS_PAGAR.Index], varString)) = 'S') then
  begin
    ACanvas.Font.Color := clBlack;
    ACanvas.Font.Style := [fsBold];
  end
  else
  begin
    ACanvas.Font.Color := clGrayText;
    ACanvas.Font.Style := [];
  end;
end;

procedure TFrame_ConsuComissao_Selecao_Financeiro.FrameExit(Sender: TObject);
begin
  inherited;
//
end;

procedure TFrame_ConsuComissao_Selecao_Financeiro.GridConsultaDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if (trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[GridConsultaDBTableView1QTD_COMISSAO_PAGA.Index], varString)) <> '0') then
  begin
    ACanvas.Brush.Color := $00A6FE9E;
    ACanvas.Font.Color := clDefault;
  end;
end;

procedure TFrame_ConsuComissao_Selecao_Financeiro.GridSubGridViewDragDrop(
  Sender, Source: TObject; X, Y: Integer);
var
  HT: TcxCustomGridHitTest;
  ACodigo: Variant;
  AFieldName:String;
  I : Integer;
  Prefixo : String;
  QuerXCamposAdicionais: TFDQuery;
begin
  HT := GridSubGridView.GetHitTest(X, Y);
  if not (HT is TcxGridRecordCellHitTest) then
    Abort;

  for I := 0 to GridConsultaDBTableView1.ViewData.RecordCount - 1 do
  begin
    if GridConsultaDBTableView1.ViewData.Records[i].Selected then
    begin
      if VarSameValueWR(GridConsultaDBTableView1.DataController.Values[GridConsultaDBTableView1.ViewData.Records[i].RecordIndex,GridConsultaDBTableView1CODPEDIDO.Index], '0') then
      begin
        ShowMessage('Um dos registros não possui venda vinculada, não é possível realizar a operação.');
        Abort;
      end;
    end;
  end;

  AFieldName := TcxGridDBColumn(GridConsultaDBTableView1.GroupedColumns[0]).DataBinding.FieldName;
  if MatchStr(AFieldName, ['REPRESENTANTE_COMISSAO', 'AGENCIA_COMISSAO', 'FUNCIONARIO_COMISSAO']) then
  begin
    UCHist_Cadastro.CampoPK1 := '';
    UCHist_Cadastro.CampoPK3 := '';
    UCHist_Cadastro.Tabela   := 'VENDA';
  end;
  inherited;
end;

procedure TFrame_ConsuComissao_Selecao_Financeiro.QueryDragAndDropBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  UCHist_Cadastro.MensagemHistorico.Add('Registro alterado pelo usuário ' + Usuario.Nome + ' pela Tela de COMISSÃO.');
end;

procedure TFrame_ConsuComissao_Selecao_Financeiro.tcTopoBtnItem1Click(
  Sender: TdxTileControlItem);
begin
//  inherited;
  GridConsultaDBTableView1DblClick(Sender);
end;

procedure TFrame_ConsuComissao_Selecao_Financeiro.WREventosCadastroValidaEdicaoCamposAfter(
  Sender: TObject);
begin
  inherited;
  UCHist_Cadastro.CampoPK1 := 'CODIGO';
  UCHist_Cadastro.CampoPK3 := 'CODEMPRESA';
  UCHist_Cadastro.Tabela   := 'FINANCEIRO';
end;

procedure TFrame_ConsuComissao_Selecao_Financeiro.WREventosConsultaGetFiltrosConsulta(
  Sender: TObject);
begin
  inherited;
  SQLWhere.AddAnd('( F.STATUS = ''ATIVO'' )');
  if cxCheckListBox10.Items[0].Checked then
    SQLWhere.AddAnd('(F.TIPO <> ''A RECEBER'')');

end;

initialization
  RegisterFrameCon(Tag_Comissao_Selecao_Financeiro, TFrame_ConsuComissao_Selecao_Financeiro);

end.
