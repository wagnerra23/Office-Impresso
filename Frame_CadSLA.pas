unit Frame_CadSLA;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Frame_Cad, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  uWRFormataCamposDataSet, frxClass, frxDBSet, UCHistDataset,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet,
  System.Generics.Collections, WREventos, UCBase, cxClasses,
  dxLayoutLookAndFeels, System.ImageList, Vcl.ImgList, Vcl.ExtCtrls,
  dxCustomTileControl, dxTileControl, dxStatusBar, dxLayoutContainer,
  cxMaskEdit, cxDropDownEdit, cxDBEdit, Vcl.StdCtrls, cxButtons, cxTextEdit,
  dxLayoutControl, Frame_Cad_Pocket, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, dxDateRanges, cxDBData, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxLabel, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxButtonEdit, cxCheckBox, frFrameHistorico, dxScrollbarAnnotations, dxUIAdorners, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TFrame_Notificacao = class(TFrmCad_Frame_Pocket)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    btnAdicionarSeguidor: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    btnRemoverSeguidor: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    GrupoSeguidores: TdxLayoutGroup;
    dxLayoutItem6: TdxLayoutItem;
    edtResponsavelÎPessoas: TcxButtonEdit;
    dxLayoutItem5: TdxLayoutItem;
    edtResponsavelÎPessoasÎRAZAOSOCIAL: TcxLabel;
    dxLayoutItem1: TdxLayoutItem;
    cbxModulo: TcxDBComboBox;
    dxLayoutItem7: TdxLayoutItem;
    cbxTabela: TcxDBComboBox;
    GrupoConfiguracao: TdxLayoutGroup;
    SLA_Seguidor: TFDQuery;
    DSSLA_Seguidor: TDataSource;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1CODSLA: TcxGridDBColumn;
    cxGrid1DBTableView1CODPESSOA: TcxGridDBColumn;
    cxGrid1DBTableView1ENVIA_EMAIL: TcxGridDBColumn;
    cxGrid1DBTableView1ENVIA_NOTIFICACAO: TcxGridDBColumn;
    cxGrid1DBTableView1ATIVO: TcxGridDBColumn;
    cxGrid1DBTableView1DT_ALTERACAO: TcxGridDBColumn;
    cxGrid1DBTableView1RAZAOSOCIAL: TcxGridDBColumn;
    dxLayoutItem9: TdxLayoutItem;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    GrupoCondicoes: TdxLayoutGroup;
    dxLayoutItem10: TdxLayoutItem;
    btnAdicionarCondicao: TcxButton;
    dxLayoutItem11: TdxLayoutItem;
    btnRemoverCondicao: TcxButton;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    SLA_Condicao: TFDQuery;
    DSSLA_Condicao: TDataSource;
    cxGridDBTableView1CODIGO: TcxGridDBColumn;
    cxGridDBTableView1CODSLA: TcxGridDBColumn;
    cxGridDBTableView1CAMPO_BASE: TcxGridDBColumn;
    cxGridDBTableView1COMPARADOR: TcxGridDBColumn;
    cxGridDBTableView1TIPO_VALOR: TcxGridDBColumn;
    cxGridDBTableView1CAMPO_COMPARADO: TcxGridDBColumn;
    cxGridDBTableView1VALOR_COMPARADO: TcxGridDBColumn;
    cxGridDBTableView1IS_PADRAO: TcxGridDBColumn;
    cxGridDBTableView1ATIVO: TcxGridDBColumn;
    cxGridDBTableView1DT_ALTERACAO: TcxGridDBColumn;
    dxLayoutItem13: TdxLayoutItem;
    cbxComparador: TcxComboBox;
    dxLayoutItem14: TdxLayoutItem;
    cbxValorTipo: TcxComboBox;
    liedtValorComparado: TdxLayoutItem;
    cbxValorComparado: TcxTextEdit;
    dxLayoutItem17: TdxLayoutItem;
    cxDBComboBox1: TcxDBComboBox;
    cxGrid1DBTableView1INSERIR: TcxGridDBColumn;
    cxGrid1DBTableView1FINALIZAR: TcxGridDBColumn;
    cxGrid1DBTableView1EXCLUIR: TcxGridDBColumn;
    cxGrid1DBTableView1MODIFICAR: TcxGridDBColumn;
    cxGrid1DBTableView1REATIVAR: TcxGridDBColumn;
    liedtValorFiltro: TdxLayoutItem;
    edtValorFiltro: TcxDBTextEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutItem20: TdxLayoutItem;
    cxDBCheckBox2: TcxDBCheckBox;
    dxLayoutItem21: TdxLayoutItem;
    cxDBCheckBox3: TcxDBCheckBox;
    dxLayoutItem22: TdxLayoutItem;
    cxDBCheckBox4: TcxDBCheckBox;
    dxLayoutItem23: TdxLayoutItem;
    cxDBCheckBox5: TcxDBCheckBox;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutItem15: TdxLayoutItem;
    edtCampoBase: TcxTextEdit;
    liedtCampoComparado: TdxLayoutItem;
    edtCampoComparado: TcxTextEdit;
    dxLayoutItem16: TdxLayoutItem;
    cxComboBox2: TcxComboBox;
    licbxFiltro: TdxLayoutItem;
    cbxFiltro: TcxDBComboBox;
    SLA: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    TabGroup: TdxLayoutGroup;
    procedure CadastroAfterOpen(DataSet: TDataSet);
    procedure CadastroBeforeClose(DataSet: TDataSet);
    procedure btnAdicionarSeguidorClick(Sender: TObject);
    procedure SLA_SeguidorAfterEdit(DataSet: TDataSet);
    procedure btnRemoverSeguidorClick(Sender: TObject);
    procedure SLA_CondicaoAfterEdit(DataSet: TDataSet);
    procedure WREventosCadastroConfiguracao_Acoes(Sender: TObject);
    procedure cbxFiltroPropertiesEditValueChanged(Sender: TObject);
    procedure btnRemoverCondicaoClick(Sender: TObject);
    procedure cbxValorTipoPropertiesChange(Sender: TObject);
    procedure TabGroupTabChanged(Sender: TObject);
  private
    { Private declarations }
    FFrameHistorico: TFrameHistorico;
  public
    { Public declarations }
  end;

var
  Frame_Notificacao: TFrame_Notificacao;

implementation

{$R *.dfm}

Uses UnitFuncoes, Base, UControleWR;

procedure TFrame_Notificacao.btnAdicionarSeguidorClick(Sender: TObject);
var
  ACodPessoa : string;
begin
  inherited;
  try
    ACodPessoa := TControleWR.GetCodPessoa(edtResponsavelÎPessoas.Properties.Buttons[0].Caption
                ,edtResponsavelÎPessoas.EditValue);
    VerificaSePodeAlteraDataSet;
    SLA_Seguidor.Insert;
    SLA_Seguidor.FieldByName('CODIGO').AsInteger              := Trunc(GetProximoCodigoGen('CR_SLA_Seguidor'));
    SLA_Seguidor.FieldByName('ATIVO').AsString                := 'S';
    SLA_Seguidor.FieldByName('DT_ALTERACAO').AsDateTime       := DataHoraSys;
    SLA_Seguidor.FieldByName('CODSLA').AsString               := Cadastro.FieldByName('CODIGO').AsString;
    SLA_Seguidor.FieldByName('CODPESSOA').AsString            := ACodPessoa;
    SLA_Seguidor.FieldByName('ENVIA_EMAIL').AsString          := 'N';
    SLA_Seguidor.FieldByName('ENVIA_NOTIFICACAO').AsString    := 'N';
    SLA_Seguidor.Post;
  except
    on E:Exception do
    begin
      ShowMessage(E.Message);
    end;
  end;
  edtResponsavelÎPessoas.Clear;
  SLA_Seguidor.Refresh;
  UCHist_Cadastro.MensagemHistorico.Add(SLA_Seguidor.FieldByName('RAZAOSOCIAL').AsString + ' adicionado como seguidor');
end;

procedure TFrame_Notificacao.btnRemoverSeguidorClick(Sender: TObject);
begin
  inherited;
  VerificaSePodeAlteraDataSet;
  UCHist_Cadastro.MensagemHistorico.Add(SLA_Seguidor.FieldByName('RAZAOSOCIAL').AsString + ' removido dos seguidores');
  if not SLA_Seguidor.IsEmpty then
    SLA_Seguidor.Delete;
end;

procedure TFrame_Notificacao.CadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  SLA_Seguidor.Open;
  SLA_Condicao.Open;
end;

procedure TFrame_Notificacao.CadastroBeforeClose(DataSet: TDataSet);
begin
  inherited;
  SLA_Seguidor.Close;
  SLA_Condicao.Close;
end;

procedure TFrame_Notificacao.cbxFiltroPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if cbxFiltro.EditValue = 'SEM FILTRO' then
  begin
    if Cadastro.State in dsEditModes then
      Cadastro.FieldByName('VALOR_FILTRO').AsString := '';
    liedtValorFiltro.Enabled := False;
  end
  else
    liedtValorFiltro.Enabled := True;
end;

procedure TFrame_Notificacao.cbxValorTipoPropertiesChange(Sender: TObject);
begin
  inherited;
  if cbxValorTipo.EditValue = 'DATA ATUAL' then
  begin
    liedtValorComparado.Enabled := False;
    liedtCampoComparado.Enabled := False;
  end
  else if cbxValorTipo.EditValue = 'VALOR FIXO' then
  begin
    liedtValorComparado.Enabled := True;
    liedtCampoComparado.Enabled := False;
  end
  else
  begin
    liedtValorComparado.Enabled := False;
    liedtCampoComparado.Enabled := True;
  end;
end;

procedure TFrame_Notificacao.btnRemoverCondicaoClick(Sender: TObject);
begin
  inherited;
  VerificaSePodeAlteraDataSet;
  if not SLA_Condicao.IsEmpty then
    SLA_Condicao.Delete;
end;

procedure TFrame_Notificacao.SLA_CondicaoAfterEdit(DataSet: TDataSet);
begin
  inherited;
  VerificaSePodeAlteraDataSet;
end;

procedure TFrame_Notificacao.SLA_SeguidorAfterEdit(DataSet: TDataSet);
begin
  inherited;
  VerificaSePodeAlteraDataSet;
end;

procedure TFrame_Notificacao.TabGroupTabChanged(Sender: TObject);
begin
  inherited;
  if GrupoLogAlteracoes.ActuallyVisible then
    TFrameHistorico.CarregaFrame(FFrameHistorico, PnlFrameHistorico, UCHist_Cadastro, nil );

end;

procedure TFrame_Notificacao.WREventosCadastroConfiguracao_Acoes(
  Sender: TObject);
begin
  inherited;
  with WREventosCadastro do
  begin
    with AddForm(Self) do
    begin
      AddValorInicial('SLA', 'FILTRO', cbxFiltro, 'Sem Filtro');
      AddValorInicial('SLA', 'VALOR_FILTRO', cbxFiltro, '');
    end;
  end;
end;

//initialization
//  RegisterClass(TFrame_Notificacao);
//  RegisterFrameCad(Tag_Notificacao, TFrame_Notificacao);

end.
