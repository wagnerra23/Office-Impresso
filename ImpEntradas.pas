unit ImpEntradas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, cxButtonEdit, cxCalendar,
  StdCtrls, ExtCtrls, Gradient, Buttons, DB, IBX.IBCustomDataSet, IBX.IBQuery, frxClass, frxDBSet, UCHist_WRGeral,
   UnitFuncoes, ComCtrls, Menus, cxDateProfileButton, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxCore, cxDateUtils, dxSkinsCore, cxButtons, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, Generics.Collections, System.Math, Classes.WR, WREventos, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, System.Generics.Collections;

type
  TImpriEntradas = class(TForm)
    Gradient3: TGradient;
    Label3: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    LblProdutoGrupoÎProduto_GrupoÎDESCRICAO: TLabel;
    Label8: TLabel;
    LblMarcaÎProduto_MarcaÎDESCRICAO: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    LblFornecedorÎPessoasÎRAZAOSOCIAL: TLabel;
    LblProdutoÎProdutoÎDESCRICAO: TLabel;
    Label6: TLabel;
    Label17: TLabel;
    CheckDescItem: TCheckBox;
    RadioTipoSelecao: TRadioGroup;
    ComboEmpresa: TComboBox;
    DataInicial: TcxDateEdit;
    DataFinal: TcxDateEdit;
    EdtProdutoÎProduto: TcxButtonEdit;
    EdtProdutoGrupoÎProduto_Grupo: TcxButtonEdit;
    EdtMarcaÎProduto_Marca: TcxButtonEdit;
    ComboTipoProduto: TComboBox;
    ComboOrderBy: TComboBox;
    CkQuant: TCheckBox;
    CkCusto: TCheckBox;
    CkValor: TCheckBox;
    BtnVisualizar: TBitBtn;
    BtnFechar: TBitBtn;
    Produtos_Agrupados: TIBQuery;
    frxEntradas: TfrxDBDataset;
    Produtos_AgrupadosCODPRODUTO: TIBStringField;
    Produtos_AgrupadosUNIDADE: TIBStringField;
    Produtos_AgrupadosCODPRODUTO_GRUPO: TIBStringField;
    Produtos_AgrupadosSOMA_QUANT: TFloatField;
    Produtos_AgrupadosSOMA_CUSTO_LOJA: TFloatField;
    Produtos_AgrupadosSOMA_VALOR: TFloatField;
    UCHistWRGeral1: TUCHistWRGeral;
    Produtos_AgrupadosDESCRICAO: TIBStringField;
    EdtFornecedorÎPessoas: TcxButtonEdit;
    Produtos_AgrupadosSOMA_CUSTO_FABR: TFloatField;
    cxDateProfileButton1: TcxDateProfileButton;
    WREventosCadastro1: TWREventosCadastro;
    procedure BtnVisualizarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure WREventosCadastro1PreencheVariaveisImpressaoPersonalizada(Sender: TObject);
  private
    { Private declarations }
    FListaProdutoTipo : TList<TCodNome>;
    FSQLOrderBy: string;
//    FControleWR : TControleWR;
  public
    { Public declarations }
  end;

var
  ImpriEntradas: TImpriEntradas;

implementation

{$R *.dfm}

uses
  Principal, DateUtils, DataModuleImpressao;

procedure TImpriEntradas.BtnVisualizarClick(Sender: TObject);
const
  OrdemAgrupado : Array[0..4{5}] of String = ('EP.DESCRICAO','EP.CODPRODUTO','SOMA_QUANT DESC',{'TOTAL_LUCRO DESC',}'SOMA_CUSTO_LOJA DESC','SOMA_VALOR DESC');
  iWhere : Integer = 6; //Índice da linha do Where no SQL do Produtos_Agrupados. Simplifica a modificação do indice quando muda o SQL
var
  APeriodo : String;
  ACodEmpresa : Integer;
begin
  inherited;
  Produtos_Agrupados.Close;
  Produtos_Agrupados.Sql[iWhere] := 'WHERE (E.DATA BETWEEN :DtInicio AND :DtFim) AND (E.TIPO <> ''SAÍDA DE MERCADORIA'') AND (E.TIPO <> ''TRANSFERÊNCIA'')';

  if CheckDescItem.Checked = True then
    Produtos_Agrupados.Sql[iWhere] := Produtos_Agrupados.Sql[iWhere] + ' AND (UPPER(EP.CODPRODUTO) = UPPER(' + QuotedStr(EdtProdutoÎProduto.Text) + '))';

  ACodEmpresa := Integer(ComboEmpresa.Items.Objects[ComboEmpresa.ItemIndex]);
  if ComboEmpresa.ItemIndex <> 0 then
  begin
    if ACodEmpresa = 1 then
      Produtos_Agrupados.Sql[iWhere] := Produtos_Agrupados.Sql[iWhere] +
                                        ' AND ((E.CODIGO LIKE ' + QuotedStr('%-' + ACodEmpresa.ToString) + ') or (position(''-'' in E.CODIGO) = 0)) '
    else
      Produtos_Agrupados.Sql[iWhere] := Produtos_Agrupados.Sql[iWhere] +
                                        ' AND (E.CODIGO LIKE ' + QuotedStr('%-' + ACodEmpresa.ToString) + ') ';
  end;

  case RadioTipoSelecao.ItemIndex of
    0 : Produtos_Agrupados.Sql[iWhere] := Produtos_Agrupados.Sql[iWhere] + ' AND (E.GERA_FINANCEIRO = ''S'')';
    1 : Produtos_Agrupados.Sql[iWhere] := Produtos_Agrupados.Sql[iWhere] + ' AND (COALESCE(E.GERA_FINANCEIRO, ''N'') = ''N'')';
  end;

  if ComboTipoProduto.ItemIndex <> 0 then
    Produtos_Agrupados.Sql[iWhere] := Produtos_Agrupados.Sql[iWhere] + ' AND (EP.CODPRODUTO_TIPO = ' + IntToStr(FListaProdutoTipo[ComboTipoProduto.ItemIndex - 1].Codigo) + ')';

  if EdtProdutoGrupoÎProduto_Grupo.Text <> '' then
    Produtos_Agrupados.SQL[iWhere] := Produtos_Agrupados.Sql[iWhere] + ' AND (UPPER(EP.CODPRODUTO_GRUPO) = UPPER(' + QuotedStr(EdtProdutoGrupoÎProduto_Grupo.Text) + '))';

  if EdtMarcaÎProduto_Marca.Text <> '' then
    Produtos_Agrupados.Sql[iWhere] := Produtos_Agrupados.Sql[iWhere] + ' AND (EP.CODPRODUTO_MARCA = ' + EdtMarcaÎProduto_Marca.Text + ')';

//  if EdtFornecedorÎPessoas.Text <> '' then
//    Produtos_Agrupados.Sql[iWhere] := Produtos_Agrupados.Sql[iWhere] + ' AND (UPPER(E.PESSOA_FORNECEDOR_CODIGO) = (' + QuotedStr(FControleWR.GetCodigoPessoa(EdtFornecedorÎPessoas)) + '))';

  FSQLOrderBy := 'ORDER BY ' + OrdemAgrupado[ComboOrderBy.ItemIndex];
  Produtos_Agrupados.Sql[iWhere + 3] := FSQLOrderBy;

  Produtos_Agrupados.ParamByName('DtInicio').AsDateTime := StartOfTheDay(DataInicial.Date);
  Produtos_Agrupados.ParamByName('DtFim').AsDateTime    := EndOfTheDay(DataFinal.Date);

  {$IFDEF DEBUG}
  StringToFile('D:\SQL.sql', Produtos_Agrupados.SQL.Text);
  {$ENDIF}
  Produtos_Agrupados.Open;

  DMImpressaoImprimirPorNome(Self, RelatorioListaImpressoesPadroes('FR0017'));
end;

procedure TImpriEntradas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//  FControleWR.Free;
  FListaProdutoTipo.Free;
end;

procedure TImpriEntradas.FormCreate(Sender: TObject);
var
  QuerX : TIBQuery;
  AProdTipo : TCodNome;
  I : Integer;
begin
//  FControleWR := TControleWR.Create;
//  FControleWR.Inicializar(Self);
  FListaProdutoTipo := TList<TCodNome>.Create; //Liberado no close do form;
  FrmPrincipal.EmpresaLista.First;
  while not FrmPrincipal.EmpresaLista.Eof do
  begin
    ComboEmpresa.Items.AddObject(FrmPrincipal.EmpresaLista.FieldByName('RAZAOSOCIAL').AsString,
                                 TObject(FrmPrincipal.EmpresaLista.FieldByName('CODIGO').AsInteger));
    FrmPrincipal.EmpresaLista.Next;
  end;
  QuerX := GeraQuery;
  try
    QuerX.SQL.Text := 'select CODIGO, DESCRICAO from PRODUTO_TIPO';
    QuerX.Open;
    while not QuerX.Eof do
    begin
      AProdTipo.Codigo := QuerX.FieldByName('CODIGO').AsInteger;
      AProdTipo.Nome   := QuerX.FieldByName('DESCRICAO').AsString;
      FListaProdutoTipo.Add(AProdTipo);
      QuerX.Next;
    end;

    ComboTipoProduto.Items.Clear;
    ComboTipoProduto.Items.Add('TODOS');
    for I := 0 to FListaProdutoTipo.Count - 1 do
      ComboTipoProduto.Items.Add(FListaProdutoTipo[i].Nome);

    ComboTipoProduto.ItemIndex := 0;
    DataInicial.Date := StartOfTheMonth(Now);
    DataFinal.Date   := Now;
  finally
    QuerX.Free;
  end;
end;

procedure TImpriEntradas.WREventosCadastro1PreencheVariaveisImpressaoPersonalizada(Sender: TObject);
var
  APeriodo: string;
  AReport: TfrxReport;
begin
  AReport.Variables['CodEmpresa']      := Integer(ComboEmpresa.Items.Objects[ComboEmpresa.ItemIndex]);
  AReport.Variables['TipoSelecao']     := RadioTipoSelecao.ItemIndex;
  AReport.Variables['OrderBy']         := Fr3String(FSQLOrderBy);
  if ComboTipoProduto.ItemIndex <> 0 then
    AReport.Variables['CodTipoProduto'] := FListaProdutoTipo[ComboTipoProduto.ItemIndex - 1].Codigo
  else
    AReport.Variables['CodTipoProduto'] := 0;
  AReport.Variables['CodProduto']      := Fr3String(EdtProdutoÎProduto.Text);
  AReport.Variables['CodGrupoProduto'] := Fr3String(EdtProdutoGrupoÎProduto_Grupo.Text);
  AReport.Variables['CodMarcaProduto'] := Fr3String(EdtMarcaÎProduto_Marca.Text);
//      AReport.Variables['CodFornecedor']   := Fr3String(FControleWR.GetCodigoPessoa(EdtFornecedorÎPessoas));
  AReport.Variables['DtInicio']        := DataInicial.Date;
  AReport.Variables['DtFim']           := DataFinal.Date;
  AReport.Variables['DescriminacaoPorItem'] := CheckDescItem.Checked;
  AReport.Variables['ExibirQuant']     := CkQuant.Checked;
  AReport.Variables['ExibirCusto']     := CkCusto.Checked;
  AReport.Variables['ExibirValor']     := CkValor.Checked;
  APeriodo := 'Período de ' + FormatDateTime('DD/MM/YYYY', DataInicial.Date) + ' à ' + FormatDateTime('DD/MM/YYYY', DataFinal.Date);
  if RadioTipoSelecao.ItemIndex < 2 then
    APeriodo := APeriodo + ', ' + RadioTipoSelecao.Items[RadioTipoSelecao.ItemIndex];
  AReport.Variables['Periodo']     := Fr3String(APeriodo);
end;

initialization
  RegisterClass(TImpriEntradas);

end.
