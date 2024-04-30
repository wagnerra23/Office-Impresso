unit ConNF_Entrada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ConsM, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData, cxContainer, Vcl.Menus, Vcl.ComCtrls,
  dxCore, cxDateUtils, dxLayoutContainer, dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, dxScreenTip, WREventos, System.ImageList, Vcl.ImgList, cxImageList, System.Actions, Vcl.ActnList,
  dxCustomHint, cxHint, Vcl.ExtCtrls, dxLayoutLookAndFeels, FireDAC.Comp.Client, FireDAC.Comp.DataSet, dxPSCore,
  dxPScxCommon, cxClasses, dxStatusBar, cxDateProfileButton, cxDropDownEdit, cxCalendar, Vcl.StdCtrls, cxButtons,
  cxLabel, cxTextEdit, cxMaskEdit, cxButtonEdit, cxGridLevel, cxGridCustomLayoutView, cxGridLayoutView,
  cxGridDBLayoutView, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  dxLayoutControl, cxCurrencyEdit, uButtonFlat, dxDateRanges, frxClass, frxDBSet, cxGridViewLayoutContainer,
  dxTokenEdit, UCHistDataset, dxPSRichEditControlLnk, dxPSdxDBOCLnk, dxRibbonSkins, dxRibbonCustomizationForm, dxBar,
  cxBarEditItem, dxGallery, dxGalleryControl, dxRibbonBackstageViewGalleryControl, dxRibbonBackstageView, dxRibbon,
  dxOfficeSearchBox, dxRibbonStatusBar, dxServerModeData, dxServerModeFireDACDataSource,
  System.Generics.Collections, cxSchedulerStorage, cxSchedulerCustomControls,
  cxSchedulerDateNavigator, cxDateNavigator, cxCustomStatusKeeper,
  cxStatusKeeper, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxScrollbarAnnotations;

type
  TConsuNF_Entrada = class(TConsuM)
    ConsultaTIPO: TStringField;
    ConsultaCODIGO: TStringField;
    ConsultaNUN_NF: TIntegerField;
    ConsultaDT_NOTA: TSQLTimeStampField;
    ConsultaRAZAOSOCIAL: TStringField;
    ConsultaUSUARIO: TStringField;
    ConsultaATUALIZA_ESTOQUE: TStringField;
    ConsultaGERA_FINANCEIRO: TStringField;
    ConsultaQUANTIDADE: TFloatField;
    GridConsultaDBTableView1TIPO: TcxGridDBColumn;
    GridConsultaDBTableView1CODIGO: TcxGridDBColumn;
    GridConsultaDBTableView1NUN_NF: TcxGridDBColumn;
    GridConsultaDBTableView1PESSOA_FORNECEDOR_CODIGO: TcxGridDBColumn;
    GridConsultaDBTableView1TOTAL: TcxGridDBColumn;
    GridConsultaDBTableView1DT_NOTA: TcxGridDBColumn;
    GridConsultaDBTableView1RAZAOSOCIAL: TcxGridDBColumn;
    GridConsultaDBTableView1USUARIO: TcxGridDBColumn;
    GridConsultaDBTableView1ATUALIZA_ESTOQUE: TcxGridDBColumn;
    GridConsultaDBTableView1GERA_FINANCEIRO: TcxGridDBColumn;
    GridConsultaDBTableView1QUANTIDADE: TcxGridDBColumn;
    EdtTotal: TcxCurrencyEdit;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    BtnConsultarSefaz: TWRButtonFlat;
    GrupoRodape: TdxLayoutGroup;
    ActFiltroViewNotas: TAction;
    dxLayoutItem3: TdxLayoutItem;
    WRButtonFlat1: TWRButtonFlat;
    ConsultaATIVO: TStringField;
    GridConsultaDBTableView1ATIVO: TcxGridDBColumn;
    GridConsultaDBTableView1DT_FATURAMENTO: TcxGridDBColumn;
    ConsultaPESSOA_RESPONSAVEL_CODIGO: TStringField;
    ConsultaTOTAL: TFloatField;
    ConsultaDT_FATURAMENTO: TSQLTimeStampField;
    ConsultaDATA: TSQLTimeStampField;
    GridConsultaDBTableView1DATA: TcxGridDBColumn;
    GridConsultaDBTableView1EMPRESA: TcxGridDBColumn;
    dxLayoutItem4: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    cxButton3: TcxButton;
    dxLayoutItem6: TdxLayoutItem;
    ComboEmpresa: TcxComboBox;
    ConsultaNF_CHAVE: TStringField;
    GridConsultaDBTableView1NF_CHAVE: TcxGridDBColumn;
    procedure WREventosConsultaGetFiltrosConsulta(Sender: TObject);
    procedure GridConsultaDBTableView1DataControllerSummaryAfterSummary(ASender: TcxDataSummary);
    procedure FormCreate(Sender: TObject);
    procedure GridConsultaDBTableView1DblClick(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure BtnConsultarSefazClick(Sender: TObject);
    procedure WREventosConsultaSQLTrataNomes(Sender: TObject; var ASQL: string);
    procedure ActFiltroViewNotasExecute(Sender: TObject);
    procedure edtRapidoAgruparPropertiesEditValueChanged(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure ComboEmpresaPropertiesEditValueChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses
  UnitFuncoes, wrFuncoes, ImpEntrada_NotaFiscal, NF_Entrada, StrUtils, wrConstantes, wrForms,
  Principal, Base_NotaFiscalEntrada, Base, Tag.APP, Tag.Form;

procedure TConsuNF_Entrada.ActFiltroViewNotasExecute(Sender: TObject);
begin
  inherited;
  RefreshConsulta;
end;

procedure TConsuNF_Entrada.BtnConsultarSefazClick(Sender: TObject);
var
  AForm: TFrmNotaFiscalEntrada;
begin
  inherited;
  TFrmNotaFiscalEntrada.Create(Self).ShowConsultaItem(Tag_Manifestacao_NotaFiscalEntrada);
//  AForm :=
//  try
//    AForm.Show;
//    AForm.ActConsultarSEFAZ.Execute;
//    AguardaFormFechar(AForm);
//  finally
//    AForm.Free;
//  end;
  Consulta.Close;

  RefreshConsulta;
end;

procedure TConsuNF_Entrada.ComboEmpresaPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if Visible then
    RefreshConsulta;
end;

procedure TConsuNF_Entrada.cxButton1Click(Sender: TObject);
begin
  inherited;
  with TFrmNF_Entrada.Create(self) do
  begin
    Show;
    MainLayout.EndUpdate;
    Application.ProcessMessages;
    Cadastro.Open;
    ImportarXML1Click(Self);
  end;
end;

procedure TConsuNF_Entrada.cxButton3Click(Sender: TObject);
begin
  inherited;
//  ConsultaModalFiltro(TConsuNota_Fiscal_Entrada,'');
  TFrmNotaFiscalEntrada.Create(Self).ShowConsultaItem(Tag_Manifestacao_NotaFiscalEntrada);
  Consulta.Close;
  Consulta.Open; // Se acontecer erro do certificado aqui deve fechar e abrir
end;

procedure TConsuNF_Entrada.edtRapidoAgruparPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if edtRapidoAgrupar.text = 'Tipo'  then
    AgrupaComboBox(GridConsultaDBTableView1, GridConsultaDBTableView1TIPO, TdxSortOrder.soDescending);
  if edtRapidoAgrupar.text = 'Fornecedor'  then
    AgrupaComboBox(GridConsultaDBTableView1, GridConsultaDBTableView1RAZAOSOCIAL, TdxSortOrder.soDescending);
  if edtRapidoAgrupar.text = 'Usuário'  then
    AgrupaComboBox(GridConsultaDBTableView1, GridConsultaDBTableView1USUARIO, TdxSortOrder.soDescending);
  if edtRapidoAgrupar.text = 'Empresa'  then
    AgrupaComboBox(GridConsultaDBTableView1, GridConsultaDBTableView1EMPRESA, TdxSortOrder.soDescending);
  if edtRapidoAgrupar.text = 'Financeiro Atualizado'  then
    AgrupaComboBox(GridConsultaDBTableView1, GridConsultaDBTableView1ATUALIZA_ESTOQUE, TdxSortOrder.soDescending);
  if edtRapidoAgrupar.text = 'Estoque Atualizado'  then
    AgrupaComboBox(GridConsultaDBTableView1, GridConsultaDBTableView1GERA_FINANCEIRO, TdxSortOrder.soDescending);
end;

procedure TConsuNF_Entrada.FormCreate(Sender: TObject);
begin
  inherited;
  ConsultaTOTAL.DisplayFormat   := DECIMAL_2M;
  ConsultaQUANTIDADE.DisplayFormat := DecimalQuantidade;
  FrmPrincipal.EmpresaLista.First;
  while not FrmPrincipal.EmpresaLista.Eof do
  begin
    ComboEmpresa.Properties.Items.AddObject(FrmPrincipal.EmpresaLista.FieldByName('RAZAOSOCIAL').AsString,
                                 TObject(FrmPrincipal.EmpresaLista.FieldByName('CODIGO').AsInteger));
    FrmPrincipal.EmpresaLista.Next;
  end;
  ComboEmpresa.Text:= Empresa.FieldByName('RAZAOSOCIAL').AsString;
end;

procedure TConsuNF_Entrada.FormShow(Sender: TObject);
begin
  inherited;
  cxButton1.Visible  := AWR_APP[TagAPP_Importacao_Xml].Ativo;
  cxButton3.Visible  := AWR_APP[TagAPP_Importacao_Xml].Ativo;
end;

procedure TConsuNF_Entrada.GridConsultaDBTableView1DataControllerSummaryAfterSummary(ASender: TcxDataSummary);
begin
  inherited;
  EdtTotal.Value := GetValorSumario(GridConsultaDBTableView1TOTAL);
end;

procedure TConsuNF_Entrada.GridConsultaDBTableView1DblClick(Sender: TObject);
var
  ACodEmpresa: Integer;
begin
  if MultiEmpresa then
  begin
    ACodEmpresa := StrCodigoToCodEmpresa(ConsultaCODIGO.AsString);
    if ACodEmpresa <> Empresa.FieldByName('CODIGO').AsInteger then
    begin
      ShowMessageWR('Para abrir esta nota, deve ser alterado a' + sLineBreak +
                    'Empresa Ativa para: ' + Procura('RAZAOSOCIAL', 'EMPRESA', ACodEmpresa));
      Exit;
    end;
  end;
  inherited;
end;

procedure TConsuNF_Entrada.Imprimir1Click(Sender: TObject);
var
  AOldFormat: string;
begin
//  inherited;
  AOldFormat := ConsultaDT_NOTA.DisplayFormat;
  Consulta.DisableControls;
  Application.CreateForm(TImpriEntrada_NotaFiscal, ImpriEntrada_NotaFiscal);
  try
    ConsultaDT_NOTA.DisplayFormat := DATA_SIMPLES;
    ImpriEntrada_NotaFiscal.ImpSomaNf := EdtTotal.Value;
    ImpriEntrada_NotaFiscal.DataSet   := Consulta;
    ImpriEntrada_NotaFiscal.QuickRep1.PreviewModal;
    ImpriEntrada_NotaFiscal.Show;
  finally
    FreeAndNil(ImpriEntrada_NotaFiscal);
    ConsultaDT_NOTA.DisplayFormat := AOldFormat;
    Consulta.EnableControls;
  end;
end;

procedure TConsuNF_Entrada.WREventosConsultaGetFiltrosConsulta(Sender: TObject);
var
  ACondicao: string;
  ACampo_Codigo: String;
  ACampo_Sql: String;
begin
  inherited;
  if (ComboEmpresa.Text<>'-Selecione uma empresa-') then
  begin                                                      //  ComboEmpresa.Items.Objects[ComboEmpresa.ItemIndex]
    ACondicao := '(N.CODIGO like ' + QuotedStr('%-' + IntToStr(Integer(ComboEmpresa.Properties.Items.Objects[ComboEmpresa.ItemIndex]))) + ')';
    if Empresa.FieldByName('CODIGO').AsInteger = 1 then
      ACondicao := '(' + ACondicao + ' or not (N.CODIGO like ''%-%''))';
    SQLWhere.AddAnd(ACondicao);
  end;
//  if ActFiltroViewNotas.Checked then
//    AgrupaSubGrid('TIPO', 'TIPO', 'N.TIPO');

  LiGridSubGrid.Visible:= (GridConsultaDBTableView1.GroupedColumnCount > 0);
  if GridConsultaDBTableView1.GroupedColumnCount > 0 then
  begin
    with TcxGridDBColumn(GridConsultaDBTableView1.GroupedColumns[0]).DataBinding do
    try
      ACampo_Codigo    := FieldName;
      if ACampo_Codigo = 'EMPRESA' then
      begin
        ACampo_Sql       := 'E.'+ACampo_Codigo;
        ACampo_Codigo    := 'N.PESSOA_RESPONSAVEL_CODIGO';
      end
      else if ACampo_Codigo = 'RAZAOSOCIAL' then  // ,P.RAZAOSOCIAL, U.USUARIO, E.RAZAOSOCIAL AS EMPRESA
      begin
        ACampo_Sql       := 'N.PESSOA_RESPONSAVEL_CODIGO';
        ACampo_Codigo    := 'PESSOA_RESPONSAVEL_CODIGO';
      end
      else if ACampo_Codigo = 'USUARIO' then
      begin
        ACampo_Sql       := 'N.CODUSUARIO';
        ACampo_Codigo    := 'COD'+FieldName;
      end
      else begin
        ACampo_Sql       := 'N.'+ACampo_Codigo;
        if Consulta.FieldByName(FieldName).AutoGenerateValue <> TAutoRefreshFlag(arNone) then
          ACampo_Codigo    := 'COD'+FieldName;
      end;
      AgrupaSubGrid(ACampo_Codigo, FieldName, ACampo_Sql );
    finally
    end;
    LiGridSubGrid.Visible:= True;
  end;
  SplitSubGrid.Visible:= LiGridSubGrid.Visible;
end;

procedure TConsuNF_Entrada.WREventosConsultaSQLTrataNomes(Sender: TObject; var ASQL: string);
begin
  inherited;
  ASQL := ReplaceStr(ASQL, '(PESSOA_FORNECEDOR_CODIGO', '(N.PESSOA_FORNECEDOR_CODIGO');
  ASQL := ReplaceStr(ASQL, '(ATUALIZA_ESTOQUE', '(N.ATUALIZA_ESTOQUE');
  ASQL := ReplaceStr(ASQL, '(GERA_FINANCEIRO', '(N.GERA_FINANCEIRO');
  ASQL := ReplaceStr(ASQL, '(RAZAOSOCIAL', '(P.RAZAOSOCIAL');
  ASQL := ReplaceStr(ASQL, '(QUANTIDADE', '(N.QUANTIDADE');
  ASQL := ReplaceStr(ASQL, '(VALOR_NF', '(N.VALOR_NF');
  ASQL := ReplaceStr(ASQL, '(USUARIO', '(U.USUARIO');
  ASQL := ReplaceStr(ASQL, '(DT_NOTA', '(N.DT_NOTA');
  ASQL := ReplaceStr(ASQL, '(CODIGO', '(N.CODIGO');
  ASQL := ReplaceStr(ASQL, '(NUN_NF', '(N.NUN_NF');
  ASQL := ReplaceStr(ASQL, '(TIPO', '(N.TIPO');
  if ASQL = 'ATIVO' then
    ASQL := ReplaceStr(ASQL, 'ATIVO', 'N.ATIVO')
  else
    ASQL := ReplaceStr(ASQL, '(ATIVO', '(N.ATIVO'); //
end;

initialization
  RegisterClass(TConsuNF_Entrada);

end.
