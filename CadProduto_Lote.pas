unit CadProduto_Lote;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CadM, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsdxStatusBarPainter, dxSkinscxPCPainter, Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer, dxLayoutControlAdapters, dxLayoutContainer,
  dxLayoutcxEditAdapters, UCBase, dxLayoutLookAndFeels, System.ImageList, Vcl.ImgList, IBX.IBCustomDataSet,
  IBX.IBStoredProc, IBX.IBDatabase, Vcl.ExtCtrls, cxTextEdit, cxDBEdit, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxDBNavigator, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, dxStatusBar, IBX.IBQuery, cxDropDownEdit, cxCalendar, cxCurrencyEdit, cxLabel, cxMaskEdit,
  cxButtonEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  dxScreenTip, System.Actions, Vcl.ActnList, cxDBLabel,
  cxDataControllerConditionalFormattingRulesManagerDialog, WREventos,
  UCHistDataset, frxClass, frxDBSet, dxUIAdorners, fs_iinterpreter,
  System.Generics.Collections;

type
  TFrmProduto_Lote = class(TFrmCadM)
    edtProdutoÎProduto: TcxDBButtonEdit;
    liedtProdutoÎProduto: TdxLayoutItem;
    edtProdutoÎProdutoÎDESCRICAO: TcxLabel;
    liedtProdutoÎProdutoÎDESCRICAO: TdxLayoutItem;
    edtQuantidade: TcxDBCurrencyEdit;
    liedtQuantidade: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    edtDataMelhor: TcxDBDateEdit;
    liedtDataMelhor: TdxLayoutItem;
    edtDataFimVida: TcxDBDateEdit;
    liedtDataFimVida: TdxLayoutItem;
    edtDataRemocao: TcxDBDateEdit;
    liedtDataRemocao: TdxLayoutItem;
    edtDataAlerta: TcxDBDateEdit;
    liedtDataAlerta: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    lilblResponsavelÎPessoasÎRAZAOSOCIAL: TdxLayoutItem;
    lblResponsavelÎPessoasÎRAZAOSOCIAL: TcxLabel;
    liedtResponsavelÎPessoas: TdxLayoutItem;
    edtResponsavelÎPessoas: TcxDBButtonEdit;
    CadastroCODIGO: TIntegerField;
    CadastroCODPRODUTO: TStringField;
    CadastroREFERENCIA: TStringField;
    CadastroPESSOA_CLIENTE_SEQUENCIA: TIntegerField;
    CadastroPESSOA_CLIENTE_TIPO: TStringField;
    CadastroPESSOA_CLIENTE_CODIGO: TStringField;
    CadastroQUANTIDADE: TFloatField;
    CadastroDESCRICAO: TStringField;
    CadastroDT_ALTERACAO: TSQLTimeStampField;
    CadastroATIVO: TStringField;
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtProdutoÎProdutoExit(Sender: TObject);
    procedure DSDataChange(Sender: TObject; Field: TField);
    procedure edtQuantidadeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FCodProduto :string;
    FCodCliente :string;
    function GetProximoLoteProduto: Integer;
  public
    class function AbreCadastroLote(ACodProduto, ACodCliente: string): string;
    { Public declarations }
  end;


implementation

{$R *.dfm}

uses ConsultaPessoas, wrFuncoes, UnitFuncoes, ConProduto_Lote;

procedure TFrmProduto_Lote.btnConfirmarClick(Sender: TObject);
Var
  ProdutoX, Produto_MovimentoX : TFDQuery;
begin
  ProdutoX := GeraFDQuery(TransaFD);
  ProdutoX.Close;
  ProdutoX.SQL.text := 'select * from produto where (codigo = :Codigo) and (TEM_LOTE = ''S'')';
  ProdutoX.ParamByName('Codigo').AsString := CadastroCODPRODUTO.AsString;
  ProdutoX.Open;
  if ProdutoX.RecordCount = 0 then
  begin
    Produto_MovimentoX := GeraFDQuery(TransaFD);
    Produto_MovimentoX.CLose;
    Produto_MovimentoX.SQL.Text := 'select * from produto_movimento where (codproduto = :Codigo)';
    Produto_MovimentoX.ParamByName('Codigo').AsString := CadastroCODPRODUTO.AsString;
    Produto_MovimentoX.Open;
    if Produto_MovimentoX.RecordCount > 0 then
    begin
      ShowMessage('Esse Produto NÃO PODE se tornar lote, pois existe MOVIMENTAÇÃO de estoque');
      Abort;
    end;
    if ShowMessageWR('ATENÇÃO! Deseja TORNAR o estoque desse produto em LOTE? ', MB_ICONQUESTION) = mrYes then
    begin
      ProdutoX.Close; // Não pode ter acesso a editção fora da tela do produto // Tem que ter o histórico
      ProdutoX.SQL.Text := 'update produto set tem_lote = ''S'' where (codigo = :Codigo)';
      ProdutoX.ParamByName('Codigo').AsString := CadastroCODPRODUTO.AsString;
      ProdutoX.ExecSQL;
      ShowMessage('Produto agora está com estoque em lote');
    end else
    begin
      Exit;
    end;
  end;
  inherited;
end;

class function TFrmProduto_Lote.AbreCadastroLote(ACodProduto, ACodCliente: string): string;
begin
  with TFrmProduto_Lote.Create(nil) do
  try
    FCodProduto := ACodProduto;
    FCodCliente := ACodCliente;
    ShowModal;
    Result := Codigo;
  finally
    Destroy;
  end;
end;

procedure TFrmProduto_Lote.DSDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if ds.DataSet.State = dsInsert then
    edtCodigo.Style.Color:=clWindow
  else
    edtCodigo.Style.Color:=clSilver;
end;

procedure TFrmProduto_Lote.edtProdutoÎProdutoExit(Sender: TObject);
begin
  inherited;
  if (EdtProdutoÎProduto.Text <> '') and (edtCodigo.Text = '') and (Cadastro.State = dsInsert) then
    CadastroCODIGO.AsInteger := GetProximoLoteProduto;
end;

procedure TFrmProduto_Lote.edtQuantidadeClick(Sender: TObject);
begin
  inherited;
  edtQuantidade.ShowHint := True;
end;

procedure TFrmProduto_Lote.FormCreate(Sender: TObject);
begin
  inherited;
  CadastroQUANTIDADE.DisplayFormat := DecimalQuantidade;   // Não pode  wrFormata
end;

procedure TFrmProduto_Lote.FormShow(Sender: TObject);
begin
  inherited;
  if FCodProduto <> '' then
  begin
    btnNovo.Click;
    CadastroCODPRODUTO.AsString := FCodProduto;
    CadastroPESSOA_CLIENTE_SEQUENCIA.AsString := FCodCliente;
  end;
end;

function TFrmProduto_Lote.GetProximoLoteProduto: Integer;
var
  QuerX : TFDQuery;
begin
  QuerX := GeraFDQuery(TransaFD);
  try
    QuerX.SQL.Text := 'select max(PL.CODIGO) as CODIGO ' +
                      'from PRODUTO_LOTE PL            ' +
                      'where PL.CODPRODUTO = ' + QuotedStr(EdtProdutoÎProduto.Text);
    QuerX.Open;
    Result := QuerX.Fields[0].AsInteger + 1;
  finally
    QuerX.Free;
  end;
end;

initialization
  RegisterClass(TFrmProduto_Lote);

end.
