unit Frame_ConDRE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Frame_Con, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  Data.DB, cxDBData, dxLayoutContainer, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, Vcl.Menus, cxContainer, cxLabel, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxSchedulerStorage, cxSchedulerCustomControls,
  cxSchedulerDateNavigator, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, dxScreenTip, cxClasses, dxBarBuiltInMenu,
  cxCustomPivotGrid, cxPivotGrid, FireDAC.Comp.Client, cxCustomStatusKeeper,
  cxStatusKeeper, UCHistDataset, System.Generics.Collections, WREventos,
  frxClass, frxDBSet, System.ImageList, Vcl.ImgList, cxImageList,
  System.Actions, Vcl.ActnList, dxCustomHint, cxHint, Vcl.ExtCtrls,
  dxLayoutLookAndFeels, FireDAC.Comp.DataSet, dxPSCore, dxPScxCommon,
  cxDateNavigator, cxDateProfileButton, cxDropDownEdit, cxCalendar,
  cxButtonEdit, dxCustomTileControl, dxTileControl, cxTextEdit, cxMaskEdit,
  uButtonFlat, cxGridViewLayoutContainer, cxGridLayoutView,
  cxGridCustomTableView, cxGridDBLayoutView, Vcl.StdCtrls, cxButtons,
  cxGridLevel, cxGridCustomLayoutView, cxGridCustomView, cxGridTableView,
  cxGridDBTableView, cxGrid, dxLayoutControl, cxDBPivotGrid, cxCurrencyEdit,
  dxmdaset, cxPivotGridCustomDataSet, cxPivotGridDrillDownDataSet;

type
  TConsuConDRE = class(TConsu_Frame)
    ConsultaMES: TStringField;
    ConsultaCODPLANOCONTAS: TStringField;
    ConsultaPLANOCONTAS: TStringField;
    ConsultaCODIGO: TIntegerField;
    ConsultaDRE: TStringField;
    ConsultaSOMA: TFloatField;
    cxDBPivotGrid1: TcxDBPivotGrid;
    cxDBPivotGrid1CODPLANOCONTAS: TcxDBPivotGridField;
    cxDBPivotGrid1PLANOCONTAS: TcxDBPivotGridField;
    cxDBPivotGrid1CODIGO: TcxDBPivotGridField;
    cxDBPivotGrid1DRE: TcxDBPivotGridField;
    cxDBPivotGrid1MES: TcxDBPivotGridField;
    cxDBPivotGrid1SOMA: TcxDBPivotGridField;
    cxDBPivotGrid1DT_COMPETENCIA: TcxDBPivotGridField;
    cxDBPivotGrid1ANO: TcxDBPivotGridField;
    cxDBPivotGrid1EXTRACT: TcxDBPivotGridField;
    ConsultaANO: TSmallintField;
    cxPivotGridDrillDownDataSet1: TcxPivotGridDrillDownDataSet;
    ConsultaCASE: TStringField;
    ConsultaEXTRACT: TIntegerField;
    procedure WREventosConsultaGetFiltrosConsulta(Sender: TObject);
    procedure WREventosConsultaSQLTrataNomes(Sender: TObject; var ASQL: string);
    procedure FrameEnter(Sender: TObject);
    procedure cxDBPivotGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConsuConDRE: TConsuConDRE;

implementation

{$R *.dfm}

uses
  Base, UnitFuncoes, StrUtils, wrConstantes, wrFuncoes, DateUtils, wrForms, Principal, Frame_ConFinanceiro_Financeiro, Tag.Form;

procedure TConsuConDRE.cxDBPivotGrid1DblClick(Sender: TObject);
var
  AConFrame :TConsu_Frame;
  AData : String;
  ADateTime: TDateTime;
begin
  inherited;
  ADateTime := RetornaData(cxPivotGridDrillDownDataSet1.fields[9].AsInteger,cxPivotGridDrillDownDataSet1.fields[8].AsInteger);

  AConFrame := Criar(Tag_Financeiro);

  TFrame_ConsuFinanceiro_Financeiro(AConFrame).cxCheckGroup1.States[0] := cbsChecked;// cxCheckListBox1.Items[0].Checked := True;
  TFrame_ConsuFinanceiro_Financeiro(AConFrame).cxCheckGroup1.States[1] := cbsChecked;
  TFrame_ConsuFinanceiro_Financeiro(AConFrame).cxCheckGroup1.States[2] := cbsChecked;
  TFrame_ConsuFinanceiro_Financeiro(AConFrame).cxCheckGroup1.States[3] := cbsChecked;
                                                                                                                //MESMO WHERE DA ROTINA AnalisaPlanoContasDREFinanceiro WRFUNCOES
  AConFrame.FPreFiltro :=  'F.CODPLANOCONTAS = ' + QuotedStr(cxPivotGridDrillDownDataSet1.fields[1].AsString) + ' and (F.STATUS like ''ATIVO%'') and not(F.STATUS = ''ATIVO*'')';

  AConFrame.SetData(StartOfTheMonth(ADateTime), EndOfTheMonth(ADateTime), 'Dt Competencia', '');

  AConFrame.Abrir;



end;

procedure TConsuConDRE.FrameEnter(Sender: TObject);
begin
  inherited;
  CbCamposData.Properties.Items.Clear;
  CbCamposData.Properties.Items.Add(FormataNomeCampo('DT_COMPETENCIA'));
  CbCamposData.ItemIndex := 0;
end;

procedure TConsuConDRE.WREventosConsultaGetFiltrosConsulta(Sender: TObject);
begin
  inherited;
  SQLWhere.Add(' group by 1, 2, 3, 4, 5, 6, 7, 8, 9 order by 1');
end;

procedure TConsuConDRE.WREventosConsultaSQLTrataNomes(Sender: TObject;
  var ASQL: string);
begin
  inherited;
  if ASQL = 'ATIVO' then
    ASQL := 'P.ATIVO';
end;

initialization
  RegisterClass(TConsuConDRE);
  RegisterFrameCon(Tag_ConDRE, TConsuConDRE);

end.
