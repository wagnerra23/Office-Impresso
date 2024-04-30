unit Base_BI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxCustomTileControl, cxClasses,
  dxTileControl, System.Generics.Collections, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, System.ImageList, Vcl.ImgList, cxImageList,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxStyles, cxSchedulerStorage,
  cxSchedulerCustomControls, cxSchedulerDateNavigator, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, dxLayoutContainer, cxDateNavigator,
  cxDateProfileButton, cxCalendar, dxLayoutControl, Vcl.ExtCtrls, FireDAC.Comp.Client, dxGDIPlusClasses, cxImage;

type
  TFrmBase_BI = class(TFrmBase)
    tiVenda: TdxTileControlItem;
    tiEstoque: TdxTileControlItem;
    tiFinanceiro: TdxTileControlItem;
    tiProducao: TdxTileControlItem;
    tiRH: TdxTileControlItem;
    tiFaturamento: TdxTileControlItem;
    tiCompras: TdxTileControlItem;
    tiAssociacao: TdxTileControlItem;
    tgPowerBI: TdxTileControlGroup;
    tcMenu: TdxTileControl;
    dxTileControlGroup1: TdxTileControlGroup;
    tcmConfiguracao: TdxTileControlItem;
    dxTileControl1: TdxTileControl;
    dxTileControl1Group3: TdxTileControlGroup;
    tiKPI_Financeiro: TdxTileControlItem;
    tiKPI_Producao: TdxTileControlItem;
    tiKPI_Estoque: TdxTileControlItem;
    tiKPI_Vendas: TdxTileControlItem;
    cbUsuarios: TcxLookupComboBox;
    dxTileControl1Group5: TdxTileControlGroup;
    btnDataFiltro: TcxButton;
    imgBaseCinza: TcxImageList;
    pnlFiltroData: TPanel;
    LayoutControlFiltroData: TdxLayoutControl;
    EdtDataInicio: TcxDateEdit;
    EdtDataFim: TcxDateEdit;
    BtnPeriodoDatas: TcxDateProfileButton;
    CbCamposData: TcxComboBox;
    DateNavigatorFiltro: TcxDateNavigator;
    btnDataRetroceder: TcxButton;
    btnDataAvancar: TcxButton;
    btnDataPersonalizada: TcxButton;
    LayoutControlFiltroDataGroup_Root: TdxLayoutGroup;
    LiCbCamposData: TdxLayoutItem;
    LayoutGroupFiltroData: TdxLayoutGroup;
    LGFiltroPersonalizda: TdxLayoutGroup;
    GrupoPesquisaDatasPersonalizado: TdxLayoutGroup;
    LiEdtDataInicio: TdxLayoutItem;
    LiEdtDataFim: TdxLayoutItem;
    LiBtnPeriodoDatas: TdxLayoutItem;
    LiDateNavigatorFiltro: TdxLayoutItem;
    LibtnDataRetroceder: TdxLayoutItem;
    libtnDataAvancar: TdxLayoutItem;
    libtnDataPersonalizada: TdxLayoutItem;
    lgDataProximoAnterior: TdxLayoutGroup;
    tcData: TdxTileControl;
    dxTileControlGroup8: TdxTileControlGroup;
    dxTileControlItem3: TdxTileControlItem;
    tiDataDia: TdxTileControlItem;
    tiDataSemana: TdxTileControlItem;
    tiDataMes: TdxTileControlItem;
    tiDataAno: TdxTileControlItem;
    dxTileControl1Group6: TdxTileControlGroup;
    tiKPI_Compras: TdxTileControlItem;
    dxTileControl1Group2: TdxTileControlGroup;
    dxTileControl1Group4: TdxTileControlGroup;
    tcBaseItem1: TdxTileControlItem;
    tcBaseItem2: TdxTileControlItem;
    btnExpandMenu: TcxButton;
    procedure tiConfiguracaoActivateDetail(Sender: TdxTileControlItem);
    procedure FormShow(Sender: TObject);
    procedure tcmFavoritosClick(Sender: TdxTileControlItem);
    procedure FormCreate(Sender: TObject);
    procedure dxTileControl1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btnDataFiltroClick(Sender: TObject);
    procedure pnlFiltroDataExit(Sender: TObject);
    procedure tiDataMesClick(Sender: TdxTileControlItem);
    procedure btnDataRetrocederClick(Sender: TObject);
    procedure cbUsuariosPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure btnExpandMenuClick(Sender: TObject);
  private
    procedure AtualizarTilesBI;
    procedure CriaMenu(ACaption:String; ATag:Integer);
    procedure Filtra_E_Carrega_KPI_No_Tile(ATag: Integer; ATileItem: TdxTileControlItem);
    procedure Carrega_KPIs_Principais;
//    procedure CriaTileFavoritos;
//    procedure CriaTileConfiguracoes;
  public
    { Public declarations }
    FDataSetAtivo: TFDMemTable;
  end;

var
  FrmBase_BI: TFrmBase_BI;

implementation

{$R *.dfm}

uses Classes.APP, Principal, Base_APP_Menu, wr_Memoria, Controller.KPI, wrFuncoes, UnitFuncoes, System.DateUtils, Tag.Form, Tag.KPI, Tag.Modulo;

procedure TFrmBase_BI.AtualizarTilesBI;
var
  I: integer;
begin
//  inherited;
//  tcBase.Items.Clear;
//  CriaTileFavoritos;
  for I := 0 to Length(AWR_Modulo) - 1 do
  begin
    if AWR_Modulo[i].Ativo then
    begin
      with tcBase.Items.add do
      begin
        Tag := I;
        Glyph.Align := oaMiddleLeft;
        Glyph.ImageIndex := AWR_Modulo[I].ImageIndex;
        Glyph.IndentHorz := -5;
        Glyph.IndentVert := 0;
        Glyph.Images := FrmPrincipal.imgTile64;
        GroupIndex := 1;
        IndexInGroup := I;
        Size := tcisLarge;
        Text1.Align := oaTopRight;
        Text1.IndentHorz := 70;
        Text1.IndentVert := 15;
        Text1.AssignedValues := [avFont];
        Text1.Font.Charset := DEFAULT_CHARSET;
        Text1.Font.Color := clDefault;
        Text1.Font.Height := -20;
        Text1.Font.Name := 'Segoe UI Semibold';
        Text1.Font.Style := [];
        Text1.Value := AWR_Modulo[I].Nome;
        Text2.Align := oaDefault;
        Text2.IndentHorz := 40;
        Text2.IndentVert := 60;
        Text2.Alignment := taCenter;
        Text2.AssignedValues := [];
        Text2.Value := AWR_Modulo[I].Descricao;
        Text2.WordWrap := True;
        Text3.AssignedValues := [];
        Text4.AssignedValues := [];
        OnActivateDetail := tiConfiguracaoActivateDetail;
      end;
    end;
  end;

  for I := 0 to tcBase.Items.Count - 1 do
  begin
    if tcBase.Items[I].Visible then
    begin
      tgPowerBI.Visible := True;
      dxTileControl1Group1.Visible := False;
      Break;
    end;
  end;

//  CriaTileConfiguracoes;
  if dxTileControl1Group1.Visible then tiBasePadrao.Visible := True;

  PreencheLookupUsuarios(cbUsuarios.Properties);
  cbUsuarios.editValue := Usuario.Codigo;
  tiDataMesClick(tiDataMes);

  Carrega_KPIs_Principais;
end;

procedure TFrmBase_BI.btnDataFiltroClick(Sender: TObject);
begin
  inherited;
  pnlFiltroData.Left:= btnDataFiltro.Left + pnlFiltroData.Width - pnlFiltroData.Width;
  pnlFiltroData.Top := btnDataFiltro.Top  + btnDataFiltro.Height;
  Mostrar(pnlFiltroData);
  CbCamposData.SetFocusWR;
end;

procedure TFrmBase_BI.btnDataRetrocederClick(Sender: TObject);
var
  ADelta: integer;
begin
  inherited;
  if Sender = btnDataRetroceder then
    ADelta := -1
  else
    ADelta := 1;

  if YearOf(EdtDataInicio.Date) <= 1900 then
    EdtDataInicio.Date := Date;

  if tcData.Tag = 1 then
  begin
    EdtDataInicio.Date := IncDay(EdtDataInicio.Date, ADelta);
    EdtDataFim.Date    := EdtDataInicio.Date;
  end
  else if tcData.Tag = 2 then
  begin
    EdtDataInicio.Date := StartOfTheWeek(IncWeek(EdtDataInicio.Date, ADelta));
    EdtDataFim.Date    := EndOfTheWeek(EdtDataInicio.Date);
  end
  else if tcData.Tag = 3 then
  begin
    EdtDataInicio.Date := StartOfTheMonth(IncMonth(EdtDataInicio.Date, ADelta));
    EdtDataFim.Date    := EndOfTheMonth(EdtDataInicio.Date);
  end
  else if tcData.Tag = 4 then
  begin
    EdtDataInicio.Date := StartOfTheYear(IncYear(EdtDataInicio.Date, ADelta));
    EdtDataFim.Date    := EndOfTheYear(EdtDataInicio.Date);
  end;

  Carrega_KPIs_Principais;
end;

procedure TFrmBase_BI.cbUsuariosPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  Carrega_KPIs_Principais;
end;

procedure TFrmBase_BI.Carrega_KPIs_Principais;
begin
  Filtra_E_Carrega_KPI_No_Tile(Tag_KPI_Principal_Venda, tiKPI_Vendas);
  Filtra_E_Carrega_KPI_No_Tile(Tag_KPI_Principal_Estoque, tiKPI_Estoque);
  Filtra_E_Carrega_KPI_No_Tile(Tag_KPI_Principal_Producao, tiKPI_Producao);
  Filtra_E_Carrega_KPI_No_Tile(Tag_KPI_Principal_Financeiro, tiKPI_Financeiro);
  Filtra_E_Carrega_KPI_No_Tile(Tag_KPI_Principal_Compras, tiKPI_Compras);
end;

procedure TFrmBase_BI.CriaMenu(ACaption:String; ATag:Integer);
begin
  with tcMenu.Items.add do
  begin
    Tag := ATag;
    GroupIndex := 0;
    Size := tcisLarge;
    Style.BorderColor := $00968C5C;//9192083;
    Style.GradientBeginColor := $00968C5C;//8075648;
    Style.GradientEndColor := $00968C5C;//8075648;
    Text1.Align := oaMiddleCenter;
    Text1.AssignedValues := [avFont];
    Text1.Font.Charset := DEFAULT_CHARSET;
    Text1.Font.Color := clDefault ;
    Text1.Font.Height := -16 ;
    Text1.Font.Name := 'Segoe UI';
    Text1.Font.Style := [];
    Text1.Value := ACaption;
    OnClick := tcmFavoritosClick;
  end;
end;

procedure TFrmBase_BI.btnExpandMenuClick(Sender: TObject);
begin
  inherited;
  tcMenu.Visible:=Not tcMenu.Visible;
end;

procedure TFrmBase_BI.dxTileControl1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  MouseMoveMenuKPI(Sender, Shift, X, Y);
end;

procedure TFrmBase_BI.Filtra_E_Carrega_KPI_No_Tile(ATag: Integer; ATileItem: TdxTileControlItem);
begin
  if Filtra_KPI(FDataSetAtivo, ATag, cbUsuarios.EditValue, EdtDataInicio.Date, EdtDataFim.Date) then
    Preenche_KPI_Tile(FDataSetAtivo, ATileItem)
  else
  begin
    ATileItem.Text1.Value := '--';
    ATileItem.Text2.Value := '';
    ATileItem.Text3.Value := '';
    ATileItem.Text4.Value := '--';
  end;
end;

procedure TFrmBase_BI.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  inherited;
  tcMenu.Items.Clear;
  CriaMenu('Favoritos', Tag_BI);  // Não existe
  CriaMenu('Principal', Tag_BI);  // Não existe
  CriaMenu('Venda por categoria', Tag_BI_Venda_por_Categoria);
  CriaMenu('Venda por Funcionario', Tag_BI_Venda_por_Funcionario);
  CriaMenu('Venda por Tipo de Produto', Tag_BI_Venda_Por_Produto_Tipo);
  CriaMenu('Centro de Custo por Categoria', Tag_BI_CentroCusto_Categoria);
  CriaMenu('Estoque', Tag_BI_Estoque);
  CriaMenu('Financeiro', Tag_BI_Financeiro);
  CriaMenu('Produção', Tag_BI_Producao);
  CriaMenu('Faturamento', Tag_BI_Faturamento);
  CriaMenu('RH', Tag_BI_RH);
  CriaMenu('Empresa', Tag_BI_Empresa);
  CriaMenu('Vendas', Tag_BI_Vendas);
  CriaMenu('Associado', Tag_BI_Associacao);
  CriaMenu('Movimento do produto', Tag_BI_Estoque_Produto_Movimento);
  CriaMenu('Configurações', Tag_BI_Configuracoes);
//  CriaMenu('Venda', Tag_BI_Venda);  Não existe
//  CriaMenu('Compras', Tag_BI_Compras);  // Não tem ainda
//  CriaMenu('Tag_BI_KPI', Tag_BI_KPI);  Não existe
//  CriaMenu('Tag_BI_Acoes', Tag_BI_Acoes);  Não existe
//  CriaMenu('Tag_BI_Permissoes', Tag_BI_Permissoes);  Não existe
//  CriaMenu('Tag_Acoes_Configuracao', Tag_Acoes_Configuracao);  Deveria existir?
//  CriaMenu('Tag_Painel_BI', Tag_Painel_BI);  Deveria existir?

  tcBase.Items.Clear;
// ------ FUNÇÃO QUE CRIA OS TILES NO tcBASE -----//
  for I := 0 to tcMenu.Items.Count -1 do
  begin
    with tcBase.Items.add do
    begin
      GroupIndex := 1;
      IndexInGroup := 0;
      index:=tcMenu.Items[i].index;
      Size := tcisRegular;
      Text1.Align := oaMiddleCenter;
      Text1.AssignedValues := [avFont];
      Text1.Font.Charset := DEFAULT_CHARSET;
      Text1.Font.Color := clDefault;
      Text1.Font.Height := -27;
      Text1.Font.Name := 'Segoe UI Semibold';
      Text1.Font.Style := [];
      Text1.Value := tcMenu.Items[i].Text1.Value;
      Tag := tcMenu.Items[i].Tag;
      OnActivateDetail := tiConfiguracaoActivateDetail;
    end;
  end;
  for I := 0 to tcBase.Items.Count - 1 do
    tcBase.Items[I].DetailOptions.ShowTab:=False;

// ------ FIM FUNÇÃO QUE CRIA OS TILES NO tcBASE -----//

  FMenuAberto := False;
end;

procedure TFrmBase_BI.FormShow(Sender: TObject);
begin
//  inherited;
  AtualizarTilesBI;
end;

procedure TFrmBase_BI.pnlFiltroDataExit(Sender: TObject);
begin
  inherited;
  Ocultar(pnlFiltroData);
end;

procedure TFrmBase_BI.tcmFavoritosClick(Sender: TdxTileControlItem);
begin
  inherited;
  tcBase.Items[Sender.Index].Click;
end;

procedure TFrmBase_BI.tiConfiguracaoActivateDetail(Sender: TdxTileControlItem);
begin
  inherited;
  tcBase.Title.Text:= Sender.Text1.value;
  tcBase.Tag       := Sender.Tag;
  // Que merda isso aqui
  if tcBase.Items[Sender.Index].DetailOptions.DetailControl = nil then
    tcBase.Items[Sender.Index].DetailOptions.DetailControl := APainelFrameClasses[Sender.Tag].Create(Self);
end;

procedure TFrmBase_BI.tiDataMesClick(Sender: TdxTileControlItem);
var
  ADataHoraAtual: TDateTime;
begin
  inherited;
  ADataHoraAtual := DataHoraSys;

  if Sender = tiDataDia then
  begin
    tcData.Tag := 1;
    EdtDataInicio.Date := StartOfTheDay(ADataHoraAtual);
    EdtDataFim.Date    := EndOfTheDay(ADataHoraAtual);
    FDataSetAtivo      := wr_memoria_KPI;
  end
  else if Sender = tiDataSemana then
  begin
    tcData.Tag := 2;
    EdtDataInicio.Date := StartOfTheWeek(ADataHoraAtual);
    EdtDataFim.Date    := EndOfTheWeek(ADataHoraAtual);
  end
  else if Sender = tiDataMes then
  begin
    tcData.Tag := 3;
    EdtDataInicio.Date := StartOfTheMonth(ADataHoraAtual);
    EdtDataFim.Date    := EndOfTheMonth(ADataHoraAtual);
    FDataSetAtivo := wr_memoria_KPI_Mes;
  end
  else if Sender = tiDataAno then
  begin
    tcData.Tag := 4;
    EdtDataInicio.Date := StartOfTheYear(ADataHoraAtual);
    EdtDataFim.Date    := EndOfTheYear(ADataHoraAtual);
    FDataSetAtivo      := wr_memoria_KPI_Ano;
  end;

  Carrega_KPIs_Principais;
end;

initialization
   RegisterBase_MidChild(Tag_BI, TFrmBase_BI);


end.
