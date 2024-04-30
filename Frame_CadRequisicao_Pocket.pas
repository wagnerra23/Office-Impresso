unit Frame_CadRequisicao_Pocket;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Frame_Cad_Pocket, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  Vcl.Menus, dxLayoutcxEditAdapters, dxLayoutControlAdapters, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  uWRFormataCamposDataSet, frxClass, frxDBSet, UCHistDataset,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet,
  System.Generics.Collections, WREventos, UCBase, dxLayoutLookAndFeels,
  cxClasses, System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, dxCustomTileControl,
  dxTileControl, dxStatusBar, dxLayoutContainer, cxMaskEdit, cxDropDownEdit,
  cxDBEdit, Vcl.StdCtrls, cxButtons, cxTextEdit, dxLayoutControl, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxButtonEdit, cxCurrencyEdit, cxMemo, Base,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  dxDateRanges, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxLabel, cxCheckBox, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxScrollbarAnnotations, dxUIAdorners;

type
  TFrame_Requisicao_Pocket = class(TFrmCad_Frame_Pocket)
    dxLayoutItem4: TdxLayoutItem;
    cbxEquipe: TcxDBLookupComboBox;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    dxLayoutItem5: TdxLayoutItem;
    cbxLocalEstoqueDestino: TcxDBLookupComboBox;
    dxLayoutItem6: TdxLayoutItem;
    cbxLocalEstoqueOrigem: TcxDBLookupComboBox;
    dxLayoutItem7: TdxLayoutItem;
    edtQuantPrevista: TcxDBCurrencyEdit;
    dxLayoutSeparatorItem2: TdxLayoutSeparatorItem;
    dxLayoutItem8: TdxLayoutItem;
    edtCodUsuario: TcxDBTextEdit;
    dxLayoutItem9: TdxLayoutItem;
    edtStatus: TcxDBTextEdit;
    dxLayoutItem11: TdxLayoutItem;
    lblUsuario: TLabel;
    dxLayoutItem12: TdxLayoutItem;
    edtDT_Emissao: TcxDBTextEdit;
    dxLayoutSeparatorItem3: TdxLayoutSeparatorItem;
    tcCadastroGroup1: TdxTileControlGroup;
    dxLayoutItem14: TdxLayoutItem;
    edtProdutoÎProduto: TcxDBButtonEdit;
    cxDBMemo1: TcxDBMemo;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem15: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutItem16: TdxLayoutItem;
    Label1: TLabel;
    dxLayoutItem17: TdxLayoutItem;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxDBComboBox1: TcxDBComboBox;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutItem1: TdxLayoutItem;
    EdtVendaÎVenda: TcxDBButtonEdit;
    dxLayoutItem19: TdxLayoutItem;
    cxbFuncionario: TcxDBLookupComboBox;
    GrupoProduto: TdxLayoutGroup;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    GrupoDestino: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup;
    GrupoStatus: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    GrupoObservacao: TdxLayoutGroup;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem20: TdxLayoutItem;
    DetalheRequisicao: TFDQuery;
    DSDetalheRequisicao: TDataSource;
    cxGrid1DBTableView1CODPRODUTO_REQUISICAO: TcxGridDBColumn;
    cxGrid1DBTableView1CODVENDA: TcxGridDBColumn;
    cxGrid1DBTableView1CODPRODUTO: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1QUANT: TcxGridDBColumn;
    cxGrid1DBTableView1DT_ALTERACAO: TcxGridDBColumn;
    cxGrid1DBTableView1UNIDADE: TcxGridDBColumn;
    cxGrid1DBTableView1QUANT_PREVISTA: TcxGridDBColumn;
    cxGrid1DBTableView1CUSTO_VENDA: TcxGridDBColumn;
    cxGrid1DBTableView1VALOR: TcxGridDBColumn;
    cxGrid1DBTableView1CUSTO: TcxGridDBColumn;
    cxGrid1DBTableView1PRODUTO_ESTOQUE_ORIGEM: TcxGridDBColumn;
    cxGrid1DBTableView1PRODUTO_ESTOQUE_LOCAL: TcxGridDBColumn;
    cxGrid1DBTableView1PRODUTO_TIPO: TcxGridDBColumn;
    cxGrid1DBTableView1VALOR_COMPRA: TcxGridDBColumn;
    cxGrid1DBTableView1DT_ESTOQUE_BAIXA: TcxGridDBColumn;
    cxGrid1DBTableView1CODCENTRO_TRABALHO: TcxGridDBColumn;
    cxGrid1DBTableView1CODUSUARIO: TcxGridDBColumn;
    cxGrid1DBTableView1DT_EMISSAO: TcxGridDBColumn;
    cxGrid1DBTableView1PROTOCOLO: TcxGridDBColumn;
    cxGrid1DBTableView1OBSERVACAO: TcxGridDBColumn;
    cxGrid1DBTableView1PROTOCOLO_PRINCIPAL: TcxGridDBColumn;
    cxGrid1DBTableView1PROTOCOLO_BAIXA: TcxGridDBColumn;
    cxGrid1DBTableView1CODPRODUTO_MOVIMENTO: TcxGridDBColumn;
    cxGrid1DBTableView1STATUS: TcxGridDBColumn;
    cxGrid1DBTableView1PRODUTO: TcxGridDBColumn;
    cxGrid1DBTableView1CODUSUARIO_BAIXA: TcxGridDBColumn;
    cxGrid1DBTableView1CODCENTRO_CUSTO: TcxGridDBColumn;
    cxGrid1DBTableView1EQUIPE: TcxGridDBColumn;
    cxGrid1DBTableView1USUARIO: TcxGridDBColumn;
    cxGrid1DBTableView1EMPRESA: TcxGridDBColumn;
    dxLayoutItem3: TdxLayoutItem;
    lblProdutoÎProdutoÎDESCRICAO: TcxLabel;
    Produto: TFDQuery;
    DSProduto: TDataSource;
    dxLayoutItem21: TdxLayoutItem;
    edtQuant: TcxDBCurrencyEdit;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    liEdtProducaoÎProducao: TdxLayoutItem;
    EdtProducaoÎProducao: TcxDBButtonEdit;
    liEdtCompraÎCompra: TdxLayoutItem;
    EdtNF_EntradaÎNF_Entrada: TcxDBButtonEdit;
    dxLayoutItem13: TdxLayoutItem;
    lblProdutoÎProdutoÎUNIDADE: TcxLabel;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cbxTipo_Movimentacao: TcxDBComboBox;
    dxLayoutItem25: TdxLayoutItem;
    dxLayoutAutoCreatedGroup12: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup13: TdxLayoutAutoCreatedGroup;
    dxLayoutItem22: TdxLayoutItem;
    edtCentroCustoÎCENTRO_CUSTO: TcxDBButtonEdit;
    dxLayoutItem23: TdxLayoutItem;
    edtCentroCustoÎCENTRO_CUSTOÎDESCRICAO: TcxLabel;
    tcCadastroItem1: TdxTileControlItem;
    procedure btnNovoClick(Sender: TdxTileControlItem);
    procedure CreateDaTelaCarregaDataSets(Sender: TObject);
    procedure FrameEnter(Sender: TObject);
    procedure WREventosCadastroConfiguracao_Acoes(Sender: TObject);
    procedure edtStatusPropertiesChange(Sender: TObject);
    procedure CadastroAfterOpen(DataSet: TDataSet);
    procedure CadastroBeforeClose(DataSet: TDataSet);
    procedure edtProdutoÎProdutoPropertiesEditValueChanged(Sender: TObject);
    procedure btnExcluirClick(Sender: TdxTileControlItem);
    procedure chkVendaPropertiesEditValueChanged(Sender: TObject);
    procedure CadastroBeforeOpen(DataSet: TDataSet);
    procedure tcCadastroItem1Click(Sender: TdxTileControlItem);
  private



    { Private declarations }
  public
//    class procedure SolicitaRequisicao(AQuery: TFDQuery; AEntradaSaida: String);
//    class procedure BaixaRequisicao(ACodigo: Integer; AQuerRequisicao: TFDQuery; AQuant: Double; AStatus :String;
//                                                         ACodFuncionario, ACodCentroTrabalho, ACodMotivo: Integer; AObservacao :String);
//    class procedure RecusarRequisicao(ACodigo: Integer; AQuerRequisicao: TFDQuery);
//    class procedure CancelaRequisicao(ACodigo: Integer; AQuerRequisicao: TFDQuery);
//    class function CriaRequisicao(ADescricao, ACodProduto, AProduto, AUnidade, ACodOS,
//       ALocalEstoqueOrigem, ALocalEstoqueDestino, AObservacao, AEntradaSaida: String; AQuantPrevista, ACusto, AValor, AValor_Compra: Double;
//       ACodCentroTrabalho, ACodEmpresa, ACodUsuario: Integer; AQuerRequisicao: TFDQuery; ACodCentro_Custo: Variant;
//       AQuant: Double = 0; ACodRequisicao: Integer = 0): Integer;
//    class function CalculaValores(AQuantPrevista, AQuant, ACusto: Double): Double; static;

    { Public declarations }
  end;

var
  Frame_Requisicao_Pocket: TFrame_Requisicao_Pocket;

implementation

{$R *.dfm}

uses wrFuncoes, Classes.WR, Principal, CadProduto_Movimento, UnitFuncoes, Utils.Requisicao, Tag.Form;

/////////////////ABERTURA DA TELA\\\\\\\\\\\\\\\\\\\\\\\\\

procedure TFrame_Requisicao_Pocket.CreateDaTelaCarregaDataSets(
  Sender: TObject);
begin
  inherited;
  CreateDaTela.AdicionarDataSet(Cadastro, 'PRODUTO_REQUISICAO');
//  if Assigned(Self.Owner) and (Self.Owner is TFrmBase) then  //  Acha a Consulta
//  begin
//    if Assigned(Self.Owner.Owner)and Assigned(TFrmBase(Self.Owner.Owner).FrameConsulta)then
//      FConsulta :=  TForm(Self.Owner.Owner);
//  end;
end;

procedure TFrame_Requisicao_Pocket.FrameEnter(Sender: TObject);
begin
  inherited;
  PreencheLookupProduto_Estoque_Local(cbxLocalEstoqueOrigem.Properties);
  PreencheLookupProduto_Estoque_Local(cbxLocalEstoqueDestino.Properties);
  PreencheLookupCentro_Trabalho(cbxEquipe.Properties);
  PreencheLookUpFuncionarios(cxbFuncionario.Properties);
end;


procedure TFrame_Requisicao_Pocket.CadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  DetalheRequisicao.Open;
//  QuerBaixaRequisicao.Open;
end;

procedure TFrame_Requisicao_Pocket.CadastroBeforeClose(DataSet: TDataSet);
begin
  inherited;
  DetalheRequisicao.Close;
//  QuerBaixaRequisicao.Close;
end;


procedure TFrame_Requisicao_Pocket.CadastroBeforeOpen(DataSet: TDataSet);
begin
  inherited;

end;

///////////////////BTNCLICK\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

procedure TFrame_Requisicao_Pocket.btnNovoClick(
  Sender: TdxTileControlItem);
begin
  inherited;
  if DS.DataSet.State <> dsInsert then
    Cadastro.Insert;
  Cadastro.FieldByName('CODUSUARIO').AsInteger := usuario.Codigo;
  Cadastro.FieldByName('DT_EMISSAO').AsDateTime := DataHoraSys;
end;

procedure TFrame_Requisicao_Pocket.btnExcluirClick(Sender: TdxTileControlItem);
begin
  if Cadastro.FieldByName('CODPRODUTO_MOVIMENTO').AsInteger > 0 then
  begin
    ShowMessage('Não é Possivel excluir uma requisição com movimentação de estoque');
  end else
    inherited;
end;

//////////////////PROCEDURES E FUNCOES\\\\\\\\\\\\\\\\\\\\\\\\\\\
(*
class procedure TFrame_Requisicao_Pocket.SolicitaRequisicao(AQuery: TFDQuery; AEntradaSaida: String);
var
  AQuerRequisicao: TFDQuery;
  ADescricao, ACodProduto, AProduto, AUnidade, ACodOS, ALocalEstoqueOrigem, ALocalEstoqueDestino, AObservacao, ATipoMovimentacao: String;
  AQuantPrevista, ACusto, AValor, AValor_Compra: Double;
  ACodCentroTrabalho, ACodEmpresa, ACodUsuario, ACodCentroCusto: Integer;
begin
  AQuerRequisicao := GeraFDQuery(AQuery.Transaction);
  AQuerRequisicao.SQL.Text := 'select * from produto_requisicao';
  AQuerRequisicao.Open;



  AQuery.First;
  while not AQuery.Eof do
  begin
    if AQuery.Owner.ClassName = 'TFrame_Venda_Venda' then
    begin
      ADescricao    := 'VENDA';
      ACodEmpresa   := GetCodEmpresaFromCodigo(AQuery.FieldByName('CODVENDA').AsString);
      ACodOS        := AQuery.FieldByName('CODVENDA').AsString;
      AObservacao   := AQuery.FieldByName('OBS_PRODUCAO').AsString;
    end;
    if AQuery.Owner.ClassName = 'TFrmNF_Entrada' then
    begin
      ADescricao    := 'COMPRA';
      ACodEmpresa   := GetCodEmpresaFromCodigo(AQuery.FieldByName('CODNF_ENTRADA').AsString);
      ACodOS        := AQuery.FieldByName('CODNF_ENTRADA').AsString;
      AObservacao   := AQuery.FieldByName('OBSERVACAO').AsString;
    end;
    if AQuery.Owner.ClassName = 'TFrame_Cad_Producao' then
    begin
      ADescricao    := 'PRODUCAO';
      ACodEmpresa   := GetCodEmpresaFromCodigo(AQuery.FieldByName('CODVENDA').AsString);
      ACodOS        := AQuery.FieldByName('CODPRODUCAO').AsString;
      AObservacao   := AQuery.FieldByName('OBSERVACAO').AsString;
    end;
    ACodProduto            := AQuery.FieldByName('CODPRODUTO').AsString;
    AProduto               := AQuery.FieldByName('DESCRICAO').AsString;
    AUnidade               := AQuery.FieldByName('UNIDADE').AsString;
    ALocalEstoqueOrigem    := AQuery.FieldByName('PRODUTO_ESTOQUE_LOCAL').AsString;
//    ALocalEstoqueDestino   := AQuery.FieldByName('PRODUTO_ESTOQUE_LOCAL').AsString;
    AQuantPrevista         := AQuery.FieldByName('QUANT').AsFloat;
    ACusto                 := AQuery.FieldByName('CUSTO').AsFloat;
    AValor                 := AQuery.FieldByName('VALOR').AsFloat;
    AValor_Compra          := AQuery.FieldByName('VALOR_COMPRA').AsFloat;
//    ACodCentroTrabalho     := AQuery.FieldByName('CODCENTRO_TRABALHO').AsInteger;
    ACodUsuario            := usuario.Codigo;
    ACodCentroCusto        := AQuery.FieldByName('CODCENTRO_CUSTO').AsInteger;



    CriaRequisicao(ADescricao, ACodProduto, AProduto, AUnidade, ACodOS, ALocalEstoqueOrigem, ALocalEstoqueDestino,
                   AObservacao, AEntradaSaida, AQuantPrevista, ACusto, AValor, AValor_Compra, ACodCentroTrabalho,
                   ACodEmpresa, ACodUsuario, AQuerRequisicao, ACodCentroCusto);
    AQuery.Next;
  end;
end;
*)
procedure TFrame_Requisicao_Pocket.tcCadastroItem1Click(
  Sender: TdxTileControlItem);
var
  AFatorMultiplicador, ACodProduto_Movimento: Integer;
begin
  inherited;
  if ShowMessageWR('Concluir Requisição?', MB_ICONQUESTION) = mrYes then
  begin
    btnAlterarClick(nil);
    Cadastro.FieldByName('DT_ESTOQUE_BAIXA').AsDateTime            := DataHoraSys;
    Cadastro.FieldByName('CODUSUARIO_BAIXA').AsInteger             := Usuario.Codigo;
    Cadastro.FieldByName('QUANT').AsFloat                          := Cadastro.FieldByName('QUANT_PREVISTA').AsFloat;
    Cadastro.FieldByName('TOTAL').AsFloat                          := Trunc(Cadastro.FieldByName('CUSTO').AsFloat * Cadastro.FieldByName('QUANT_PREVISTA').AsFloat);
    Cadastro.FIeldByName('STATUS').AsString                        := 'NORMAL';  //ARRUMAR


    if Cadastro.FieldByName('TIPO_MOVIMENTACAO').AsString = 'S' then
      AFatorMultiplicador := -1
    else
    if Cadastro.FieldByName('TIPO_MOVIMENTACAO').AsString = 'E'  then
      AFatorMultiplicador := 1;

    if AFatorMultiplicador = 0 then
    begin
      ShowMessage('Não foi possivel definir o tipo de movimentação da requisição');
      Abort;
    end;


    MovimentaEstoque(Cadastro.Transaction,
    Cadastro.FieldByName('CODPRODUTO').AsString,
    Cadastro.FieldByName('CODEMPRESA').AsString,
    Cadastro.FieldByName('PRODUTO_ESTOQUE_LOCAL').AsString,
    '', Cadastro.FieldByName('DT_ESTOQUE_BAIXA').AsDateTime,
    Cadastro.FieldByName('MODULO').AsString + ' N: ' + Cadastro.FieldByName('CODVENDA').AsString + ': ' +  Cadastro.FieldByName('OBSERVACAO').AsString,
    Cadastro.FieldByName('QUANT_PREVISTA').AsFloat * AFatorMultiplicador,
    0{lote}, Usuario.Codigo, Cadastro.FieldByName('CODVENDA').AsString{CODNF_ENTRADA},
    Cadastro.FieldByName('CODVENDA').AsString{CODVENDA},
    Cadastro.FieldByName('VALOR_COMPRA').AsFloat,
    Cadastro.FieldByName('CUSTO').AsFloat,
    Cadastro.FieldByName('VALOR').AsFloat,
    'Frame_CadRequisicao_Pocket',
    Cadastro.FIeldByName('STATUS').AsString,
    Cadastro.FieldByName('MODULO').AsString,
    ACodProduto_Movimento);

    Cadastro.FieldByName('CODPRODUTO_MOVIMENTO').AsInteger := ACodProduto_Movimento;

    Cadastro.FieldByName('CUSTO_EXTRA').AsFloat := Utils.Requisicao.CalculaValores(Cadastro.FieldByName('QUANT_PREVISTA').AsFloat,
                                                                          Cadastro.FieldByName('QUANT').AsFloat,
                                                                          Cadastro.FieldByName('CUSTO').AsFloat);
    btnConfirmarClick(nil);
  end;
end;
(*
class function TFrame_Requisicao_Pocket.CriaRequisicao(ADescricao, ACodProduto, AProduto, AUnidade, ACodOS,
 ALocalEstoqueOrigem, ALocalEstoqueDestino, AObservacao, AEntradaSaida: String; AQuantPrevista, ACusto, AValor, AValor_Compra: Double;
 ACodCentroTrabalho, ACodEmpresa, ACodUsuario: Integer; AQuerRequisicao: TFDQuery; ACodCentro_Custo: Variant;
 AQuant: Double = 0; ACodRequisicao: Integer = 0): Integer;
begin
  AQuerRequisicao.Insert;
  AQuerRequisicao.FieldByName('CODIGO').AsInteger                 := trunc(GetProximoCodigoGen('CR_PRODUTO_REQUISICAO'));
  AQuerRequisicao.FieldByName('CODPRODUTO_REQUISICAO').AsInteger  := ACodRequisicao;
  AQuerRequisicao.FieldByName('MODULO').AsString                  := ADescricao;
  AQuerRequisicao.FieldByName('ATIVO').AsString                   := 'S';
  AQuerRequisicao.FieldByName('CODPRODUTO').AsString              := ACodProduto;
  AQuerRequisicao.FieldByName('PRODUTO').AsString                 := AProduto;
  AQuerRequisicao.FieldByName('UNIDADE').AsString                 := AUnidade;
  AQuerRequisicao.FieldByName('TIPO_MOVIMENTACAO').AsString       := AEntradaSaida;
  AQuerRequisicao.FieldByName('QUANT_PREVISTA').AsFloat           := AQuantPrevista;
  AQuerRequisicao.FieldByName('QUANT').AsFloat                    := AQuant;
  AQuerRequisicao.FieldByName('CUSTO').AsFloat                    := ACusto;
  AQuerRequisicao.FieldByName('VALOR').AsFloat                    := AValor;
  AQuerRequisicao.FieldByName('VALOR_COMPRA').AsFloat             := AValor_Compra;
  AQuerRequisicao.FieldByName('CODVENDA').AsString                := ACodOS;
  AQuerRequisicao.FieldByName('PRODUTO_ESTOQUE_ORIGEM').AsString  := ALocalEstoqueOrigem;
  AQuerRequisicao.FieldByName('PRODUTO_ESTOQUE_LOCAL').AsString   := ALocalEstoqueDestino;
  AQuerRequisicao.FieldByName('CODCENTRO_TRABALHO').AsInteger     := ACodCentroTrabalho;
  AQuerRequisicao.FieldByName('DT_EMISSAO').AsDateTime            := DataHoraSys;
  AQuerRequisicao.FieldByName('CODUSUARIO').AsInteger             := ACodUsuario;
  AQuerRequisicao.FieldByName('STATUS').AsString                  := 'PENDENTE';
  AQuerRequisicao.FieldByName('OBSERVACAO').AsString              := AObservacao;
  AQuerRequisicao.FieldByName('CODEMPRESA').AsInteger             := ACodEmpresa;
  AQuerRequisicao.FieldByName('CODCENTRO_CUSTO').Value            := ACodCentro_Custo;

  AQuerRequisicao.Post;
  Result := AQuerRequisicao.FieldByName('CODIGO').AsInteger;
end;
*)
(*
class procedure TFrame_Requisicao_Pocket.BaixaRequisicao(ACodigo: Integer; AQuerRequisicao: TFDQuery; AQuant: Double; AStatus :String;
                                                         ACodFuncionario, ACodCentroTrabalho, ACodMotivo: Integer; AObservacao: String);
var
  ACodProduto_Movimento, AFatorMultiplicador, ACodRequisicao: Integer;
  AQuantRestante, AQuantUtilizada, AQuantUtilizadaRestante: Double;
  ACriaNovo: String;
begin
  AFatorMultiplicador := 0;
  AQuerRequisicao.Close;
  AQuerRequisicao.ParamByName('CODIGO').AsInteger :=  ACodigo;
  AQuerRequisicao.Open;

  ACodRequisicao := ACodigo;

  if AQuerRequisicao.FieldByName('DT_ESTOQUE_BAIXA').IsNull then
  begin

    if AQuant > AQuerRequisicao.FieldByName('QUANT_PREVISTA').AsFloat then
    begin
      AQuantUtilizada := AQuerRequisicao.FieldByName('QUANT_PREVISTA').AsFloat;
      AQuantUtilizadaRestante := abs(AQuant - AQuerRequisicao.FieldByName('QUANT_PREVISTA').AsFloat);
    end
    else
      AQuantUtilizada := AQuant;

    if AQuant < AQuerRequisicao.FieldByName('QUANT_PREVISTA').AsFloat then
    begin
      AQuantRestante := abs(AQuant - AQuerRequisicao.FieldByName('QUANT_PREVISTA').AsFloat);
    end;


    AQuerRequisicao.Edit;
    AQuerRequisicao.FieldByName('DT_ESTOQUE_BAIXA').AsDateTime            := DataHoraSys;
    AQuerRequisicao.FieldByName('CODUSUARIO_BAIXA').AsInteger             := Usuario.Codigo;
    AQuerRequisicao.FieldByName('QUANT').AsFloat                          := AQuantUtilizada;
    AQuerRequisicao.FieldByName('TOTAL').AsFloat                          := Trunc(AQuerRequisicao.FieldByName('CUSTO').AsFloat * AQuantUtilizada);
    AQuerRequisicao.FIeldByName('PESSOA_FUNCIONARIO_CODIGO').AsInteger    := ACodFuncionario;
    AQuerRequisicao.FIeldByName('CODCENTRO_TRABALHO').AsInteger           := ACodCentroTrabalho;
    AQuerRequisicao.FIeldByName('STATUS').AsString                        := 'NORMAL';  //ARRUMAR
    AQuerRequisicao.FIeldByName('CODPRODUTO_REQUISICAO_MOTIVO').AsInteger := ACodMotivo;




    if AQuerRequisicao.FieldByName('TIPO_MOVIMENTACAO').AsString = 'S' then
      AFatorMultiplicador := -1
    else
    if AQuerRequisicao.FieldByName('TIPO_MOVIMENTACAO').AsString = 'E'  then
      AFatorMultiplicador := 1;

    if AFatorMultiplicador = 0 then
    begin
      ShowMessage('Não foi possivel definir o tipo de movimentação da requisição');
      Abort;
    end;


    MovimentaEstoque(AQuerRequisicao.Transaction,
    AQuerRequisicao.FieldByName('CODPRODUTO').AsString,
    AQuerRequisicao.FieldByName('CODEMPRESA').AsString,
    AQuerRequisicao.FieldByName('PRODUTO_ESTOQUE_LOCAL').AsString,
    '', AQuerRequisicao.FieldByName('DT_ESTOQUE_BAIXA').AsDateTime,
    AQuerRequisicao.FieldByName('MODULO').AsString + 'n: ' + AQuerRequisicao.FieldByName('CODVENDA').AsString + ': ' +  AQuerRequisicao.FieldByName('OBSERVACAO').AsString,
    AQuantUtilizada * AFatorMultiplicador,
    0{lote}, Usuario.Codigo, AQuerRequisicao.FieldByName('CODVENDA').AsString{CODNF_ENTRADA},
    AQuerRequisicao.FieldByName('CODVENDA').AsString{CODVENDA},
    AQuerRequisicao.FieldByName('VALOR_COMPRA').AsFloat,
    AQuerRequisicao.FieldByName('CUSTO').AsFloat,
    AQuerRequisicao.FieldByName('VALOR').AsFloat, 'Frame_CadRequisicao_Pocket',
    AQuerRequisicao.FIeldByName('STATUS').AsString,
    AQuerRequisicao.FieldByName('MODULO').AsString,
    ACodProduto_Movimento);

    AQuerRequisicao.FieldByName('CODPRODUTO_MOVIMENTO').AsInteger := ACodProduto_Movimento;

    AQuerRequisicao.FieldByName('CUSTO_EXTRA').AsFloat := Services.Requisicao.CalculaValores(AQuerRequisicao.FieldByName('QUANT_PREVISTA').AsFloat,
                                                                                                  AQuerRequisicao.FieldByName('QUANT').AsFloat,
                                                                                                  AQuerRequisicao.FieldByName('CUSTO').AsFloat);

    AQuerRequisicao.Post;
  end;

  if (AQuantUtilizadaRestante > 0) then
    AQuant :=  AQuantUtilizadaRestante
  else
  if (AQuantRestante > 0) then
    AQuant :=  AQuantRestante;

  if (AQuant > 0) then
  begin
    CriaRequisicao(AQuerRequisicao.FieldByName('MODULO').AsString,
                   AQuerRequisicao.FieldByName('CODPRODUTO').AsString,
                   AQuerRequisicao.FieldByName('PRODUTO').AsString,
                   AQuerRequisicao.FieldByName('UNIDADE').AsString,
                   AQuerRequisicao.FieldByName('CODVENDA').AsString,
                   AQuerRequisicao.FieldByName('PRODUTO_ESTOQUE_ORIGEM').AsString,
                   AQuerRequisicao.FieldByName('PRODUTO_ESTOQUE_LOCAL').AsString,
                   AQuerRequisicao.FieldByName('OBSERVACAO').AsString,
                   AQuerRequisicao.FieldByName('TIPO_MOVIMENTACAO').AsString,
                   AQuant,
                   AQuerRequisicao.FieldByName('CUSTO').AsFloat,
                   AQuerRequisicao.FieldByName('VALOR').AsFloat,
                   AQuerRequisicao.FieldByName('VALOR_COMPRA').AsFloat,
                   AQuerRequisicao.FieldByName('CODCENTRO_TRABALHO').AsInteger,
                   AQuerRequisicao.FieldByName('CODEMPRESA').AsInteger,
                   AQuerRequisicao.FieldByName('CODUSUARIO').AsInteger,
                   AQuerRequisicao,
                   0);



    if AQuantUtilizadaRestante > 0 then
    begin

      AQuerRequisicao.Edit;
      AQuerRequisicao.FieldByName('DT_ESTOQUE_BAIXA').AsDateTime         := DataHoraSys;
      AQuerRequisicao.FieldByName('CODUSUARIO_BAIXA').AsInteger          := Usuario.Codigo;
      AQuerRequisicao.FieldByName('QUANT').AsFloat                       := AQuantUtilizadaRestante;
      AQuerRequisicao.FieldByName('TOTAL').AsFloat                       := Trunc(AQuerRequisicao.FieldByName('CUSTO').AsFloat * AQuantUtilizadaRestante);
      AQuerRequisicao.FIeldByName('PESSOA_FUNCIONARIO_CODIGO').AsInteger := ACodFuncionario;
      AQuerRequisicao.FIeldByName('CODCENTRO_TRABALHO').AsInteger        := ACodCentroTrabalho;
      AQuerRequisicao.FIeldByName('STATUS').AsString                     := 'ANORMAL';
      AQuerRequisicao.FieldByName('OBSERVACAO').AsString                 := AObservacao;
      //ANORMAL


      MovimentaEstoque(AQuerRequisicao.Transaction,
      AQuerRequisicao.FieldByName('CODPRODUTO').AsString,
      AQuerRequisicao.FieldByName('CODEMPRESA').AsString,
      AQuerRequisicao.FieldByName('PRODUTO_ESTOQUE_LOCAL').AsString,
      '', AQuerRequisicao.FieldByName('DT_ESTOQUE_BAIXA').AsDateTime,
      AQuerRequisicao.FieldByName('MODULO').AsString + ' Nº: ' + AQuerRequisicao.FieldByName('CODVENDA').AsString + ': ' + AQuerRequisicao.FieldByName('OBSERVACAO').AsString,
      AQuantUtilizadaRestante * AFatorMultiplicador,
      0{lote}, Usuario.Codigo, AQuerRequisicao.FieldByName('CODVENDA').AsString{CODNF_ENTRADA},
      AQuerRequisicao.FieldByName('CODVENDA').AsString{CODVENDA},
      AQuerRequisicao.FieldByName('VALOR_COMPRA').AsFloat,
      AQuerRequisicao.FieldByName('CUSTO').AsFloat,
      AQuerRequisicao.FieldByName('VALOR').AsFloat, 'Frame_CadRequisicao_Pocket',
      AQuerRequisicao.FIeldByName('STATUS').AsString,
      AQuerRequisicao.FieldByName('MODULO').AsString,
      ACodProduto_Movimento);

      AQuerRequisicao.FieldByName('CODPRODUTO_MOVIMENTO').AsInteger := ACodProduto_Movimento;

      AQuerRequisicao.Post;
    end;
  end;
end;
*)
(*
class function TFrame_Requisicao_Pocket.CalculaValores(AQuantPrevista, AQuant, ACusto: Double): Double;
var
  ACustoTotalPrevisto, ACustoTotal, ADiferenca: Double;
begin
  ACustoTotalPrevisto := Trunc(AQuantPrevista * ACusto);
  ACustoTotal         := Trunc(AQuant * ACusto);

  ADiferenca := trunc((((ACustoTotal - ACustoTotalPrevisto)/ ACustoTotalPrevisto)*100));
  if ADiferenca < 0  then
    ADiferenca := ADiferenca * -1 //-20% de custo, transforma para positivo, para apresentar lucro
  else
    ADiferenca := ADiferenca * 1;//+20% de custo, transforma para negativo, para aparesetar como perda
  Result := ADiferenca;
end;
*)
(*
class procedure TFrame_Requisicao_Pocket.RecusarRequisicao(ACodigo: Integer; AQuerRequisicao: TFDQuery);
begin

  if AQuerRequisicao.FieldByName('STATUS').AsString <> 'Pendente' then
  begin
    ShowMessage('Não é possivel recusar uma requsição que não esta pendente');
    Exit;
  end;

  AQuerRequisicao.Close;
  AQuerRequisicao.ParamByName('CODIGO').AsInteger :=  ACodigo;
  AQuerRequisicao.Open;

  AQuerRequisicao.Edit;
  AQuerRequisicao.FieldByName('CODUSUARIO_BAIXA').AsInteger := Usuario.Codigo;
  AQuerRequisicao.FieldByName('STATUS').AsString := 'Recusada';
  AQuerRequisicao.Post;
end;
*)

(*
class procedure TFrame_Requisicao_Pocket.CancelaRequisicao(ACodigo: Integer; AQuerRequisicao: TFDQuery);
begin
  if AQuerRequisicao.FieldByName('STATUS').AsString <> 'Pendente' then
  begin
    ShowMessage('Não é possivel Cancelar uma requsição que não esta pendente, Entre em contato com o Estoquista');
    Abort;
  end;

  AQuerRequisicao.Close;
  AQuerRequisicao.ParamByName('CODIGO').AsInteger :=  ACodigo;
  AQuerRequisicao.Open;

  AQuerRequisicao.Edit;
  AQuerRequisicao.FieldByName('CODUSUARIO_BAIXA').AsInteger := Usuario.Codigo;
  AQuerRequisicao.FieldByName('STATUS').AsString := 'Cancelada';
  AQuerRequisicao.Post;
end;
*)
//////////////////////////VALUE CHANGED\\\\\\\\\\\\\\\\\\\\\\\

procedure TFrame_Requisicao_Pocket.edtProdutoÎProdutoPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if Cadastro.State in dsEditModes then
  begin
    Produto.Close;
    Produto.Open;
    Cadastro.FieldByName('PRODUTO').AsString := lblProdutoÎProdutoÎDESCRICAO.Caption;
    Cadastro.FieldByName('CUSTO').AsFloat    := Produto.FieldByName('CUSTO').AsFloat;
//    Cadastro.FieldByName('VALOR').AsFloat    := Produto.FieldByName('VALOR').AsFloat;
    Cadastro.FieldByName('UNIDADE').AsString := Produto.FieldByName('UNIDADE').AsString;
  end;
end;

procedure TFrame_Requisicao_Pocket.edtStatusPropertiesChange(Sender: TObject);
begin
  inherited;
////  tcConcluirRequisicao.Enabled := (Cadastro.FieldByName('STATUS').AsString = 'Pendente') or (Cadastro.FieldByName('STATUS').AsString =  'Recusada');
////  tcRecusarRequisicao.Enabled  :=  Cadastro.FieldByName('STATUS').AsString = 'Pendente';
//  GrupoCabecalho.Enabled       :=  Cadastro.FieldByName('STATUS').AsString = 'PENDENTE';
//  GrupoProduto.Enabled         :=  Cadastro.FieldByName('STATUS').AsString = 'PENDENTE';
//  GrupoDestino.Enabled         :=  Cadastro.FieldByName('STATUS').AsString = 'PENDENTE';
////  GrupoStatus.Enabled          :=  Cadastro.FieldByName('STATUS').AsString = 'Pendente';
//  GrupoObservacao.Enabled      :=  Cadastro.FieldByName('STATUS').AsString = 'PENDENTE';
end;

procedure TFrame_Requisicao_Pocket.chkVendaPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;

end;


/////////////////////////FINAL\\\\\\\\\\\\\\\\\\\\\\\\\\\\\


procedure TFrame_Requisicao_Pocket.WREventosCadastroConfiguracao_Acoes(
  Sender: TObject);
begin
//  inherited;
  with WREventosCadastro do
  begin
    with AddForm(Self) do
    begin
      AddChavePrimaria('PRODUTO_REQUISICAO', 'CODIGO', edtCodigo);
      AddGenerator(edtCodigo);
//      AddGeneratorMultEmpresa(edtCodigo);
      AddValorInicial('PRODUTO_REQUISICAO', 'ATIVO',cbxAtivo,'S');
      AddValorInicial('PRODUTO_REQUISICAO', 'STATUS', edtStatus, 'PENDENTE');
      AddValorInicial('PRODUTO_REQUISICAO', 'DT_EMISSAO',edtDT_Emissao,'@DATA');
      AddValorInicial('PRODUTO_REQUISICAO', 'CODEMPRESA',edtDT_Emissao, Empresa);
    end;
  end;
end;

initialization
  RegisterClass(TFrame_Requisicao_Pocket);
  RegisterFrameCad(Tag_Estoque_Requisicao, TFrame_Requisicao_Pocket);

end.
