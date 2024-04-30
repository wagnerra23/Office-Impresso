unit Frame_PainelBI_Configuracoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ConsM, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  cxContainer, Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils, cxLabel,
  dxLayoutContainer, dxLayoutcxEditAdapters, dxLayoutControlAdapters,
  dxRibbonCustomizationForm, dxRibbonSkins, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, dxScreenTip,
  dxOfficeSearchBox, dxBar, cxBarEditItem, WREventos, frxClass, frxDBSet,
  System.ImageList, Vcl.ImgList, cxImageList, System.Actions, Vcl.ActnList,
  dxCustomHint, cxHint, Vcl.ExtCtrls, dxLayoutLookAndFeels, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, dxPSCore, dxPScxCommon, cxClasses, dxGalleryControl,
  dxRibbonBackstageViewGalleryControl, dxRibbonBackstageView, dxRibbon,
  dxStatusBar, dxRibbonStatusBar, cxDropDownEdit, uButtonFlat,
  cxGridViewLayoutContainer, cxGridLayoutView, cxGridCustomTableView,
  cxGridDBLayoutView, cxDateProfileButton, cxCalendar, Vcl.StdCtrls, cxButtons,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxGridLevel, cxGridCustomLayoutView,
  cxGridCustomView, cxGridTableView, cxGridDBTableView, cxGrid, dxLayoutControl,
  StrUtils, System.Generics.Collections, cxCheckBox, dxColorEdit, FrFrameDashboards,
  cxSchedulerStorage, cxSchedulerCustomControls, cxSchedulerDateNavigator,
  cxDateNavigator, UCHistDataset, cxCustomStatusKeeper, cxStatusKeeper, Frame_Con, dxCustomTileControl, dxTileControl, Frame_Painel, dxSkinsCore, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TFrameBI_Configuracoes = class(TPainel_Frame)
    PopupMenu1: TPopupMenu;
    ntnAgruparPorBLOCO1: TMenuItem;
    ntnAgruparFROM1: TMenuItem;
    tcBase: TdxTileControl;
    dxTileControl1Group1: TdxTileControlGroup;
    tgPowerBI: TdxTileControlGroup;
    tiBasePadrao: TdxTileControlItem;
    tiVenda: TdxTileControlItem;
    tiConfiguracao: TdxTileControlItem;
    tiEstoque: TdxTileControlItem;
    tiFinanceiro: TdxTileControlItem;
    tiRH: TdxTileControlItem;
    tiProducao: TdxTileControlItem;
    tiFaturamento: TdxTileControlItem;
    tiCompras: TdxTileControlItem;
    tiAssociacao: TdxTileControlItem;
    procedure WREventosConsultaSQLTrataNomes(Sender: TObject; var ASQL: string);
    procedure ConsultaAfterOpen(DataSet: TDataSet);
    procedure FrameEnter(Sender: TObject);
    procedure tiBasePadraoClick(Sender: TdxTileControlItem);
    procedure tcBaseItemActivateDetail(Sender: TdxCustomTileControl;
      AItem: TdxTileControlItem);
  private
    { Private declarations }
    FListFormDashboards: TList<TFrameDashboards>;
  public
    { Public declarations }
   procedure BtnDashBoardButtonOnClick(Sender: TObject);
   procedure CriaBotoesDashBoardButton;
  end;

var
  FrameBI_Configuracoes: TFrameBI_Configuracoes;

implementation

{$R *.dfm}

uses Principal, Base, Consulta, Classes.APP, ConfiguracoesM, Tag.Form, Tag.Modulo;

procedure TFrameBI_Configuracoes.BtnDashBoardButtonOnClick(Sender: TObject);
//Var I : Integer;
//  Achou : Boolean;
begin
 { if Consulta.Locate('Codigo', TWRButtonFlat(Sender).Tag ,[]) then
  begin
    FFormDashboards:= nil;
    Achou:=False;
    for I := 0 to FListFormDashboards.Count - 1 do
    begin
      if FListFormDashboards[i].Tag = i+1 then
      begin
        FFormDashboards:= FListFormDashboards[i];
        Achou:=True;
//        Exit;
      end;
    end;
    if Not Achou then
    begin
      FFormDashboards := TFrameDashboards.Create(Self);
      FFormDashboards.BorderStyle  := bsNone;
      FFormDashboards.Parent       := pnlFlipRotate;
      FFormDashboards.FFormConsulta:= Nil;
      FFormDashboards.MainLayout.LookAndFeel := dxLayoutSkinLookAndFeel1;
      FFormDashboards.GrupoTopo.Visible :=False;
      FFormDashboards.Separador1.Visible:=False;
      FFormDashboards.Tag:= Consulta.FieldByName('CODIGO').AsInteger;
      FListFormDashboards.Add(FFormDashboards);
    end;
    btnDashBoard.Click;
//    GrupoFlip.Visible       := True;
//    GrupoCabecalho.Visible  := False;
//    GrupoAlterarView.Visible:= False;
    LbTitulo.Caption := 'DashBoards - ' + Consulta.FieldByName('Descricao').AsString ;
    FFormDashboards.Abrir(Self,Consulta.FieldByName('CODIGO').AsInteger);
  end;
//  Abre o Frame de acordo com o botão precionado      }
end;

procedure TFrameBI_Configuracoes.ConsultaAfterOpen(DataSet: TDataSet);
begin
  inherited;
  CriaBotoesDashBoardButton;
end;

procedure TFrameBI_Configuracoes.CriaBotoesDashBoardButton;
var
  AButton: TcxButton;
  I: Integer;
begin
 { if not Assigned(FListFormDashboards) then
  begin
    FListFormDashboards := TList<TFrameDashboards>.Create;
    dxLayoutControl1.BeginUpdate;
    try
      GrupoDashBoardButton.ShowBorder := False;
  //    FListaBotoesPaginasGoogle.Clear;
  //    Aqui deve ter a query para saber quantos botões tem disponível
      Consulta.First;
      while Not Consulta.Eof do
      begin
        AButton := TWRButtonFlat.Create(dxLayoutControl1);
        AButton.OnClick            := BtnDashBoardButtonOnClick;
        AButton.Height             := 24;
        AButton.Width              := 24;
        AButton.Caption            := '';//Consulta.FieldByName('DESCRICAO').AsString;
        AButton.Tag                := Consulta.FieldByName('CODIGO').AsInteger;
        AButton.Hint               := Consulta.FieldByName('DESCRICAO').AsString;
        AButton.Colors.Default     := Consulta.FieldByName('COR').AsInteger;
        AButton.Colors.DefaultText := clRed;
        AButton.Colors.HotText     := 16744448;
        AButton.Colors.PressedText := 16744448;
        AButton.Font.Color         := clWindowText;
        AButton.Font.Size          := 9;
        AButton.Font.Name          := 'Tahoma';
        AButton.Font.Style         := [fsBold];
        AButton.ParentFont         := False;
        AButton.OptionsImage.Spacing    := 0;
        AButton.SpeedButtonOptions.CanBeFocused := False;
        AButton.SpeedButtonOptions.Flat         := True;
        AButton.SpeedButtonOptions.GroupIndex   := 23;
        GrupoDashBoardButton.CreateItemForControl(AButton);
        Consulta.Next;
      end;
    finally
      dxLayoutControl1.EndUpdate(False);
    end;
  end;    }
end;

procedure TFrameBI_Configuracoes.FrameEnter(Sender: TObject);
var
  I: integer;
begin
  inherited;
  tcBase.Items.Clear;
  for I := 1 to Length(AWR_Modulo) do
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
      OnClick := tiBasePadraoClick;

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

  if dxTileControl1Group1.Visible then tiBasePadrao.Visible := True;

//  PreencheLookupConfiguracao_Form(edtForm.Properties);

(*

//  cxRTTIInspector1.InspectedObject := DashboardBlocoGrafico1.GridGraficoViewColunas;
//  ShowMessage(AValor);

var
  I : Integer;
{  FGrafico: TStream;}
begin
 { FGrafico := TMemoryStream.Create;
//  DashboardBlocoGrafico1.GridGraficoViewColunas.StoreToStream(FGrafico,[]);  Layout do Frame DashBord
  FGrafico.Position := 0;
  TBlobField(Cadastro.FieldByName('Grafico')).LoadFromStream(FGrafico);
  FGrafico.Free;  }
  // Salva os Dash Boards Escolhidos



 { try
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

  end;     }

{  cxGrid1DBTableView1.ClearItems;
  cxGrid1DBTableView1.DataController.CreateAllItems(True);
  TCurrencyField(cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldByName('Quant')).DisplayFormat:='0.00'; }
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











//var
//  FGrafico: TStream;
  if edtCodigo.text<>'' then
  begin
    //Carrega
    if Not Assigned(FFormDashboards) then
    begin
      FFormDashboards := TFrameDashboards.Create(Self);
      FFormDashboards.BorderStyle  := bsNone;
      FFormDashboards.Parent       := pnlFlipRotate;
      FFormDashboards.FFormConsulta:= Nil;
      FFormDashboards.MainLayout.LookAndFeel := dxLayoutSkinLookAndFeel1;
      FFormDashboards.Tag:= Cadastro.FieldByName('CODIGO').AsInteger;
      // Criar os Widgets disponíveis
    end;
    FFormDashboards.Abrir(Self, edtCodigo.text);

{     if Cadastro.FieldByName('Grafico').AsString <> '' then
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
    end;    }
  end; //else
//    DashboardBlocoGrafico1.GridGraficoViewColunas.RestoreDefaults;     *)
end;

procedure TFrameBI_Configuracoes.tcBaseItemActivateDetail(
  Sender: TdxCustomTileControl; AItem: TdxTileControlItem);
begin
//  inherited;
  //
end;

procedure TFrameBI_Configuracoes.tiBasePadraoClick(Sender: TdxTileControlItem);
var
  Form: TFrmBase;
begin
//  inherited;
  Form := ABaseClass_Normal[Tag_Configuracao].Create(FrmPrincipal);
  TFrmConfiguracoesM(Form).SelectItemConfiguracao(TComponent(Sender).Tag);
//      .ShowMenu(TComponent(Sender).Tag);
  TFrmConfiguracoesM(Form).ShowConsultaModalItem(TComponent(Sender).Tag);
end;

procedure TFrameBI_Configuracoes.WREventosConsultaSQLTrataNomes(Sender: TObject;
  var ASQL: string);
begin
  inherited;
{  ASQL := ReplaceStr(ASQL, '(FORM', '(CF.DESCRICAO');
  if ASQL = 'ATIVO' then
    ASQL := ReplaceStr(ASQL, 'ATIVO', 'C.ATIVO')
  else
    ASQL := ReplaceStr(ASQL, '(ATIVO', '(C.ATIVO');     }
end;

initialization
  RegisterFramePainel(Tag_BI_Configuracoes, TFrameBI_Configuracoes);

end.
