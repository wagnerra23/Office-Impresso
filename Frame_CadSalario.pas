unit Frame_CadSalario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Frame_Cad, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, cxContainer, cxEdit,
  Vcl.Menus, dxLayoutcxEditAdapters, dxLayoutControlAdapters, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  dxUIAdorners, uWRFormataCamposDataSet, frxClass, frxDBSet, UCHistDataset,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet,
  System.Generics.Collections, WREventos, UCBase, cxClasses,
  dxLayoutLookAndFeels, System.ImageList, Vcl.ImgList, Vcl.ExtCtrls,
  dxCustomTileControl, dxTileControl, dxStatusBar, dxLayoutContainer,
  cxMaskEdit, cxDropDownEdit, cxDBEdit, Vcl.StdCtrls, cxButtons, cxTextEdit,
  dxLayoutControl, cxCurrencyEdit, cxButtonEdit, cxLabel, Frame_CadProduto_Servico, System.StrUtils, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TFrame_Salario = class(TFrmCad_Frame)
    edtSalarioMensal: TcxDBCurrencyEdit;
    liedtSalarioMensal: TdxLayoutItem;
    liedtDecimoTerceiroAnual: TdxLayoutItem;
    edtDecimoTerceiroAnual: TcxDBCurrencyEdit;
    liedtFuncionarioÎPessoas: TdxLayoutItem;
    edtFuncionarioÎPessoas: TcxDBButtonEdit;
    liedtFuncionarioÎPessoasÎRAZAOSOCIAL: TdxLayoutItem;
    edtFuncionarioÎPessoasÎRAZAOSOCIAL: TcxLabel;
    liedtFeriasAnual: TdxLayoutItem;
    edtFeriasAnual: TcxDBCurrencyEdit;
    liedtEncargosAnual: TdxLayoutItem;
    edtEncargosAnual: TcxDBCurrencyEdit;
    dxLayoutGroup1: TdxLayoutGroup;
    liedtOutrosVenctos: TdxLayoutItem;
    edtOutrosVenctos: TcxDBCurrencyEdit;
    dxLayoutItem1: TdxLayoutItem;
    edtHorasTrabalhadas: TcxDBCurrencyEdit;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    edtValorHora: TcxDBCurrencyEdit;
    liedtDecimoTerceiro: TdxLayoutItem;
    edtDecimoTerceiro: TcxDBCurrencyEdit;
    liedtFeriasMensal: TdxLayoutItem;
    edtFeriasMensal: TcxDBCurrencyEdit;
    liedtEncargosMensal: TdxLayoutItem;
    edtEncargosMensal: TcxDBCurrencyEdit;
    liedtOutrosMensal: TdxLayoutItem;
    edtOutrosMensal: TcxDBCurrencyEdit;
    liedtSalario: TdxLayoutItem;
    edtSalario: TcxDBCurrencyEdit;
    liedtHoras: TdxLayoutItem;
    edtHoras: TcxDBCurrencyEdit;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutItem5: TdxLayoutItem;
    edtTotalMensal: TcxDBCurrencyEdit;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    edtAviso: TcxLabel;
    liedtAviso: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutItem3: TdxLayoutItem;
    btnAtualizarPreco: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    edtCodProdutoÎPRODUTO: TcxDBButtonEdit;
    dxLayoutItem6: TdxLayoutItem;
    edtCodProdutoÎPRODUTOÎDESCRICAO: TcxTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    edtValorAtualizado: TcxDBCurrencyEdit;
    dxLayoutItem9: TdxLayoutItem;
    edtValorAnterior: TcxDBCurrencyEdit;
    lilblAlteracao: TdxLayoutItem;
    lblAlteracao: TcxLabel;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutItem10: TdxLayoutItem;
    btnNovoServico: TcxButton;
    Produto: TFDQuery;
    DSProduto: TDataSource;
    UCHist_Produto: TUCHist_DataSet;
    dxLayoutItem11: TdxLayoutItem;
    cxDBButtonEdit1: TcxDBButtonEdit;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    Usuario: TFDQuery;
    procedure edtValoresValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure edtFuncionarioÎPessoasPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure btnAtualizarPrecoClick(Sender: TObject);
    procedure btnNovoServicoClick(Sender: TObject);
    procedure CadastroAfterOpen(DataSet: TDataSet);
    procedure CadastroBeforeClose(DataSet: TDataSet);
  private
    { Private declarations }
    FFrmProduto_Frame: TFrmProduto_Servico_Frame;
  public
    { Public declarations }
  end;

  procedure CalculaValores(ADataSetSalario: TDataSet; ATipoAlteracao: String);
  function CriarNovoServicoVinculado(ADataSetSalario, ADataSetProduto: TDataSet): String;
  function AtualizarServico(ADataSetSalario, ADataSetProduto: TDataSet): Boolean;
  procedure CriarNovoLancamentoSalario(ADataSetSalario: TDataSet; ACodPessoa, ARazaoSocial: string; ASeqFuncionario: integer);

var
  Frame_Salario: TFrame_Salario;

implementation

{$R *.dfm}


Uses UnitFuncoes, Base, wrFuncoes, Tag.Form;

procedure TFrame_Salario.btnNovoServicoClick(Sender: TObject);
begin
  VerificaSePodeAlteraDataset;
  edtCodProdutoÎPRODUTOÎDESCRICAO.Text := CriarNovoServicoVinculado(Cadastro, Produto);
end;

procedure TFrame_Salario.CadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  Produto.Open;
  Usuario.Open;
  lilblAlteracao.Visible := Usuario.RecordCount > 0;
  lblAlteracao.Caption := 'Valor Atualizado por ' + Usuario.FieldByName('USUARIO').AsString + ' em ' + DataSet.FieldByName('DT_ATUALIZACAO_VALOR').AsString;
end;

procedure TFrame_Salario.CadastroBeforeClose(DataSet: TDataSet);
begin
  inherited;
  Produto.Close;
  Usuario.Close;
end;

procedure CalculaValores(ADataSetSalario: TDataSet; ATipoAlteracao: String);
begin
  if ATipoAlteracao = 'mês' then
  begin
    ADataSetSalario.FieldByName('DECIMO_TERCEIRO_ANUAL').AsFloat := ADataSetSalario.FieldByName('DECIMO_TERCEIRO_MENSAL').AsFloat * 12;
    ADataSetSalario.FieldByName('FERIAS_ANUAL').AsFloat := ADataSetSalario.FieldByName('FERIAS_MENSAL').AsFloat * 12;
    ADataSetSalario.FieldByName('OUTROS_ENCARGOS_ANUAL').AsFloat := ADataSetSalario.FieldByName('OUTROS_ENCARGOS_MENSAL').AsFloat * 12;
    ADataSetSalario.FieldByName('BENEFICIOS_ANUAL').AsFloat := ADataSetSalario.FieldByName('BENEFICIOS_MENSAL').AsFloat * 12;
  end
  else
  begin
    ADataSetSalario.FieldByName('DECIMO_TERCEIRO_MENSAL').AsFloat := ADataSetSalario.FieldByName('DECIMO_TERCEIRO_ANUAL').AsFloat / 12;
    ADataSetSalario.FieldByName('FERIAS_MENSAL').AsFloat := ADataSetSalario.FieldByName('FERIAS_ANUAL').AsFloat / 12;
    ADataSetSalario.FieldByName('OUTROS_ENCARGOS_MENSAL').AsFloat := ADataSetSalario.FieldByName('OUTROS_ENCARGOS_ANUAL').AsFloat / 12;
    ADataSetSalario.FieldByName('BENEFICIOS_MENSAL').AsFloat := ADataSetSalario.FieldByName('BENEFICIOS_ANUAL').AsFloat / 12;
  end;

  ADataSetSalario.FieldByName('TOTAL_ENCARGOS').AsFloat := ADataSetSalario.FieldByName('FERIAS_MENSAL').AsFloat +
                                                          ADataSetSalario.FieldByName('DECIMO_TERCEIRO_MENSAL').AsFloat +
                                                          ADataSetSalario.FieldByName('OUTROS_ENCARGOS_MENSAL').AsFloat +
                                                          ADataSetSalario.FieldByName('BENEFICIOS_MENSAL').AsFloat;

  ADataSetSalario.FieldByName('TOTAL_MENSAL').AsFloat := ADataSetSalario.FieldByName('SALARIO').AsFloat  +
                                                  ADataSetSalario.FieldByName('TOTAL_ENCARGOS').AsFloat;

  ADataSetSalario.FieldByName('QTD_HORAS_RATEADAS').AsFloat := ADataSetSalario.FieldByName('QTD_HORAS_TRABALHADAS_MENSAL').AsFloat * ADataSetSalario.FieldByName('PERC_RATEIO').AsFloat/100;
  if ADataSetSalario.FieldByName('QTD_HORAS_TRABALHADAS_MENSAL').AsFloat > 0 then
    ADataSetSalario.FieldByName('VALOR_HORA').AsFloat := ADataSetSalario.FieldByName('TOTAL_MENSAL').AsFloat/ADataSetSalario.FieldByName('QTD_HORAS_TRABALHADAS_MENSAL').AsFloat;
end;

procedure TFrame_Salario.btnAtualizarPrecoClick(Sender: TObject);
var
  AValorOld: Double;
  ANovoValor: Double;
begin
  inherited;
  AtualizarServico(Cadastro, Produto);
end;

procedure TFrame_Salario.edtFuncionarioÎPessoasPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  inherited;
  VerificaSePodeAlteraDataSet;
  Cadastro.FieldByName('DESCRICAO').AsString := edtFuncionarioÎPessoasÎRAZAOSOCIAL.Caption;
  Cadastro.FieldByName('CODFUNCIONARIO').AsString := Cadastro.FieldByName('PESSOA_FUNCIONARIO_CODIGO').AsString;
end;

procedure TFrame_Salario.edtValoresValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  VerificaSePodeAlteraDataSet;
  Cadastro.FieldByName(TcxDBCurrencyEdit(Sender).DataBinding.DataField).AsFloat := DisplayValue;
  CalculaValores(Cadastro, 'ano');
  liedtAviso.Visible := Cadastro.FieldByName('QTD_HORAS_TRABALHADAS_MENSAL').AsFloat = 0;
end;

function AtualizarServico(ADataSetSalario, ADataSetProduto: TDataSet): Boolean;
var
  ANovoValor, AValorOld: Double;
begin
  if MessageDlg('Deseja atualizar o valor do serviço para R$ '+ VarToStr(ADataSetSalario.FieldByName('VALOR_HORA').AsFloat) +'?', mtConfirmation, mbYesNo, 0) = mrNo then
    Exit;

  ANovoValor := ADataSetSalario.FieldByName('VALOR_HORA').AsFloat;
  AValorOld := ADataSetSalario.FieldByName('SERVICO_VALOR_ATUALIZADO').AsFloat;


  if not (ADataSetProduto.State = dsEdit) then
    ADataSetProduto.Edit;

  ADataSetProduto.FieldByName('VALOR').AsFloat := ANovoValor;
  ADataSetProduto.FieldByName('DT_ALTERACAO').AsFloat := DataHoraSys;

  try
    ADataSetProduto.Post;
  Except
    ADataSetProduto.Cancel;
    Result := False;
    Exit;
  end;

  if not (ADataSetSalario.State = dsEdit) then
    ADataSetSalario.Edit;

  ADataSetSalario.FieldByName('SERVICO_VALOR_ATUALIZADO').AsFloat := ANovoValor;
  ADataSetSalario.FieldByName('SERVICO_VALOR_ANTERIOR').AsFloat := AValorOld;
  ADataSetSalario.FieldByName('DT_ATUALIZACAO_VALOR').AsDateTime := DataHoraSys;
  ADataSetSalario.FieldByName('CODUSUARIO_ATUALIZACAO').AsInteger := Usuario.Codigo;
  Result := True;

end;

function CriarNovoServicoVinculado(ADataSetSalario, ADataSetProduto: TDataSet): String;
var
  ADescricao, APessoaCodigo, APessoaTipo: string;
  AValor: Double;
  APessoaSequencia, ACodProduto: Integer;
  QuerX, QuerTipo: TFDQuery;
  ADataAtual: TDateTime;
begin
  QuerX := GeraFDQuery;
  try
    if ADataSetSalario.FieldByName('PESSOA_FUNCIONARIO_CODIGO').AsString = '' then
    begin
      ShowMessage('Sem código de funcionário.');
      Exit;
    end;

    QuerX.SQL.Text := 'SELECT P.CODIGO, P.VALOR, P.DESCRICAO FROM PRODUTO P WHERE P.PESSOA_FUNCIONARIO_CODIGO = ' +
                      QuotedStr(ADataSetSalario.FieldByName('PESSOA_FUNCIONARIO_CODIGO').AsString);
    QuerX.Open;
    if QuerX.RecordCount > 1 then
    begin
      ADataSetSalario.FieldByName('CODSERVICO_VINCULADO').AsString := QuerX.FieldByName('CODIGO').AsString;
      ADataSetSalario.FieldByName('SERVICO_VALOR_ANTERIOR').AsFloat := QuerX.FieldByName('VALOR').AsFloat;
      Result := QuerX.FieldByName('DESCRICAO').AsString;
      Exit;
    end;

    if MessageDlg('Deseja criar um novo serviço vinculado ao funcionário?', mtConfirmation, mbYesNo, 0) = mrNo then
      Exit;

    ADataAtual := DataHoraSys;

    ADescricao        := 'MAO DE OBRA' + ' - ' + ADataSetSalario.FieldByName('DESCRICAO').AsString;
    AValor            := ADataSetSalario.FieldByName('VALOR_HORA').AsFloat;
    APessoaCodigo     := ADataSetSalario.FieldByName('PESSOA_FUNCIONARIO_CODIGO').AsString;
    APessoaTipo       := ADataSetSalario.FieldByName('PESSOA_FUNCIONARIO_TIPO').AsString;
    APessoaSequencia  := ADataSetSalario.FieldByName('PESSOA_FUNCIONARIO_SEQUENCIA').AsInteger;

    ADataSetProduto.Insert;
    ACodProduto := Trunc(GetProximoCodigoGen('CR_PRODUTO'));
    ADataSetProduto.FieldByName('CODIGO').AsInteger                       := ACodProduto;
    ADataSetProduto.FieldByName('DESCRICAO').AsString                     := ADescricao;
    ADataSetProduto.FieldByName('VALOR').AsFloat                          := AValor;
    ADataSetProduto.FieldByName('PESSOA_FUNCIONARIO_CODIGO').AsString     := APessoaCodigo;
    ADataSetProduto.FieldByName('PESSOA_FUNCIONARIO_TIPO').AsString       := APessoaTipo;
    ADataSetProduto.FieldByName('PESSOA_FUNCIONARIO_SEQUENCIA').AsInteger := APessoaSequencia;
    ADataSetProduto.FieldByName('UNIDADE').AsString                       := 'HS';
    ADataSetProduto.FieldByName('COMP').AsFloat                           := 1;
    ADataSetProduto.FieldByName('LARG').AsFloat                           := 1;
    ADataSetProduto.FieldByName('ESPESSURA').AsFloat                      := 1;
    ADataSetProduto.FieldByName('CALC_PMARGEM_CONTRIBUICAO').AsFloat      := 100;

    // Cód. Tipo de Produto
    QuerTipo := GeraFDQuery;
    QuerTipo.SQL.Text := 'SELECT PT.CODIGO FROM PRODUTO_TIPO PT WHERE PT.CLASSIFICACAO = ''SERVICO'' ORDER BY PT.CODIGO ASC';
    try
      QuerTipo.Open;

      QuerTipo.First;
      ADataSetProduto.FieldByName('CODPRODUTO_TIPO').AsInteger := QuerTipo.FieldByName('CODIGO').AsInteger;
    finally
      QuerTipo.Free;
    end;

    // código da familia
    ADataSetProduto.FieldByName('ESTOQUE_MIN').AsFloat                 := 1;
    ADataSetProduto.FieldByName('ESTOQUE_MAX').AsFloat                 := 2;
    ADataSetProduto.FieldByName('ATIVO').AsString                      := 'S';
    ADataSetProduto.FieldByName('PODE_RETORNAR_AO_ESTOQUE').AsString   := 'S';
    ADataSetProduto.FieldByName('PODE_SER_VENDIDO').AsString           := 'N';
    ADataSetProduto.FieldByName('PODE_SER_COMPRADO').AsString          := 'N';
    ADataSetProduto.FieldByName('TEM_IPPT').AsString                   := 'T';
    ADataSetProduto.FieldByName('TEM_IAT').AsString                    := 'A';
    ADataSetProduto.FieldByName('TEM_LOTE').AsString                   := 'N';
    ADataSetProduto.FieldByName('TEM_COMPOSICAO').AsString             := 'N';
    ADataSetProduto.FieldByName('TEM_TABELA_PRECO_FIXO').AsString      := 'N';
    ADataSetProduto.FieldByName('DT_CADASTRO').AsDateTime              := ADataAtual;
    ADataSetProduto.FieldByName('DT_ALTERACAO').AsDateTime             := ADataAtual;
    ADataSetProduto.FieldByName('PODE_ATUALIZAR_MARKUP').AsString      := 'N';
    ADataSetProduto.FieldByName('TEM_MARGEM_FIXA_CONTIBUICAO').AsString:= 'N';
    ADataSetProduto.FieldByName('QTDADEPECA').AsFloat                  := 1;
    ADataSetProduto.FieldByName('QTDADEPECA_RENDIMENTO').AsFloat       := 1;
    ADataSetProduto.FieldByName('COMP_RENDIMENTO').AsFloat             := 1;
    ADataSetProduto.FieldByName('LARG_RENDIMENTO').AsFloat             := 1;
    ADataSetProduto.FieldByName('ESPESSURA_RENDIMENTO').AsFloat        := 1;
    ADataSetProduto.FieldByName('QUANT_RENDIMENTO').AsFloat            := 1;
    ADataSetProduto.FieldByName('ESPESSURA_FORMULA').AsString          := '1';
    ADataSetProduto.FieldByName('COMP_FORMULA').AsString               := '1';
    ADataSetProduto.FieldByName('LARG_FORMULA').AsString               := '1';
    ADataSetProduto.FieldByName('QTDADEPECA_FORMULA').AsString         := '1';
    ADataSetProduto.FieldByName('QUANT').AsFloat                       := 1;
    ADataSetProduto.FieldByName('TOTAL').AsFloat                       := AValor;
    ADataSetProduto.FieldByName('TEM_SERVICO').AsString                := 'S';
    ADataSetProduto.Post;

    if not (ADataSetSalario.State in [dsInsert, dsEdit]) then
      ADataSetSalario.Edit;

    ADataSetSalario.FieldByName('CODSERVICO_VINCULADO').AsInteger := ACodProduto;
    ADataSetSalario.FieldByName('SERVICO_VALOR_ATUALIZADO').AsFloat := AValor;
    ADataSetSalario.FieldByName('SERVICO_VALOR_ANTERIOR').AsFloat := AValor;
    ADataSetSalario.FieldByName('DT_ATUALIZACAO_VALOR').AsDateTime := DataHoraSys;
    ADataSetSalario.FieldByName('CODUSUARIO_ATUALIZACAO').AsInteger := Usuario.Codigo;

    Result := ADescricao;
  finally
    QuerX.Free;
  end;
end;

procedure CriarNovoLancamentoSalario(ADataSetSalario: TDataSet; ACodPessoa, ARazaoSocial: string; ASeqFuncionario: integer);
begin
  ADataSetSalario.Insert;
  ADataSetSalario.FieldByName('CODIGO').AsInteger := Trunc(GetProximoCodigoGen('CR_PRODUTO'));
  ADataSetSalario.FieldByName('CODFUNCIONARIO').AsString := ACodPessoa;
  ADataSetSalario.FieldByName('RAZAOSOCIAL').AsString := ARazaoSocial;
  ADataSetSalario.FieldByName('COMPETENCIA').AsDateTime := DataHoraSys;
  ADataSetSalario.FieldByName('DT_ALTERACAO').AsDateTime := DataHoraSys;
  ADataSetSalario.FieldByName('PESSOA_FUNCIONARIO_CODIGO').AsString := ACodPessoa;
  ADataSetSalario.FieldByName('PESSOA_FUNCIONARIO_TIPO').AsString := 'FUN';
  ADataSetSalario.FieldByName('PESSOA_FUNCIONARIO_SEQUENCIA').AsInteger := ASeqFuncionario;
  ADataSetSalario.Post;
end;

initialization
  RegisterClass(TFrame_Salario);
  RegisterFrameCad(Tag_Salario, TFrame_Salario);

end.
