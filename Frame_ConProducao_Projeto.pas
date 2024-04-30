unit Frame_ConProducao_Projeto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxLayoutControl,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData, cxContainer, Vcl.Menus, Vcl.ComCtrls,
  dxCore, cxDateUtils, dxLayoutContainer, dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, dxScreenTip, WREventos, System.ImageList, Vcl.ImgList, cxImageList, System.Actions, Vcl.ActnList,
  dxCustomHint, cxHint, Vcl.ExtCtrls, dxLayoutLookAndFeels, FireDAC.Comp.Client, FireDAC.Comp.DataSet, dxPSCore,
  dxPScxCommon, cxClasses, dxStatusBar, cxDateProfileButton, cxDropDownEdit, cxCalendar, Vcl.StdCtrls, cxButtons,
  cxLabel, cxTextEdit, cxMaskEdit, cxButtonEdit, cxGridLevel, cxGridCustomLayoutView, cxGridLayoutView,
  cxGridDBLayoutView, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  dxDateRanges, ConsM, dxRibbonCustomizationForm, dxRibbonSkins,
  dxOfficeSearchBox, dxBar, cxBarEditItem, System.Generics.Collections,
  frxClass, frxDBSet, dxGalleryControl, dxRibbonBackstageViewGalleryControl,
  dxRibbonBackstageView, dxRibbon, dxRibbonStatusBar, uButtonFlat,
  cxGridViewLayoutContainer, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxRangeTrackBar, cxTrackBar, cxSchedulerStorage, cxSchedulerCustomControls,
  cxSchedulerDateNavigator, cxDateNavigator, UCHistDataset,
  cxCustomStatusKeeper, cxStatusKeeper, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxScrollbarAnnotations, Frame_Con, dxCustomTileControl, dxTileControl;

type
  TFrame_ConsuPrucducao_Projeto = class(TConsu_Frame)
    dxLayoutItem1: TdxLayoutItem;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutItem2: TdxLayoutItem;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutItem3: TdxLayoutItem;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    ConsultaDT_ALTERACAO: TSQLTimeStampField;
    ConsultaDT_INICIO: TSQLTimeStampField;
    ConsultaDT_FIM: TSQLTimeStampField;
    ConsultaDT_EMISSAO: TSQLTimeStampField;
    ConsultaCODIGO: TIntegerField;
    ConsultaDESCRICAO: TStringField;
    ConsultaPESSOA_RESPONSAVEL_CODIGO: TStringField;
    ConsultaPESSOA_RESPONSAVEL_SEQUENCIA: TIntegerField;
    ConsultaPESSOA_RESPONSAVEL_TIPO: TStringField;
    ConsultaTOKEN_PROJETO_MARCADOR: TStringField;
    ConsultaSITUACAO: TStringField;
    ConsultaOBSERVACAO: TStringField;
    ConsultaATIVO: TStringField;
    ConsultaVALOR: TFloatField;
    ConsultaPCONCLUSAO: TIntegerField;
    ConsultaSTATUS: TStringField;
    ConsultaLABEL: TStringField;
    ConsultaRAZAOSOCIAL: TStringField;
    ConsultaCODVENDA: TStringField;
    GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn;
    GridConsultaDBTableView1DT_INICIO: TcxGridDBColumn;
    GridConsultaDBTableView1DT_FIM: TcxGridDBColumn;
    GridConsultaDBTableView1DT_EMISSAO: TcxGridDBColumn;
    GridConsultaDBTableView1CODIGO: TcxGridDBColumn;
    GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn;
    GridConsultaDBTableView1PESSOA_RESPONSAVEL_CODIGO: TcxGridDBColumn;
    GridConsultaDBTableView1PESSOA_RESPONSAVEL_SEQUENCIA: TcxGridDBColumn;
    GridConsultaDBTableView1PESSOA_RESPONSAVEL_TIPO: TcxGridDBColumn;
    GridConsultaDBTableView1TOKEN_PROJETO_MARCADOR: TcxGridDBColumn;
    GridConsultaDBTableView1SITUACAO: TcxGridDBColumn;
    GridConsultaDBTableView1OBSERVACAO: TcxGridDBColumn;
    GridConsultaDBTableView1ATIVO: TcxGridDBColumn;
    GridConsultaDBTableView1VALOR: TcxGridDBColumn;
    GridConsultaDBTableView1PCONCLUSAO: TcxGridDBColumn;
    GridConsultaDBTableView1STATUS: TcxGridDBColumn;
    GridConsultaDBTableView1LABEL: TcxGridDBColumn;
    GridConsultaDBTableView1RAZAOSOCIAL: TcxGridDBColumn;
    GridConsultaDBTableView1CODVENDA: TcxGridDBColumn;
    procedure GridConsultaDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

Uses Base, Tag.Form, DateUtils;

procedure TFrame_ConsuPrucducao_Projeto.GridConsultaDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  ARecord: TcxCustomGridRecord;
  AValue : Variant;
  ADataLimite, ADataAtual : TDateTime;
begin
  inherited;
  if AViewInfo.Item.Index = GridConsultaDBTableView1DT_FIM.Index then
  begin
    AValue := AViewInfo.GridRecord.Values[GridConsultaDBTableView1DT_FIM.Index];
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

initialization
  RegisterClass(TFrame_ConsuPrucducao_Projeto);
  RegisterFrameCon(Tag_Producao_Projeto, TFrame_ConsuPrucducao_Projeto);

end.
