unit CadProduto_Movimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls,
  Vcl.Forms, Vcl.Dialogs,  {$IFDEF COMERCIAL}CadM,{$ENDIF} cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  Vcl.Menus, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB,
  cxDBData, dxLayoutControlAdapters, dxLayoutContainer, dxLayoutcxEditAdapters, IBX.IBCustomDataSet, UCBase,
  dxLayoutLookAndFeels, System.ImageList, Vcl.ImgList, IBX.IBStoredProc, IBX.IBDatabase, Vcl.ExtCtrls, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxTextEdit, cxDBEdit,
  cxDBNavigator, Vcl.StdCtrls, cxButtons, dxLayoutControl, dxStatusBar, cxLabel, cxMaskEdit, cxButtonEdit,
  cxCurrencyEdit, cxDropDownEdit, cxCalendar, IBX.IBQuery, cxCheckBox, dxSkinsCore, WREventos,
  cxDataControllerConditionalFormattingRulesManagerDialog, FireDAC.Stan.Intf, FireDAC.Comp.Client,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, frxClass, frxDBSet, UCHistDataset, dxUIAdorners,
  fs_iinterpreter, System.Generics.Collections, WRButtonsEditAdd, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White;

type
  TFrmProduto_Movimento = class{$IFDEF PAF}(TForm){$ENDIF} {$IFDEF COMERCIAL}(TFrmCadM){$ENDIF}
    liedtProdutoÎProduto: TdxLayoutItem;
    edtProdutoÎProduto: TcxDBButtonEdit;
    lilblProdutoÎProdutoÎUNIDADE: TdxLayoutItem;
    lblProdutoÎProdutoÎUNIDADE: TcxLabel;
    licbxTipo_Movimento: TdxLayoutItem;
    cbxTipo_Movimento: TcxDBComboBox;
    lilblProdutoÎProdutoÎDESCRICAO: TdxLayoutItem;
    lblProdutoÎProdutoÎDESCRICAO: TcxLabel;
    liedtObservacao: TdxLayoutItem;
    edtObservacao: TcxDBTextEdit;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    liedtData: TdxLayoutItem;
    edtData: TcxDBDateEdit;
    edtEstoqueAtual: TcxCurrencyEdit;
    liedtEstoqueAtual: TdxLayoutItem;
    cbxProduto_Estoque_Local: TcxDBComboBox;
    licbxProduto_Estoque_Local: TdxLayoutItem;
    liedtLoteÎProduto_Lote: TdxLayoutItem;
    edtLoteÎProduto_Lote: TcxDBButtonEdit;
    lilblLoteÎProduto_LoteÎREFERENCIA: TdxLayoutItem;
    lblLoteÎProduto_LoteÎREFERENCIA: TcxLabel;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    lilblLoteÎProduto_LoteÎDESCRICAO: TdxLayoutItem;
    lblLoteÎProduto_LoteÎDESCRICAO: TcxLabel;
    procedure DSDataChange(Sender: TObject; Field: TField);
    procedure btnConfirmarClick(Sender: TObject);
    procedure CadastroAfterOpen(DataSet: TDataSet);
    procedure edtProdutoÎProdutoPropertiesEditValueChanged(Sender: TObject);
    procedure WREventosCadastroConfiguracao_Acoes(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure Verifica_EstoqueAtual;
    { Private declarations }
  public
    { Public declarations }

    class procedure AjustaSaldoEstoque(ATransa: TComponent; const ACodProduto, ACodEmpresa: string);
    class function RemoverDivergenciaSaldoEstoque(ATransa: TComponent; const ACodProduto, ACodEmpresa: string;
      AExecutarDireto: Boolean = False): Boolean;
  end;

function MovimentaEstoque(ATransa: TComponent; ACodProduto, ACodEmpresa, AEstoqueLocal, AFornecedorCodigo: string;
  ADataCompra: TDateTime; AObservacao: string; AQuant: Double; ACodLote, ACodUsuario: Integer; ACodNFEntrada: string;
  ACodVenda: string; ACustoFabr, ACustoVendaTotal,AValor: Double; AForm,
  ATipoUso, ANatureza :String; var ACodMovimento :Integer): Boolean;
function Estoque(ATransa: TComponent; ACodProduto, ACodEmpresa, AEstoqueLocal: string; AQuant: Double; ACodLote: Integer; var AQuantAntiga, AQuantAtual: Double): Boolean;

implementation

{$R *.dfm}

uses
  wrFuncoes, UnitFuncoes, StrUtils, Math, Classes.WR, wrConstantes, Base, Tag.APP;

function MovimentaEstoque(ATransa: TComponent; ACodProduto, ACodEmpresa, AEstoqueLocal, AFornecedorCodigo: string;
  ADataCompra: TDateTime; AObservacao: string; AQuant: Double; ACodLote, ACodUsuario: Integer; ACodNFEntrada: string;
  ACodVenda: string; ACustoFabr, ACustoVendaTotal, AValor: Double; AForm,
  ATipoUso, ANatureza :String; var ACodMovimento :Integer): Boolean;
var
  Produto_MovimentoX: TWRDataSet;
  AQuantAntiga, AQuantAtual: Double;
begin
  WRLog('...Inicia a Movimentação de estoque...' );
  WRLog('Produto: ' + ACodProduto);
  AQuantAntiga := 0;
  AQuantAtual  := 0;
  if AForm = '' then
    AForm := 'Sem Tela';
  if ATipoUso = '' then
    ATipoUso := 'Não Definido';
  if ANatureza = '' then
    ANatureza := 'Sem Natureza';

  if AEstoqueLocal = '' then  //TRATA CASO O PRODUTO LOCAL ESTOQUE SEJA VAZIO
    AEstoqueLocal := 'PRINCIPAL';
  WRLog('O Local de estoque foi decido: ' + AEstoqueLocal);
  WRLog('..Entrando na função de alterar o estoque..');
  Result := Estoque(ATransa, ACodProduto, ACodEmpresa, AEstoqueLocal, AQuant, ACodLote, AQuantAntiga, AQuantAtual);
  Produto_MovimentoX := TWRDataSet.Create(ATransa);
  WRLog('..Saindo da função de alterar o estoque..');
  try
    WRLog('Inicia o Insert no Produto Movimento');
    Produto_MovimentoX.SQL.Text := 'insert into PRODUTO_MOVIMENTO (CODIGO, CODPRODUTO, CODEMPRESA, CODPRODUTO_LOTE, ' +
                                   '  TIPO_MOVIMENTO, PRODUTO_ESTOQUE_LOCAL, QUANT, PESSOA_FORNECEDOR_CODIGO, DATA, ' +
                                   '  DT_ALTERACAO, OBSERVACAO, CODUSUARIO, CODNF_ENTRADA, CODVENDA, CUSTO_FABR, CUSTO_VENDA_TOTAL, VALOR, FORM, TIPO_USO, QUANT_ANTIGA, QUANT_ATUAL, ATIVO, NATUREZA) ' +
                                   'values (:CODIGO, :CODPRODUTO, :CODEMPRESA, :CODPRODUTO_LOTE, :TIPO_MOVIMENTO, ' +
                                   '  :PRODUTO_ESTOQUE_LOCAL, :QUANT, :PESSOA_FORNECEDOR_CODIGO, :DATA, :DT_ALTERACAO, ' +
                                   '  :OBSERVACAO, :CODUSUARIO, :CODNF_ENTRADA, :CODVENDA, :CUSTO_FABR, :CUSTO_VENDA_TOTAL, :VALOR, :FORM, :TIPO_USO, :QUANT_ANTIGA, :QUANT_ATUAL, :ATIVO, :NATUREZA)';

    ACodMovimento := Trunc(GetProximoCodigoGen('CR_PRODUTO_MOVIMENTO', ATransa));
    Produto_MovimentoX.SetParam('CODIGO', ACodMovimento);
    Produto_MovimentoX.SetParam('CODPRODUTO', ACodProduto);
    Produto_MovimentoX.SetParam('CODEMPRESA', ACodEmpresa);
    Produto_MovimentoX.SetParam('CODPRODUTO_LOTE', ACodLote);
    if AQuant > 0 then
    begin
      Produto_MovimentoX.SetParam('TIPO_MOVIMENTO', 'E');
      Produto_MovimentoX.SetParam('QUANT', AQuant);
      WRLog('Foi Definido que vai ser um ENTRADA de: ' + FloatToStr(AQuant));
    end else
    begin
      Produto_MovimentoX.SetParam('TIPO_MOVIMENTO', 'S');
      Produto_MovimentoX.SetParam('QUANT', -AQuant);
      WRLog('Foi Definido que vai ser um Saida de: ' + FloatToStr(AQuant));
    end;
    Produto_MovimentoX.SetParam('PRODUTO_ESTOQUE_LOCAL', AEstoqueLocal);
    Produto_MovimentoX.SetParam('PESSOA_FORNECEDOR_CODIGO', AFornecedorCodigo);
    if ADataCompra <= 0 then
      Produto_MovimentoX.SetParam('DATA', DataHoraSys)
    else
      Produto_MovimentoX.SetParam('DATA', ADataCompra);
    Produto_MovimentoX.SetParam('DT_ALTERACAO', DataHoraSys); //A DT_ALTERAÇÃO É PREENCHIDA SOMENTE AQUI!
    Produto_MovimentoX.SetParam('OBSERVACAO', AObservacao);
    Produto_MovimentoX.SetParam('CODUSUARIO', ACodUsuario);
    Produto_MovimentoX.SetParam('CODNF_ENTRADA', ACodNFEntrada);
    Produto_MovimentoX.SetParam('CODVENDA', ACodVenda);
    Produto_MovimentoX.SetParam('CUSTO_FABR', ACustoFabr);
    Produto_MovimentoX.SetParam('CUSTO_VENDA_TOTAL', ACustoVendaTotal);
    Produto_MovimentoX.SetParam('VALOR', AValor);
    Produto_MovimentoX.SetParam('FORM', AForm);
    Produto_MovimentoX.SetParam('TIPO_USO', ATipoUso);
    Produto_MovimentoX.SetParam('QUANT_ANTIGA', AQuantAntiga);
    Produto_MovimentoX.SetParam('QUANT_ATUAL', AQuantAtual);
    Produto_MovimentoX.SetParam('ATIVO', 'S');
    Produto_MovimentoX.SetParam('NATUREZA', ANatureza);
    Produto_MovimentoX.ExecSQL;
    WRLog('ExecSQL da no Produto Movimento');
  finally
    Produto_MovimentoX.Free;
  end;
   WRLog('...Finaliza a Movimentação de Estoque...');
 //Estoque(Transa, ACodProduto, ACodEmpresa, AEstoqueLocal, AQuant, ACodLote);
end;

procedure TFrmProduto_Movimento.edtProdutoÎProdutoPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  Verifica_EstoqueAtual;
end;

procedure TFrmProduto_Movimento.FormShow(Sender: TObject);
begin
  inherited;
  liedtLoteÎProduto_Lote.Visible            :=  AWR_APP[TagAPP_Lote].Ativo;
  lilblLoteÎProduto_LoteÎREFERENCIA.Visible :=  AWR_APP[TagAPP_Lote].Ativo;
end;

function Estoque(ATransa: TComponent; ACodProduto, ACodEmpresa, AEstoqueLocal: string; AQuant: Double; ACodLote: Integer; var AQuantAntiga, AQuantAtual: Double): Boolean;
var
  ProdutoX, LoteX, QuerEstoqueProduto, QuerComposicao: TWRDataSet;
  ATemp: Real;
  i: Integer;
  AListaCampos: TStringList;
begin
  WRLog('.Inicia a baixa do estoque.');
  Result := True;
  try
    ProdutoX := TWRDataSet.Create(ATransa);         // Não pode ter isso aqui
    try
      ProdutoX.SQL.Text := 'select TEM_LOTE ' +
                           'from PRODUTO ' +
                           'where (CODIGO = :Cod)';
      ProdutoX.SetParam('Cod', ACodProduto);
      ProdutoX.Open;

      //Atualiza Lote
      WRLog('Verifica se tem lote');
      if ProdutoX.FieldByName('TEM_LOTE').AsString = 'S' then
      begin
        WRLog('Tem Lote');
        if ACodLote = 0 then
        begin
          ShowMessage('Há Produto(s) sem código de Lote, a operação será fechada para garantir a integridade do estoque');
          Abort;
        end;
        LoteX := TWRDataSet.Create(ATransa);
        try
          LoteX.SQL.Text := 'select QUANTIDADE ' +
                            'from PRODUTO_LOTE ' +
                            'where (CODIGO = :CodLote) ' +
                            '      and (CODPRODUTO = :CodProduto)';
          LoteX.SetParam('CodLote', ACodLote);
          LoteX.SetParam('CodProduto', ACodProduto);
          LoteX.Open;
          if not LoteX.IsEmpty and (ACodLote > 0) Then
          begin
            ATemp := LoteX.FieldByName('QUANTIDADE').AsFloat;
            LoteX.Close;
            LoteX.ClearParams;

            LoteX.SQL.Text := 'update PRODUTO_LOTE set QUANTIDADE = :Est, DT_ALTERACAO = current_timestamp ' +
                              'where (CODIGO = :CodLote) ' +
                              '      and (CODPRODUTO = :CodProduto)';
            LoteX.SetParam('CodLote', ACodLote);
            LoteX.SetParam('Est', Math.RoundTo(ATemp + AQuant, -8));
            LoteX.SetParam('CodProduto', ACodProduto);
            LoteX.ExecSQL;
          end else
          begin
            ShowMessageWR('Não Existe Lote para esse Produto', MB_ICONWARNING);
            Abort;
          end;
        finally
          LoteX.Free;
        end;
      end;
    finally
      ProdutoX.Free;
    end;

    //Atualiza ou cria tabela PRODUTO_ESTOQUE
    QuerEstoqueProduto := TWRDataSet.Create(ATransa);
    try
      QuerEstoqueProduto.SQL.Text := 'select * ' +
                                     'from PRODUTO_ESTOQUE ' +
                                     'where (CODPRODUTO = :CodProduto) ' +
                                     '      and (CODEMPRESA = :CodEmpresa)';
      QuerEstoqueProduto.SetParam('CodProduto', ACodProduto);
      QuerEstoqueProduto.SetParam('CodEmpresa', ACodEmpresa);
      QuerEstoqueProduto.Open;



      //Trata caso o produto local estoque seja vazio
      if AEstoqueLocal = '' then
        AEstoqueLocal := 'PRINCIPAL';

      AQuantAntiga :=  QuerEstoqueProduto.FieldByName('ESTOQUE').AsFloat; //PREENCHE ESTOQUE ANTES DE SER ALTERADO
      WRLog('Inicio do Update do estoque');
      if not QuerEstoqueProduto.IsEmpty then
      begin
        WRLog('Se entrou aqui o produto ja existe na tabela Produto_estoque');
        ATemp := QuerEstoqueProduto.FieldByName(AEstoqueLocal).AsFloat;
        QuerEstoqueProduto.Close;
        QuerEstoqueProduto.ClearParams;

        QuerEstoqueProduto.SQL.Text := 'update PRODUTO_ESTOQUE set ' + AEstoqueLocal + ' = :Est, DT_ALTERACAO = current_timestamp ' +
                                       'where (CODPRODUTO = :CodProduto) ' +
                                       '      AND (CODEMPRESA = :CodEmpresa)';
        QuerEstoqueProduto.SetParam('Est', Math.RoundTo(ATemp + AQuant, -8));
        QuerEstoqueProduto.SetParam('CodProduto', ACodProduto);
        QuerEstoqueProduto.SetParam('CodEmpresa', ACodEmpresa);
        QuerEstoqueProduto.ExecSQL;
        WRLog('ExecSql da alteração do estoque');
      end else
      begin
        WRLog('Se entrou aqui o produto vai ser criado  na tabela Produto_estoque');
        QuerEstoqueProduto.Close;
        QuerEstoqueProduto.ClearParams;

        QuerEstoqueProduto.SQL.Text := 'insert into PRODUTO_ESTOQUE (CODPRODUTO, CODEMPRESA, ' + AEstoqueLocal + ', ' +
                                       '  DT_ALTERACAO) values (:CODPRODUTO, :CODEMPRESA, :ESTOQUE, current_timestamp)';
        QuerEstoqueProduto.SetParam('CODPRODUTO', ACodProduto);
        QuerEstoqueProduto.SetParam('CODEMPRESA', ACodEmpresa);
        QuerEstoqueProduto.SetParam('ESTOQUE', Math.RoundTo(AQuant, -8));
        QuerEstoqueProduto.ExecSQL;
        WRLog('ExecSql da alteração do estoque');
      end;
    finally
      QuerEstoqueProduto.Free;
    end;

    //Soma todos os locais de estoque
    WRLog('inicia a soma de todos locais de estoque');
    QuerComposicao := TWRDataSet.Create(ATransa);
    try
      QuerComposicao.SQL.Text := 'select DESCRICAO ' +
                                 'from PRODUTO_ESTOQUE_LOCAL';
      QuerComposicao.Open;
      AListaCampos := TStringList.Create;
      try
        while not QuerComposicao.Eof do
        begin
          AListaCampos.Add(AnsiUpperCase(QuerComposicao.Fields[0].AsString));
          QuerComposicao.Next;
        end;
        QuerComposicao.Close;
        ATemp := 0;
        if AListaCampos.IndexOf('PRINCIPAL') < 0 then
          AListaCampos.Add('PRINCIPAL');
        i := 0;
        while i <= AListaCampos.Count - 1 do
        begin
          QuerComposicao.Close;
          QuerComposicao.SQL.Text := 'select ' + AListaCampos[i] + ' ' +
                                     'from PRODUTO_ESTOQUE ' +
                                     'where (CODPRODUTO = :Cod) ' +
                                     '      and (CODEMPRESA = :Emp)';
          QuerComposicao.SetParam('Cod', ACodProduto);
          QuerComposicao.SetParam('Emp', ACodEmpresa);
          QuerComposicao.Open;
          ATemp := ATemp + QuerComposicao.FieldByName(AListaCampos[i]).AsFloat;
          i := i + 1;
        end;
      finally
        AListaCampos.Free;
      end;
      QuerComposicao.Close;
      QuerComposicao.ClearParams;
      QuerComposicao.SQL.Text := 'update PRODUTO_ESTOQUE set ESTOQUE = :Est ' +
                                 'where (CODPRODUTO = :CodProduto) ' +
                                 '      and (CODEMPRESA = :CodEmpresa)';
      QuerComposicao.SetParam('CodProduto', ACodProduto);
      QuerComposicao.SetParam('CodEmpresa', ACodEmpresa);
      QuerComposicao.SetParam('Est', Math.RoundTo(ATemp, -8));

      AQuantAtual := Math.RoundTo(ATemp, -8);

      QuerComposicao.ExecSql;
      WRLog('ExecSql da soma dos locais estoque');
    finally
      QuerComposicao.Free;
    end;
  except
    on E:Exception do
    begin
      Result := False;
      RollbackTransacao(ATransa);
      WRLog(E.Message);
      ShowMessageWR('Há informações que não estão corretas, a operação será fechada para garantir a integridade do estoque' +
        sLineBreak + 'Erro: ' + E.Message, MB_ICONWARNING);
      Abort;
    end;
  end;
  WRLog('.Finaliza a baixa do estoque.');
end;

procedure TFrmProduto_Movimento.Verifica_EstoqueAtual;
var
  QuerX: TFDQuery;
begin
  {$IFDEF COMERCIAL}
  if Cadastro.FieldByName('CODPRODUTO').AsString <> '' then
  begin
    QuerX := GeraFDQuery(TransaFD);
    try
      QuerX.SQL.Text := 'select ESTOQUE ' +
                        'from PRODUTO_ESTOQUE ' +
                        'where (CODPRODUTO = :CodProduto) ' +
                        '      and (CODEMPRESA = :Emp)';
      QuerX.ParamByName('CodProduto').AsString := Cadastro.FieldByName('CODPRODUTO').AsString;
      QuerX.ParamByName('Emp').AsString        := Empresa.FieldByName('CODIGO').AsString;
      QuerX.Open;
      if QuerX.Fields[0].AsString = '' then
        EdtEstoqueAtual.Text := '0'
      else
      EdtEstoqueAtual.Text := QuerX.Fields[0].AsString;
    finally
      QuerX.Free;
    end;
  end;
  {$ENDIF}
end;

procedure TFrmProduto_Movimento.WREventosCadastroConfiguracao_Acoes(
  Sender: TObject);
begin
{$IFDEF COMERCIAL}
//  inherited;
  with WREventosCadastro do
  begin
    with AddForm(Self) do
    begin
      AddChavePrimaria(FNomeTabela , 'CODIGO', edtCodigo);
      AddValorInicial(FNomeTabela , 'ATIVO', cbxAtivo, 'S');
      AddValorInicial(FNomeTabela , 'PRODUTO_ESTOQUE_LOCAL', cbxProduto_Estoque_Local, 'PRINCIPAL'); // Obrigatório
      AddValorInicial(FNomeTabela , 'DATA', edtData, '@DATA');
      AddValorInicial(FNomeTabela , 'TIPO_MOVIMENTO', cbxTipo_Movimento, '');
      AddValorInicial(FNomeTabela , 'QUANT', edtDescricao, '1');
      with AddAcoesTabela('CONFIRMAR','', 'Regras necessárias para poder Confirmar.') do
      begin
        AddObrigatorio(FNomeTabela, 'QUANT', edtDescricao, 'Informar a Quantidade');
        AddObrigatorio(FNomeTabela, 'DATA',      edtData,      'Informar a Data de Movimentação do Estoque');
        AddObrigatorio(FNomeTabela, 'ATIVO',     cbxAtivo,     'Informe se o Cadastro esta ATIVO ou DESATIVADO.');
        AddObrigatorio(FNomeTabela, 'PRODUTO_ESTOQUE_LOCAL', cbxProduto_Estoque_Local, 'Informar o Local de Estoque');
        AddObrigatorio(FNomeTabela, 'TIPO_MOVIMENTO',        cbxTipo_Movimento,        'Informar o Entrada Ou Saída de Materiais.');
      end;
    end;
  end;
   {$ENDIF}
end;

class procedure TFrmProduto_Movimento.AjustaSaldoEstoque(ATransa: TComponent; const ACodProduto, ACodEmpresa: string);
var
  ATransaLocal: TComponent;
  QuerX: TWRDataSet;
  ASaldoMovimento, AEstoque, ASaldoAjuste: Double;
begin
  ATransaLocal := ATransa;
  if ATransaLocal = nil then
    ATransaLocal := GeraFDTransacao;
  QuerX := TWRDataSet.Create(ATransaLocal);
  try
    //Busca o saldo de acordo com o Movimento do Produto
    QuerX.SQL.Text := 'select sum(iif(TIPO_MOVIMENTO = ''E'', QUANT, -QUANT)) ' +
                      'from PRODUTO_MOVIMENTO ' +
                      'where (CODPRODUTO = :CodProduto) ' +
                      '      and (CODEMPRESA = :CodEmpresa)';
    QuerX.SetParam('CodProduto', ACodProduto);
    QuerX.SetParam('CodEmpresa', ACodEmpresa);
    QuerX.Open;
    ASaldoMovimento := QuerX.Fields[0].AsFloat;
    QuerX.Close;

    //Busca a quantidade atual em estoque
    QuerX.SQL.Text := 'select ESTOQUE ' +
                      'from PRODUTO_ESTOQUE ' +
                      'where (CODPRODUTO = :CodProduto) ' +
                      '      and (CODEMPRESA = :CodEmpresa)';
    QuerX.SetParam('CodProduto', ACodProduto);
    QuerX.SetParam('CodEmpresa', ACodEmpresa);
    QuerX.Open;
    AEstoque := QuerX.Fields[0].AsFloat;
    QuerX.Close;

    //Calcula quanto há de divergência
    ASaldoAjuste := AEstoque - ASaldoMovimento;

    //Caso haja divergência, lança um ajuste
    if not IsZero(ASaldoAjuste) then
    begin
      QuerX.SQL.Text := 'insert into PRODUTO_MOVIMENTO (CODIGO, CODPRODUTO, CODEMPRESA, TIPO_MOVIMENTO, PRODUTO_ESTOQUE_LOCAL, ' +
                        '  QUANT, PESSOA_FORNECEDOR_CODIGO, DATA, DT_ALTERACAO, OBSERVACAO, CODUSUARIO, AJUSTE_SALDO) ' +
                        'values (:CODIGO, :CODPRODUTO, :CODEMPRESA, :TIPO_MOVIMENTO, :PRODUTO_ESTOQUE_LOCAL, :QUANT, ' +
                        '  :PESSOA_FORNECEDOR_CODIGO, :DATA, :DT_ALTERACAO, :OBSERVACAO, :CODUSUARIO, :AJUSTE_SALDO)';
      QuerX.SetParam('CODIGO', Trunc(GetProximoCodigoGen('CR_PRODUTO_MOVIMENTO')));
      QuerX.SetParam('CODPRODUTO', ACodProduto);
      QuerX.SetParam('CODEMPRESA', ACodEmpresa);
      if ASaldoAjuste > 0 then
      begin
        QuerX.SetParam('TIPO_MOVIMENTO', 'E');
        QuerX.SetParam('QUANT', ASaldoAjuste);
      end else
      begin
        QuerX.SetParam('TIPO_MOVIMENTO', 'S');
        QuerX.SetParam('QUANT', -ASaldoAjuste);
      end;
      QuerX.SetParam('PRODUTO_ESTOQUE_LOCAL', 'PRINCIPAL');    // eSSA MERDA DE cAMPO NÃO PODE SER CRIADO
      QuerX.SetParam('DATA', EncodeDate(2000, 1, 1)); //Data fixa: 1º de Janeiro de 2000 (Bug do Milênio)
      QuerX.SetParam('DT_ALTERACAO', DataHoraSys);
      QuerX.SetParam('OBSERVACAO', 'Ajuste de Saldo de Estoque');
      QuerX.SetParam('CODUSUARIO', Usuario.Codigo);
      QuerX.SetParam('AJUSTE_SALDO', 'S');
      QuerX.ExecSQL;
    end;
    if ATransaLocal <> ATransa then
      ComitaTransacao(ATransaLocal);
  finally
    if ATransaLocal <> ATransa then
      ATransaLocal.Free;
    QuerX.Free;
  end;
end;

procedure TFrmProduto_Movimento.btnConfirmarClick(Sender: TObject);
var
  AQuant, AQuantAntiga, AQuantAtual: Double;
begin
 {$IFDEF COMERCIAL}
  AQuantAntiga := 0;
  AQuantAtual  := 0;
  If Cadastro.FieldByName('CODPRODUTO').AsString = '' then
  begin
    ShowMessage('Favor colocar o produto');
    EdtProdutoÎProduto.SetFocusWR;
    exit;
  end;
  If Not(Cadastro.FieldByName('QUANT').AsFloat > 0) then
  begin
    ShowMessage('Favor colocar a Quantidade de Produto');
    edtDescricao.SetFocusWR;
    exit;
  end;
  If Cadastro.FieldByName('TIPO_MOVIMENTO').AsString = '' then
  begin
    ShowMessage('Selecione o tipo de movimento');
    cbxTipo_Movimento.SetFocusWR;
    exit;
  end;
 { If (CkbProdutoÎProdutoÎLOTE.Checked) and (Cadastro.FieldByName('CODPRODUTO_LOTE').AsInteger = 0) then
  begin
    ShowMessage('Produto Movido a Lote, Favor Colocar Numero de Lote');
    EdtLoteÎProduto_Lote.SetFocusWR;
    exit;
  end;   }
  If Cadastro.FieldByName('PRODUTO_ESTOQUE_LOCAL').AsString = '' then
  begin
    ShowMessage('Selecione um Local de Estoque.');
    cbxProduto_Estoque_Local.SetFocusWR;
    exit;
  end;
  if Cadastro.FieldByName('DATA').IsNull then
    Cadastro.FieldByName('DATA').AsDateTime := DataHoraSys;
  if Cadastro.FieldByName('TIPO_MOVIMENTO').AsString = 'S' then
    AQuant := -Cadastro.FieldByName('QUANT').AsFloat
  else
    AQuant := Cadastro.FieldByName('QUANT').AsFloat;
  if not Estoque(Cadastro.Transaction, Cadastro.FieldByName('CODPRODUTO').AsString, Empresa.FieldByName('CODIGO').AsString,
     Cadastro.FieldByName('PRODUTO_ESTOQUE_LOCAL').AsString, AQuant, Cadastro.FieldByName('CODPRODUTO_LOTE').AsInteger, AQuantAntiga, AQuantAtual) then
    Exit;
  Cadastro.FieldByName('CODEMPRESA').AsInteger := Empresa.FieldByName('CODIGO').AsInteger;
  Cadastro.FieldByName('CODUSUARIO').AsInteger := Usuario.Codigo;
  Cadastro.FieldByName('QUANT_ANTIGA').AsFloat := AQuantAntiga;
  Cadastro.FieldByName('QUANT_ATUAL').AsFloat  := AQuantAtual;
  Verifica_EstoqueAtual;
  inherited;
  {$ENDIF}
end;

procedure TFrmProduto_Movimento.CadastroAfterOpen(DataSet: TDataSet);
var
  QuerX: TFDQuery;
begin
  inherited;
  QuerX := GeraFDQuery;
  try
    QuerX.SQL.Text := 'select DESCRICAO from PRODUTO_ESTOQUE_LOCAL';
    QuerX.Open;
    cbxProduto_Estoque_Local.Properties.Items.Clear;
    while not QuerX.Eof do
    begin
      cbxProduto_Estoque_Local.Properties.Items.Add(QuerX.Fields[0].AsString);
      QuerX.Next;
    end;
  finally
    QuerX.Free;
  end;
end;

procedure TFrmProduto_Movimento.DSDataChange(Sender: TObject; Field: TField);
begin
  inherited;
//  CBLocalEstoque.Text := ds.DataSet.FieldByName('PRODUTO_ESTOQUE_LOCAL').AsString;   // Isso não pode
//  Verifica_EstoqueAtual;
end;

class function TFrmProduto_Movimento.RemoverDivergenciaSaldoEstoque(ATransa: TComponent; const ACodProduto,
  ACodEmpresa: string; AExecutarDireto: Boolean = False): Boolean;
  procedure LAtivaInativaTrigger(AAtivado: Boolean);
  var
    LQuerX: TFDQuery;
    ALTransa: TFDTransaction;
  begin
    ALTransa := GeraFDTransacao;
    LQuerX := GeraFDQuery(ALTransa);
    try
      try
        LQuerX.SQL.Text := 'alter trigger PRODUTO_MOVIMENTO_BD0 ' + IfThen(AAtivado, 'ACTIVE', 'INACTIVE');
        LQuerX.ExecSQL;
        ComitaTransacao(ALTransa);
      except end;
    finally
      LQuerX.Free;
      ALTransa.Free;
    end;
  end;
const
  //Usado uma constante para o Where pois é EXTREMAMENTE importante que seja o MESMO where nas querys abaixo
  SQL_WHERE = 'where (CODPRODUTO = :CodProduto) ' +
              '      and (CODEMPRESA = :CodEmpresa) ' +
              '      and (AJUSTE_SALDO = ''S'')';

var
  ATransaLocal: TComponent;
  QuerX: TWRDataSet;
  ASaldoAjuste, AQuantAntiga, AQuantAtual: Double;
begin
  Result := False;
  ATransaLocal := ATransa;
  if ATransaLocal = nil then
    ATransaLocal := GeraFDTransacao;
  QuerX := TWRDataSet.Create(ATransaLocal);
  try
    //Busca no Movimento do Produto a quantidade que deve ser removida e ajustada no estoque
    QuerX.SQL.Text := 'select sum(iif(TIPO_MOVIMENTO = ''E'', QUANT, -QUANT)) ' +
                      'from PRODUTO_MOVIMENTO ' + SQL_WHERE;
    QuerX.SetParam('CodProduto', ACodProduto);
    QuerX.SetParam('CodEmpresa', ACodEmpresa);
    QuerX.Open;
    ASaldoAjuste := QuerX.Fields[0].AsFloat;
    QuerX.Close;

    //Inverte a quantidade. Se o saldo foi de Entrada, então temos que dar uma Baixa no estoque, e assim no caso inverso.
    ASaldoAjuste := -ASaldoAjuste;

    //Caso haja divergência, ajusta o estoque
    if not IsZero(ASaldoAjuste) then
    begin
      if not AExecutarDireto and (ShowMessageWR('Isso irá efetuar uma ' + IfThen(ASaldoAjuste > 0, 'ENTRADA', 'SAÍDA') +
                       ' de ' + FormatFloat(DECIMAL_2F, Abs(ASaldoAjuste)) + ' no estoque deste produto. Deseja continuar?', MB_ICONQUESTION) <> mrYes) then
        Exit;
      Estoque(ATransaLocal, ACodProduto, ACodEmpresa, 'PRINCIPAL', ASaldoAjuste, 0, AQuantAntiga, AQuantAtual);
    end;

    //Desativa a trigger que impede alterações na tabela
    LAtivaInativaTrigger(False);

    //Exclui os lançamentos de divergência que estavam lançados para este produto
    QuerX.SQL.Text := 'delete from PRODUTO_MOVIMENTO ' + SQL_WHERE;
    QuerX.SetParam('CodProduto', ACodProduto);
    QuerX.SetParam('CodEmpresa', ACodEmpresa);
    QuerX.ExecSQL;

    //Ativa novamente a trigger
    LAtivaInativaTrigger(True);

    if ATransaLocal <> ATransa then
      ComitaTransacao(ATransaLocal);
    Result := True;
  finally
    if ATransaLocal <> ATransa then
      ATransaLocal.Free;
    QuerX.Free;
  end;
end;

initialization
  RegisterClass(TFrmProduto_Movimento);

end.
