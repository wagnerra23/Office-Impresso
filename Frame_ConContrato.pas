unit Frame_ConContrato;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Frame_Con, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData, dxLayoutContainer, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, Vcl.Menus, cxContainer, cxLabel, Vcl.ComCtrls, dxCore, cxDateUtils, cxSchedulerStorage, cxSchedulerCustomControls,
  cxSchedulerDateNavigator, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, dxScreenTip, FireDAC.Comp.Client, cxCustomStatusKeeper, cxStatusKeeper,
  UCHistDataset, System.Generics.Collections, WREventos, frxClass, frxDBSet, System.ImageList, Vcl.ImgList, cxImageList, System.Actions, Vcl.ActnList,
  dxCustomHint, cxHint, Vcl.ExtCtrls, dxLayoutLookAndFeels, FireDAC.Comp.DataSet, dxPSCore, dxPScxCommon, cxClasses, cxDateNavigator, cxDateProfileButton,
  cxDropDownEdit, cxCalendar, cxButtonEdit, dxCustomTileControl, dxTileControl, cxTextEdit, cxMaskEdit, uButtonFlat, cxGridViewLayoutContainer,
  cxGridLayoutView, cxGridCustomTableView, cxGridDBLayoutView, Vcl.StdCtrls, cxButtons, cxGridLevel, cxGridCustomLayoutView, cxGridCustomView, cxGridTableView,
  cxGridDBTableView, cxGrid, dxLayoutControl, cxCurrencyEdit, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TFrameConContrato = class(TConsu_Frame)
    ConsultaCODIGO: TIntegerField;
    ConsultaDESCRICAO: TStringField;
    ConsultaPESSOA_CLIENTE_CODIGO: TStringField;
    ConsultaPESSOA_CLIENTE_TIPO: TStringField;
    ConsultaPESSOA_CLIENTE_SEQUENCIA: TIntegerField;
    ConsultaDT_INICIO: TSQLTimeStampField;
    ConsultaDT_FIM: TSQLTimeStampField;
    ConsultaDT_PROXIMA_FATURA: TSQLTimeStampField;
    ConsultaVALOR: TFloatField;
    ConsultaCODPLANOCONTAS: TStringField;
    ConsultaCODCONTA: TIntegerField;
    ConsultaCODCONTRATO_TIPO: TIntegerField;
    ConsultaOBSERVACAO: TMemoField;
    ConsultaATIVO: TStringField;
    ConsultaDT_ALTERACAO: TSQLTimeStampField;
    GridConsultaDBTableView1CODIGO: TcxGridDBColumn;
    GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn;
    GridConsultaDBTableView1PESSOA_CLIENTE_CODIGO: TcxGridDBColumn;
    GridConsultaDBTableView1PESSOA_CLIENTE_TIPO: TcxGridDBColumn;
    GridConsultaDBTableView1PESSOA_CLIENTE_SEQUENCIA: TcxGridDBColumn;
    GridConsultaDBTableView1DT_INICIO: TcxGridDBColumn;
    GridConsultaDBTableView1DT_FIM: TcxGridDBColumn;
    GridConsultaDBTableView1DT_PROXIMA_FATURA: TcxGridDBColumn;
    GridConsultaDBTableView1VALOR: TcxGridDBColumn;
    GridConsultaDBTableView1CODPLANOCONTAS: TcxGridDBColumn;
    GridConsultaDBTableView1CODCONTA: TcxGridDBColumn;
    GridConsultaDBTableView1OBSERVACAO: TcxGridDBColumn;
    GridConsultaDBTableView1ATIVO: TcxGridDBColumn;
    GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn;
    dxLayoutItem1: TdxLayoutItem;
    pnlTotal: TPanel;
    lc_Totais: TdxLayoutControl;
    edtCancelados: TcxCurrencyEdit;
    edtSuspensos: TcxCurrencyEdit;
    EdtTotal: TcxCurrencyEdit;
    lc_TotaisGroup_Root: TdxLayoutGroup;
    LiCredito: TdxLayoutItem;
    LiDebito: TdxLayoutItem;
    LiSaldo: TdxLayoutItem;
    ConsultaCancelados: TFloatField;
    GridConsultaDBTableView1TIPO: TcxGridDBColumn;
    GridConsultaDBTableView1STATUS: TcxGridDBColumn;
    GridConsultaDBTableView1Cancelados: TcxGridDBColumn;
    GridConsultaDBTableView1Ativados: TcxGridDBColumn;
    GridConsultaDBTableView1Supensos: TcxGridDBColumn;
    ConsultaSupensos: TFloatField;
    ConsultaTIPO: TStringField;
    ConsultaSTATUS: TStringField;
    ConsultaAtivados: TFloatField;
    ConsultaDT_ULTIMA_FATURA_GERADA: TSQLTimeStampField;
    GridConsultaDBTableView1DT_ULTIMA_FATURA_GERADA: TcxGridDBColumn;
    dxTileControl1Item1: TdxTileControlItem;
    dxTileControl1Item2: TdxTileControlItem;
    dxTileControl1Item3: TdxTileControlItem;
    dxTileControl1Item4: TdxTileControlItem;
    procedure ConsultaCalcFields(DataSet: TDataSet);
    procedure GridConsultaDBTableView1DataControllerSummaryAfterSummary(ASender: TcxDataSummary);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrameConContrato: TFrameConContrato;

implementation

{$R *.dfm}

Uses Base, StrUtils, wrFuncoes, Tag.Form;

procedure TFrameConContrato.ConsultaCalcFields(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName('TIPO').AsString = 'Supensos' then
    DataSet.FieldByName('Supensos').AsCurrency := DataSet.FieldByName('VALOR').AsCurrency
  else
  if DataSet.FieldByName('TIPO').AsString = 'Cancelados' then
    DataSet.FieldByName('Cancelados').AsCurrency  := DataSet.FieldByName('VALOR').AsCurrency
  else
    DataSet.FieldByName('Ativados').AsCurrency  := DataSet.FieldByName('VALOR').AsCurrency;
end;

procedure TFrameConContrato.GridConsultaDBTableView1DataControllerSummaryAfterSummary(ASender: TcxDataSummary);
begin
  inherited;
  edtCancelados.Value := SomaColuna(GridConsultaDBTableView1, GridConsultaDBTableView1Cancelados);
  edtSuspensos.Value  := SomaColuna(GridConsultaDBTableView1, GridConsultaDBTableView1Supensos);
  EdtTotal.Value      := SomaColuna(GridConsultaDBTableView1, GridConsultaDBTableView1Ativados);
end;

initialization
  RegisterFrameCon(Tag_Contrato, TFrameConContrato);

end.
