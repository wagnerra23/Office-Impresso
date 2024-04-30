unit Frame_CadProducao_Projeto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Cad, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  Vcl.Menus, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData, dxLayoutControlAdapters,
  dxLayoutContainer, dxLayoutcxEditAdapters, WREventos, UCBase, cxClasses, dxLayoutLookAndFeels, System.ImageList,
  Vcl.ImgList, IBX.IBCustomDataSet, IBX.IBStoredProc, IBX.IBDatabase, Vcl.ExtCtrls, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxTextEdit, cxDBEdit, cxDBNavigator, Vcl.StdCtrls,
  cxButtons, dxLayoutControl, dxStatusBar, dxDateRanges, UCHistDataset, cxMemo,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxButtonEdit, dxTokenEdit,
  dxDBTokenEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, CadM,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, fs_iinterpreter,
  dxUIAdorners, frxClass, frxDBSet, FireDAC.Comp.DataSet,
  System.Generics.Collections, cxLabel, cxGridChartView, cxGridDBChartView,
  cxCurrencyEdit, cxTrackBar, cxDBTrackBar, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxScrollbarAnnotations, WRButtonsEditAdd, Frame_Cad, uWRFormataCamposDataSet, dxCustomTileControl, dxTileControl,
  dxTileBar, frFrameAnexosVenda;

type
  TFrmProjeto = class(TFrmCad_Frame)
    dxLayoutItem1: TdxLayoutItem;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    edtObservacao: TcxDBMemo;
    dxLayoutItem3: TdxLayoutItem;
    edtDT_Entrada: TcxDBDateEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutItem7: TdxLayoutItem;
    tokProducao_Marcador: TdxDBTokenEdit;
    dxLayoutGroup3: TdxLayoutGroup;
    Produtos: TFDQuery;
    DS_Produtos: TDataSource;
    dxLayoutItem5: TdxLayoutItem;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGrid2DBChartView1: TcxGridDBChartView;
    cxGrid2DBChartView1DataGroup1: TcxGridDBChartDataGroup;
    cxGrid2DBChartView1Series1: TcxGridDBChartSeries;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutGroup10: TdxLayoutGroup;
    LicbxSituacao: TdxLayoutItem;
    cbxSituacao: TcxDBComboBox;
    dxLayoutItem6: TdxLayoutItem;
    edtResponsavelÎPessoas: TcxDBButtonEdit;
    dxLayoutItem8: TdxLayoutItem;
    edtResponsavelÎPessoasÎRAZAOSOCIAL: TcxDBTextEdit;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutItem9: TdxLayoutItem;
    edtVOutro: TcxDBCurrencyEdit;
    dxLayoutItem10: TdxLayoutItem;
    tbrPConclusao: TcxDBTrackBar;
    dxLayoutItem11: TdxLayoutItem;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxLabel1: TcxLabel;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    cxGrid4: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    dxLayoutItem14: TdxLayoutItem;
    lblDespesas: TcxLabel;
    dxLayoutItem15: TdxLayoutItem;
    cxLabel3: TcxLabel;
    dxLayoutGroup11: TdxLayoutGroup;
    dxLayoutItem16: TdxLayoutItem;
    cxLabel4: TcxLabel;
    dxLayoutGroup12: TdxLayoutGroup;
    dxLayoutGroup13: TdxLayoutGroup;
    dxLayoutGroup14: TdxLayoutGroup;
    dxLayoutGroup15: TdxLayoutGroup;
    Financeiro_Venda: TFDQuery;
    DSFinanceiro_Venda: TDataSource;
    Venda: TFDQuery;
    DSVenda: TDataSource;
    cxGridDBTableView3CODIGO: TcxGridDBColumn;
    cxGridDBTableView3DOCUMENTO: TcxGridDBColumn;
    cxGridDBTableView3DATAPAGTO: TcxGridDBColumn;
    cxGridDBTableView3VALOR: TcxGridDBColumn;
    cxGridDBTableView3TIPO: TcxGridDBColumn;
    cxGridDBTableView3STATUS: TcxGridDBColumn;
    cxGridDBTableView2CODIGO: TcxGridDBColumn;
    cxGridDBTableView2DT_EMISSAO: TcxGridDBColumn;
    cxGridDBTableView2NOTAFISCAL: TcxGridDBColumn;
    cxGridDBTableView2VOUTRO: TcxGridDBColumn;
    cxGridDBTableView2VDESC: TcxGridDBColumn;
    cxGridDBTableView2TOTAL: TcxGridDBColumn;
    cxGridDBTableView2VENDA_TIPO: TcxGridDBColumn;
    dxLayoutItem17: TdxLayoutItem;
    cxLabel5: TcxLabel;
    dxLayoutGroup16: TdxLayoutGroup;
    cxButton1: TcxButton;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutItem19: TdxLayoutItem;
    cxLabel6: TcxLabel;
    dxLayoutGroup17: TdxLayoutGroup;
    GrupoDespesas: TdxLayoutGroup;
    dxLayoutItem20: TdxLayoutItem;
    cxGrid5: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridLevel4: TcxGridLevel;
    dxLayoutItem21: TdxLayoutItem;
    cxLabel2: TcxLabel;
    dxLayoutItem22: TdxLayoutItem;
    cxLabel7: TcxLabel;
    dxLayoutGroup18: TdxLayoutGroup;
    dxLayoutItem23: TdxLayoutItem;
    cxLabel8: TcxLabel;
    dxLayoutGroup19: TdxLayoutGroup;
    dxLayoutGroup20: TdxLayoutGroup;
    dxLayoutItem24: TdxLayoutItem;
    cxLabel9: TcxLabel;
    dxLayoutItem25: TdxLayoutItem;
    cxGrid6: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridLevel5: TcxGridLevel;
    dxLayoutGroup21: TdxLayoutGroup;
    Venda_Produto: TFDQuery;
    DSVenda_produto: TDataSource;
    dxTileBar1: TdxTileBar;
    dxLayoutItem26: TdxLayoutItem;
    dxTileBar1Group1: TdxTileControlGroup;
    dxTileBar1dxTileBarItem1: TdxTileBarItem;
    Venda_ProdutoCODIGO: TIntegerField;
    Venda_ProdutoCODPRODUTO: TStringField;
    Venda_ProdutoDESCRICAO: TStringField;
    Venda_ProdutoVALOR: TFloatField;
    Venda_ProdutoCOMP: TFloatField;
    Venda_ProdutoLARG: TFloatField;
    Venda_ProdutoESPESSURA: TFloatField;
    Venda_ProdutoQTDADEPECA: TFloatField;
    Venda_ProdutoQUANT: TFloatField;
    Venda_ProdutoQUANTFATURADA: TFloatField;
    cxGridDBTableView5CODIGO: TcxGridDBColumn;
    cxGridDBTableView5CODPRODUTO: TcxGridDBColumn;
    cxGridDBTableView5DESCRICAO: TcxGridDBColumn;
    cxGridDBTableView5VALOR: TcxGridDBColumn;
    cxGridDBTableView5COMP: TcxGridDBColumn;
    cxGridDBTableView5LARG: TcxGridDBColumn;
    cxGridDBTableView5ESPESSURA: TcxGridDBColumn;
    cxGridDBTableView5QTDADEPECA: TcxGridDBColumn;
    cxGridDBTableView5QUANT: TcxGridDBColumn;
    cxGridDBTableView5QUANTFATURADA: TcxGridDBColumn;
    ProdutosCODIGO: TIntegerField;
    ProdutosDESCRICAO: TStringField;
    ProdutosQUANT: TFloatField;
    ProdutosUNIDADE: TStringField;
    ProdutosTEM_PRODUCAO_ENVIADO: TStringField;
    cxGridDBTableView1CODIGO: TcxGridDBColumn;
    cxGridDBTableView1DESCRICAO: TcxGridDBColumn;
    cxGridDBTableView1QUANT: TcxGridDBColumn;
    cxGridDBTableView1UNIDADE: TcxGridDBColumn;
    cxGridDBTableView1TEM_PRODUCAO_ENVIADO: TcxGridDBColumn;
    Financeiro: TFDQuery;
    DSFinanceiro: TDataSource;
    FinanceiroCODPEDIDO: TStringField;
    FinanceiroDOCUMENTO: TStringField;
    FinanceiroRAZAOSOCIAL: TStringField;
    FinanceiroTIPOPAGTO: TStringField;
    FinanceiroTIPO: TStringField;
    FinanceiroNOTAFISCAL: TStringField;
    FinanceiroTOTAL: TFloatField;
    cxGridDBTableView4CODPEDIDO: TcxGridDBColumn;
    cxGridDBTableView4DOCUMENTO: TcxGridDBColumn;
    cxGridDBTableView4RAZAOSOCIAL: TcxGridDBColumn;
    cxGridDBTableView4TIPOPAGTO: TcxGridDBColumn;
    cxGridDBTableView4TIPO: TcxGridDBColumn;
    cxGridDBTableView4NOTAFISCAL: TcxGridDBColumn;
    cxGridDBTableView4TOTAL: TcxGridDBColumn;
    FinanceiroCredito: TCurrencyField;
    FinanceiroDebito: TCurrencyField;
    cxGridDBTableView4Credito: TcxGridDBColumn;
    cxGridDBTableView4Debito: TcxGridDBColumn;
    Panel1: TPanel;
    cxGrid8DBTableView1: TcxGridDBTableView;
    cxGrid8Level1: TcxGridLevel;
    cxGrid8: TcxGrid;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    cxGrid8DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid8DBTableView1CODPRODUTO: TcxGridDBColumn;
    cxGrid8DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid8DBTableView1QUANT: TcxGridDBColumn;
    cxGrid8DBTableView1QUANTSELECIONADA: TcxGridDBColumn;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    Producao: TFDQuery;
    DSProducao: TDataSource;
    ProducaoCODIGO: TIntegerField;
    ProducaoCODPRODUCAO: TIntegerField;
    ProducaoCODCENTRO_TRABALHO: TIntegerField;
    ProducaoDESCRICAO: TStringField;
    ProducaoPRIORIDADE: TIntegerField;
    ProducaoCODPRODUTO: TStringField;
    ProducaoPRODUTO: TStringField;
    ProducaoQUANT: TFloatField;
    ProducaoLARG: TFloatField;
    ProducaoCOMP: TFloatField;
    ProducaoESPESSURA: TFloatField;
    ProducaoQTDADEPECA: TFloatField;
    ProducaoUNIDADE: TStringField;
    ProducaoDT_EMISSAO: TSQLTimeStampField;
    ProducaoDT_FIM: TSQLTimeStampField;
    ProducaoCALENDARIO_DT_PREVISAO_FIM: TSQLTimeStampField;
    ProducaoSITUACAO: TStringField;
    ProducaoCALENDARIO_DT_PREVISAO_INICIO: TSQLTimeStampField;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1PRIORIDADE: TcxGridDBColumn;
    cxGrid1DBTableView1CODPRODUTO: TcxGridDBColumn;
    cxGrid1DBTableView1PRODUTO: TcxGridDBColumn;
    cxGrid1DBTableView1QUANT: TcxGridDBColumn;
    cxGrid1DBTableView1LARG: TcxGridDBColumn;
    cxGrid1DBTableView1COMP: TcxGridDBColumn;
    cxGrid1DBTableView1ESPESSURA: TcxGridDBColumn;
    cxGrid1DBTableView1QTDADEPECA: TcxGridDBColumn;
    cxGrid1DBTableView1UNIDADE: TcxGridDBColumn;
    cxGrid1DBTableView1DT_EMISSAO: TcxGridDBColumn;
    cxGrid1DBTableView1DT_FIM: TcxGridDBColumn;
    cxGrid1DBTableView1CALENDARIO_DT_PREVISAO_FIM: TcxGridDBColumn;
    cxGrid1DBTableView1SITUACAO: TcxGridDBColumn;
    cxGrid1DBTableView1CALENDARIO_DT_PREVISAO_INICIO: TcxGridDBColumn;
    cxGrid1DBTableView1CODVENDA: TcxGridDBColumn;
    dxLayoutItem27: TdxLayoutItem;
    PnlFrameAnexos: TPanel;
    procedure CadastroAfterOpen(DataSet: TDataSet);
    procedure CadastroBeforeClose(DataSet: TDataSet);
    procedure WREventosCadastroConfiguracao_Acoes(Sender: TObject);
    procedure lblDespesasClick(Sender: TObject);
    procedure dxTileBar1dxTileBarItem1Click(Sender: TdxTileControlItem);
    procedure cxGridDBTableView2CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridDBTableView5CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure FinanceiroCalcFields(DataSet: TDataSet);
    procedure cxGridDBTableView4DataControllerSummaryAfterSummary(
      ASender: TcxDataSummary);
    procedure cxButton2Click(Sender: TObject);
    procedure cxGrid8DBTableView1QUANTSELECIONADAPropertiesValidate(
      Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure cxButton3Click(Sender: TObject);
    procedure cxGridDBTableView2DblClick(Sender: TObject);
    procedure cxGridDBTableView2DataControllerSummaryAfterSummary(
      ASender: TcxDataSummary);
    procedure dxLayoutGroup1TabChanged(Sender: TObject);
  private
    AFrameAnexosVenda: TFrameAnexosVenda;
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses
  UnitFuncoes, Base, Tag.Form, Base_Venda, Frame_CadVenda_Venda, StrUtils, wrFuncoes, Rotinas, frFrameHistorico;

procedure TFrmProjeto.CadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  Venda.Open;
  Venda_Produto.Open;
  Financeiro.Open;
  Producao.Open;
end;

procedure TFrmProjeto.CadastroBeforeClose(DataSet: TDataSet);
begin
  inherited;
  Produtos.Close;
  Venda.Close;
  Financeiro_Venda.Close;
  Venda_Produto.Close;
  Financeiro.Close;
  Producao.Close;
end;

procedure TFrmProjeto.cxButton2Click(Sender: TObject);
var
  AFrmVendaNovo: TFrmVenda_Base;
  AFrmVendaTemporaria : TFrame_Venda_Venda;
  AListaProduto: TArray<Integer>;
  AListaQTDAPECA: TArray<Double>;
  I: Integer;
begin
  inherited;
  SetLength(AListaProduto, 1000);
  SetLength(AListaQTDAPECA, 1000);
  I := 0;
  try
    FDQuery1.First;
    while not FDQuery1.Eof do
    begin
      I := I + 1;
      AListaProduto[I] := FDQuery1.FieldByName('CODIGO').AsInteger;

      if FDQuery1.FieldByName('QUANTSELECIONADA').AsInteger = 0 then
      begin
        ShowMessage('O produto: ' + FDQuery1.FieldByName('DESCRICAO').AsString + ' não tem quantidade selecionada');
        exit;
      end;

//      if ((FDQuery1.FieldByName('QUANTSELECIONADA').AsInteger) + (FDQuery1.FieldByName('QUANTFATURADA').AsInteger)) > (FDQuery1.FieldByName('QUANT').AsInteger) then
//      begin
//        ShowMessage('O produto: ' + FDQuery1.FieldByName('DESCRICAO').AsString + ' a quantidade a ser faturada ultrapassa o total da quantidade disponivel');
//        exit;
//      end;

      AListaQTDAPECA[I] := FDQuery1.FieldByName('QUANTSELECIONADA').AsFloat;

      FDQuery1.Next;
    end;

    AFrmVendaTemporaria := TFrame_Venda_Venda.Create(Application);
    AFrmVendaTemporaria.CloseOpen_AbrirRegistro(Cadastro.FieldByName('CODVENDA').AsString);
    AFrmVendaNovo := TFrmVenda_Base.FrameDuplicaApenasVendaBase(Tag_Venda, AFrmVendaTemporaria.Cadastro, AFrmVendaTemporaria.Venda_Financeiro, AFrmVendaTemporaria.Venda_Produto, AFrmVendaTemporaria.GridProdutoTree, True);

    TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro).FrameCopiarVendaComProdutoLista(Tag_Venda, AFrmVendaTemporaria.Venda_Produto, AFrmVendaTemporaria.GridProdutoTree, True, TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro), AListaProduto, FDQuery1);
                                                                                               //AFrmVendaTemporaria.Venda_Produto
    with TFrame_Venda_Venda(AFrmVendaNovo.FrameCadastro) do
    begin
      Cadastro.FieldByName('OBSERVACAO').AsString := Cadastro.FieldByName('OBSERVACAO').AsString;
      Cadastro.FieldByName('IS_VENDA').AsString := 'S';
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
    AFrmVendaTemporaria.free;
    FechaPanelForm(Panel1);
  end;
end;

procedure TFrmProjeto.cxButton3Click(Sender: TObject);
begin
  inherited;
  FechaPanelForm(Panel1);
end;

procedure TFrmProjeto.cxGrid8DBTableView1QUANTSELECIONADAPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
var
  Campo: TField;
begin
  inherited;
  Campo := FDQuery1.FieldByName('QUANTSELECIONADA');

  if DisplayValue > Campo.OldValue then
  begin
    ShowMessage('Não é permitido quantidade maior que a contratada');
    Campo.Value := Campo.OldValue;
  end;

end;

procedure TFrmProjeto.cxGridDBTableView2CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  Financeiro_Venda.Close;
  Financeiro_Venda.ParamByName('CODIGO').AsString := Venda.FieldByName('CODIGO').AsString;
  Financeiro_Venda.Open;

  Produtos.Close;
  Produtos.ParamByName('CODIGO').AsString := Venda.FieldByName('CODIGO').AsString;
  Produtos.Open;
end;

procedure TFrmProjeto.cxGridDBTableView2DataControllerSummaryAfterSummary(
  ASender: TcxDataSummary);
begin
  inherited;
  cxLabel3.Caption := FormatFloat('0.00####',(SomaColuna(cxGridDBTableView2, cxGridDBTableView2TOTAL)));
end;

procedure TFrmProjeto.cxGridDBTableView2DblClick(Sender: TObject);
begin
  inherited;
  ProcuraPedido(Venda.FieldByName('CODIGO').AsString);
end;

procedure TFrmProjeto.cxGridDBTableView4DataControllerSummaryAfterSummary(
  ASender: TcxDataSummary);
begin
  inherited;
  cxLabel7.Caption := FormatFloat('0.00####',(SomaColuna(cxGridDBTableView4, cxGridDBTableView4Credito)));
end;

procedure TFrmProjeto.cxGridDBTableView5CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  ARecord: TcxCustomGridRecord;
  AQuantSelecionada, AQuantFaturada, AQuantTotal : Variant;
begin
  inherited;
//  if AViewInfo.Item.Index = cxGridDBTableView5QUANTSELECIONADA.Index then
//  begin
//    AQuantSelecionada := AViewInfo.GridRecord.Values[cxGridDBTableView5QUANTSELECIONADA.Index];
//    AQuantFaturada := AViewInfo.GridRecord.Values[cxGridDBTableView5QUANTFATURADA.Index];
//    AQuantTotal := AViewInfo.GridRecord.Values[cxGridDBTableView5QUANT.Index];
//    if not VarIsNull(AQuantSelecionada) then
//    begin
//      if (AQuantSelecionada + AQuantFaturada) > AQuantTotal then
//        ACanvas.Brush.Color := clRed
//      else
//        ACanvas.Brush.Color := 16775410;
//    end;
//  end;
end;

procedure TFrmProjeto.dxLayoutGroup1TabChanged(Sender: TObject);
begin
  inherited;
  if dxLayoutGroup7.ActuallyVisible then
    TFrameAnexosVenda.CarregaFrame1(AFrameAnexosVenda, PnlFrameAnexos, DS, UCHist_Cadastro);

  if LiPnlFrameLogAtividades.ActuallyVisible then
    TFrameHistorico.CarregaFrame(FFrameHistorico, PnlFrameHistorico, UCHist_Cadastro, nil );
end;

procedure TFrmProjeto.dxTileBar1dxTileBarItem1Click(Sender: TdxTileControlItem);
var
  AFrmVendaNovo: TFrmVenda_Base;
  AFrmVendaTemporaria : TFrame_Venda_Venda;
  I: Integer;
  Lista, Virgula: String;
begin
  inherited;
  try
    for I := 0 to cxGridDBTableView5.DataController.GetSelectedCount - 1 do
    begin
      if not cxGridDBTableView5.Controller.SelectedRecords[i].IsData then
              Continue;
            cxGridDBTableView5.DataController.ChangeFocusedRecordIndex(cxGridDBTableView5.Controller.SelectedRecords[i].RecordIndex);


      if Venda_Produto.FieldByName('QUANTFATURADA').AsFloat = Venda_Produto.FieldByName('QUANT').AsFloat then
      begin
        ShowMessage('Esse produto: ' + Venda_Produto.FieldByName('DESCRICAO').AsString + ' atingiu a quantidade contratada, e não pode ser mais faturado');
        exit;
      end;

      if (I + 1) < cxGridDBTableView5.DataController.GetSelectedCount then
        Virgula := ','
      else
        Virgula := '';

      Lista := Lista + IntToStr(Venda_Produto.FieldByName('CODIGO').AsInteger) + Virgula;
    end;

    FDQuery1.Close;
    FDQuery1.SQL.Add(' and vp.codigo in '+ '(' + Lista + ')');
    FDQuery1.ParamByName('CODIGO').AsString := Cadastro.FieldByName('CODVENDA').AsString;
    FDQuery1.Open;

    FDQuery1.First;
    while not FDQuery1.Eof do
    begin
      if Venda_Produto.Locate('CODIGO',FDQuery1.FieldByName('CODIGO').AsInteger,[]) then
      begin
        FDQuery1.Edit;
        FDQuery1.FieldByName('QUANTSELECIONADA').AsFloat := Venda_Produto.FieldByName('QUANT').AsFloat - Venda_Produto.FieldByName('QUANTFATURADA').AsFloat;

        if FDQuery1.FieldByName('QUANTSELECIONADA').AsFloat < 0 then
          FDQuery1.FieldByName('QUANTSELECIONADA').AsFloat := 0;

       // FDQuery1.FieldByName('QUANTFATURADA').AsFloat := Venda_Produto.FieldByName('QUANTFATURADA').AsFloat;
        FDQuery1.Post;
        FDQuery1.Next;
      end;

    end;
    ShowPanelForm(Panel1, bsSingle);
  finally

  end;

end;

procedure TFrmProjeto.FinanceiroCalcFields(DataSet: TDataSet);
begin
  inherited;
  if MatchStr(Financeiro.FieldByName('TIPO').AsString, ['A RECEBER','RECEBIDA']) then
    Financeiro.FieldByName('Credito').AsCurrency := Financeiro.FieldByName('TOTAL').AsCurrency
  else
    Financeiro.FieldByName('Debito').AsCurrency  := Financeiro.FieldByName('TOTAL').AsCurrency;
end;

procedure TFrmProjeto.lblDespesasClick(Sender: TObject);
begin
  inherited;
  GrupoDespesas.MakeVisible;
end;

procedure TFrmProjeto.WREventosCadastroConfiguracao_Acoes(Sender: TObject);
begin
  inherited;
//  Aberto
// cbxSituacao
end;

initialization
  RegisterClass(TFrmProjeto);
  RegisterFrameCad(Tag_Producao_Projeto, TFrmProjeto);
end.
