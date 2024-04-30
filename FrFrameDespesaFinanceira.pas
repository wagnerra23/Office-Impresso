unit FrFrameDespesaFinanceira;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FrFrameMestre, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutContainer, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, uWRFormataCamposDataSet, uWRFrameEventos, cxClasses,
  dxLayoutLookAndFeels, UCBase, System.ImageList, Vcl.ImgList, Vcl.StdCtrls,
  cxButtons, dxLayoutControl, dxLayoutcxEditAdapters, cxContainer, cxTextEdit,
  cxMaskEdit, cxButtonEdit, cxLabel, cxCurrencyEdit, cxDBEdit, Utils.Financeiro,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxScrollbarAnnotations;

type
  TFrmFrameDespesaFinanceira = class(TFrmFrameMestre)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    cxLabel1: TcxLabel;
    dxLayoutItem7: TdxLayoutItem;
    btnAdicionarProduto: TcxButton;
    dxLayoutItem8: TdxLayoutItem;
    btnRemoverProduto: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    DSNF_Entrada: TDataSource;
    cxGrid1DBTableView1CODNF_ENTRADA: TcxGridDBColumn;
    cxGrid1DBTableView1CODFINANCEIRO: TcxGridDBColumn;
    cxGrid1DBTableView1CODUSUARIO: TcxGridDBColumn;
    cxGrid1DBTableView1OBSERVACAO: TcxGridDBColumn;
    cxGrid1DBTableView1RAZAOSOCIAL: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL_FINANCEIRO: TcxGridDBColumn;
    cxGrid1DBTableView1TIPO: TcxGridDBColumn;
    cxGrid1DBTableViewTOTAL: TcxGridDBColumn;
    cxGrid1DBTableViewDT_ALTERACAO: TcxGridDBColumn;
    procedure btnAdicionarProdutoClick(Sender: TObject);
    procedure btnRemoverProdutoClick(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private
    { Private declarations }
  public
    class procedure CarregaFrame(var AFrame: TFrmFrameDespesaFinanceira; AParent: TWinControl; ADSDespesaFinanceira, ADSNF_Entrada: TDataSource);
  end;

var
  FrmFrameDespesaFinanceira: TFrmFrameDespesaFinanceira;

implementation


uses
  Financeiro, UnitFuncoes, Classes.Financeiro;

{$R *.dfm}

procedure TFrmFrameDespesaFinanceira.btnAdicionarProdutoClick(Sender: TObject);
var
  ALista : TListaRetornoFinanceiro;
  I : Integer;
  QuerX :TFDQuery;
begin
  inherited;
  ValidaAlteraDataSet(DSNF_Entrada.DataSet);
  ALista := TFrmFinanceiroConsulta.AbrePesquisaFinanceira;
  QuerX := GeraFDQuery;
  try
    QuerX.SQL.Text := 'Select f.TIPO from financeiro f where f.codigo = :Codigo';
    for I := 0 to ALista.Count - 1 do
    begin
      QuerX.Close;
      QuerX.ParamByName('Codigo').AsInteger := ALista[i].Codigo;
      QuerX.Open;
      if (QuerX.FieldByName('TIPO').AsString = 'RECEBIDA') or (QuerX.FieldByName('TIPO').AsString = 'A RECEBER') then
      begin
        ShowMessage('Apenas Despesas são permitidas');
        Exit;
      end;

      DS.DataSet.Insert;
      DS.DataSet.FieldByName('CODNF_ENTRADA').AsString  := DSNF_Entrada.DataSet.FieldByName('CODIGO').AsString;
      DS.DataSet.FieldByName('CODFINANCEIRO').AsInteger := ALista[i].Codigo;
      DS.DataSet.FieldByName('CODUSUARIO').AsInteger    := CodigoUsuario;
      DS.DataSet.FieldBYName('TOTAL').AsFloat :=  DS.DataSet.FieldBYName('TOTAL_FINANCEIRO').AsFloat;
      DS.DataSet.FieldByName('DT_ALTERACAO').AsDateTime := DataHoraSys;
      DSNF_Entrada.DataSet.FieldByName('TOTAL_DESPESAS_FINANCEIRA').AsFloat := DSNF_Entrada.DataSet.FieldByName('TOTAL_DESPESAS_FINANCEIRA').AsFloat + DS.DataSet.FieldBYName('TOTAL').AsFloat;
      DS.DataSet.Post;
      DS.DataSet.Refresh;
    end;

  finally
    QuerX.Free;
  end;
end;

procedure TFrmFrameDespesaFinanceira.btnRemoverProdutoClick(Sender: TObject);
begin
  inherited;
  if DS.DataSet.IsEmpty then
    Exit;
  DS.DataSet.Delete;
end;

class procedure TFrmFrameDespesaFinanceira.CarregaFrame(var AFrame: TFrmFrameDespesaFinanceira; AParent: TWinControl; ADSDespesaFinanceira, ADSNF_Entrada: TDataSource);
begin
  if AFrame = nil then
  begin
    AFrame := TFrmFrameDespesaFinanceira.Create(AParent, ADSDespesaFinanceira);
    AFrame.DSNF_Entrada.DataSet := ADSNF_Entrada.DataSet;
    AFrame.wrFrameEventos.DoOnInicializar;
  end;
  AFrame.DS.AutoEdit            := ADSNF_Entrada.AutoEdit;
  AFrame.DSNF_Entrada.AutoEdit  := ADSNF_Entrada.AutoEdit;
end;


procedure TFrmFrameDespesaFinanceira.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
 if AViewInfo.Item.Index = cxGrid1DBTableViewTOTAL.Index then
  begin
    if AViewInfo.GridRecord.Values[cxGrid1DBTableViewTOTAL.Index] <> AViewInfo.GridRecord.Values[cxGrid1DBTableView1TOTAL_FINANCEIRO.Index] then
      ACanvas.Brush.Color := clRed;
  end;
end;

end.
