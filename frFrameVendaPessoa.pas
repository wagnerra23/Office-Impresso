unit frFrameVendaPessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FrFrameMestre, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  uWRFormataCamposDataSet, uWRFrameEventos, Data.DB, cxClasses,
  dxLayoutLookAndFeels, UCBase, System.ImageList, Vcl.ImgList,
  dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxCheckBox, cxDBEdit, cxLabel,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxDropDownEdit, cxMaskEdit,
  cxButtonEdit, cxTextEdit, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxSkinsCore, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White;

type
  TFrameVendaPessoa = class(TFrmFrameMestre)
    edtResponsavelPessoasENDERECO: TcxDBTextEdit;
    edtResponsavelPessoasBAIRRO: TcxDBTextEdit;
    edtResponsavelPessoasNUMERO: TcxDBTextEdit;
    edtResponsavelPessoasCEP: TcxDBTextEdit;
    edtResponsavelPessoasCNPJCPF: TcxDBTextEdit;
    edtResponsavelPessoasINSCIDENT: TcxDBTextEdit;
    edtResponsavelÎCidadesÎDESCRICAO: TcxDBTextEdit;
    edtResponsavelÎCidades: TcxDBButtonEdit;
    edtResponsavelÎCidadesÎUF: TcxDBTextEdit;
    edtResponsavelPessoasTIPO: TcxDBComboBox;
    edtResponsavelPessoasEMAIL: TcxDBTextEdit;
    edtPCredSN_Permite: TcxDBTextEdit;
    edtNF_CRT_DEST: TcxDBTextEdit;
    cbxResponsavel_Tipo_Contribuinte: TcxDBLookupComboBox;
    edtTabelaÎProduto_Tabela: TcxDBButtonEdit;
    lblTabelaÎProduto_TabelaÎDESCRICAO: TcxLabel;
    edtResponsavelCodCidadeProprio: TcxDBTextEdit;
    edtResponsavelCodPais: TcxDBTextEdit;
    edtResponsavelPessoasINSC_MUNICIPAL: TcxDBTextEdit;
    edtResponsavelEmailNFe: TcxDBTextEdit;
    btnAtualizaCadastro: TcxButton;
    chkPodeAtualizarCadastro: TcxDBCheckBox;
    cxLabel1: TcxLabel;
    btnAbrirCadPessoas: TcxButton;
    TabDadosDoResponsavel: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup24: TdxLayoutAutoCreatedGroup;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    LibtnAbrirCadPessoas: TdxLayoutItem;
    GrupoDadosResponsavel: TdxLayoutGroup;
    dxLayoutGroup10: TdxLayoutGroup;
    liedtResponsavelÎPessoasÎTIPO: TdxLayoutItem;
    liedtResponsavelÎPessoasÎCNPJCPF: TdxLayoutItem;
    liedtResponsavelÎPessoasÎINSCIDENT: TdxLayoutItem;
    liedtResponsavelÎPessoasÎCEP: TdxLayoutItem;
    liedtResponsavelÎPessoasÎENDERECO: TdxLayoutItem;
    licbxResponsavel_Tipo_Contribuinte: TdxLayoutItem;
    liedtResponsavelÎPessoasÎNUMERO: TdxLayoutItem;
    dxLayoutGroup8: TdxLayoutGroup;
    liedtResponsavelÎCidades: TdxLayoutItem;
    liedtResponsavelÎCidadesÎDESCRICAO: TdxLayoutItem;
    liedtResponsavelÎCidadesÎUF: TdxLayoutItem;
    liedtResponsavelÎPessoasÎBAIRRO: TdxLayoutItem;
    liedtResponsavelÎPessoasÎEMAIL: TdxLayoutItem;
    liedtTabelaÎProduto_Tabela: TdxLayoutItem;
    dxLayoutItem71: TdxLayoutItem;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup21: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup22: TdxLayoutAutoCreatedGroup;
    LiedtResponsavelCodCidadeProprio: TdxLayoutItem;
    LiedtResponsavelCodPais: TdxLayoutItem;
    dxLayoutItem67: TdxLayoutItem;
    dxLayoutAutoCreatedGroup23: TdxLayoutAutoCreatedGroup;
    LiedtResponsavelIncsMunicipal: TdxLayoutItem;
    liedtPCredSN_Permite: TdxLayoutItem;
    LiedtResponsavelEmailNFe: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    FDQuery1: TFDQuery;
    chkVendaPrevisao: TcxDBCheckBox;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    GrupoTabelaPreco: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    procedure btnAtualizaCadastroClick(Sender: TObject);
    procedure btnAbrirCadPessoasClick(Sender: TObject);
    procedure wrFrameEventosInicializar(Sender: TObject);
    procedure chkVendaPrevisaoPropertiesEditValueChanged(Sender: TObject);
    procedure chkVendaPrevisaoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
  public
    { Public declarations }
  end;

var
  FrameVendaPessoa: TFrameVendaPessoa;

implementation

{$R *.dfm}

Uses Base, wrForms, wrPreencheLookup, unitfuncoes, wrFuncoes, Frame_CadVenda_Mestre, Frame_CadVenda_Venda, Tag.APP, Tag.Form;

procedure TFrameVendaPessoa.btnAbrirCadPessoasClick(Sender: TObject);
begin
  inherited;
  if ds.DataSet.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString <> '' then
    CadastroTag_NormalChave(Self, Tag_Pessoas, ds.DataSet.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString);
end;

procedure TFrameVendaPessoa.btnAtualizaCadastroClick(Sender: TObject);
var
  QuerX :TFDQuery;
begin
  inherited;
  QuerX := GeraFDQuery;
  try
    QuerX.SQL.Text := 'select CI.DESCRICAO as CIDADE, CI.PAIS as PAIS, CI.CODPAIS as CODPAIS, P.* '+
                      'from PESSOAS P left join CIDADES CI on (P.CODCIDADE = CI.CODIGO) ' +
                      'where p.codigo = :Codigo';
    QuerX.ParamByName('Codigo').AsString := DS.DataSet.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString;
    QuerX.Open;
    TFrame_Venda_Mestre.AtualizaPessoas(DS.DataSet, QuerX);
  finally
    QuerX.Free;
  end;
//  btnAlterar.Click;
//  BuscaResponsavelEditValueChanged(nil);
//  btnConfirmar.Click;
end;

procedure TFrameVendaPessoa.chkVendaPrevisaoMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  QuerX: TFDQuery;
begin
  inherited;
  if  (DS.Dataset.FieldByName('CODVENDA_VINCULADA').AsString <> '')
  and (DS.Dataset.FieldByName('STATUS').AsString = 'ATIVO CRIADO') then
  begin
    ShowMessageWR('Não é possível transformar um agrupamento em previsão.', MB_ICONWARNING);
    Abort;
  end;

  if  (DS.Dataset.FieldByName('DT_FATURAMENTO').AsString <> '') then
  begin
    ShowMessageWR('Não é possível alterar esta configuração em uma venda já faturada/agrupada.', MB_ICONWARNING);
    Abort;
  end;

  QuerX := GeraFDQuery;
  QuerX.Close;
  try
    QuerX.SQL.Text :=  'SELECT V.CODIGO FROM VENDA V WHERE V.CODIGO IN (SELECT VP.CODVENDA ' +
                       'FROM VENDA_PRODUTO VP ' +
                       'LEFT JOIN VENDA V1 ON V1.CODIGO = VP.CODVENDA ' +
                       'WHERE VP.CODVENDA_ORIGINAL = :codvenda AND V1.ATIVO = ''S'')';
    QuerX.ParamByName('codvenda').AsString := DS.Dataset.FieldByName('CODIGO').AsString;
    QuerX.Open;
    if QuerX.RecordCount > 0 then
    begin
      ShowMessageWR('Este pedido já foi agrupado, não é possível alterar configuração de Previsão.', MB_ICONWARNING);
      Abort;
    end;

  finally
    QuerX.Free;
  end;

  // Só pode se for privilegiado
  if not usuario.Privilegiado then
  begin
    ShowMessageWR('Obrigatório usuário privilegiado para alterar esta opção.', MB_ICONWARNING);
    Abort;
  end;

  // Verifica financeiro
  if not TFrame_Venda_Mestre(Self.Owner).VerificaSePodeTransformarParaPrevisao then
    Abort;

end;

procedure TFrameVendaPessoa.chkVendaPrevisaoPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if Assigned(Self.Owner) and (Self.Owner.ClassName = 'TFrmVenda') then
    TFrame_Venda_Venda(Self.Owner).VerificaVisibleBotoesFaturamento;
end;

procedure TFrameVendaPessoa.wrFrameEventosInicializar(Sender: TObject);
begin
  inherited;
    PreencheLookuppcnindIEDest(cbxResponsavel_Tipo_Contribuinte.Properties);
    GrupoTabelaPreco.Visible := AWR_APP[TagAPP_Venda_Tabela_Preço].Ativo;
end;

end.
