unit FrFrame_Rateio_Custo_Vinculo;

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
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinsDefaultPainters,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxDBEdit, Vcl.ExtCtrls;

type
  TFrame_Rateio_Custo_Vinculo = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    dxLayoutSkinLookAndFeelBranco: TdxLayoutSkinLookAndFeel;
    dxLayoutSkinLookAndFeelBranco2: TdxLayoutSkinLookAndFeel;
    DS: TDataSource;
    RateioFuncionarioSalario: TFDQuery;
    DSExterno: TDataSource;
    TransaFD: TFDTransaction;
    DSPessoaSelecionada: TDataSource;
    edtSalarioMensal: TcxDBCurrencyEdit;
    edtDecimoTerceiroAnual: TcxDBCurrencyEdit;
    edtFuncionario: TcxLabel;
    edtFeriasAnual: TcxDBCurrencyEdit;
    edtEncargosAnual: TcxDBCurrencyEdit;
    edtOutrosVenctos: TcxDBCurrencyEdit;
    edtHorasTrabalhadas: TcxDBCurrencyEdit;
    edtValorHora: TcxDBCurrencyEdit;
    edtDecimoTerceiro: TcxDBCurrencyEdit;
    edtFeriasMensal: TcxDBCurrencyEdit;
    edtEncargosMensal: TcxDBCurrencyEdit;
    edtOutrosMensal: TcxDBCurrencyEdit;
    edtSalario: TcxDBCurrencyEdit;
    edtHoras: TcxDBCurrencyEdit;
    edtTotalMensal: TcxDBCurrencyEdit;
    edtAviso: TcxLabel;
    btnAtualizarPreco: TcxButton;
    edtCodProdutoÎPRODUTO: TcxDBButtonEdit;
    edtCodProdutoÎPRODUTOÎDESCRICAO: TcxTextEdit;
    edtValorAtualizado: TcxDBCurrencyEdit;
    edtValorAnterior: TcxDBCurrencyEdit;
    btnNovoServico: TcxButton;
    dxLayoutGroup3: TdxLayoutGroup;
    liedtSalarioMensal: TdxLayoutItem;
    liedtDecimoTerceiroAnual: TdxLayoutItem;
    liedtFeriasAnual: TdxLayoutItem;
    liedtOutrosVenctos: TdxLayoutItem;
    liedtEncargosAnual: TdxLayoutItem;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    liedtSalario: TdxLayoutItem;
    liedtDecimoTerceiro: TdxLayoutItem;
    liedtFeriasMensal: TdxLayoutItem;
    liedtOutrosMensal: TdxLayoutItem;
    liedtEncargosMensal: TdxLayoutItem;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutItem5: TdxLayoutItem;
    liedtHoras: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    liedtAviso: TdxLayoutItem;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    liAtualizarValor: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    liedtFuncionarioÎPessoasÎRAZAOSOCIAL: TdxLayoutItem;
    pnlValorHora: TPanel;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    cxLabel1: TcxLabel;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    cxLabel2: TcxLabel;
    dxLayoutItem12: TdxLayoutItem;
    cxLabel3: TcxLabel;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem13: TdxLayoutItem;
    cxLabel4: TcxLabel;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    dxLayoutSeparatorItem2: TdxLayoutSeparatorItem;
    dxLayoutSeparatorItem3: TdxLayoutSeparatorItem;
    dxLayoutSeparatorItem4: TdxLayoutSeparatorItem;
    dxLayoutItem14: TdxLayoutItem;
    btnFechar: TcxButton;
    btnBuscaServico: TcxButton;
    libtnBuscaServico: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    libtnCriarServico: TdxLayoutItem;
    btnCriarServico: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure edtSalarioMensalPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure edtTotalMensalMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure dxLayoutControl1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure edtSalarioMensalKeyPress(Sender: TObject; var Key: Char);
    procedure edtCodProdutoÎPRODUTOPropertiesEditValueChanged(Sender: TObject);
    procedure btnCriarServicoClick(Sender: TObject);
    procedure btnBuscaServicoClick(Sender: TObject);
  private
    { Private declarations }
    I: integer;
    FExisteServico, FServicoVinculado: Boolean;
  protected
    FControleWR: TControleWR;
    function BuscaServicoVinculadoAoFuncionario(ACodFuncionario: String): String;
  public
    { Public declarations }
    class procedure Abrir(ASender: TWinControl; ADataSetExterno, ADataSetPessoaSelecionada: TDataSet; AEquipeDragDrop: String);

  end;

var
  Frame_Rateio_Custo_Vinculo: TFrame_Rateio_Custo_Vinculo;

implementation

{$R *.dfm}

uses
  wrFuncoes_Office, UnitFuncoes, Aguarde, wrFuncoes, Frame_CadSalario, wrForms,
  Base, Frame_CadProduto_Servico, Tag.Form;

class procedure TFrame_Rateio_Custo_Vinculo.Abrir(ASender: TWinControl; ADataSetExterno, ADataSetPessoaSelecionada: TDataSet; AEquipeDragDrop: String);
var
  AFrmFrameCentroCusto: TFrame_Rateio_Custo_Vinculo;
begin
  AFrmFrameCentroCusto:= TFrame_Rateio_Custo_Vinculo.Create(ASender.Owner);
  try
    AFrmFrameCentroCusto.PopupMode   := pmAuto;
    AFrmFrameCentroCusto.DSExterno.DataSet  := ADataSetExterno;
    AFrmFrameCentroCusto.DSPessoaSelecionada.DataSet  := ADataSetPessoaSelecionada;
    AFrmFrameCentroCusto.FServicoVinculado   := False;
    TFDQuery(AFrmFrameCentroCusto.DS.DataSet).Transaction := TFDQuery(AFrmFrameCentroCusto.DSExterno.DataSet).Transaction;
    AFrmFrameCentroCusto.edtFuncionario.Caption := TFDQuery(AFrmFrameCentroCusto.DSExterno.DataSet).FieldByName('DESCRICAO').AsString;
//    AFrmFrameCentroCusto.DS.AutoEdit := AFrmFrameCentroCusto.WRCalc.DSVendaOuCompra.AutoEdit;
//    AFrmFrameCentroCusto.edtPercentual.SetFocusWR;
    PosicionarControleAbaixoDe(AFrmFrameCentroCusto, ASender);
    AFrmFrameCentroCusto.ShowModal;
  finally
    AFrmFrameCentroCusto.Free;
  end;
end;

procedure TFrame_Rateio_Custo_Vinculo.btnBuscaServicoClick(Sender: TObject);
var
  ACod: string;
begin
  if not (DSExterno.DataSet.State = dsEdit) then
    DSExterno.DataSet.Edit;

  ACod := BuscaServicoVinculadoAoFuncionario(DSExterno.DataSet.FieldByName('PESSOA_FUNCIONARIO_CODIGO').AsString);

  if ACod <> '' then
    ShowMessage('Encontrado Serviço com código: ' + ACod)
  else
  begin
    ShowMessage('Não encontrado serviço vinculado a este funcionário');
    Exit;
  end;

  DSExterno.DataSet.FieldByName('CODSERVICO_VINCULADO').Value := ACod;
end;

procedure TFrame_Rateio_Custo_Vinculo.btnCriarServicoClick(Sender: TObject);
Var
  AForm : TFrmBase;
begin
  if not (DSExterno.DataSet.State = dsEdit) then
    DSExterno.DataSet.Edit;

  AForm:=TFrmBase(ABaseClass_Normal[Tag_Produto_Servico].Create(Self));
  AForm.ShowCadastroItem(Tag_Produto_Servico, null);
  Application.ProcessMessages;
  AForm.FrameCadastro.btnNovo.Click;
  AForm.FrameCadastro.Cadastro.FieldByName('DESCRICAO').AsString := 'MÃO DE OBRA - ' + DSExterno.DataSet.FieldByName('DESCRICAO').AsString;
  AForm.FrameCadastro.Cadastro.FieldByName('PESSOA_FUNCIONARIO_CODIGO').AsString := DSExterno.DataSet.FieldByName('PESSOA_FUNCIONARIO_CODIGO').AsString;
  AForm.FrameCadastro.Cadastro.FieldByName('PESSOA_FUNCIONARIO_TIPO').AsString := DSExterno.DataSet.FieldByName('PESSOA_FUNCIONARIO_TIPO').AsString;
  AForm.FrameCadastro.Cadastro.FieldByName('PESSOA_FUNCIONARIO_SEQUENCIA').AsString := DSExterno.DataSet.FieldByName('PESSOA_FUNCIONARIO_SEQUENCIA').AsString;
  TFrmProduto_Servico_Frame(AForm.FrameCadastro).edtValor.EditValue :=  DSExterno.DataSet.FieldByName('VALOR_HORA').Value;
  TFrmProduto_Servico_Frame(AForm.FrameCadastro).WRCalc.ProdutoAlterarValor(TFrmProduto_Servico_Frame(AForm.FrameCadastro).edtValor.EditValue);
  AguardaFormFechar(AForm);
  Debug(Codigo);
  DSExterno.DataSet.FieldByName('CODSERVICO_VINCULADO').Value := Codigo;
end;

function TFrame_Rateio_Custo_Vinculo.BuscaServicoVinculadoAoFuncionario(ACodFuncionario: String): String;
var
  QuerX: TFDQuery;
begin
  QuerX := GeraFDQuery(TransaFD);
  try
    QuerX.SQL.Text := 'SELECT P.CODIGO FROM PRODUTO P WHERE P.PESSOA_FUNCIONARIO_CODIGO = ' + QuotedStr(ACodFuncionario);
    QuerX.Open;
    if QuerX.RecordCount > 0 then
      Result := QuerX.FieldByName('CODIGO').AsString;
  finally
    QuerX.Free;
  end;
end;

procedure TFrame_Rateio_Custo_Vinculo.btnFecharClick(Sender: TObject);
begin
  // Atualizar todas as pessoas
  if DSExterno.State = dsEdit then
  begin
    DSPessoaSelecionada.DataSet.First;
    while not DSPessoaSelecionada.DataSet.eof do
    begin
      DSPessoaSelecionada.DataSet.Edit;
      DSCopiarCamposIguais(DSExterno.DataSet, DSPessoaSelecionada.DataSet, ['CODIGO', 'TIPO_RATEIO', 'QTD_HORAS_RATEADAS', 'PERC_RATEIO', 'CODEQUIPE']);
      CalculaValores(DSPessoaSelecionada.DataSet, 'ano');
      DSPessoaSelecionada.DataSet.Post;
      DSPessoaSelecionada.DataSet.Next;
    end;
  end;
  Close;
end;

procedure TFrame_Rateio_Custo_Vinculo.dxLayoutControl1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  pnlValorHora.Visible := False;
end;

procedure TFrame_Rateio_Custo_Vinculo.edtCodProdutoÎPRODUTOPropertiesEditValueChanged(
  Sender: TObject);
begin
  FServicoVinculado := TcxDBButtonEdit(Sender).EditValue <> '';

  libtnBuscaServico.Visible := not FServicoVinculado;
  libtnCriarServico.Visible := not FServicoVinculado;
end;

procedure TFrame_Rateio_Custo_Vinculo.edtSalarioMensalKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TFrame_Rateio_Custo_Vinculo.edtSalarioMensalPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  if not (DSExterno.DataSet.State = dsEdit) then
    DSExterno.DataSet.Edit;

  DSExterno.DataSet.FieldByName(TcxDBCurrencyEdit(Sender).DataBinding.DataField).AsFloat := DisplayValue;
  CalculaValores(DSExterno.DataSet, 'ano');
  liedtAviso.Visible := DSExterno.DataSet.FieldByName('QTD_HORAS_TRABALHADAS_MENSAL').AsFloat = 0;
end;

procedure TFrame_Rateio_Custo_Vinculo.edtTotalMensalMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  pnlValorHora.Visible := True;
end;

procedure TFrame_Rateio_Custo_Vinculo.FormCreate(Sender: TObject);
begin
  FControleWR := TControleWR.Create;
  FControleWR.Inicializar(Self);

  libtnBuscaServico.Visible := not FServicoVinculado;
  libtnCriarServico.Visible := not FServicoVinculado;
end;

end.
