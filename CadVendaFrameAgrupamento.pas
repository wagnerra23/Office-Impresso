unit CadVendaFrameAgrupamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Data.DB, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinscxPCPainter, dxLayoutContainer, dxLayoutControl, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxLayoutLookAndFeels, dxLayoutControlAdapters, Vcl.ExtCtrls,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxDateRanges, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FrFrameMestre, Vcl.Menus, UCBase, System.ImageList,
  Vcl.ImgList, Vcl.StdCtrls, uWRFrameEventos, uWRFormataCamposDataSet, cxButtons,
  dxScrollbarAnnotations, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TFrmVendaFrameAgrupamento = class(TFrmFrameMestre)
    GridVendasAgrupadasDBTableView1: TcxGridDBTableView;
    GridVendasAgrupadasLevel1: TcxGridLevel;
    GridVendasAgrupadas: TcxGrid;
    dxLayoutControl1Item1: TdxLayoutItem;
    GridVendasAgrupadasDBTableView1CODIGO: TcxGridDBColumn;
    GridVendasAgrupadasDBTableView1DT_EMISSAO: TcxGridDBColumn;
    GridVendasAgrupadasDBTableView1RAZAOSOCIAL: TcxGridDBColumn;
    GridVendasAgrupadasDBTableView1NOTAFISCAL: TcxGridDBColumn;
    GridVendasAgrupadasDBTableView1DT_FATURAMENTO: TcxGridDBColumn;
    GridVendasAgrupadasDBTableView1SUB_TOTAL: TcxGridDBColumn;
    GridVendasAgrupadasDBTableView1TOTAL: TcxGridDBColumn;
    GridVendasAgrupadasDBTableView1SEQUENCIA: TcxGridDBColumn;
    GridVendasAgrupadasDBTableView1STATUS: TcxGridDBColumn;
    GridVendasAgrupadasDBTableView1VOUTRO: TcxGridDBColumn;
    GridVendasAgrupadasDBTableView1VDESC: TcxGridDBColumn;
    Agrupamento_Venda: TFDQuery;
    DSAgrupamento_Venda: TDataSource;
    GridVendasAgrupadasDBTableView1VENDA_TIPO: TcxGridDBColumn;
    GridVendasAgrupadasDBTableView1SITUACAO: TcxGridDBColumn;
    GridVendasAgrupadasDBTableView1VENDA_TIPO_MODELO: TcxGridDBColumn;
    procedure GridVendasAgrupadasDBTableView1DblClick(Sender: TObject);
    procedure wrFrameEventosInicializar(Sender: TObject);
    procedure WRFormataCamposDataSetsCarregaDataSets(Sender: TObject);
  end;

implementation

{$R *.dfm}

uses
  UnitFuncoes, Principal, wrForms, Base_Venda, Base, Tag.Form;

procedure TFrmVendaFrameAgrupamento.GridVendasAgrupadasDBTableView1DblClick(Sender: TObject);
begin
  if not Agrupamento_Venda.IsEmpty then
//    CadastroMidChildChave(TFormClass(GetClass('TFrmVenda')), Agrupamento_Venda.FieldByName('CODIGO').Value);
  TFrmVenda_Base.Create(Nil).ShowCadastroItem(Tag_Venda, Agrupamento_Venda.FieldByName('CODIGO').Value);
end;

procedure TFrmVendaFrameAgrupamento.WRFormataCamposDataSetsCarregaDataSets(Sender: TObject);
begin
  inherited;
  WRFormataCamposDataSets.AdicionarDataSet(Agrupamento_Venda, 'AGRUPAMENTO_VENDA');
end;

procedure TFrmVendaFrameAgrupamento.wrFrameEventosInicializar(Sender: TObject);
var
  QuerX :TFDQuery;
  AStatus: String;
begin

  inherited;
  //AQUI VAI OCORRER UM INTERCEPITACAO, O SQL ORIGINAL É BEM ESPECIFICO PARA VARIAS SITUAÇÕES, EM SITUAÇÕES PARCIAIS O SQL PODE SER MAIS SIMPLES
  Agrupamento_Venda.Transaction := TFDQuery(DS.DataSet).Transaction;
  if TFDQuery(DS.DataSet).FieldByName('IS_PARCIAL').AsString = 'S' then //SÓ OCORRE QUANDO É MARCADO COMO PARCIAL (FATURA PARCIAL NO CONVENDA_MESTRE, FATURAR NO CADVENDA_VENDA)
  begin
    if pos('PRINCIPAL', TFDQuery(DS.DataSet).FieldByName('STATUS').AsString) <> 0 then
      AStatus := 'ATIVO PARCIAL';
    if pos('PARCIAL', TFDQuery(DS.DataSet).FieldByName('STATUS').AsString) <> 0 then
      AStatus := 'ATIVO PRINCIPAL';


    Agrupamento_Venda.sql.text := 'select V.CODIGO, V.SEQUENCIA, V.DT_EMISSAO, V.RAZAOSOCIAL, V.NOTAFISCAL,' + #13#10 +
                                  'V.DT_FATURAMENTO, V.SUB_TOTAL, V.TOTAL, V.STATUS, V.VOUTRO, V.VDESC, V.VENDA_TIPO, V.SITUACAO' + #13#10 +
                                  'from venda v where v.codvenda_vinculada = :CODVENDA_VINCULADA and v.status in ('+ QuotedStr(AStatus)+')';
    Agrupamento_Venda.MasterFields := 'CODVENDA_VINCULADA';
  end;
  Agrupamento_Venda.Open;
end;

end.
