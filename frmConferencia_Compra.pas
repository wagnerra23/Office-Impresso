unit frmConferencia_Compra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxLayoutContainer, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxLayoutControl,
  cxGridBandedTableView, cxGridDBBandedTableView, dxCustomTileControl,
  dxTileControl, cxCurrencyEdit, cxLabel, System.ImageList, Vcl.ImgList,
  cxImageList;

type
  TFormConferencia_Compra = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem1: TdxLayoutItem;
    NF_Produtos_Conferencia: TFDQuery;
    DSNF_ENTRADA_PRODUTOS: TDataSource;
    NF_Produtos_ConferenciaCODPRODUTO: TStringField;
    NF_Produtos_ConferenciaCODFABRICA: TStringField;
    NF_Produtos_ConferenciaNF_DESCRICAO: TStringField;
    NF_Produtos_ConferenciaUNIDADE: TStringField;
    NF_Produtos_ConferenciaUN_SUBUNIDADE_DESCRICAO: TStringField;
    NF_Produtos_ConferenciaCUSTO: TFloatField;
    NF_Produtos_ConferenciaVALOR: TFloatField;
    NF_Produtos_ConferenciaCODPRODUTO_LOCAL: TStringField;
    NF_Produtos_ConferenciaCODFABRICA_LOCAL: TStringField;
    NF_Produtos_ConferenciaDESCRICAO_LOCAL: TStringField;
    NF_Produtos_ConferenciaUNIDADE_LOCAL: TStringField;
    NF_Produtos_ConferenciaUN_PADRAO_COMPRA: TStringField;
    NF_Produtos_ConferenciaCUSTO_LOCAL: TFloatField;
    NF_Produtos_ConferenciaVALOR_LOCAL: TFloatField;
    NF_Produtos_ConferenciaCODUSUARIO_AUTORIZOU: TIntegerField;
    NF_Produtos_ConferenciaUSUARIO: TStringField;
    cxGrid1DBTableView1CODPRODUTO: TcxGridDBColumn;
    cxGrid1DBTableView1CODFABRICA: TcxGridDBColumn;
    cxGrid1DBTableView1NF_DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1UNIDADE: TcxGridDBColumn;
    cxGrid1DBTableView1UN_SUBUNIDADE_DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1CUSTO: TcxGridDBColumn;
    cxGrid1DBTableView1VALOR: TcxGridDBColumn;
    cxGrid1DBTableView1CODPRODUTO_LOCAL: TcxGridDBColumn;
    cxGrid1DBTableView1CODFABRICA_LOCAL: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRICAO_LOCAL: TcxGridDBColumn;
    cxGrid1DBTableView1UNIDADE_LOCAL: TcxGridDBColumn;
    cxGrid1DBTableView1UN_PADRAO_COMPRA: TcxGridDBColumn;
    cxGrid1DBTableView1CUSTO_LOCAL: TcxGridDBColumn;
    cxGrid1DBTableView1VALOR_LOCAL: TcxGridDBColumn;
    cxGrid1DBTableView1CODUSUARIO_AUTORIZOU: TcxGridDBColumn;
    cxGrid1DBTableView1USUARIO: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1CODPRODUTO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CODFABRICA: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1NF_DESCRICAO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1UNIDADE: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1UN_SUBUNIDADE_DESCRICAO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CUSTO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1VALOR: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CODPRODUTO_LOCAL: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CODFABRICA_LOCAL: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DESCRICAO_LOCAL: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1UNIDADE_LOCAL: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1UN_PADRAO_COMPRA: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CUSTO_LOCAL: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1VALOR_LOCAL: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CODUSUARIO_AUTORIZOU: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1USUARIO: TcxGridDBBandedColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    dxTileControl1: TdxTileControl;
    dxLayoutItem2: TdxLayoutItem;
    dxTileControl1Group1: TdxTileControlGroup;
    dxTileControl1Item1: TdxTileControlItem;
    dxTileControl1Group2: TdxTileControlGroup;
    dxTileControl1Group3: TdxTileControlGroup;
    dxTileControl1Item2: TdxTileControlItem;
    dxTileControl1Item3: TdxTileControlItem;
    NF_Produtos_ConferenciaQUANT: TFloatField;
    NF_Produtos_ConferenciaESTOQUE: TFloatField;
    cxGrid1DBBandedTableView1QUANT: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1ESTOQUE: TcxGridDBBandedColumn;
    cxImageList1: TcxImageList;
    procedure dxTileControl1Item3Click(Sender: TdxTileControlItem);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure dxTileControl1Item2Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item1Click(Sender: TdxTileControlItem);
  private
    { Private declarations }
  public
    class function Abrir(ASender: TWinControl; ACodCompra: String; var ACodUsuarioAutorizou: Integer): Boolean; static;
    { Public declarations }
  end;

var
  FormConferencia_Compra: TFormConferencia_Compra;
  FCodUsuarioAutorizou: Integer;

implementation

{$R *.dfm}

uses
  wrfuncoes, unitfuncoes, dxSpreadSheetConditionalFormatting, dxSpreadSheetConditionalFormattingRules;

class function TFormConferencia_Compra.Abrir(ASender: TWinControl; ACodCompra: String; var ACodUsuarioAutorizou: Integer): Boolean;
var
  AFormConferenciaCompra: TFormConferencia_Compra;
  APodeAlterar: Boolean;
begin
  AFormConferenciaCompra:= TFormConferencia_Compra.Create(ASender.Owner);
  try
    AFormConferenciaCompra.PopupMode := pmAuto;
//    PosicionarControleAbaixoDe(AFormConferenciaCompra, ASender);
    AFormConferenciaCompra.NF_Produtos_Conferencia.Close;
    AFormConferenciaCompra.NF_Produtos_Conferencia.ParamByName('Codigo').Value := ACodCompra;
    AFormConferenciaCompra.NF_Produtos_Conferencia.ParamByName('Codempresa').Value := StrCodigoToCodEmpresa(ACodCompra);
    AFormConferenciaCompra.NF_Produtos_Conferencia.Open;
    AFormConferenciaCompra.ShowModal;
    if FCodUsuarioAutorizou = null then
    begin
      result := false;
    end else
    begin
      result := true;
      ACodUsuarioAutorizou := FCodUsuarioAutorizou;
    end;
  finally
    AFormConferenciaCompra.Free;
  end;
end;

procedure TFormConferencia_Compra.cxGrid1DBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  ARecord: TcxCustomGridRecord;
  AValue, AValue2 : Variant;
  valorcompra, valor: Double;
  valorEstoque: Double;
  AText: string;
  ARect: TRect;

  procedure StyleAssignToCanvas(AStyle: TcxStyle);
  begin
    ACanvas.Font.Assign(AStyle.Font);
    ACanvas.Font.Color := AStyle.TextColor;
//    ACanvas.Font.Height := AViewInfo.ScaleFactor.Apply(ACanvas.Font.Height, dxGetScaleFactor(AStyle.StyleRepository));
  end;

begin
  if AViewInfo.Item.Index = cxGrid1DBBandedTableView1CODFABRICA.Index  then
  begin
    AValue := AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1CODFABRICA.Index];
    AValue2 := AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1CODFABRICA_LOCAL.Index];
    if not VarIsNull(AValue) then
    begin
      if AValue <> AValue2 then
        ACanvas.Brush.Color := clRed;
      if AValue = AValue2 then
        ACanvas.Brush.Color := clWhite;
      if AValue2 = null then
        ACanvas.Brush.Color := clYellow;
    end;
  end;

  if AViewInfo.Item.Index = cxGrid1DBBandedTableView1VALOR.Index then // Verifique se é a coluna desejada
  begin
    AValue := AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1VALOR.Index];
    AValue2 := AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1VALOR_LOCAL.Index];
    if AValue2 > 0 then
    begin
      if AValue > AValue2 then
      begin
        AText := AViewInfo.Text;
        ACanvas.FillRect(AViewInfo.Bounds);
        ARect := AViewInfo.ContentBounds;
        ACanvas.Font.Color := clRed;
        ACanvas.Brush.Style := bsClear;
        ACanvas.TextOut(ARect.Left + 20, ARect.Top, '▲');
        ACanvas.TextOut(ARect.Left + 40, ARect.Top, AText);
        ADone := True;
      end;
      if AValue2 > AValue then
      begin
        AText := AViewInfo.Text;
        ACanvas.FillRect(AViewInfo.Bounds);
        ARect := AViewInfo.ContentBounds;
        ACanvas.Font.Color := clGreen;
        ACanvas.Brush.Style := bsClear;
        ACanvas.TextOut(ARect.Left + 20, ARect.Top, '▼');
        ACanvas.TextOut(ARect.Left + 40, ARect.Top, AText);
        ADone := True;
      end;
    end;
  end;

  if AViewInfo.Item.Index = cxGrid1DBBandedTableView1CUSTO.Index then
  begin
    AValue := AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1CUSTO.Index];
    AValue2 := AViewInfo.GridRecord.Values[cxGrid1DBBandedTableView1CUSTO_LOCAL.Index];
    if AValue2 > 0 then
    begin
      if AValue > AValue2 then
      begin
        AText := AViewInfo.Text;
        ACanvas.FillRect(AViewInfo.Bounds);
        ARect := AViewInfo.ContentBounds;
        ACanvas.Font.Color := clRed;
        ACanvas.Brush.Style := bsClear;
        ACanvas.TextOut(ARect.Left + 20, ARect.Top, '▲');
        ACanvas.TextOut(ARect.Left + 40, ARect.Top, AText);
        ADone := True;
      end;
      if AValue2 > AValue then
      begin
        AText := AViewInfo.Text;
        ACanvas.FillRect(AViewInfo.Bounds);
        ARect := AViewInfo.ContentBounds;
        ACanvas.Font.Color := clGreen;
        ACanvas.Brush.Style := bsClear;
        ACanvas.TextOut(ARect.Left + 20, ARect.Top, '▼');
        ACanvas.TextOut(ARect.Left + 40, ARect.Top, AText);
        ADone := True;
      end;
    end;
  end;
end;

procedure TFormConferencia_Compra.dxTileControl1Item1Click(
  Sender: TdxTileControlItem);
begin
  ModalResult := mrCancel;
end;

procedure TFormConferencia_Compra.dxTileControl1Item2Click(
  Sender: TdxTileControlItem);
var
  ACodUsuarioQueAutorizou :integer;
begin
  if SolicitaPermissao('ActPermissaoVerCustos', ACodUsuarioQueAutorizou) then
  begin
    FCodUsuarioAutorizou := ACodUsuarioQueAutorizou;
    ModalResult := mrok;
  end;
end;

procedure TFormConferencia_Compra.dxTileControl1Item3Click(
  Sender: TdxTileControlItem);
begin
  cxGrid1DBBandedTableView1.ConditionalFormatting.ShowRulesManagerDialog;
end;

end.
