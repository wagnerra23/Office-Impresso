unit Frame_CadFinanceiro_Centro_Custo_Mestre;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Frame_Cad_Pocket, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  Vcl.Menus, dxLayoutcxEditAdapters, dxLayoutControlAdapters, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  dxUIAdorners, uWRFormataCamposDataSet, frxClass, frxDBSet, UCHistDataset,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet,
  System.Generics.Collections, WREventos, UCBase, dxLayoutLookAndFeels,
  cxClasses, System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, dxCustomTileControl,
  dxTileControl, dxStatusBar, dxLayoutContainer, cxMaskEdit, cxDropDownEdit,
  cxDBEdit, Vcl.StdCtrls, cxButtons, cxTextEdit, dxLayoutControl, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxCurrencyEdit, cxButtonEdit, cxLabel, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White;

type
  TFrame_Financeiro_Centro_Custo_Mestre = class(TFrmCad_Frame_Pocket)
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    liOrigem: TdxLayoutItem;
    CustosProdutivos: TFDQuery;
    CentroCusto: TFDQuery;
    DSCustoProdutivo: TDataSource;
    cxGrid2DBTableView1MODULO: TcxGridDBColumn;
    cxGrid2DBTableView1QUANT: TcxGridDBColumn;
    cxGrid2DBTableView1VALOR: TcxGridDBColumn;
    cxGrid2DBTableView1CUSTO: TcxGridDBColumn;
    cxGrid2DBTableView1PRODUTO: TcxGridDBColumn;
    dxLayoutItem3: TdxLayoutItem;
    cxGrid3: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGrid1DBTableView1CODCENTRO_TRABALHO: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    dxLayoutItem2: TdxLayoutItem;
    edtCentro_CustoÎCentro_Custo: TcxButtonEdit;
    dxLayoutItem4: TdxLayoutItem;
    lblCentro_CustoÎCentro_CustoÎDESCRICAO: TcxLabel;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutItem5: TdxLayoutItem;
    edtPercentual: TcxCurrencyEdit;
    dxLayoutItem6: TdxLayoutItem;
    btnAdicionarCentroCusto: TcxButton;
    dxLayoutItem7: TdxLayoutItem;
    btnRemoverCentroCusto: TcxButton;
    DSCentroCusto: TDataSource;
    UCHist_DataSet1: TUCHist_DataSet;
    procedure CadastroAfterOpen(DataSet: TDataSet);
    procedure CadastroBeforeClose(DataSet: TDataSet);
    procedure CustosProdutivosBeforeEdit(DataSet: TDataSet);
    procedure btnAdicionarCentroCustoClick(Sender: TObject);
    procedure btnRemoverCentroCustoClick(Sender: TObject);
    procedure CentroCustoBeforeEdit(DataSet: TDataSet);
    procedure cxGridDBColumn3PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure CentroCustoBeforePost(DataSet: TDataSet);
    procedure btnConfirmarClick(Sender: TdxTileControlItem);
    procedure FrameEnter(Sender: TObject);
  private
    { Private declarations }
  public
    FTabela: String;
    { Public declarations }
  end;

var
  Frame_Financeiro_Centro_Custo_Mestre: TFrame_Financeiro_Centro_Custo_Mestre;

implementation

uses Base, UnitFuncoes;

{$R *.dfm}

procedure TFrame_Financeiro_Centro_Custo_Mestre.btnAdicionarCentroCustoClick(
  Sender: TObject);
var
  APercentual : Double;
begin
  try
    APercentual := VerificaPercentual(APercentual, CentroCusto);
    if (APercentual + edtPercentual.Value) > 100 then
    begin
      ShowMessage('Não pode passar de 100%');
      exit;
    end;
    CentroCusto.first;
    while not CentroCusto.Eof do
    begin
      if CentroCusto.FieldByName('CODCENTRO_CUSTO').AsString  = edtCentro_CustoÎCentro_Custo.Text then
      begin
        ShowMessage('Esse Centro de Custo já está Rateado para esse Plano de Contas');
        exit;
      end;
      CentroCusto.Next
    end;

    VerificaSePodeAlteraDataSet;
    CentroCusto.Insert;
    CentroCusto.FieldByName('CODFINANCEIRO').Value           := Cadastro.FieldByName('CODIGO').AsInteger;
    CentroCusto.FieldByName('CODCENTRO_CUSTO').AsString      := edtCentro_CustoÎCentro_Custo.Text;
    CentroCusto.FieldByName('PERCENTUAL').AsFloat            := edtPercentual.Value;
    CentroCusto.FieldByName('CODPEDIDO').AsString            := Cadastro.FieldByName('CODPEDIDO').AsString;
    CentroCusto.FieldByName('CODEMPRESA').AsString           := Cadastro.FieldByName('CODEMPRESA').AsString;
    if Cadastro.FieldByName('CODPEDIDO').IsNull then
      CentroCusto.FieldByName('CODTABELA').AsString  := '0'
    else
      CentroCusto.FieldByName('CODTABELA').AsString  := Cadastro.FieldByName('CODPEDIDO').AsString;
    CentroCusto.FieldByName('VALOR').AsFloat         := (Cadastro.FieldByName('VALOR').AsFloat * (edtPercentual.Value/100));
    if (Cadastro.FieldByName('TIPO').AsString = 'A PAGAR') or (Cadastro.FieldByName('TIPO').AsString = 'PAGA') then
      CentroCusto.FieldByName('TIPO').AsString := 'DESPESA'
    else
      CentroCusto.FieldByName('TIPO').AsString := 'RECEITA';
    CentroCusto.Post;
  except
    ShowMessage('Esse Centro de Custo já está Rateado para esse Plano de Contas');
    CentroCusto.Cancel;
//    abort;
  end;
  CentroCusto.Refresh;
  edtCentro_CustoÎCentro_Custo.SetFocusWR;
  edtCentro_CustoÎCentro_Custo.Clear;
  edtPercentual.Clear;
end;


procedure TFrame_Financeiro_Centro_Custo_Mestre.btnConfirmarClick(
  Sender: TdxTileControlItem);
var
  APercentual : Double;
begin
  APercentual := VerificaPercentual(APercentual, CentroCusto);
  if (APercentual) > 100 then
  begin
    ShowMessage('Não pode passar de 100%');
    exit;
  end;
  inherited;
end;

procedure TFrame_Financeiro_Centro_Custo_Mestre.btnRemoverCentroCustoClick(
  Sender: TObject);
begin
  inherited;
  VerificaSePodeAlteraDataSet;
  if CentroCusto.IsEmpty then
    Exit;
  try
    CentroCusto.Delete;
  except
  end;
end;

procedure TFrame_Financeiro_Centro_Custo_Mestre.CadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  CentroCusto.Open;
  CustosProdutivos.Open;
end;

procedure TFrame_Financeiro_Centro_Custo_Mestre.CadastroBeforeClose(DataSet: TDataSet);
begin
  inherited;
  CentroCusto.Close;
  CustosProdutivos.Close;
end;

procedure TFrame_Financeiro_Centro_Custo_Mestre.CentroCustoBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;
  VerificaSePodeAlteraDataSet;
end;

procedure TFrame_Financeiro_Centro_Custo_Mestre.CentroCustoBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  CentroCusto.FieldByName('VALOR').AsFloat := Cadastro.FieldByName('VALOR').AsFloat * CentroCusto.FieldByName('PERCENTUAL').AsFloat / 100;
end;

procedure TFrame_Financeiro_Centro_Custo_Mestre.CustosProdutivosBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;
  VerificaSePodeAlteraDataSet;
end;

procedure TFrame_Financeiro_Centro_Custo_Mestre.cxGridDBColumn3PropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  CentroCusto.FieldByName('VALOR').AsFloat := Cadastro.FieldByName('VALOR').AsFloat * DisplayValue / 100;
  inherited;
end;

procedure TFrame_Financeiro_Centro_Custo_Mestre.FrameEnter(Sender: TObject);
begin
  inherited;
  FTabela:= 'CENTRO_CUSTO';
end;

end.
