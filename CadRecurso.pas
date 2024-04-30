unit CadRecurso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls,
  Vcl.Forms, Vcl.Dialogs, CadM, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, Vcl.Menus,
  cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData, dxLayoutControlAdapters,
  dxLayoutContainer, dxLayoutcxEditAdapters, WREventos, UCBase, cxClasses, dxLayoutLookAndFeels, System.ImageList,
  Vcl.ImgList, IBX.IBCustomDataSet, IBX.IBStoredProc, IBX.IBDatabase, Vcl.ExtCtrls, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxTextEdit, cxDBEdit, cxDBNavigator, Vcl.StdCtrls,
  cxButtons, dxLayoutControl, dxStatusBar, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxButtonEdit, cxLabel, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Stan.Async, FireDAC.DApt, frxClass, frxDBSet, UCHistDataset, Cad,
  dxUIAdorners, System.Generics.Collections;

type
  TFrmRecurso = class(TFrmCadM)
    cbxTipo: TcxDBLookupComboBox;
    licbxTipo: TdxLayoutItem;
    edtPessoaÎPessoas: TcxDBButtonEdit;
    liedtPessoaÎPessoas: TdxLayoutItem;
    liedtProdutoÎProduto: TdxLayoutItem;
    edtProdutoÎProduto: TcxDBButtonEdit;
    lblProdutoÎProdutoÎDESCRICAO: TcxLabel;
    lilblProdutoÎProdutoÎDESCRICAO: TdxLayoutItem;
    lilblPessoaÎPessoasÎRAZAOSOCIAL: TdxLayoutItem;
    lblPessoaÎPessoasÎRAZAOSOCIAL: TcxLabel;
    GrupoPessoa: TdxLayoutGroup;
    GrupoProduto: TdxLayoutGroup;
    CadastroCODIGO: TIntegerField;
    CadastroTIPO: TStringField;
    CadastroCODPESSOA: TStringField;
    CadastroCODPRODUTO: TStringField;
    CadastroDT_ALTERACAO: TSQLTimeStampField;
    CadastroATIVO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure CadastroBeforePost(DataSet: TDataSet);
    procedure CbRecursoTipoPropertiesChange(Sender: TObject);
    procedure WREventosCadastroConfiguracao_Acoes(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses
  wrConversao, wrFuncoes, StrUtils, wrPreencheLookup;

procedure TFrmRecurso.btnConfirmarClick(Sender: TObject);
begin
  try
    if Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').IsNull and Cadastro.FieldByName('CODPRODUTO').IsNull then     // Isso tem que ir para wrValidacao
    begin
      ShowMessageWR('Defina um Recurso.');      // Isso tem que ir para wrValidacao
      Exit;
    end;
    inherited;
  except
    on E:Exception do
    begin
      if AnsiContainsText(E.Message, 'UNQ_RECURSO_PRODUTO') then
        ShowMessageWR('Já existe um recurso cadastrado para este Produto.', MB_ICONWARNING)      // Isso tem que ir para wrValidacao
      else if AnsiContainsText(E.Message, 'UNQ_RECURSO_PESSOA') then
        ShowMessageWR('Já existe um recurso cadastrado para esta Pessoa.', MB_ICONWARNING)        // Isso tem que ir para wrValidacao
      else if AnsiContainsText(E.Message, 'Foreign Key') then
        ShowMessageWR('O Recurso que você está tentando cadastrar não existe.', MB_ICONWARNING)   // Isso tem que ir para wrValidacao
      else
        raise;
    end;
  end;
end;

procedure TFrmRecurso.CadastroBeforePost(DataSet: TDataSet);
begin
  inherited;
//  case RecursoTipoStrToEnum(Cadastro.FieldByName('TIPO').AsString) of    // Não pode apagar no post
//     rtPessoa: Cadastro.FieldByName('CODPRODUTO').Clear;
//    rtProduto: Cadastro.FieldByName('PESSOA_RESPONSAVEL_CODIGO').Clear;
//  end;
end;

procedure TFrmRecurso.CbRecursoTipoPropertiesChange(Sender: TObject);
begin
  inherited; // para não precisar apagar colocar em enable
  GrupoPessoa.Visible  := (Cadastro.FieldByName('TIPO').AsString = RecursoTipoToStr(rtPessoa));
  GrupoProduto.Visible := (Cadastro.FieldByName('TIPO').AsString = RecursoTipoToStr(rtProduto)) or (Cadastro.FieldByName('TIPO').AsString = RecursoTipoToStr(rtPessoa));
end;

procedure TFrmRecurso.FormCreate(Sender: TObject);
begin
  inherited;
  PreencheLookupRecursoTipo(cbxTipo.Properties);
end;

procedure TFrmRecurso.WREventosCadastroConfiguracao_Acoes(Sender: TObject);
begin
  //  inherited;
  with WREventosCadastro do
  begin
    with AddForm(Self) do
    begin
      AddChavePrimaria(FNomeTabela , 'CODIGO', edtCodigo);
      AddValorInicial(FNomeTabela , 'ATIVO', cbxAtivo, 'S');
      with AddAcoesTabela('CONFIRMAR','', 'Regras necessárias para poder Confirmar.') do
      begin
//        AddObrigatorio(FNomeTabela, 'DESCRICAO', edtDescricao, 'Informar a Descrição');
        AddObrigatorio(FNomeTabela, 'ATIVO',     cbxAtivo,     'Informe se o Cadastro esta ATIVO ou DESATIVADO.');
//        AddImpedirDuplicidade(FNomeTabela, 'DESCRICAO',    edtDescricao , '');
      end;
    end;
  end;
end;

initialization
  RegisterClass(TFrmRecurso);

end.
