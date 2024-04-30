unit Frame_CadBI_KPI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxContainer, cxEdit,
  dxLayoutControlAdapters, dxLayoutcxEditAdapters, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  fs_iinterpreter, dxUIAdorners, cxClasses, frxClass, frxDBSet, UCHistDataset,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, WREventos, UCBase,
  dxLayoutLookAndFeels, System.ImageList, Vcl.ImgList, Vcl.ExtCtrls,
  dxStatusBar, dxLayoutContainer, cxMaskEdit, cxDropDownEdit, cxDBEdit,
  cxTextEdit, Vcl.StdCtrls, cxButtons, dxLayoutControl, CadM, cxCurrencyEdit,
  cxCheckBox, cxMemo, cxRichEdit, cxDBRichEdit, FrDashboardBlocoMestre,
  FrDashboardBlocoGrafico, FrDashboardBlocoSimples, cxButtonEdit, cxLabel,
  Vcl.DBCtrls, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Data.SqlExpr,
  cxSplitter, cxGridChartView, cxGridDBChartView, cxInplaceContainer, cxVGrid,
  cxOI, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  dxDateRanges, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, System.Generics.Collections, WRButtonsEditAdd, Frame_Cad, uWRFormataCamposDataSet, dxCustomTileControl,
  dxTileControl, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxScrollbarAnnotations;

type
  TFrmBI_KPI = class(TFrmCad_Frame)
    dxLayoutItem1: TdxLayoutItem;
    cxDBComboBox1: TcxDBComboBox;
    dxLayoutItem2: TdxLayoutItem;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    LiedtFormato: TdxLayoutItem;
    edtFormato: TcxDBComboBox;
    LiedtCampo: TdxLayoutItem;
    edtCampo: TcxDBTextEdit;
    LichkTem_Periodo: TdxLayoutItem;
    chkTem_Periodo: TcxDBCheckBox;
    LichkTem_Registro: TdxLayoutItem;
    chkTem_Registro: TcxDBCheckBox;
    liAba: TdxLayoutItem;
    edtAba: TcxDBComboBox;
    dxLayoutGroup1: TdxLayoutGroup;
    LiedtHeigth: TdxLayoutItem;
    edtHeigth: TcxDBCurrencyEdit;
    LiedtWidth: TdxLayoutItem;
    edtWidth: TcxDBCurrencyEdit;
    dxLayoutItem12: TdxLayoutItem;
    edtGrafico_Tipo: TcxDBComboBox;
    edtForm: TcxDBLookupComboBox;
    LiedtForm: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    edtSql: TcxDBRichEdit;
    LiedtBloco: TdxLayoutItem;
    edtBloco: TcxDBComboBox;
    GrupoConfigGrafico: TdxLayoutGroup;
    LibtnAtualizar: TdxLayoutItem;
    btnAtualizar: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    edtAgrupamento: TcxDBTextEdit;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutItem5: TdxLayoutItem;
    edtFiltro: TcxDBRichEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    edtCampo2: TcxDBTextEdit;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    LiDashboardBlocoGrafico1: TdxLayoutItem;
    DashboardBlocoGrafico1: TDashboardBlocoGrafico;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutItem9: TdxLayoutItem;
    btnTestar: TcxButton;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    dxLayoutItem10: TdxLayoutItem;
    edtObservacao: TcxDBRichEdit;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutSplitterItem1: TdxLayoutSplitterItem;
    dxLayoutItem11: TdxLayoutItem;
    cxRTTIInspector1: TcxRTTIInspector;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem13: TdxLayoutItem;
    LiDashboardBlocoSimples1: TdxLayoutItem;
    DashboardBlocoSimples1: TDashboardBlocoSimples;
    dxLayoutSplitterItem2: TdxLayoutSplitterItem;
    dxLayoutGroup5: TdxLayoutGroup;
    CadastroForm: TStringField;
    dxLayoutItem8: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutItem14: TdxLayoutItem;
    cxDBCheckBox2: TcxDBCheckBox;
    dxLayoutGroup6: TdxLayoutGroup;
    GrupoPeriodo: TdxLayoutGroup;
    procedure edtGrafico_TipoPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure btnTestarClick(Sender: TObject);
    procedure cxDBComboBox2PropertiesChange(Sender: TObject);
    procedure DashboardBlocoGrafico1Click(Sender: TObject; AValor: Variant);
    procedure btnAtualizarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtCodigoPropertiesChange(Sender: TObject);
    procedure cxGrid1DBTableView1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure CadastroCalcFields(DataSet: TDataSet);
    procedure chkTem_PeriodoPropertiesChange(Sender: TObject);
    procedure btnConfirmarClick(Sender: TdxTileControlItem);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  FrmBI_KPI: TFrmBI_KPI;

implementation

{$R *.dfm}
Uses wrFuncoes, UnitFuncoes, uWeb, Base, Tag.Form;

procedure TFrmBI_KPI.btnAtualizarClick(Sender: TObject);
Var
  QuerX : TFDQuery;
begin
  QuerX := GeraFDQuery(TransaFD);
  QuerX.SQL.Text := ' Select * from DashBoards ';
  if (GetKeyState(VK_CONTROL) < 0) then
  begin
    TWRFTP.UploadArquivoVersionado('ArqINI','DashBoards', 'CODIGO', QuerX );
  end
  else begin
    TWRFTP.DownloadArquivoVersionado('ArqINI', 'DashBoards', 'CODIGO', QuerX, False );
    TransaFD.Commit;
  end;
  QuerX.Free;
end;

procedure TFrmBI_KPI.btnConfirmarClick(Sender: TdxTileControlItem);
var
  FGrafico: TStream;
begin
  FGrafico := TMemoryStream.Create;
  DashboardBlocoGrafico1.GridGraficoViewColunas.StoreToStream(FGrafico,[]);

//    AGridView.StoreToIniFile(GetDirSistema + 'Grafico.ini', True, GetFullObjectName(AGridView));
//    AString.LoadFromFile(GetDirSistema + 'Grafico.ini');

  FGrafico.Position := 0;
  TBlobField(Cadastro.FieldByName('Grafico')).LoadFromStream(FGrafico);
  FGrafico.Free;
  inherited;
end;

procedure TFrmBI_KPI.btnTestarClick(Sender: TObject);
begin
  inherited;
  try
  if DashboardBlocoSimples1.Visible then
  begin
    ConfigurarBlocoSimples(Cadastro, DashboardBlocoSimples1);
    cxGrid1DBTableView1.DataController.DataSource:=DashboardBlocoSimples1.DS;
    DashboardBlocoSimples1.AtualizarDados;
  end;
  if DashboardBlocoGrafico1.Visible then
  begin
    ConfigurarBlocoGrafico(Cadastro, DashboardBlocoGrafico1);
    cxGrid1DBTableView1.DataController.DataSource:=DashboardBlocoGrafico1.DS;
    DashboardBlocoGrafico1.AtualizarDados;
  end;
  except

  end;

  cxGrid1DBTableView1.ClearItems;
  cxGrid1DBTableView1.DataController.CreateAllItems(True);
//  TCurrencyField(cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldByName('Quant')).DisplayFormat:='0.00';
  // * Aqui tem que formatar o Quant,
  // * Colocar Um Nome Bonito No Quant
  // * Criar o Campo Relatório, "DashBorad.Fr3", Pode Escolher o Relatório Interativo
  // * Quem Pode Ver o DashBoard?? Isso é as Permissões, Adicionar usuários que podem ver
  // * DashBord Visível apenas para Lista de usuários selecionados.
  // * Recriar as Séries Com o Valor Do Campo
  // * Rotina de Atualização, Frequencia que a informação é atualizado. 5 minutos o mínimo, (A Cada vez que a tela abre)
  // * Cor e Legenda ?? Importante
  // Enviar o Blob da Imagem do Chart para o RelatórioFr3, possa imprimir.
  // Categoria e Catergoria_group_Summary_Kind
  // Gerar Um gráfico apartir de Um Grid de Consulta
  // Modificar as coulas no Grid, para caption e Séries, quais campos são séries??


end;

procedure TFrmBI_KPI.CadastroCalcFields(DataSet: TDataSet);
begin
  inherited;
  Cadastro.FieldByName('Form').AsString:=edtForm.Text;
end;

procedure TFrmBI_KPI.chkTem_PeriodoPropertiesChange(Sender: TObject);
begin
  inherited;
  GrupoPeriodo.Enabled:=chkTem_Periodo.Checked;
end;

procedure TFrmBI_KPI.cxDBComboBox2PropertiesChange(Sender: TObject);
begin
  inherited;
  LiDashboardBlocoGrafico1.Visible:=(edtBloco.Text = 'GRÁFICO');
  LiDashboardBlocoSimples1.Visible:=(edtBloco.Text = 'SIMPLES');
  GrupoConfigGrafico.Visible:=(edtBloco.Text = 'GRÁFICO');
end;

procedure TFrmBI_KPI.cxGrid1DBTableView1ColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
  inherited;
  //
  cxRTTIInspector1.InspectedObject := AColumn;
end;

procedure TFrmBI_KPI.DashboardBlocoGrafico1Click(Sender: TObject;
  AValor: Variant);
begin
  inherited;
  cxRTTIInspector1.InspectedObject := DashboardBlocoGrafico1.GridGraficoViewColunas;
//  ShowMessage(AValor);
end;

procedure TFrmBI_KPI.edtCodigoPropertiesChange(Sender: TObject);
var
  FGrafico: TStream;
begin
  inherited;
  if edtCodigo.text<>'' then
  begin
    if Cadastro.FieldByName('Grafico').AsString <> '' then
    begin
      FGrafico := TMemoryStream.Create;
      TBlobField(Cadastro.FieldByName('Grafico')).SaveToStream(FGrafico);
      try
        FGrafico.Position := 0;
        DashboardBlocoGrafico1.GridGraficoViewColunas.RestoreFromStream(FGrafico);
      //    AGridView.StoreToIniFile(GetDirSistema + 'Grafico.ini', True, GetFullObjectName(AGridView));
      //    AString.LoadFromFile(GetDirSistema + 'Grafico.ini');
        btnTestar.Click;
      Except
        DashboardBlocoGrafico1.GridGraficoViewColunas.RestoreDefaults;
      end;

    end;
  end else
    DashboardBlocoGrafico1.GridGraficoViewColunas.RestoreDefaults;
end;

procedure TFrmBI_KPI.edtGrafico_TipoPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  if ds.DataSet.State in dsEditModes then
  begin
    if VarToStrDef(DisplayValue,'') = '' then
      Cadastro.FieldByName(TcxDBTextEdit(Sender).DataBinding.DataField).Clear
    else
      Cadastro.FieldByName(TcxDBTextEdit(Sender).DataBinding.DataField).Value := DisplayValue;
  end;
  IF DashboardBlocoSimples1.Visible then
  begin
    DashboardBlocoSimples1.Visible:=True;
    if ds.DataSet.State in dsEditModes then
    begin
      if Cadastro.FieldByName('HEIGHT').AsFloat = 0 then
      begin
        Cadastro.FieldByName('HEIGHT').AsFloat:= 90;
        DisplayValue:=90;
      end;
      if Cadastro.FieldByName('WIDTH').AsFloat = 0 then
      begin
        Cadastro.FieldByName('WIDTH').AsFloat:= 175;
        DisplayValue:=175;
      end;
    end;
    ConfigurarBlocoSimples(Cadastro, DashboardBlocoSimples1);
  end;
  IF  DashboardBlocoGrafico1.Visible then
  begin
    DashboardBlocoGrafico1.Visible:=True;
    if ds.DataSet.State in dsEditModes then
    begin
      if Cadastro.FieldByName('HEIGHT').AsFloat = 0 then
      begin
        Cadastro.FieldByName('HEIGHT').AsFloat:= 244;
        DisplayValue:=244;
      end;
      if Cadastro.FieldByName('WIDTH').AsFloat = 0 then
      begin
        Cadastro.FieldByName('WIDTH').AsFloat:= 300;
        DisplayValue:=300;
      end;
    end;
    ConfigurarBlocoGrafico(Cadastro, DashboardBlocoGrafico1);
  end;
end;

procedure TFrmBI_KPI.FormCreate(Sender: TObject);
begin
  inherited;
  PreencheLookupConfiguracao_Form(edtForm.Properties);
end;

procedure TFrmBI_KPI.FormShow(Sender: TObject);
begin
  inherited;
  DashboardBlocoGrafico1.GridGraficoViewColunas.ToolBox.Visible:=tvAlways;
  DashboardBlocoGrafico1.GridGraficoViewColunas.ToolBox.CustomizeButton:=True;
  DashboardBlocoGrafico1.GridGraficoViewColunas.ToolBox.DiagramSelector:=True;

  DashboardBlocoGrafico1.GridGraficoViewColunas.OptionsCustomize.DataDrillDown:=True;
  DashboardBlocoGrafico1.GridGraficoViewColunas.OptionsCustomize.DataDrillUpMethod:=ddumMouseRightButtonClick;
  DashboardBlocoGrafico1.GridGraficoViewColunas.OptionsCustomize.DataGroupHiding:=True;
  DashboardBlocoGrafico1.GridGraficoViewColunas.OptionsCustomize.DataGroupMoving:=True;
  DashboardBlocoGrafico1.GridGraficoViewColunas.OptionsCustomize.OptionsCustomization:=True;
  DashboardBlocoGrafico1.GridGraficoViewColunas.OptionsCustomize.SeriesCustomization:=True;
  cxRTTIInspector1.InspectedObject := DashboardBlocoGrafico1.GridGraficoViewColunas;
end;

initialization
  RegisterClass(TFrmBI_KPI);
  RegisterFrameCad(Tag_bi_KPI, TFrmBI_KPI);

end.
