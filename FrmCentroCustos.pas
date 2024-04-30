unit FrmCentroCustos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxClasses, dxLayoutLookAndFeels,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxLayoutContainer, dxLayoutControl, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, dxLayoutcxEditAdapters, cxContainer, cxTextEdit,
  cxMaskEdit, cxButtonEdit, cxLabel, cxCurrencyEdit, dxLayoutControlAdapters,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, IBX.IBCustomDataSet, uControleWR, dxScrollbarAnnotations,
  dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TFrameCentroCustos = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    edtCentro_CustoÎCentro_Custo: TcxButtonEdit;
    dxLayoutItem3: TdxLayoutItem;
    lblCentro_CustoÎCentro_CustoÎDESCRICAO: TcxLabel;
    dxLayoutItem4: TdxLayoutItem;
    edtPercentual: TcxCurrencyEdit;
    dxLayoutItem5: TdxLayoutItem;
    btnAdicionarCentroCusto: TcxButton;
    dxLayoutItem6: TdxLayoutItem;
    btnRemoverCentroCusto: TcxButton;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    dxLayoutSkinLookAndFeelBranco: TdxLayoutSkinLookAndFeel;
    dxLayoutSkinLookAndFeelBranco2: TdxLayoutSkinLookAndFeel;
    DS: TDataSource;
    FinanceiroCentroCusto: TFDQuery;
    cxGrid1DBTableView1CODFINANCEIRO: TcxGridDBColumn;
    cxGrid1DBTableView1CODCENTRO_TRABALHO: TcxGridDBColumn;
    cxGrid1DBTableView1PERCENTUAL: TcxGridDBColumn;
    cxGrid1DBTableView1VALOR: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    DSExterno: TDataSource;
    dxLayoutItem7: TdxLayoutItem;
    btnFechar: TcxButton;
    TransaFD: TFDTransaction;
    cxGrid1DBTableView1TIPO: TcxGridDBColumn;
    procedure btnAdicionarCentroCustoClick(Sender: TObject);
    procedure btnRemoverCentroCustoClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FinanceiroCentroCustoBeforeOpen(DataSet: TDataSet);
    procedure cxGrid1DBTableView1PERCENTUALPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
  private
    { Private declarations }
  protected
    FControleWR: TControleWR;
  public
    { Public declarations }
    class procedure Abrir(ASender: TWinControl; ADataSetExterno: TDataSet);
  end;

var
  FrameCentroCustos: TFrameCentroCustos;

implementation

{$R *.dfm}

uses
  wrFuncoes_Office, UnitFuncoes, Aguarde, wrFuncoes;

class procedure TFrameCentroCustos.Abrir(ASender: TWinControl; ADataSetExterno: TDataSet);
var
  AFrmFrameCentroCusto: TFrameCentroCustos;
begin
  AFrmFrameCentroCusto:= TFrameCentroCustos.Create(ASender.Owner);
  try
    AFrmFrameCentroCusto.PopupMode   := pmAuto;
    AFrmFrameCentroCusto.DSExterno.DataSet  := ADataSetExterno;
//    AFrmFrameCentroCusto.DS.AutoEdit := AFrmFrameCentroCusto.WRCalc.DSVendaOuCompra.AutoEdit;
//    PosicionarControleAbaixoDe(AFrmFrameCentroCusto, ASender);
    AFrmFrameCentroCusto.ShowModal;
  finally
    AFrmFrameCentroCusto.Free;
  end;
end;


procedure TFrameCentroCustos.btnAdicionarCentroCustoClick(Sender: TObject);
var
  APercentual : Double;
begin
  try
    APercentual := VerificaPercentual(APercentual, FinanceiroCentroCusto);
    if (APercentual + edtPercentual.Value) > 100 then
    begin
      ShowMessage('Não pode passar de 100%');
      exit;
    end;
    FinanceiroCentroCusto.Insert;
    FinanceiroCentroCusto.FieldByName('CODFINANCEIRO').Value           := DSExterno.DataSet.FieldByName('CODIGO').AsInteger;
    FinanceiroCentroCusto.FieldByName('CODCENTRO_CUSTO').AsString      := edtCentro_CustoÎCentro_Custo.Text;
    FinanceiroCentroCusto.FieldByName('PERCENTUAL').AsFloat            := edtPercentual.Value;
    FinanceiroCentroCusto.FieldByName('VALOR').AsFloat                 := (DSExterno.DataSet.FieldByName('VALOR').AsFloat * (edtPercentual.Value/100));
    if (DSExterno.DataSet.FieldByName('TIPO').AsString = 'A PAGAR') or (DSExterno.DataSet.FieldByName('TIPO').AsString = 'PAGA') then
      FinanceiroCentroCusto.FieldByName('TIPO').AsString := 'DESPESA'
    else
      FinanceiroCentroCusto.FieldByName('TIPO').AsString := 'RECEITA';
    FinanceiroCentroCusto.Post;
    FinanceiroCentroCusto.Refresh;
  except
    ShowMessage('Esse Centro de Custo já está Rateado para esse Plano de Contas');
    FinanceiroCentroCusto.Cancel;
    Exit;
  end;
  edtCentro_CustoÎCentro_Custo.SetFocusWR;
  edtCentro_CustoÎCentro_Custo.Clear;
  edtPercentual.Clear;
end;

procedure TFrameCentroCustos.btnRemoverCentroCustoClick(Sender: TObject);
begin
  if FinanceiroCentroCusto.IsEmpty then
    Exit;
  try
    FinanceiroCentroCusto.Delete;
  except
  end;
end;

procedure TFrameCentroCustos.cxGrid1DBTableView1PERCENTUALPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  FinanceiroCentroCusto.FieldByName('VALOR').AsFloat                 := (DSExterno.DataSet.FieldByName('VALOR').AsFloat * (DisplayValue/100));
  FinanceiroCentroCusto.FieldByName('PERCENTUAL').AsFloat            := DisplayValue;
  FinanceiroCentroCusto.Refresh;
end;

procedure TFrameCentroCustos.FinanceiroCentroCustoBeforeOpen(
  DataSet: TDataSet);
begin
  FinanceiroCentroCusto.ParamByName('CODIGO').Value := DSExterno.DataSet.FieldByName('CODIGO').Value;
end;

procedure TFrameCentroCustos.FormCreate(Sender: TObject);
begin
  FControleWR := TControleWR.Create;
  FControleWR.Inicializar(Self);
end;

procedure TFrameCentroCustos.FormShow(Sender: TObject);
begin
  FinanceiroCentroCusto.Open;
end;

procedure TFrameCentroCustos.btnFecharClick(Sender: TObject);
Var
  APercentual :Double;
begin
  if FinanceiroCentroCusto.recordCount > 0 then
  begin
    APercentual := VerificaPercentual(APercentual, FinanceiroCentroCusto);
    if (APercentual < 100) or (APercentual > 100) then
    begin
      ShowMessage('O Plano de Contas Precisa ser Rateado em 100% ');
      exit;
    end else
    begin
      FinanceiroCentroCusto.Transaction.Commit;
    end;
  end;
  Close;
end;



end.
