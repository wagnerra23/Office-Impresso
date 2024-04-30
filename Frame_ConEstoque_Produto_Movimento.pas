unit Frame_ConEstoque_Produto_Movimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData, Vcl.Menus, cxContainer, cxLabel, dxLayoutContainer,
  dxLayoutControlAdapters, dxLayoutcxEditAdapters, Vcl.ComCtrls, dxCore, cxDateUtils, cxSchedulerStorage, cxSchedulerCustomControls, cxSchedulerDateNavigator,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, dxScreenTip, FireDAC.Comp.Client, cxCustomStatusKeeper, cxStatusKeeper, UCHistDataset, System.Generics.Collections,
  WREventos, frxClass, frxDBSet, System.ImageList, Vcl.ImgList, cxImageList, System.Actions, Vcl.ActnList, dxCustomHint, cxHint, Vcl.ExtCtrls,
  dxLayoutLookAndFeels, FireDAC.Comp.DataSet, dxPSCore, dxPScxCommon, cxClasses, cxDateNavigator, cxDateProfileButton, cxDropDownEdit, cxCalendar, cxButtonEdit,
  dxCustomTileControl, dxTileControl, cxTextEdit, cxMaskEdit, uButtonFlat, cxGridViewLayoutContainer, cxGridLayoutView, cxGridCustomTableView,
  cxGridDBLayoutView, Vcl.StdCtrls, cxButtons, cxGridLevel, cxGridCustomLayoutView, cxGridCustomView, cxGridTableView, cxGridDBTableView, cxGrid,
  dxLayoutControl, cxDataControllerConditionalFormattingRulesManagerDialog, cxCurrencyEdit, dxSkinsCore, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxScrollbarAnnotations, Frame_ConEstoque_Mestre;

type
  TFrame_ConsuEstoque_Produto_Movimento = class(TFrame_ConsuEstoque_Mestre)
    ConsultaCODIGO: TIntegerField;
    ConsultaCODEMPRESA: TStringField;
    ConsultaDATA: TSQLTimeStampField;
    ConsultaCODPRODUTO: TStringField;
    ConsultaQUANT: TFloatField;
    ConsultaCODCOR: TIntegerField;
    ConsultaVALOR: TFloatField;
    ConsultaCUSTO_FABR: TFloatField;
    ConsultaCUSTO_VENDA_TOTAL: TFloatField;
    ConsultaVALOR_CADASTRO: TFloatField;
    ConsultaVALOR_PRAZO: TFloatField;
    ConsultaVEICULO_PLACA: TStringField;
    ConsultaVEICULO_CHASSI: TStringField;
    ConsultaVEICULO_MOTOR: TStringField;
    ConsultaVEICULO_RENAVAN: TStringField;
    ConsultaVEICULO_ANO_MODELO: TStringField;
    ConsultaVEICULO_CILINDRADA: TFloatField;
    ConsultaVEICULO_HP: TFloatField;
    ConsultaVEICULO_COMBUSTIVEL: TStringField;
    ConsultaVEICULO_KM: TStringField;
    ConsultaVEICULO_PASSAGEIROS: TFloatField;
    ConsultaTIPO_MOVIMENTO: TStringField;
    ConsultaOBSERVACAO: TStringField;
    ConsultaCODNF_ENTRADA: TStringField;
    ConsultaCODVENDA: TStringField;
    ConsultaATUALIZADO: TSQLTimeStampField;
    ConsultaSTATUS: TStringField;
    ConsultaDT_ALTERACAO: TSQLTimeStampField;
    ConsultaCODUSUARIO: TIntegerField;
    ConsultaFORM: TStringField;
    ConsultaPESSOA_FORNECEDOR_CODIGO: TStringField;
    ConsultaPESSOA_FORNECEDOR_TIPO: TStringField;
    ConsultaPESSOA_FORNECEDOR_SEQUENCIA: TIntegerField;
    ConsultaCODPRODUTO_LOTE: TIntegerField;
    ConsultaATIVO: TStringField;
    ConsultaCUSTO_COMPOSICAO: TFloatField;
    ConsultaVALOR_COMPOSICAO: TFloatField;
    ConsultaCUSTO_CENTRO_TRABALHO: TFloatField;
    ConsultaAJUSTE_SALDO: TStringField;
    ConsultaPRODUTO_ESTOQUE_LOCAL: TStringField;
    ConsultaTIPO_USO: TStringField;
    ConsultaQUANT_ANTIGA: TFloatField;
    ConsultaQUANT_ATUAL: TFloatField;
    ConsultaNATUREZA: TStringField;
    ConsultaPESSOA_FUNCIONARIO_CODIGO: TStringField;
    ConsultaDESCRICAO: TStringField;
    ConsultaUNIDADE: TStringField;
    ConsultaCOR: TStringField;
    ConsultaUSUARIO: TStringField;
    ConsultaPRODUTO_CATEGORIA: TStringField;
    ConsultaPRODUTO_GRUPO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frame_ConsuEstoque_Produto_Movimento: TFrame_ConsuEstoque_Produto_Movimento;

implementation

{$R *.dfm}

Uses Base, Tag.Form;

initialization
  RegisterClass(TFrame_ConsuEstoque_Produto_Movimento);
  RegisterFrameCon(Tag_Estoque_Produto_Movimento, TFrame_ConsuEstoque_Produto_Movimento);

end.
