unit FrFrameDashboards;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  cxClasses, dxLayoutContainer, dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, dxLayoutLookAndFeels,
  cxLabel, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  FrDashboardBlocoMestre, FrDashboardBlocoGrafico, FrDashboardBlocoSimples, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Generics.Collections, DateUtils,
  Vcl.ExtCtrls, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TFrameDashboards = class(TForm)
    MainLayoutGroup_Root: TdxLayoutGroup;
    MainLayout: TdxLayoutControl;
    GrupoTopo: TdxLayoutGroup;
    GrupoBlocos: TdxLayoutGroup;
    Separador1: TdxLayoutSeparatorItem;
    LbTitulo: TcxLabel;
    LiLbTitulo: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    LafDashboard: TdxLayoutSkinLookAndFeel;
    LafDashboardGrupoBlocos: TdxLayoutSkinLookAndFeel;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    DashBoards: TFDQuery;
    BtnConfiguracoes: TcxButton;
    DashBoards_Atalho_Rapido: TFDQuery;
    DataSource1: TDataSource;
    TransaFD: TFDTransaction;
    Atalho_Rapido: TFDQuery;
    Atalho_RapidoCODIGO: TIntegerField;
    Atalho_RapidoCODUSUARIO: TIntegerField;
    Atalho_RapidoDESCRICAO: TStringField;
    Atalho_RapidoQUANT_REGISTROS: TIntegerField;
    Atalho_RapidoGRAFICO_PERIODO: TStringField;
    Atalho_RapidoGRAFICO_TIPO: TStringField;
    Atalho_RapidoATIVO: TStringField;
    Atalho_RapidoDT_ALTERACAO: TSQLTimeStampField;
    Atalho_RapidoWIDTH: TIntegerField;
    Atalho_RapidoHEIGHT: TIntegerField;
    Atalho_RapidoCODCONFIGURACAO_FILTRO: TIntegerField;
    Atalho_RapidoCODCONFIGURACAO_AGRUPAMENTO: TIntegerField;
    Atalho_RapidoCODCONFIGURACAO_FORM: TIntegerField;
    Atalho_RapidoTEM_PERIODO: TStringField;
    Atalho_RapidoTEM_QUANT_REGISTROS: TStringField;
    Atalho_RapidoSQL: TStringField;
    Atalho_RapidoCAMPO: TStringField;
    Atalho_RapidoFORMATO: TStringField;
    Atalho_RapidoPERIODO: TStringField;
    Atalho_RapidoABA: TStringField;
    Atalho_RapidoOBSERVACAO: TStringField;
    Atalho_RapidoBLOCO: TStringField;
    Atalho_RapidoFILTRO: TStringField;
    Atalho_RapidoAGRUPAMENTO: TStringField;
    Atalho_RapidoCAMPOPERIODO: TStringField;
    Atalho_RapidoCAMPO_CATEGORIA: TStringField;
    Atalho_RapidoGRAFICO: TMemoField;
    Atalho_RapidoCOLUNA1: TStringField;
    Atalho_RapidoCOLUNA2: TStringField;
    Atalho_RapidoCOLUNA3: TStringField;
    Atalho_RapidoCOLUNA4: TStringField;
    Atalho_RapidoCOLUNA5: TStringField;
    Atalho_RapidoCOLUNA6: TStringField;
    Atalho_RapidoCOLUNA7: TStringField;
    DSAtalho_Rapido: TDataSource;
    procedure DashBoardsBeforeOpen(DataSet: TDataSet);
    procedure BtnConfiguracoesClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure AbrirConsultaFiltrando(Sender: TObject; AValor: Variant);
    procedure CustomizationFormClose(Sender: TObject; var Action: TCloseAction);
  public
    FFormConsulta: TForm;
    procedure CarregaLayout(ACodigo : String);
    procedure Abrir(Sender: TObject;  ACodigo: Variant);
    procedure CriaGraficosDisponiveis;
    function CriaBlocoGrafico(ADataSet:TDataSet):TDashboardBlocoGrafico;
    function CriaGraficoSimples(ADataSet: TDataSet):TDashboardBlocoSimples;
    class procedure AbreFrame(Var AFrame:TFrameDashboards; APanel : TPanel);
    class procedure AbreShow(AFormClass : TCustomForm);
    function GetCorValor(AValor: Currency): TColor;
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses ConsM, wrFuncoes, uLayout, UnitFuncoes, wrForms, Principal;

{ TFrmDashboardMestre }

class procedure TFrameDashboards.AbreFrame(var AFrame: TFrameDashboards;
  APanel: TPanel);
begin
  if ( AFrame = nil) then
  begin
    AFrame := TFrameDashboards.Create(APanel.Parent);
    AFrame.BorderStyle  := bsNone;
    AFrame.Parent       := APanel;
    AFrame.FFormConsulta:= TForm(APanel.Parent);
//    AFrame.LbTitulo.Caption:= AFrame.LbTitulo.Caption+' - '+ ATitulo;
  end;
end;

class procedure TFrameDashboards.AbreShow(AFormClass: TCustomForm);
Var
  AFrameDashboards : TFrameDashboards;
begin
  AFrameDashboards := TFrameDashboards.Create(FrmPrincipal);
  AFrameDashboards.show;
//  AFrameDashboards.BorderStyle  := bsNone;
//  AFrameDashboards.Parent       := APanel;
//  AFrameDashboards.FFormConsulta:= TForm(APanel.Parent);
end;

procedure TFrameDashboards.Abrir(Sender: TObject; ACodigo: Variant);
begin
  DashBoards_Atalho_Rapido.Close;
  DashBoards.Close;
  DashBoards.ParamByName('Codigo').Value:= ACodigo;
  DashBoards.Open;
  DashBoards_Atalho_Rapido.Open;
  // Aqui deve criar Os Graficos deacordo com os Panels
  DashBoards_Atalho_Rapido.First;
  while Not DashBoards_Atalho_Rapido.Eof do
  begin
    IF DashBoards_Atalho_Rapido.FieldByName('BLOCO').AsString = 'SIMPLES' then
      CriaGraficoSimples(DashBoards_Atalho_Rapido);
    IF DashBoards_Atalho_Rapido.FieldByName('BLOCO').AsString = 'GRÁFICO' then
      CriaBlocoGrafico(DashBoards_Atalho_Rapido);
    DashBoards_Atalho_Rapido.Next;
  end;
  CarregaLayout(ACodigo);
//  Aqui deve colocar os cptions corretos
  Show;   // Aqui da erro se for midChild
end;

procedure TFrameDashboards.AbrirConsultaFiltrando(Sender: TObject; AValor: Variant);
Var AForm: TConsuM;
begin
 { if not Assigned(FFormConsulta) then
  begin}
    with TDashboardBloco(Sender) do
      AForm:= TConsuM(TFormClass(FindClass(FormConsulta)));
{  end else
    AForm := TConsuM(FFormConsulta);   }
  // Aqui tem que criar a consulta e abrir com o refirido filtro
  with AForm do
  begin
    with TDashboardBloco(Sender) do
    begin
//        btnPorGrid.Click;
      GridConsultaDBTableView1.DataController.BeginUpdate;
      TConsuM(AForm).Consulta.Close;
//      btnPeriodo.Down   := Filtros.Periodo;
      if Sender is TDashboardBlocoGrafico then
      begin
        with TDashboardBlocoGrafico(Sender) do
        begin
          if FiltrosMostrar.Periodo then
          begin
            EdtDataInicio.Date := Filtros.Dt_Inicio;
            EdtDataFim.Date    := Filtros.Dt_Fim;
            // Falta encontrar o Campo no Combo de Datas diponíveis, na Consulta
            CbCamposData.Text  := FormataNomeCampo(Filtros.CampoPeriodo);
//            LiCbCamposData.Visible :=True;
//            btnDataPersonalizada.Click;      << isso pode dar problema
          end;
        end;
      end;
      if Agrupamento <> '' then
      begin
        GridConsultaDBTableView1.DataController.Groups.ClearGrouping;
        AgrupaColunaGrid(GridConsultaDBTableView1, Agrupamento);
        GridConsultaDBTableView1.FindItemByName('Agrupamento').Visible:=True;   // Verificar para que funcione o agrupamento e posso fazer o locate
        if {not VarIsNull(AValor)}GridSubGridView.DataController.DataSource.DataSet.Active then
          TcxGridDBLayoutView(GridSubGrid.ActiveView).DataController.DataSource.DataSet.Locate('DESCRICAO', AValor, []);
      end;
      if Filtro <> '' then
      begin
//         PreFiltro(Filtro);
        TConsuM(AForm).FDashboardsFiltro := Filtro;
//        := TMemoryStream.Create;
        TConsuM(AForm).FFiltros_Grid     := Filtros_Grid;
//        (('+SQLSubGrid+' = :Codigo) or ((:Codigo is Null) and ('+SQLSubGrid+' IS NULL)))
   {     if AValor = '& ' then
        begin
          TConsuM(AForm).FDashboardsAgrupador:= ' is Null';
          TConsuM(AForm).FDashboardsTitulo   := Descricao+' ""';
        end else
        begin
          TConsuM(AForm).FDashboardsAgrupador:= ' = '+QuotedStr(AValor);
          TConsuM(AForm).FDashboardsTitulo   := Descricao+' "'+AValor+'"';
        end; }

      end;
      GridConsultaDBTableView1.DataController.EndUpdate;
      if not TConsuM(AForm).Consulta.Active then
        TConsuM(AForm).Consulta.Open;
    end;
//    TConsuM(AForm).RibbonBackstageView.ClosePopup;

    AForm.Show;
//    wrFormsAguardaFechar(AForm.Forms, AForm);
  end;
end;

procedure TFrameDashboards.CriaGraficosDisponiveis;
begin
  MainLayout.BeginUpdate;
  Atalho_Rapido.Open;
  Atalho_Rapido.First;
  while Not Atalho_Rapido.Eof do
  begin
    IF Atalho_Rapido.FieldByName('BLOCO').AsString = 'SIMPLES' then
      CriaGraficoSimples(Atalho_Rapido);
    IF Atalho_Rapido.FieldByName('BLOCO').AsString = 'GRÁFICO' then
      CriaBlocoGrafico(Atalho_Rapido);
    Atalho_Rapido.Next;
  end;
  MainLayout.EndUpdate;
  Atalho_Rapido.Close;
end;


procedure TFrameDashboards.CarregaLayout(ACodigo : String);
var
  Arquivo : String;
  AMigrado : boolean;
begin
  MainLayout.Restore;
  Arquivo := LayoutMan.GetLayoutForm('DashBoard'+ACodigo {DashBoards.FieldByName('Codigo').AsString}, AMigrado);
  if Arquivo <> '' then
  begin
    try
      if AMigrado then
      begin
        MainLayout.Container.BeginUpdate;
        MainLayout.Container.RestoreFromIniFile(Arquivo, Self.ClassName);
        MainLayout.Container.EndUpdate(false);
      end
      else
        MainLayout.LoadFromIniFile(Arquivo);
    except
      on E:Exception do
      begin
        DeleteFile(Arquivo);
        if MessageBox(0, 'Não foi possível carregar seu layout!!'+#13+#10+'Deseja tentar corrigir?', 'Office Impresso', MB_ICONWARNING or MB_YESNO or MB_DEFBUTTON1) = mrYes then
          LayoutMan.SubstituiTextoDoErro(E.Message,Self.ClassName);
      end;
    end;
  end;
end;

procedure TFrameDashboards.BtnConfiguracoesClick(Sender: TObject);
begin
  CriaGraficosDisponiveis;

  MainLayout.Customization := True;
  MainLayout.CustomizeForm.OnClose := CustomizationFormClose;
end;

function TFrameDashboards.CriaBlocoGrafico(ADataSet: TDataSet):TDashboardBlocoGrafico;
begin
  Result:=TDashboardBlocoGrafico(FindComponent('Grafico'+DashBoards.FieldByName('CODIGO').AsString+'A'
                                                        +ADataSet.FieldByName('CODIGO').AsString));
  if Not Assigned(Result) then
  begin
    /// Localizar e criar ou atualizar
    Result:= TDashboardBlocoGrafico.Create(Self);
    ConfigurarBlocoGrafico(ADataSet, Result);
    Result.Name:='Grafico'+DashBoards.FieldByName('CODIGO').AsString+'A'
                          +ADataSet.FieldByName('CODIGO').AsString;
    Result.OnClick := AbrirConsultaFiltrando;
    if MainLayout.FindItem(Result) = nil then
    begin
      with GrupoBlocos.CreateItemForControl(Result)do
      begin
        Name := 'li'+Result.Name;
        CaptionOptions.Text   := ADataSet.FieldByName('Descricao').AsString;
        CaptionOptions.Visible:= False;
        Tag := ADataSet.FieldByName('Codigo').AsInteger;
      end;
    end;
  end;
  Result.AtualizarDados;
end;

function TFrameDashboards.CriaGraficoSimples(ADataSet: TDataSet):TDashboardBlocoSimples;
begin
  /// Localizar e criar ou atualizar
  ///  Result
  Result:=TDashboardBlocoSimples(FindComponent('Grafico'+DashBoards.FieldByName('CODIGO').AsString+'A'
                                                        +ADataSet.FieldByName('CODIGO').AsString));
  if Not Assigned(Result) then
  begin
    Result:=TDashboardBlocoSimples.Create(Self);
    ConfigurarBlocoSimples(ADataSet, Result);
    Result.Name:='Grafico'+DashBoards.FieldByName('CODIGO').AsString+'A'
                          +ADataSet.FieldByName('CODIGO').AsString;
    Result.OnClick := AbrirConsultaFiltrando;

    if MainLayout.FindItem(Result) = nil then
    begin
      with GrupoBlocos.CreateItemForControl(Result)do
      begin
        Name := 'li'+Result.Name;
        CaptionOptions.Text   := ADataSet.FieldByName('Descricao').AsString;
        CaptionOptions.Visible:= False;
        Tag := ADataSet.FieldByName('Codigo').AsInteger;
      end;
    end;

  end;
  Result.AtualizarDados;
end;

procedure TFrameDashboards.CustomizationFormClose(Sender: TObject;
  var Action: TCloseAction);
Var I : Integer;
begin
  DashBoards_Atalho_Rapido.First;
  while Not DashBoards_Atalho_Rapido.eof do
    DashBoards_Atalho_Rapido.Delete;
  for I := 0 to MainLayout.AbsoluteItemCount -1 do
  begin
    if (MainLayout.AbsoluteItems[i].ActuallyVisible) and
       (MainLayout.AbsoluteItems[i].Tag > 0) then
    begin
      DashBoards_Atalho_Rapido.Insert;
      DashBoards_Atalho_Rapido.FieldByName('CodDashBoard').AsInteger:=DashBoards.FieldByName('Codigo').AsInteger;
      DashBoards_Atalho_Rapido.FieldByName('CodAtalho_Rapido').AsInteger:=MainLayout.AbsoluteItems[i].Tag;
      DashBoards_Atalho_Rapido.Post;
    end;
  end;
  TransaFD.Commit;
  LayoutMan.SalvarLayout(MainLayout, 'DashBoard'+DashBoards.FieldByName('Codigo').AsString);
  Action := caFree;
end;

procedure TFrameDashboards.DashBoardsBeforeOpen(DataSet: TDataSet);
begin
{  DashBoards.sql[2]:= 'WHERE (C.ATIVO = ''S'')';
  if FFormConsulta.ClassName <> 'TConsuDashBoards' then
    DashBoards.sql[2]:= DashBoards.sql[2] + ' AND (CF.DESCRICAO = ' + QuotedStr(FFormConsulta.ClassName) + ')'
  else
    DashBoards.sql[2]:= DashBoards.sql[2] + ' AND (C.TEM_PRINCIPAL =  ''S'' )';     }
end;

procedure TFrameDashboards.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if FormStyle = fsMDIChild then
  begin
    Action:=caFree;
    if (FrmPrincipal.dxTabbedMDIManager1.TabProperties.PageCount<3) then
      FrmPrincipal.dxTabbedMDIManager1.TabProperties.HideTabs:=True;
  end;
end;

function TFrameDashboards.GetCorValor(AValor: Currency): TColor;
begin
  if AValor >= 0.01 then
    Result := $00A47C39
  else if AValor <= -0.01 then
    Result := $006837B3
  else
    Result := clBlack;
end;

end.

