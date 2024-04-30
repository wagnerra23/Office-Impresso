unit Frame_ConFinanceiro_Centro_Custo_Mestre;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges, Data.DB, cxDBData, cxCalendar, cxLabel, cxCheckBox,
  dxLayoutcxEditAdapters, dxLayoutContainer, dxLayoutControlAdapters, Vcl.ComCtrls, dxCore, cxDateUtils, cxSchedulerStorage, cxSchedulerCustomControls,
  cxSchedulerDateNavigator, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, dxScreenTip, uWRFormataCamposDataSet, FireDAC.Comp.Client,
  cxCustomStatusKeeper, cxStatusKeeper, UCHistDataset, System.Generics.Collections, WREventos, frxClass, frxDBSet, System.ImageList, Vcl.ImgList, cxImageList,
  System.Actions, Vcl.ActnList, dxCustomHint, cxHint, Vcl.ExtCtrls, dxLayoutLookAndFeels, FireDAC.Comp.DataSet, dxPSCore, dxPScxCommon, cxClasses,
  cxDateNavigator, cxDateProfileButton, cxDropDownEdit, cxCurrencyEdit, cxCustomListBox, cxCheckListBox, cxButtonEdit, dxCustomTileControl, dxTileControl,
  cxMaskEdit, uButtonFlat, cxGridViewLayoutContainer, cxGridLayoutView, cxGridDBLayoutView, cxGridLevel, cxGridCustomLayoutView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, dxLayoutControl, Vcl.StdCtrls, cxButtons, cxTextEdit, cxMemo, Frame_ConFinanceiro_Mestre,
  dxScrollbarAnnotations, DataModuleImpressao, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, cxGroupBox, cxCheckGroup;

type
  TFrame_ConsuFinanceiro_Centro_Custo_Mestre = class(TFrame_ConsuFinanceiro_Mestre)
    GridConsultaDBTableView1CODCENTRO_CUSTO: TcxGridDBColumn;
    GridConsultaDBTableView1CENTRO_CUSTO: TcxGridDBColumn;
    GridConsultaDBTableView1PERCENTUAL: TcxGridDBColumn;
    ConsultaValor_Rateado: TCurrencyField;
    GridConsultaDBTableView1Valor_Rateado: TcxGridDBColumn;
    ConsultaCODCENTRO_CUSTO: TIntegerField;
    ConsultaPERCENTUAL: TFloatField;
    GridConsultaDBTableView1Indireto_Credito: TcxGridDBColumn;
    GridConsultaDBTableView1Indireto_Debito: TcxGridDBColumn;
    GridConsultaDBTableView1Direto_Credito: TcxGridDBColumn;
    GridConsultaDBTableView1Direto_Debito: TcxGridDBColumn;
    ConsultaIndireto_Debito: TFloatField;
    ConsultaIndireto_Credito: TFloatField;
    AbrirPedido1: TMenuItem;
    GridConsultaDBTableView1CENTRO_CUSTO_NIVEL1: TcxGridDBColumn;
    GridConsultaDBTableView1CENTRO_CUSTO_NIVEL2: TcxGridDBColumn;
    GridConsultaDBTableView1CENTRO_CUSTO_NIVEL3: TcxGridDBColumn;
    GridConsultaDBTableView1CENTRO_CUSTO_NIVEL4: TcxGridDBColumn;
    GridConsultaDBTableView1CENTRO_CUSTO_NIVEL5: TcxGridDBColumn;
    GridConsultaDBTableView1CENTRO_CUSTO_NIVEL6: TcxGridDBColumn;
    procedure ConsultaCalcFields(DataSet: TDataSet);
    procedure GridConsultaDBTableView1DataControllerSummaryAfterSummary(
      ASender: TcxDataSummary);
    procedure GridConsultaDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure WREventosCadastroImpressaoBeforePrint(Sender: TObject;
      var APermiteImprimir: Boolean);
    procedure FrameEnter(Sender: TObject);
    procedure tcTopoBtnItem1Click(Sender: TdxTileControlItem);
    procedure AbrirPedido1Click(Sender: TObject);
    procedure ConsultaBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frame_ConsuFinanceiro_Centro_Custo_Mestre: TFrame_ConsuFinanceiro_Centro_Custo_Mestre;

implementation

{$R *.dfm}

Uses Base, UnitFuncoes, FrmCentroCustos, StrUtils, wrFuncoes, wrForms, Aguarde,
  CadCentro_Custo, Rotinas;

procedure TFrame_ConsuFinanceiro_Centro_Custo_Mestre.AbrirPedido1Click(
  Sender: TObject);
begin
  inherited;
  if ds.DataSet.FieldByName('CODPEDIDO').AsString <> '' then
    ProcuraPedido(ds.DataSet.FieldByName('CODPEDIDO').AsString { ,DS.DataSet.FieldByName('CODPEDIDO').AsString } );
end;

procedure TFrame_ConsuFinanceiro_Centro_Custo_Mestre.ConsultaBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
//
end;

procedure TFrame_ConsuFinanceiro_Centro_Custo_Mestre.ConsultaCalcFields(DataSet: TDataSet);
begin
  inherited;
  // Aqui deve multiplicar o total * o percentual de custo
   Consulta.FieldByName('Valor_Rateado').AsFloat := ((Consulta.FieldByName('VALOR').AsFloat + Consulta.FieldByName('JUROS').AsFloat - Consulta.FieldByName('DESCONTO').AsFloat) * Perc(Consulta.FieldByName('PERCENTUAL').AsFloat));

  if MatchStr(Consulta.FieldByName('TIPO').AsString, ['A RECEBER','RECEBIDA']) then
    Consulta.FieldByName('Credito').AsCurrency := Consulta.FieldByName('Valor_Rateado').AsCurrency
  else
    Consulta.FieldByName('Debito').AsCurrency  := Consulta.FieldByName('Valor_Rateado').AsCurrency;
end;


procedure TFrame_ConsuFinanceiro_Centro_Custo_Mestre.FrameEnter(Sender: TObject);
begin
  inherited;
  DMImpressao.CarregaMenuFrame(PopupMenu_Imprimir.Items, Self);
  GridConsultaDBTableView1CENTRO_CUSTO.GroupIndex := 0;
end;

procedure TFrame_ConsuFinanceiro_Centro_Custo_Mestre.GridConsultaDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  ACanvas.Font.Color := $00484848;
  // Default
  if AViewInfo.Focused or AViewInfo.Selected then
    ACanvas.Brush.Color := clGradientInactiveCaption // Vermelho mais escurinho
  else
    ACanvas.Brush.Color := $00F8EFEF; // Padrão


  if AViewInfo.Item.Index = GridConsultaDBTableView1Valor_Rateado.Index then
  begin
    try
      if (VarAsType(AViewInfo.GridRecord.DisplayTexts[GridConsultaDBTableView1TIPO.Index], varString) = 'RECEBIDA')
         or (VarAsType(AViewInfo.GridRecord.DisplayTexts[GridConsultaDBTableView1TIPO.Index], varString) = 'A RECEBER')
      then
        ACanvas.Font.Color := clGreen
      else
        ACanvas.Font.Color := clRed;

      if (trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[GridConsultaDBTableView1CODCENTRO_CUSTO.Index], varString)) = '')
      then
        ACanvas.Font.Color := 4737096;
    except

    end;
    ACanvas.Font.Style := [fsBold];
  end;

//  if (trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[GridConsultaDBTableView1TIPO.Index], varString)) = 'RECEBIDA') and
//     (trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[GridConsultaDBTableView1CENTRO_CUSTO.Index], varString)) <> '')
//  then
//  begin
//    if (VarAsType(AViewInfo.GridRecord.DisplayTexts[GridConsultaDBTableView1QUANT_ATUAL.Index], varDouble) < 0) then
//      ACanvas.Brush.Color := $00A6FE9E //$00A9FEA5 // verde
//    else
//      ACanvas.Brush.Color := $00C8FFC4; //verde
//  end
//  else
//  if (trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[GridConsultaDBTableView1TIPO.Index], varString)) = 'PAGA') and
//     (trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[GridConsultaDBTableView1CENTRO_CUSTO.Index], varString)) <> '')
//  then
//  begin
//    if AViewInfo.Focused or AViewInfo.Selected then
//      ACanvas.Brush.Color := $009EA8FC // Vermelho mais escurinho
//    else
//      ACanvas.Brush.Color := $00BBB9FF ; // Vermelho
//  end
//  else
//  if (trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[GridConsultaDBTableView1CENTRO_CUSTO.Index], varString)) = '')
//  then
//  begin
//    if AViewInfo.Focused or AViewInfo.Selected then
//      ACanvas.Brush.Color := $0098FCFA //$0079FBF8 //amarelo
//    else
//      ACanvas.Brush.Color := $0098FCFA//$00B9F8FF; //amarelo
//  end

end;

procedure TFrame_ConsuFinanceiro_Centro_Custo_Mestre.GridConsultaDBTableView1DataControllerSummaryAfterSummary(
  ASender: TcxDataSummary);
begin
//  inherited;
  edtCredito.Value := SomaColuna(GridConsultaDBTableView1, GridConsultaDBTableView1Direto_Credito);
  edtDebito.Value := SomaColuna(GridConsultaDBTableView1, GridConsultaDBTableView1Direto_Debito);
//  edtIndireto_Credito.Value := SomaColuna(GridConsultaDBTableView1, GridConsultaDBTableView1Indireto_Credito);
//  edtIndireto_Debito.Value := SomaColuna(GridConsultaDBTableView1, GridConsultaDBTableView1Indireto_Debito);

//  EdtTotal.Value := edtCredito.Value - edtDebito.Value + edtIndireto_Credito.Value - edtIndireto_Debito.Value;
end;

procedure TFrame_ConsuFinanceiro_Centro_Custo_Mestre.tcTopoBtnItem1Click(
  Sender: TdxTileControlItem);
begin
//  inherited;
end;

procedure TFrame_ConsuFinanceiro_Centro_Custo_Mestre.WREventosCadastroImpressaoBeforePrint(
  Sender: TObject; var APermiteImprimir: Boolean);
begin
  inherited;
  APermiteImprimir := True;
end;

end.
