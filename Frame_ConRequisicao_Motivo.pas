unit Frame_ConRequisicao_Motivo;

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
  cxGrid, dxLayoutControl, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxScrollbarAnnotations;

type
  TConsuRequisicao_Motivo = class(TConsu_Frame)
    ConsultaCODIGO: TIntegerField;
    ConsultaDESCRICAO: TStringField;
    ConsultaDT_ALTERACAO: TSQLTimeStampField;
    ConsultaATIVO: TStringField;
    ConsultaCOR: TIntegerField;
    ConsultaTEM_OBSERVACAO: TStringField;
    ConsultaESTILO: TStringField;
    ConsultaFILA: TIntegerField;
    ConsultaICO: TIntegerField;
    ConsultaTIPO_MOVIMENTACAO: TStringField;
    ConsultaFORM: TStringField;
    GridConsultaDBTableView1CODIGO: TcxGridDBColumn;
    GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn;
    GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn;
    GridConsultaDBTableView1ATIVO: TcxGridDBColumn;
    GridConsultaDBTableView1COR: TcxGridDBColumn;
    GridConsultaDBTableView1TEM_OBSERVACAO: TcxGridDBColumn;
    GridConsultaDBTableView1ESTILO: TcxGridDBColumn;
    GridConsultaDBTableView1FILA: TcxGridDBColumn;
    GridConsultaDBTableView1ICO: TcxGridDBColumn;
    GridConsultaDBTableView1TIPO_MOVIMENTACAO: TcxGridDBColumn;
    tcFiltrosPanelItem1: TdxTileControlItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConsuRequisicao_Motivo: TConsuRequisicao_Motivo;

implementation

{$R *.dfm}

Uses UnitFuncoes, Base, Tag.Form;

initialization
  RegisterClass(TConsuRequisicao_Motivo);
  RegisterFrameCon(Tag_Estoque_Requisicao_Motivo, TConsuRequisicao_Motivo);

end.
