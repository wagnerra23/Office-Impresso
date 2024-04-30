unit Frame_CadVenda_PDV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Frame_CadVenda_Mestre, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxContainer, cxEdit,
  dxLayoutControlAdapters, dxLayoutcxEditAdapters, dxLayoutContainer, dxCore, dxCoreClasses, dxHashUtils, dxSpreadSheetCore, dxSpreadSheetCoreFormulas,
  dxSpreadSheetCoreHistory, dxSpreadSheetCoreStyles, dxSpreadSheetCoreStrs, dxSpreadSheetConditionalFormatting, dxSpreadSheetConditionalFormattingRules,
  dxSpreadSheetClasses, dxSpreadSheetContainers, dxSpreadSheetFormulas, dxSpreadSheetHyperlinks, dxSpreadSheetFunctions, dxSpreadSheetStyles,
  dxSpreadSheetGraphics, dxSpreadSheetPrinting, dxSpreadSheetTypes, dxSpreadSheetUtils, dxBarBuiltInMenu, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, dxDateRanges, Data.DB, cxDBData, cxCalendar, cxLabel, cxDropDownEdit, cxTL, cxImageComboBox, cxMaskEdit, cxButtonEdit, cxTextEdit,
  cxCurrencyEdit, cxTLdxBarBuiltInMenu, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, uWRNotaFiscal, uWRCalculaConfiguracoes, cxImageList, System.Actions, Vcl.ActnList, UCHist_WRGeral,
  uWRFormataCamposDataSet, frxClass, frxDBSet, UCHistDataset, FireDAC.Comp.Client, FireDAC.Comp.DataSet, System.Generics.Collections, WREventos, UCBase,
  cxClasses, dxLayoutLookAndFeels, System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, dxCustomTileControl, dxTileControl, dxStatusBar, dxSpreadSheetFormulaBar,
  cxInplaceContainer, cxDBTL, cxTLData, cxDBLabel, cxCheckBox, cxDBEdit, cxSpinEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMemo, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, dxSpreadSheet, Vcl.StdCtrls, cxButtons, dxLayoutControl,
  dxSpreadSheetFormattedTextUtils, cxGridCardView, cxGridDBCardView,
  cxGridCustomLayoutView, cxImage, cxGridViewLayoutContainer, cxGridLayoutView,
  cxGridDBLayoutView, dxUIAdorners, dxSkinsCore, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxScrollbarAnnotations;

type
  TFrame_Venda_PDV = class(TFrame_Venda_Mestre)
    ConfigurarPDV1: TMenuItem;
    procedure ConfigurarPDV1Click(Sender: TObject);
    procedure btnConfirmarClick(Sender: TdxTileControlItem);
  private
    function VerificaOperadorDeCaixa(CodUsuario: Integer): Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frame_Venda_PDV: TFrame_Venda_PDV;

implementation

{$R *.dfm}

Uses Base, wrFuncoes, UnitFuncoes, PDV_Pagamento, Tag.APP, Tag.Form;

procedure TFrame_Venda_PDV.btnConfirmarClick(Sender: TdxTileControlItem);
begin
  inherited;
//
end;

procedure TFrame_Venda_PDV.ConfigurarPDV1Click(Sender: TObject);
var
  ACodConta: Integer;
begin
  inherited;
  ACodConta := VerificaOperadorDeCaixa(Usuario.Codigo);
  TFrmPDV_Pagamento.AbrirConfiguracao(FFrmPDV_Pagamento, Self, ACodConta);
end;

function TFrame_Venda_PDV.VerificaOperadorDeCaixa(CodUsuario: Integer): Integer;
var
  QuerX :TFDQuery;
begin
  Result:= 0;
  QuerX  := GeraFDQuery;
  try
    QuerX.SQL.Text := 'SELECT first 1 DATA_ABERTURA, DATA_FECHAMENTO, CODIGO, CODCONTA from caixa ' +
                      'where (DATA_FECHAMENTO is null) and (codusuario = :CodUsuario) ' +
                      'ORDER BY DATA_ABERTURA DESC';
    QuerX.ParamByName('CodUsuario').AsInteger := CodUsuario;
    QuerX.Open;
    if QuerX.RecordCount > 0 then
      Result := QuerX.FieldByName('CODCONTA').AsInteger;

    //VERIFICAR MULTIPLOS CAIXAS


  finally
    QuerX.Free;
  end;
end;

initialization
  RegisterClass(TFrame_Venda_PDV);
  RegisterFrameCad(Tag_Venda_PDV, TFrame_Venda_PDV);
end.
