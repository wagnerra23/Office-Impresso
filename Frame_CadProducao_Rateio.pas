unit Frame_CadProducao_Rateio;

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
  dxLayoutControl, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, cxCurrencyEdit,
  FireDAC.Phys.IBWrapper, cxButtonEdit, Frame_ConProduto_Servico, cxLabel,
  cxGridViewLayoutContainer, cxGridLayoutView, cxGridDBLayoutView,
  cxGridCustomLayoutView, cxGroupBox, cxRadioGroup, cxCheckBox, cxHyperLinkEdit,
  Frame_CadProduto_Servico, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TFrameProducao_Rateio = class(TFrmCad_Frame)
    dxLayoutItem1: TdxLayoutItem;
    cbCompetencia: TcxDBLookupComboBox;
    dxLayoutItem2: TdxLayoutItem;
    cbEmpresa: TcxDBLookupComboBox;
    GridFuncao: TcxGrid;
    GridFuncaoDBTableView1: TcxGridDBTableView;
    GridFuncaoLevel1: TcxGridLevel;
    btnBuscar: TcxButton;
    edtValorTotal: TcxCurrencyEdit;
    edtHorasTotais: TcxCurrencyEdit;
    edtMediaHora: TcxCurrencyEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    GridPlanoContas: TcxGrid;
    GridPlanoContasDBTableView1: TcxGridDBTableView;
    GridPlanoContasDBTableView1CODPLANOCONTAS: TcxGridDBColumn;
    GridPlanoContasDBTableView1DESCRICAO: TcxGridDBColumn;
    GridPlanoContasDBTableView1TOTAL: TcxGridDBColumn;
    GridPlanoContasLevel1: TcxGridLevel;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    cxDBCurrencyEdit5: TcxDBCurrencyEdit;
    cxDBCurrencyEdit6: TcxDBCurrencyEdit;
    cxDBCurrencyEdit7: TcxDBCurrencyEdit;
    cxDBCurrencyEdit8: TcxDBCurrencyEdit;
    cxDBCurrencyEdit9: TcxDBCurrencyEdit;
    cxDBCurrencyEdit10: TcxDBCurrencyEdit;
    cxDBCurrencyEdit11: TcxDBCurrencyEdit;
    cxDBCurrencyEdit12: TcxDBCurrencyEdit;
    cxDBCurrencyEdit13: TcxDBCurrencyEdit;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutGroup2: TdxLayoutGroup;
    GrupoMaoDeObra: TdxLayoutGroup;
    MainLayoutGroup7: TdxLayoutGroup;
    MainLayoutItem1: TdxLayoutItem;
    libtnBuscar: TdxLayoutItem;
    MainLayoutGroup5: TdxLayoutGroup;
    MainLayoutItem3: TdxLayoutItem;
    MainLayoutItem5: TdxLayoutItem;
    MainLayoutItem18: TdxLayoutItem;
    MainLayoutGroup4: TdxLayoutGroup;
    MainLayoutItem34: TdxLayoutItem;
    MainLayoutGroup8: TdxLayoutGroup;
    MainLayoutItem2: TdxLayoutItem;
    MainLayoutGroup6: TdxLayoutGroup;
    MainLayoutItem19: TdxLayoutItem;
    MainLayoutGroup3: TdxLayoutGroup;
    MainLayoutGroup10: TdxLayoutGroup;
    MainLayoutItem28: TdxLayoutItem;
    MainLayoutItem29: TdxLayoutItem;
    MainLayoutItem30: TdxLayoutItem;
    MainLayoutItem31: TdxLayoutItem;
    MainLayoutItem32: TdxLayoutItem;
    MainLayoutGroup11: TdxLayoutGroup;
    MainLayoutItem37: TdxLayoutItem;
    MainLayoutItem38: TdxLayoutItem;
    MainLayoutItem39: TdxLayoutItem;
    MainLayoutItem40: TdxLayoutItem;
    MainLayoutItem41: TdxLayoutItem;
    FuncionarioSalario: TFDQuery;
    DSFuncionarioSalario: TDataSource;
    UCHist_FuncionarioSalario: TUCHist_DataSet;
    GridFuncaoDBTableView1CODFUNCIONARIO: TcxGridDBColumn;
    GridFuncaoDBTableView1SALARIO: TcxGridDBColumn;
    GridFuncaoDBTableView1QTD_HORAS_TRABALHADAS_MENSAL: TcxGridDBColumn;
    GridFuncaoDBTableView1VALOR_HORA: TcxGridDBColumn;
    GridFuncaoDBTableView1CODSERVICO_VINCULADOÎProduto: TcxGridDBColumn;
    GridFuncaoDBTableView1TOTAL_MENSAL: TcxGridDBColumn;
    GridFuncaoDBTableView1DESCRICAO: TcxGridDBColumn;
    Pessoa: TFDQuery;
    DSPessoa: TDataSource;
    libtnAcessar_Folha: TdxLayoutItem;
    btnAcessar_Folha: TcxButton;
    FolhaPagamento: TFDQuery;
    GridFuncaoDBTableView1TOTAL_ENCARGOS: TcxGridDBColumn;
    lblAviso: TcxLabel;
    lilblAviso: TdxLayoutItem;
    liGridSubGrid: TdxLayoutItem;
    GridSubGrid: TcxGrid;
    GridSubGridView: TcxGridDBLayoutView;
    GridSubGridViewCODIGO: TcxGridDBLayoutViewItem;
    GridSubGridViewDESCRICAO: TcxGridDBLayoutViewItem;
    GridSubGridViewQUANT: TcxGridDBLayoutViewItem;
    GridSubGridViewSEQUENCIA: TcxGridDBLayoutViewItem;
    GridSubGridViewGroup_Root: TdxLayoutGroup;
    GridSubGridViewLayoutItem1: TcxGridLayoutItem;
    GridSubGridViewLayoutItem2: TcxGridLayoutItem;
    GridSubGridViewLayoutItem3: TcxGridLayoutItem;
    GridSubGridViewLayoutItem4: TcxGridLayoutItem;
    GridSubGridLevel1: TcxGridLevel;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    SubGrid: TFDQuery;
    DSSubGrid: TDataSource;
    rbTipoRateio: TcxDBRadioGroup;
    dxLayoutItem3: TdxLayoutItem;
    GridFuncaoDBTableView1QTD_HORAS_RATEADAS: TcxGridDBColumn;
    PessoaSelecionada: TFDQuery;
    chkGeraServicoFunc: TcxDBCheckBox;
    lichkGeraServicoFunc: TdxLayoutItem;
    lichkGeraServicoEquipe: TdxLayoutItem;
    chkGeraServicoEquipe: TcxDBCheckBox;
    GridSubGridViewLayoutItem5: TcxGridLayoutItem;
    GridSubGridViewCODSERVICO_VINCULADO: TcxGridDBLayoutViewItem;
    GridSubGridViewGroup1: TdxLayoutGroup;
    liComoBuscar: TdxLayoutItem;
    cxLabel1: TcxLabel;
    GridFuncaoDBTableView1PERC_RATEIO: TcxGridDBColumn;
    GridFuncaoDBTableView1TIPO_RATEIO: TcxGridDBColumn;
    Produto: TFDQuery;
    DSProduto: TDataSource;
    UCHist_Produto: TUCHist_DataSet;
    edtDT_Faturamento: TcxDBTextEdit;
    dxTileControl2: TdxTileControl;
    dxTileControlGroup7: TdxTileControlGroup;
    tiFecharMes: TdxTileControlItem;
    tiCancelarFechamento: TdxTileControlItem;
    Centro_Trabalho: TFDQuery;
    DataSource1: TDataSource;
    UCHist_CentroTrabalho: TUCHist_DataSet;
    GridFuncaoDBTableView1BtnEditar: TcxGridDBColumn;
    dxLayoutLookAndFeelList2: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    dxLayoutItem6: TdxLayoutItem;
    edtRespFechamento: TcxDBTextEdit;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    edtNf_vICMSST: TcxDBCurrencyEdit;
    edtCalc_VCompra_Extra: TcxDBCurrencyEdit;
    cxButton1: TcxButton;
    edtNF_VFrete: TcxDBCurrencyEdit;
    edtVOutro: TcxDBCurrencyEdit;
    edtVDesc: TcxDBCurrencyEdit;
    edtLucro: TcxDBCurrencyEdit;
    edtNF_Calc_VCompra_Extra: TcxDBCurrencyEdit;
    edtCusto_Variavel: TcxDBCurrencyEdit;
    edtCusto_Financeiro: TcxDBCurrencyEdit;
    edtCusto_Representante: TcxDBCurrencyEdit;
    edtComissaoFuncionario: TcxDBCurrencyEdit;
    edtComissao_Agencia: TcxDBCurrencyEdit;
    edtComissaoProducao: TcxDBCurrencyEdit;
    lblPVendaTotal: TcxDBCurrencyEdit;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxLabel3: TcxLabel;
    edtPPerdasProducao: TcxDBCurrencyEdit;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    LiedtNf_vICMSST: TdxLayoutItem;
    dxLayoutGroup8: TdxLayoutGroup;
    LiedtNF_Calc_VCompra_Extra: TdxLayoutItem;
    dxLayoutGroup9: TdxLayoutGroup;
    LiedtNF_Calc_VCusto_Variavel: TdxLayoutItem;
    dxLayoutGroup10: TdxLayoutGroup;
    LiedtCALC_PVENDA_CUSTO_FINANCEIRO: TdxLayoutItem;
    dxLayoutGroup11: TdxLayoutGroup;
    LiedtVOutro: TdxLayoutItem;
    dxLayoutGroup12: TdxLayoutGroup;
    LiedtCALC_PVENDA_COMISSAO_REP: TdxLayoutItem;
    dxLayoutGroup13: TdxLayoutGroup;
    LiedtCALC_PVENDA_COMISSAO_FUN: TdxLayoutItem;
    dxLayoutGroup14: TdxLayoutGroup;
    LiedtCALC_PVENDA_COMISSAO_AGENCIA: TdxLayoutItem;
    dxLayoutGroup15: TdxLayoutGroup;
    LiedtLiedtCALC_PVENDA_COMISSAO_PRODUCAO: TdxLayoutItem;
    dxLayoutGroup16: TdxLayoutGroup;
    LiedtNF_VFrete: TdxLayoutItem;
    dxLayoutGroup17: TdxLayoutGroup;
    LiedtPPerdasProducao: TdxLayoutItem;
    dxLayoutGroup19: TdxLayoutGroup;
    dxLayoutItem30: TdxLayoutItem;
    LiLucro: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    LiedtCalc_VCompra_Extra: TdxLayoutItem;
    dxLayoutGroup20: TdxLayoutGroup;
    dxLayoutItem11: TdxLayoutItem;
    LibtnAplicaPrecoMinimo: TdxLayoutItem;
    LiedtVDesc: TdxLayoutItem;
    LiedtCALC_PMARGEM_CONTRIBUICAO: TdxLayoutItem;
    dxLayoutGroup21: TdxLayoutGroup;
    dxLayoutItem13: TdxLayoutItem;
    LibtnAplicaValorSugerido: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup22: TdxLayoutGroup;
    btnAcessarImpostos: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    btnAcessarCustosFixos: TcxButton;
    dxLayoutItem8: TdxLayoutItem;
    btnAcessarCustosVariaveis: TcxButton;
    dxLayoutItem9: TdxLayoutItem;
    btnAcessarCustosFinanceiros: TcxButton;
    dxLayoutItem12: TdxLayoutItem;
    btnAcessarOutrosCustos: TcxButton;
    dxLayoutItem14: TdxLayoutItem;
    btnAcessarComissaoRep: TcxButton;
    dxLayoutItem15: TdxLayoutItem;
    btnAcessarComissaoFunc: TcxButton;
    dxLayoutItem16: TdxLayoutItem;
    btnAcessarComissaoAgencia: TcxButton;
    dxLayoutItem17: TdxLayoutItem;
    btnAcessarComissaoProd: TcxButton;
    dxLayoutItem18: TdxLayoutItem;
    btnAcessarFrete: TcxButton;
    dxLayoutItem19: TdxLayoutItem;
    btnAcessarPerdaProducao: TcxButton;
    dxLayoutItem20: TdxLayoutItem;
    edtPMaoDeObra: TcxDBCurrencyEdit;
    dxLayoutItem21: TdxLayoutItem;
    btnMaoDeObra: TcxButton;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    procedure FrameEnter(Sender: TObject);
    procedure CadastroAfterOpen(DataSet: TDataSet);
    procedure CadastroBeforeClose(DataSet: TDataSet);
    procedure CurrencyEdit(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cbCompetenciaPropertiesEditValueChanged(Sender: TObject);
    procedure btnConfirmarClick(Sender: TdxTileControlItem);
    procedure btnBuscarClick(Sender: TObject);
    procedure btnAcessar_FolhaClick(Sender: TObject);
    procedure GridFuncaoDBTableView1TOTAL_ENCARGOSPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure FuncionarioSalarioBeforeEdit(DataSet: TDataSet);
    procedure FuncionarioSalarioBeforePost(DataSet: TDataSet);
    procedure GridFuncaoDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure GridFuncaoDBTableView1CODSERVICO_VINCULADOÎProdutoPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure GridSubGridViewDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure GridSubGridViewDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure AgrupaSubGrid(ACampo_Codigo, ACampo_Descricao, SQLSubGrid: String);
    procedure SubGridBeforeOpen(DataSet: TDataSet);
    procedure rbTipoRateioPropertiesEditValueChanged(Sender: TObject);
    procedure FuncionarioSalarioAfterPost(DataSet: TDataSet);
    procedure PessoaSelecionadaBeforeOpen(DataSet: TDataSet);
    procedure FuncionarioSalarioAfterOpen(DataSet: TDataSet);
    procedure FuncionarioSalarioBeforeClose(DataSet: TDataSet);
    procedure PessoaSelecionadaAfterOpen(DataSet: TDataSet);
    procedure GridSubGridViewCODSERVICO_VINCULADOPropertiesStartClick(
      Sender: TObject);
    procedure WREventosCadastroConfiguracao_Acoes(Sender: TObject);
    procedure CadastroAfterInsert(DataSet: TDataSet);
    procedure rbTipoRateioClick(Sender: TObject);
    procedure btnNovoClick(Sender: TdxTileControlItem);
    procedure tiFecharMesClick(Sender: TdxTileControlItem);
    procedure GridFuncaoDBTableView1DblClick(Sender: TObject);
    procedure tiCancelarFechamentoClick(Sender: TdxTileControlItem);
    procedure CadastroAfterPost(DataSet: TDataSet);
    procedure SubGridAfterOpen(DataSet: TDataSet);
    procedure SubGridAfterClose(DataSet: TDataSet);
    procedure Centro_TrabalhoBeforeEdit(DataSet: TDataSet);
    procedure UCHist_SeguidorAddHistorico(Sender: TObject; AChave: Integer;
      ADataSet: TDataSet; AAppID, AForm, AFormCaption, AEvent, AObs,
      ATableName: string; AUserId: Integer);
    procedure dxLayoutGroup2TabChanged(Sender: TObject);
    procedure PessoaSelecionadaAfterPost(DataSet: TDataSet);
    procedure GridFuncaoDBTableView1Column1PropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure GridFuncaoDBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure GridFuncaoDBTableView1MouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure btnMaoDeObraClick(Sender: TObject);
  private
    { Private declarations }
    FConsultaProduto: TConsuProduto_Servico_Frame;
    FFrmProduto_Frame: TFrmProduto_Servico_Frame;
    FMasterSource: TDataSource;
    FMasterFields: String;
    FSQL: String;
    FCompetenciaAberta: Boolean;
    procedure AbreFuncionarioSalarioSemFiltro;
    procedure AbreFuncionarioSalarioOriginal;
    procedure AtualizaAberturaCompetencia;
  public
    { Public declarations }
  end;

var
  FrameProducao_Rateio: TFrameProducao_Rateio;

implementation

{$R *.dfm}

uses
  UnitFuncoes, wrFuncoes,  Math, Classes.PlanoContas, DateUtils, StrUtils, Base,
  Frame_CadSalario, wr_memoria, wrForms, CadFolha_Pagamento, frFrameEncargos,
  frFrame_Rateio_Equipe, CadCentro_Trabalho, Aguarde, FrFrame_Rateio_Custo_Vinculo,
  CadProduto_Movimento, FrFrame_Rateio_Custo_Vinculo_Equipe, frFrameHistorico, Tag.Form;

procedure TFrameProducao_Rateio.btnConfirmarClick(Sender: TdxTileControlItem);
begin
  try
    inherited;
  except
    On E:EIBNativeException do
    begin
      if E.Kind = ekUKViolated then
      begin
        ShowMessage('Já foi lançado outro Registro com a mesma competência nesta empresa.');
        Abort;
      end;
    end;
  end;
end;

procedure TFrameProducao_Rateio.btnMaoDeObraClick(Sender: TObject);
begin
  inherited;
  GrupoMaoDeObra.MakeVisible;
end;

procedure TFrameProducao_Rateio.btnNovoClick(Sender: TdxTileControlItem);
begin
  inherited;
  liGridSubGrid.Visible := False;
  FMasterSource := nil;
  FMasterFields := '';
  FSQL := '';
  AbreFuncionarioSalarioOriginal;
end;

procedure TFrameProducao_Rateio.CadastroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  FuncionarioSalario.Refresh;
  SubGrid.Refresh;
end;

procedure TFrameProducao_Rateio.CadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if Cadastro.FieldByName('TIPO_RATEIO').AsString = 'EQUIPE' then
  begin
    FMasterSource := DSSubGrid;
    FMasterFields := 'CODIGO';
    FSQL := ' AND CODEQUIPE = :CODIGO ';
    liGridSubGrid.Visible := True;
  end
  else
  begin
    FMasterSource := nil;
    FMasterFields := '';
    FSQL := '';
    liGridSubGrid.Visible := False;
  end;
  AbreFuncionarioSalarioOriginal;
  FuncionarioSalario.Open;
  SubGrid.Open;
  AtualizaAberturaCompetencia;
end;

procedure TFrameProducao_Rateio.CadastroAfterPost(DataSet: TDataSet);
begin
  inherited;
  AtualizaAberturaCompetencia;
end;

procedure TFrameProducao_Rateio.AtualizaAberturaCompetencia;
begin
  FCompetenciaAberta := Cadastro.FieldByName('DT_FECHAMENTO').IsNull;
  btnAcessar_Folha.Enabled := FCompetenciaAberta;
  btnBuscar.Enabled := FCompetenciaAberta;
  lichkGeraServicoEquipe.Enabled := FCompetenciaAberta;
  lichkGeraServicoFunc.Enabled := FCompetenciaAberta;

  if FCompetenciaAberta then
    GridFuncaoDBTableView1.DragMode := dmAutomatic
  else
    GridFuncaoDBTableView1.DragMode := dmManual;

  tiFecharMes.Visible := FCompetenciaAberta;
  tiCancelarFechamento.Visible := not FCompetenciaAberta;

end;

procedure TFrameProducao_Rateio.CadastroBeforeClose(DataSet: TDataSet);
begin
  inherited;
  FuncionarioSalario.Close;
  SubGrid.Close;
end;

procedure TFrameProducao_Rateio.cbCompetenciaPropertiesEditValueChanged(
  Sender: TObject);
var
  ACompetencia: TDateTime;
begin
  inherited;
  if VarToStr(cbCompetencia.EditValue) <> '' then
  begin
    FiltraCompetenciaPeloCodigo(cbCompetencia.EditValue);
    TryStrToDateTime('01/' + wr_memoria_Competencia.FieldByName('DESCRICAO').AsString, ACompetencia);
    FolhaPagamento.Close;
    FolhaPagamento.ParamByName('d1').AsDateTime := ACompetencia;
    FolhaPagamento.ParamByName('d2').AsDateTime := ACompetencia + 1;
    FolhaPagamento.Open;

    libtnBuscar.Enabled := FolhaPagamento.RecordCount = 0;
    libtnAcessar_Folha.Visible := FolhaPagamento.RecordCount > 0;
    lilblAviso.Visible := libtnAcessar_Folha.Visible;
    liComoBuscar.Visible := not libtnAcessar_Folha.Visible;
    Debug(VarToStr(FolhaPagamento.RecordCount));

    FuncionarioSalario.Close;
    FuncionarioSalario.ParamByName('d1').Value := StartOfTheMonth(ACompetencia);
    FuncionarioSalario.ParamByName('d2').Value := EndOfTheMonth(ACompetencia);
    FuncionarioSalario.Prepare;
    FuncionarioSalario.Open;
  end;
end;

procedure TFrameProducao_Rateio.FrameEnter(Sender: TObject);
begin
  inherited;
  PreencheLookupCompetencia(cbCompetencia.Properties, Empresa.FieldByName('CODIGO').AsString);
  PreencheLookupEmpresa(cbEmpresa.Properties);
end;

procedure TFrameProducao_Rateio.FuncionarioSalarioAfterOpen(DataSet: TDataSet);
var
  ATotalMensal, AHoras: Double;
begin
  inherited;
  PessoaSelecionada.Open;

  ATotalMensal := 0;
  AHoras := 0;

  FuncionarioSalario.First;
  while not FuncionarioSalario.eof do
  begin
    ATotalMensal := ATotalMensal + (FuncionarioSalario.FieldByName('VALOR_HORA').AsFloat*FuncionarioSalario.FieldByName('QTD_HORAS_RATEADAS').AsFloat);
    AHoras := AHoras + FuncionarioSalario.FieldByName('QTD_HORAS_RATEADAS').AsFloat;
    FuncionarioSalario.Next;
  end;

  edtValorTotal.Value  := ATotalMensal;
  edtHorasTotais.Value := AHoras;

  if AHoras > 0 then
    edtMediaHora.Value   := ATotalMensal/AHoras
  else
    edtMediaHora.Value   := 0;
end;

procedure TFrameProducao_Rateio.FuncionarioSalarioAfterPost(DataSet: TDataSet);
begin
  inherited;
  UCHist_Cadastro.MensagemHistorico.Add('Alterado Funcionario ' + DataSet.FieldByName('DESCRICAO').AsString + '.');
  SubGrid.Refresh;
end;

procedure TFrameProducao_Rateio.FuncionarioSalarioBeforeClose(DataSet: TDataSet);
begin
  inherited;
  PessoaSelecionada.Close;
end;

procedure TFrameProducao_Rateio.FuncionarioSalarioBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  VerificaSePodeAlteraDataSet;
end;

procedure TFrameProducao_Rateio.FuncionarioSalarioBeforePost(DataSet: TDataSet);
begin
  inherited;
  CalculaValores(FuncionarioSalario, 'ano');
end;

procedure TFrameProducao_Rateio.GridFuncaoDBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  if ACellViewInfo.Item.Index = GridFuncaoDBTableView1BtnEditar.Index then
    GridFuncaoDBTableView1DblClick(ACellViewInfo.Item);
end;

procedure TFrameProducao_Rateio.GridFuncaoDBTableView1CODSERVICO_VINCULADOÎProdutoPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  ACodProduto: string;
begin
  inherited;
  VerificaSePodeAlteraDataSet(FuncionarioSalario);
  ACodProduto := ConsultaTag_NormalModalFiltro(Self, Tag_Produto_Servico, '');
//  FuncionarioSalario.FieldByName('CODSERVICO_VINCULADO').AsString := ACodProduto;

  PessoaSelecionada.First;
  while not PessoaSelecionada.Eof do
  begin
    PessoaSelecionada.Edit;
    PessoaSelecionada.FieldByName('CODSERVICO_VINCULADO').AsString := ACodProduto;
    PessoaSelecionada.Post;
    PessoaSelecionada.Next;
  end;
  FuncionarioSalario.Refresh;
end;

procedure TFrameProducao_Rateio.GridFuncaoDBTableView1Column1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  ShowMessage('Editar');
end;

procedure TFrameProducao_Rateio.GridFuncaoDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if Trunc(AViewInfo.GridRecord.Index mod 2) = 0 then
  begin
    if (AViewInfo.Item.Index = GridFuncaoDBTableView1TOTAL_ENCARGOS.Index) or
       (AViewInfo.Item.Index = GridFuncaoDBTableView1TOTAL_MENSAL.Index)   or
       (AViewInfo.Item.Index = GridFuncaoDBTableView1QTD_HORAS_RATEADAS.Index) or
       (AViewInfo.Item.Index = GridFuncaoDBTableView1PERC_RATEIO.Index)
    then
    begin
      ACanvas.Brush.Color := $00E0E0E0;  // mais fraco
      ACanvas.Font.Color := clBlack;
    end;

    if (AViewInfo.Item.Index = GridFuncaoDBTableView1QTD_HORAS_TRABALHADAS_MENSAL.Index) and
       (trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[GridFuncaoDBTableView1QTD_HORAS_TRABALHADAS_MENSAL.Index], varString)) = '0')
    then
    begin
      ACanvas.Brush.Color := $0098FCFA ;
      ACanvas.Font.Color := clBlack;
    end;

    if (AViewInfo.Item.Index = GridFuncaoDBTableView1SALARIO.Index) and
       (trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[GridFuncaoDBTableView1SALARIO.Index], varString)) = '0')
    then
    begin
      ACanvas.Brush.Color := $0098FCFA ;
      ACanvas.Font.Color := clBlack;
    end;

    if (AViewInfo.Item.Index = GridFuncaoDBTableView1CODSERVICO_VINCULADOÎProduto.Index) and
       (trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[GridFuncaoDBTableView1CODSERVICO_VINCULADOÎProduto.Index], varString)) = '')
    then
    begin
      ACanvas.Brush.Color := $009EA8FC; // Vermelho mais escurinho
      ACanvas.Font.Color := clBlack;
    end;
  end
  else
  begin
    if (AViewInfo.Item.Index = GridFuncaoDBTableView1TOTAL_ENCARGOS.Index) or
       (AViewInfo.Item.Index = GridFuncaoDBTableView1TOTAL_MENSAL.Index)   or
       (AViewInfo.Item.Index = GridFuncaoDBTableView1QTD_HORAS_RATEADAS.Index) or
       (AViewInfo.Item.Index = GridFuncaoDBTableView1PERC_RATEIO.Index)
    then
    begin
      ACanvas.Brush.Color := $00F3F3F3;  // mais fraco
      ACanvas.Font.Color := clBlack;
    end;

    if (AViewInfo.Item.Index = GridFuncaoDBTableView1QTD_HORAS_TRABALHADAS_MENSAL.Index) and
       (trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[GridFuncaoDBTableView1QTD_HORAS_TRABALHADAS_MENSAL.Index], varString)) = '0')
    then
    begin
      ACanvas.Brush.Color := $00B9F8FF ;
      ACanvas.Font.Color := clBlack;
    end;

    if (AViewInfo.Item.Index = GridFuncaoDBTableView1SALARIO.Index) and
       (trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[GridFuncaoDBTableView1SALARIO.Index], varString)) = '0')
    then
    begin
      ACanvas.Brush.Color := $00B9F8FF ;
      ACanvas.Font.Color := clBlack;
    end;

    if (AViewInfo.Item.Index = GridFuncaoDBTableView1CODSERVICO_VINCULADOÎProduto.Index) and
       (trim(VarAsType(AViewInfo.GridRecord.DisplayTexts[GridFuncaoDBTableView1CODSERVICO_VINCULADOÎProduto.Index], varString)) = '')
    then
    begin
      ACanvas.Brush.Color := $009EA8FC;//$00BBB9FF ; // Vermelho
      ACanvas.Font.Color := clBlack;
    end;
  end;

end;

procedure TFrameProducao_Rateio.GridFuncaoDBTableView1DblClick(Sender: TObject);
begin
  inherited;
  if not FCompetenciaAberta then
  begin
    ShowMessage('A Competência já está fechada');
    Exit;
  end;

  VerificaSePodeAlteraDataSet;
  TFrame_Rateio_Custo_Vinculo.Abrir(Self, FuncionarioSalario, PessoaSelecionada, '');
end;

procedure TFrameProducao_Rateio.GridFuncaoDBTableView1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var
  HT: TcxCustomGridHitTest;
  ACodigo: Variant;
  AFieldName:String;
begin
  HT := GridFuncaoDBTableView1.GetHitTest(X, Y);
  if not (HT is TcxGridRecordCellHitTest) then
    Abort;

  if TcxGridRecordCellHitTest(HT).Item.Index = GridFuncaoDBTableView1BtnEditar.Index then
    Screen.Cursor := crHandPoint
  else
    Screen.Cursor := crDefault;
end;

procedure TFrameProducao_Rateio.GridFuncaoDBTableView1TOTAL_ENCARGOSPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  TFrame_Encargos.Abrir(Self, DSFuncionarioSalario);
end;

procedure TFrameProducao_Rateio.GridSubGridViewCODSERVICO_VINCULADOPropertiesStartClick(
  Sender: TObject);
var
  ACodProduto: String;
begin
  inherited; {
//  ShowMessage('Teste');
  Debug(TcxHyperLinkEdit(Sender).Text);
//  VerificaSePodeAlteraDataSet(FuncionarioSalario);
  if TcxHyperLinkEdit(Sender).Text <> 'CLIQUE PARA CONFIGURAR' then
    CadastroTag_NormalChave(Self, Tag_Produto_Servico, Copy(TcxHyperLinkEdit(Sender).Text, 14, 100))
  else
    CadastroModalChave(TFrmCentro_Trabalho, SubGrid.FieldByName('CODIGO').AsString);
    //    ShowMessage('CLICOU PARA CONFIGURAR');
}
  Debug(Centro_Trabalho.FieldByname('DESCRICAO').AsString);
  TFrame_Rateio_Custo_Vinculo_Equipe.Abrir(Self, Centro_Trabalho, edtValorTotal.Text, edtHorasTotais.Text, edtMediaHora.Text);
  SubGrid.Refresh;
end;

procedure TFrameProducao_Rateio.GridSubGridViewDragDrop(Sender, Source: TObject;
  X, Y: Integer);
var
  HT: TcxCustomGridHitTest;
  ACodigo: Variant;
  AFieldName:String;
begin
  if not FCompetenciaAberta then
  begin
    ShowMessage('A Competência já está fechada');
    Exit;
  end;

  HT := GridSubGridView.GetHitTest(X, Y);
  if not (HT is TcxGridRecordCellHitTest) then
    Abort;

  VerificaSePodeAlteraDataSet;
  ACodigo    := TcxGridRecordCellHitTest(HT).GridRecord.Values[GridSubGridViewCODIGO.Index];
  TFrame_Rateio_Equipe.Abrir(Self, FuncionarioSalario, PessoaSelecionada, ACodigo);
  Subgrid.Refresh;
  {

  AFieldName := 'CODEQUIPE';
  FuncionarioSalario.Edit;
  FuncionarioSalario.FieldByName('CODEQUIPE').AsString := ACodigo;
  FuncionarioSalario.Post;
//  AFieldName := TcxGridDBColumn(GridFuncaoDBTableView1.GroupedColumns[0]).DataBinding.FieldName;
//  AcaoSelecionados(AFieldName, ACodigo);
  FuncionarioSalario.Refresh;  }
end;

procedure TFrameProducao_Rateio.GridSubGridViewDragOver(Sender, Source: TObject;
  X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
  Accept := (Source <> nil) and
            (Source is TcxDragControlObject) and
            (TcxDragControlObject(Source).Control is TcxGridSite) and
            (TcxGridSite(TcxDragControlObject(Source).Control).GridView = GridFuncaoDBTableView1);
end;

procedure TFrameProducao_Rateio.PessoaSelecionadaAfterOpen(DataSet: TDataSet);
begin
  inherited;
  Debug(VarToStr(PessoaSelecionada.RecordCount));
end;

procedure TFrameProducao_Rateio.PessoaSelecionadaAfterPost(DataSet: TDataSet);
begin
  inherited;
//  UCHist_Cadastro.MensagemHistorico.Add('Alterado Funcionario ' + DataSet.FieldByName('DESCRICAO').AsString + '.');
end;

procedure TFrameProducao_Rateio.PessoaSelecionadaBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  PessoaSelecionada.Params[0] := FuncionarioSalario.Params[0];
  PessoaSelecionada.Params[1] := FuncionarioSalario.Params[1];
end;

procedure TFrameProducao_Rateio.rbTipoRateioClick(Sender: TObject);
begin
  inherited;
  if rbTipoRateio.EditValue = 'EQUIPE' then
  begin
    liGridSubGrid.Visible := True;
    FuncionarioSalario.MasterSource := DSSubGrid;
    FuncionarioSalario.MasterFields := 'CODIGO';
    FuncionarioSalario.SQL[2] := ' AND CODEQUIPE = :CODIGO ';
  end
  else
  begin
    liGridSubGrid.Visible := False;
    FuncionarioSalario.MasterSource := nil;
    FuncionarioSalario.MasterFields := '';
    FuncionarioSalario.SQL[2] := '';
  end;
  FuncionarioSalario.Open;
  SubGrid.Open;
end;

procedure TFrameProducao_Rateio.rbTipoRateioPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  Debug('EditValueRadio');
end;

procedure TFrameProducao_Rateio.SubGridAfterClose(DataSet: TDataSet);
begin
  inherited;
  Centro_Trabalho.Close;
end;

procedure TFrameProducao_Rateio.SubGridAfterOpen(DataSet: TDataSet);
begin
  inherited;
  Centro_Trabalho.Open;
end;

procedure TFrameProducao_Rateio.SubGridBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  Subgrid.SQL.Text := 'select S.CODEQUIPE as CODIGO, CT.DESCRICAO as DESCRICAO, ' +
//                             '''R$ '' || cast(iif(sum(S.QTD_HORAS_RATEADAS) > 0, sum(coalesce(S.VALOR_HORA, 0) * ' +
//                             'coalesce(S.QTD_HORAS_RATEADAS, 0)) / sum(coalesce(S.QTD_HORAS_RATEADAS, 0)), 0) ' +
//                             'as numeric(15,2)) as QUANT ' +
                      'COUNT(1) || '' pessoa(s)'' as QUANT, ' +
                      'COALESCE(''Cód Serviço: '' || CT.CODPRODUTO, ''CLIQUE PARA CONFIGURAR'') AS CODSERVICO_VINCULADO ' +
                      'from (select * ' +
                            'from FUNCIONARIO_SALARIO ' +
                            'where COMPETENCIA between :D1 and :D2) S  ' +
                      'left join CENTRO_TRABALHO CT on CT.CODIGO = S.CODEQUIPE ' +
                      'group by 1, 2, 4 ' +
                      '  ' +
                      'union ' +
                      '  ' +
                      'select CT1.CODIGO, CT1.DESCRICAO as DESCRICAO, ''Vazio'' as QUANT, ' +
                      'COALESCE(''Cód Serviço: '' || CT1.CODPRODUTO, ''CLIQUE PARA CONFIGURAR'') AS CODSERVICO_VINCULADO ' +
                      'from CENTRO_TRABALHO CT1 ' +
                      'where CT1.CODIGO not in (select CODEQUIPE ' +
                                               'from FUNCIONARIO_SALARIO ' +
                                               'where COMPETENCIA between :D1 and :D2) ' +
                      'and CT1.ATIVO = ''S''';
  Subgrid.Params := FuncionarioSalario.Params;
end;

procedure TFrameProducao_Rateio.tiCancelarFechamentoClick(
  Sender: TdxTileControlItem);
begin
  inherited;
  if (MessageDlg('Deseja cancelar o fechamento da competência ' + cbCompetencia.Text + '?', mtConfirmation, mbYesNo, 0) = mrNo) then
    Abort;

  VerificaSePodeAlteraDataSet;
  Cadastro.FieldByName('DT_FECHAMENTO').Value := null;
  Cadastro.FieldByName('CODUSUARIO_FECHAMENTO').Value := null;
  Cadastro.FieldByName('USUARIO_FECHAMENTO').Value := null;
  Cadastro.FieldByName('FECHOU_SEM_ATUALIZAR').Value := null;
  AtualizaAberturaCompetencia;
end;

procedure TFrameProducao_Rateio.tiFecharMesClick(Sender: TdxTileControlItem);
var
  AGeraFuncionario, AGeraEquipe, AError, AFechouCompetenciaSemAtualizar: Boolean;
  AErrorText: TCaption;
  ADisplayValue: VAriant;
  ACodInsereList: TStringList;
  ACod: String;
  ACodProduto_Movimento: integer;
begin
  inherited;
  VerificaSePodeAlteraDataSet;
  AGeraFuncionario  := chkGeraServicoFunc.Checked;
  AGeraEquipe := chkGeraServicoEquipe.Checked;
  AFechouCompetenciaSemAtualizar := False;

  if not AGeraFuncionario and not AGeraEquipe
  then
  begin
    if (MessageDlg('Deseja fechar o mês sem atualizar o preço dos serviços?', mtConfirmation, mbYesNo, 0) = mrNo) then
    begin
      ShowMessage('Vincule os Serviços e marque "Gerar Serviço por Equipe" ou "Gerar Serviço por Funcionário".');
      Abort;
    end
    else
      AFechouCompetenciaSemAtualizar := True;
  end;


  try
    if AFechouCompetenciaSemAtualizar then
      Exit;

    AbreFuncionarioSalarioSemFiltro;
  //  AbreFuncionarioSalarioOriginal;
  //  liGridSubGrid.Visible := False;
  //  FuncionarioSalario.MasterSource := nil;
  //  FuncionarioSalario.MasterFields := '';
  //  FuncionarioSalario.SQL[2] := '';
  //  FuncionarioSalario.Open;

    if AGeraFuncionario and FuncionarioSalario.Locate('CODSERVICO_VINCULADO;TIPO_RATEIO', VarArrayOf([null, 'DIRETO']), []) then
    begin
      ShowMessage('Existem pessoas com serviço não vinculado');
      Abort;
    end;
    if AGeraEquipe and SubGrid.Locate('CODSERVICO_VINCULADO', VarArrayOf(['CLIQUE PARA CONFIGURAR']),[]) then
    begin
      SubGrid.Filter := 'QUANT <> ''Vazio'' AND DESCRICAO IS NOT NULL ';
      SubGrid.Filtered := True;
      if SubGrid.Locate('CODSERVICO_VINCULADO', 'CLIQUE PARA CONFIGURAR',[]) then
      begin
         ShowMessage('Existem Equipes com serviço não vinculado');
        Abort;
      end;
    end;

    // Rotina que atualiza o valor dos serviços

    // PASSO 1 - Atualizar os serviços de todos os funcionários
    // FAzer pela tela? Tem problema se demorar? Acho que aqui não.

    if Not Assigned(FFrmProduto_Frame) then
      FFrmProduto_Frame:= TFrmProduto_Servico_Frame.Create(Self);

    FFrmProduto_Frame.FrameEnter(FFrmProduto_Frame);

    ACodInsereList := TStringList.Create;

    FuncionarioSalario.First;
    while not FuncionarioSalario.eof do
    begin
      if (FuncionarioSalario.FieldByName('CODSERVICO_VINCULADO').AsString = '') OR
         (FuncionarioSalario.FieldByName('TIPO_RATEIO').AsString <> 'DIRETO') then
      begin
        FuncionarioSalario.Next;
        Continue;
      end;

      ACodInsereList.AddIfNotExists(FuncionarioSalario.FieldByName('PESSOA_FUNCIONARIO_CODIGO').AsString);
      FuncionarioSalario.Next;
    end;

    for ACod in ACodInsereList do
    begin
      FuncionarioSalario.Filtered := False;
      FuncionarioSalario.Filter   := 'TIPO_RATEIO = ''DIRETO'' AND PESSOA_FUNCIONARIO_CODIGO = ' + QuotedStr(ACod);
      FuncionarioSalario.Filtered := True;

      with FFrmProduto_Frame do
      begin
        CloseOpen_AbrirRegistro(FuncionarioSalario.FieldByName('CODSERVICO_VINCULADO').AsString);
        btnAlterar.Click;
        ADisplayValue := FuncionarioSalario.FieldByName('VALOR_HORA').AsString;
        edtValor.Value  := ADisplayValue;
        edtValorPropertiesValidate(edtValor, ADisplayValue, AErrorText, AError);

        edtCusto.Value  := ADisplayValue;
        edtCustoPropertiesValidate(edtCusto, ADisplayValue, AErrorText, AError);
        btnConfirmar.Click;
      end;

      FuncionarioSalario.First;
      while not FuncionarioSalario.eof do
      begin
        MovimentaEstoque(TransaFD,
                   FuncionarioSalario.FieldByName('CODSERVICO_VINCULADO').AsString,
                   EmpresaAtiva,
                   'PRINCIPAL',
                   '',
                   DataHoraSys,
                   'Rateio',
                   FuncionarioSalario.FieldByName('QTD_HORAS_RATEADAS').AsFloat,
                   0,
                   CodigoUsuario,
                   '',
                   '',
                   0,
                   0,
                   FuncionarioSalario.FieldByName('VALOR_HORA').AsFloat,
                   'Frame_CadPrecificacao',
                   'Custo Direto Rateado',
                   'Precificação',
                   ACodProduto_Movimento);
        FuncionarioSalario.Next;
      end;

    end;
    FuncionarioSalario.Filtered := False;
    // PASSO 2 - Atualizar os Serviços de todas as equipes
    AbreFuncionarioSalarioOriginal;
    if AGeraEquipe then
    begin
      while not SubGrid.eof do
      begin
        Debug(SubGrid.FieldByName('DESCRICAO').AsString);

        ADisplayValue := edtMediaHora.Value;
        with FFrmProduto_Frame do
        begin
          CloseOpen_AbrirRegistro(Copy(SubGrid.FieldByName('CODSERVICO_VINCULADO').AsString, 14, 100));
          btnAlterar.Click;
          edtValor.Value  := ADisplayValue;
          edtValorPropertiesValidate(edtValor, ADisplayValue, AErrorText, AError);

          edtCusto.Value  := ADisplayValue;
          edtCustoPropertiesValidate(edtCusto, ADisplayValue, AErrorText, AError);
          btnConfirmar.Click;
        end;
        SubGrid.Next;
      end;
    end;
    SubGrid.Filtered := False;

  finally
    Cadastro.FieldByName('DT_FECHAMENTO').AsDateTime := DataHoraSys;
    Cadastro.FieldByName('CODUSUARIO_FECHAMENTO').AsInteger := Usuario.Codigo;
    Cadastro.FieldByName('USUARIO_FECHAMENTO').AsString := Usuario.Login;
    Cadastro.FieldByName('FECHOU_SEM_ATUALIZAR').AsString := IfThen(AFechouCompetenciaSemAtualizar, 'S', 'N');
    AtualizaAberturaCompetencia;
  end;

//  FuncionarioSalario.First;
//  while not FuncionarioSalario.eof do
//  begin
//    // Se não tiver deve dizer que faltou
//    CriarNovoServicoVinculado( FuncionarioSalario, Produto);
//    FuncionarioSalario.Next;
//  end;
end;

procedure TFrameProducao_Rateio.UCHist_SeguidorAddHistorico(Sender: TObject;
  AChave: Integer; ADataSet: TDataSet; AAppID, AForm, AFormCaption, AEvent,
  AObs, ATableName: string; AUserId: Integer);
begin
  inherited;
//  UCHist_Cadastro.AdicionaHistoricoNovo(TransaFD,
//                                        Empresa.FieldByName('CODIGO').AsString,
//                                        Usuario.Codigo,
//                                        DataHoraSys,
//                                        'Frame_CadRateio_Custo',
//                                        'Frame_CadRateio_Custo',
//                                        'Editado',
//                                        'Alterado Item' + AChave.TOString + '.',
//                                        'CUSTO',
//                                        Cadastro.FieldByName('CODIGO').AsInteger,
//                                        'Alterado Item ' + AChave.TOString + '.',
//                                        'S');
//  UCHist_Cadastro.MensagemHistorico.Add('Alterado Item' + AChave.TOString + '.');

end;

procedure TFrameProducao_Rateio.WREventosCadastroConfiguracao_Acoes(
  Sender: TObject);
begin
  inherited;
  with WREventosCadastro do
  begin
    with AddForm(self) do
    begin
      AddValorInicial('PRECIFICACAO' , 'TIPO_RATEIO', rbTipoRateio, 'FUNCIONARIO');
    end;
  end;
end;

procedure TFrameProducao_Rateio.Centro_TrabalhoBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  VerificaSePodeAlteraDataSet;
end;

procedure TFrameProducao_Rateio.CurrencyEdit(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  inherited;
  if not (FuncionarioSalario.State = dsEdit) then
    FuncionarioSalario.Edit;
  FuncionarioSalario.FieldByName(TcxGridDBColumn(Sender).DataBinding.FieldName).AsString := DisplayValue;
  CalculaValores(FuncionarioSalario, 'ano');
end;

procedure TFrameProducao_Rateio.dxLayoutGroup2TabChanged(Sender: TObject);
begin
  inherited;
  if GrupoLogAlteracoes.ActuallyVisible then
    TFrameHistorico.CarregaFrame(FFrameHistorico, PnlFrameHistorico, UCHist_Cadastro, TransaFD, nil);
end;

procedure TFrameProducao_Rateio.btnAcessar_FolhaClick(Sender: TObject);
begin
  inherited;
  CadastroMidChildChave(TFrmFolha_Pagamento, VarArrayOf([FolhaPagamento.FieldByName('CODIGO').AsString, 1]));
end;

procedure TFrameProducao_Rateio.btnBuscarClick(Sender: TObject);
var
  ACompetencia, ACompetenciaAnterior: TDateTime;
  QuerFolha, QuerCompetenciaAnterior, QuerFuncionarioAnterior: TFDQuery;
  AInsere: boolean;
  AOldSQLWhere, AOldMasterFields, ACod: string;
  ACodInsereList: TStringList;
  AOldMasterSource: TDataSource;
  AFormAguarde: TFrmAguarde;
begin
  inherited;
  AFormAguarde := TFrmAguarde.Create(nil);
  try
    AFormAguarde.Show;
    AFormAguarde.Mensagem := 'Buscando funcionários';

    QuerCompetenciaAnterior := GeraFDQuery;
    QuerCompetenciaAnterior.SQL.Text := 'SELECT MAX(F.COMPETENCIA) AS COMPETENCIA FROM FUNCIONARIO_SALARIO F';
    QuerCompetenciaAnterior.Open;

    ACompetenciaAnterior := QuerCompetenciaAnterior.FieldByName('COMPETENCIA').AsDateTime;

    QuerFuncionarioAnterior := GeraFDQuery;
    QuerFuncionarioAnterior.SQL.Text := 'SELECT F.* FROM FUNCIONARIO_SALARIO F WHERE F.COMPETENCIA BETWEEN :d1 AND :d2 ';
    QuerFuncionarioAnterior.ParamByName('d1').AsDateTime := StartOfTheMonth(ACompetenciaAnterior);
    QuerFuncionarioAnterior.ParamByName('d2').AsDateTime := EndOfTheMonth(ACompetenciaAnterior);
    QuerFuncionarioAnterior.Open;

    VerificaSePodeAlteraDataset;

    AbreFuncionarioSalarioSemFiltro;

    TryStrToDateTime('01/' + wr_memoria_Competencia.FieldByName('DESCRICAO').AsString, ACompetencia);

    QuerFolha := GeraFDQuery;
    QuerFolha.SQL.Text := 'SELECT FPS.* FROM FOLHA_PAGAMENTO_SALARIO FPS ' +
                          'WHERE FPS.ATIVO = ''S'' AND ' +
                          'FPS.COMPETENCIA BETWEEN :d1 AND :d2 ';
    QuerFolha.ParamByName('d1').AsDateTime := StartOfTheMonth(ACompetencia);
    QuerFolha.ParamByName('d2').AsDateTime := EndOfTheMonth(ACompetencia);
    QuerFolha.Open;

    AFormAguarde.Mensagem := 'Verificando vínculos anteriores';
    AFormAguarde.Progresso := 0;
    AFormAguarde.ProgressoMaximo := QuerFuncionarioAnterior.RecordCount;
    // Busca tudo da folha, não deveria buscar primeiro aquilo que já foi configurado antes?
    ACodInsereList := TStringList.Create;

    QuerFuncionarioAnterior.First;
    while not QuerFuncionarioAnterior.eof do
    begin
      if not QuerFolha.Locate('PESSOA_FUNCIONARIO_CODIGO',QuerFuncionarioAnterior.FieldByName('PESSOA_FUNCIONARIO_CODIGO').AsString, []) then
        Continue;

      if FuncionarioSalario.Locate('PESSOA_FUNCIONARIO_CODIGO', QuerFuncionarioAnterior.FieldByName('PESSOA_FUNCIONARIO_CODIGO').AsString, []) then
        Continue;

      ACodInsereList.AddIfNotExists(QuerFuncionarioAnterior.FieldByName('PESSOA_FUNCIONARIO_CODIGO').AsString);

      AFormAguarde.AvancarProgresso;
      QuerFuncionarioAnterior.Next;
    end;

    AFormAguarde.Mensagem := 'Adicionando na lista';
    AFormAguarde.Progresso := 0;
    AFormAguarde.ProgressoMaximo := ACodInsereList.Count;

    for ACod in ACodInsereList do
    begin
      QuerFuncionarioAnterior.Filtered := False;
      QuerFuncionarioAnterior.Filter := 'PESSOA_FUNCIONARIO_CODIGO = ' + QuotedStr(ACod);
      QuerFuncionarioAnterior.Filtered := True;

      while not QuerFuncionarioAnterior.eof do
      begin
        FuncionarioSalario.Insert;
        FuncionarioSalario.FieldByName('CODIGO').AsInteger               := TRUNC(GetProximoCodigoGen('CR_FUNCIONARIO_SALARIO'));
        FuncionarioSalario.FieldByName('DT_ALTERACAO').AsDateTime        := DataHoraSys;
        FuncionarioSalario.FieldByName('CODUSUARIO_ATUALIZACAO').AsInteger := Usuario.Codigo;
        FuncionarioSalario.FieldByName('COMPETENCIA').AsDateTime           := ACompetencia;
        DSCopiarCamposIguais(QuerFuncionarioAnterior, FuncionarioSalario, ['CODIGO', 'COMPETENCIA', 'CODUSUARIO_ATUALIZACAO', 'DT_ALTERACAO']);
        FuncionarioSalario.Post;

        QuerFuncionarioAnterior.Next;
      end;

      AFormAguarde.AvancarProgresso;
    end;

    AFormAguarde.Mensagem := 'Buscando na folha de pagamento';
    AFormAguarde.Progresso := 0;
    AFormAguarde.ProgressoMaximo := QuerFolha.RecordCount;

    QuerFolha.First;
    while not QuerFolha.Eof do
    begin
      if QuerFolha.FieldByName('PESSOA_FUNCIONARIO_CODIGO').AsString = '' then
      begin
        QuerFolha.Next;
        Continue;
      end;


      AInsere := not FuncionarioSalario.Locate('PESSOA_FUNCIONARIO_CODIGO',QuerFolha.FieldByName('PESSOA_FUNCIONARIO_CODIGO').AsString, []);

      if AInsere then
      begin
        FuncionarioSalario.Insert;
        FuncionarioSalario.FieldByName('CODIGO').AsInteger := TRUNC(GetProximoCodigoGen('CR_FUNCIONARIO_SALARIO'));
        FuncionarioSalario.FieldByName('DT_ALTERACAO').AsDateTime := DataHoraSys;
        FuncionarioSalario.FieldByName('CODEQUIPE').AsInteger := 0;
        DSCopiarCamposIguais(QuerFolha, FuncionarioSalario, ['CODIGO', 'CODUSUARIO_ALTERACAO', 'DT_ALTERACAO', 'CODSERVICO_VINCULADO']);

        if QuerFuncionarioAnterior.Locate('CODFUNCIONARIO', FuncionarioSalario.FieldByName('PESSOA_FUNCIONARIO_CODIGO').AsString,[]) then
        begin
          FuncionarioSalario.FieldByName('CODSERVICO_VINCULADO').AsString := QuerFuncionarioAnterior.FieldByName('CODSERVICO_VINCULADO').AsString;
          FuncionarioSalario.FieldByName('CODEQUIPE').AsInteger := QuerFuncionarioAnterior.FieldByName('CODEQUIPE').AsInteger;
        end;

        FuncionarioSalario.FieldByName('CODFUNCIONARIO').AsString := FuncionarioSalario.FieldByName('PESSOA_FUNCIONARIO_CODIGO').AsString;
        FuncionarioSalario.FieldByName('TIPO_RATEIO').AsString := 'INDIRETO';
        FuncionarioSalario.FieldByName('PERC_RATEIO').Value := 100;
        FuncionarioSalario.FieldByName('QTD_HORAS_RATEADAS').AsFloat := FuncionarioSalario.FieldByName('QTD_HORAS_TRABALHADAS_MENSAL').AsFloat;
        FuncionarioSalario.Post;
      end;
      AFormAguarde.AvancarProgresso;
      QuerFolha.Next;
    end;
    AbreFuncionarioSalarioOriginal;
  finally
    AFormAguarde.Free;
  end;
  SubGrid.Refresh;
end;

procedure TFrameProducao_Rateio.AbreFuncionarioSalarioOriginal;
begin
  FuncionarioSalario.Close;
  FuncionarioSalario.MasterSource := FMasterSource;
  FuncionarioSalario.MasterFields := FMasterFields;
  FuncionarioSalario.SQL[2] := FSQL;
  FuncionarioSalario.Open;
end;

procedure TFrameProducao_Rateio.AbreFuncionarioSalarioSemFiltro;
begin
  FuncionarioSalario.Close;

  FMasterSource := FuncionarioSalario.MasterSource;
  FMasterFields := FuncionarioSalario.MasterFields;
  FSQL          := FuncionarioSalario.SQL[2];

  FuncionarioSalario.MasterSource := nil;
  FuncionarioSalario.MasterFields := '';
  FuncionarioSalario.SQL[2] := '';
  FuncionarioSalario.Open;
end;

procedure TFrameProducao_Rateio.AgrupaSubGrid(ACampo_Codigo, ACampo_Descricao, SQLSubGrid: String);
begin
//  SubGrid.SQL.Text := 'select S.'+ACampo_Codigo+' AS CODIGO, S.'+ACampo_Descricao+' AS DESCRICAO, cast(count(1) as bigint) as QUANT from (' ;
//  SubGrid.SQL.Add(FuncionarioSalario.SQL.Text);
//  SubGrid.SQL.Add(')S group by 1, 2 Order By 2' );

//  if (SQLWhere.Count > 0) then
//    SQLWhere.AddAnd(SQLSubGrid)
//  else
//  begin
//    SQLWhere.Insert(0, 'where ');
//    SQLWhere.Add(SQLSubGrid);
//  end;
//  CloseOpenGridView(SubGrid, GridSubGridView);

//  SubGrid.Locate('Descricao', ABookmarkSubGrid,[]);  // Aparentemente aqui deve zerar a página "0" e mostrar o skip
//  SubGrid.EnableControls;
end;

initialization
  RegisterClass(TFrameProducao_Rateio);
  RegisterFrameCad(Tag_Producao_Rateio, TFrameProducao_Rateio);

end.
