unit Frame_Painel_Mestre;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, DB,
  cxLookAndFeelPainters, dxCustomTileControl, dxTileControl,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, DBClient, cxGridChartView, cxGridDBChartView, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridLevel, cxGrid, ExtCtrls, cxTextEdit, cxCurrencyEdit, cxImage,
  cxMemo, cxSplitter, MidasLib, cxNavigator, dxDateRanges, Frame_Painel, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils, cxMaskEdit, cxDropDownEdit,
  cxCalendar, Vcl.StdCtrls, cxLabel, Vcl.Menus, cxButtons, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxDBLabel, uButtonFlat, frxClass, frxDBSet, DataModuleImpressao,
  System.Generics.Collections, WREventos, dxTileBar, cxCustomPivotGrid,
  cxDBPivotGrid, dxLayoutContainer, dxLayoutControl, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, cxSchedulerStorage, cxSchedulerCustomControls,
  cxSchedulerDateNavigator, cxDateNavigator, cxDateProfileButton,
  System.ImageList, Vcl.ImgList, cxImageList, dxLayoutLookAndFeels,
  dxScrollbarAnnotations, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TPainel_Mestre = class(TPainel_Frame)
    dsChart: TDataSource;
    cdsChart: TClientDataSet;
    cdsChartMidWest: TIntegerField;
    cdsChartNorthEast: TIntegerField;
    cdsChartSouth: TIntegerField;
    cdsChartWest: TIntegerField;
    cdsChartAgentID: TIntegerField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cdsChartDate: TIntegerField;
    Cadastro: TFDQuery;
    Cadastro_Analitico: TFDQuery;
    DSCadastro_Analitico: TDataSource;
    Fr3Cadastro: TfrxDBDataset;
    fr3Cadastro_Analitico: TfrxDBDataset;
    MenuImprimir: TPopupMenu;
    WREventosCadastro: TWREventosCadastro;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    dxLayoutControl1: TdxLayoutControl;
    cxGrid2: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGridDBChartView2: TcxGridDBChartView;
    cxGridDBChartDataGroup2: TcxGridDBChartDataGroup;
    cxGridDBChartSeries2: TcxGridDBChartSeries;
    cxGridLevel5: TcxGridLevel;
    tcAgents: TdxTileControl;
    dxTileControlGroup3: TdxTileControlGroup;
    dxTileBar1: TdxTileBar;
    dxTileControlGroup4: TdxTileControlGroup;
    dxTileBarItem5: TdxTileBarItem;
    dxTileBarItem6: TdxTileBarItem;
    dxTileBarItem7: TdxTileBarItem;
    dxTileBarItem8: TdxTileBarItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    pnDetailSite: TPanel;
    dxLayoutItem1: TdxLayoutItem;
    Meta: TFDQuery;
    DSMeta: TDataSource;
    dxTileBar1dxTileBarItem1: TdxTileBarItem;
    Totalizador: TFDQuery;
    Mes: TFDQuery;
    dxTileControl1: TdxTileControl;
    liTileAlertaInicial: TdxLayoutItem;
    dxTileControl1Item1: TdxTileControlItem;
    dxTileControl1Group2: TdxTileControlGroup;
    tcTopoMes: TdxTileControl;
    dxTileControl2Item1: TdxTileControlItem;
    dxTileControl2Group2: TdxTileControlGroup;
    tcTopoBtn: TdxTileControl;
    dxTileControl3Group1: TdxTileControlGroup;
    dxTileControl3Item4: TdxTileControlItem;
    pnlMes: TPanel;
    tcMenuMes: TdxTileControl;
    dxTileControl2Group1: TdxTileControlGroup;
    tcMenuMesItem1: TdxTileControlItem;
    tcMenuMesGroup1: TdxTileControlGroup;
    tiIniciar: TdxTileControlItem;
    imgBase: TcxImageList;
    GrupoBotaoVermelho: TdxLayoutGroup;
    GrupoMenuLateral: TdxLayoutGroup;
    GrupoTopo: TdxLayoutGroup;
    pnlIniciar: TPanel;
    tcMenuAcoes: TdxTileControl;
    dxTileControl2Group3: TdxTileControlGroup;
    tiMeta: TdxTileControlItem;
    tiImprimir: TdxTileControlItem;
    cxLabel1: TcxLabel;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    LookBrancoWeb: TdxLayoutWebLookAndFeel;
    dxLayoutSkinLookAndFeelData: TdxLayoutSkinLookAndFeel;
    GrupoMeio: TdxLayoutGroup;
    GrupoMeioGrafico: TdxLayoutGroup;
    GrupoDadosDireita: TdxLayoutGroup;
    procedure AA(Sender: TObject; var NewWidth, NewHeight: Integer;
      var Resize: Boolean);
    procedure cxSplitter2BeforeClose(Sender: TObject;
      var AllowClose: Boolean);
    procedure WREventosCadastroImpressaoBeforePrint(Sender: TObject;
      var APermiteImprimir: Boolean);
    procedure tiIniciarDeactivateDetail(Sender: TdxTileControlItem);
    procedure tiIniciarActivateDetail(Sender: TdxTileControlItem);
    procedure pnDetailSiteResize(Sender: TObject);
    procedure dxTileControl1Item1Click(Sender: TdxTileControlItem);
    procedure tiMetaClick(Sender: TdxTileControlItem);
    procedure tiImprimirClick(Sender: TdxTileControlItem);
    procedure dxTileControl3Item4Click(Sender: TdxTileControlItem);
    procedure dxTileBarItem5Click(Sender: TdxTileControlItem);
    procedure dxTileBarItem6Click(Sender: TdxTileControlItem);
    procedure pnlIniciarExit(Sender: TObject);
  private

    procedure InitializeChartDataSet;
    procedure CarregaMenu(Sender: TdxTileControlItem);
    procedure CarregaMeses;
    procedure OnItemClick(Sender: TdxTileControlItem);
    procedure OnItemClickSair(Sender: TdxTileControlItem);
    function MesSelecao(AMesSelecionado: Integer): TDateTime;
//    procedure CarregaMeses;
//    procedure CarregaMenu;
  public
    procedure InitializeFrame; virtual;
    procedure DefineDias(DataInicio, DataFim :TDateTime);
    constructor Create(AOwner: TComponent); override;
//    constructor Close(AOwner: TComponent); override;
    procedure SelectItem(APhotoID, AAgentID: Integer); override;
    procedure AtualizaTela; virtual;
  end;

var
  FDiasRestantes, FDiasAcumulados, FCodEmpresa, FCodMeta: Integer;
  FDataAtual, FDataInicio, FDataFim, FDataMes: TDateTime;

implementation

{$R *.dfm}

uses Principal, wrFuncoes, unitFuncoes, wrPreencheLookup, StrUtils, DateUtils, wrForms, wrFuncoes_Office,
  wrConstantes, Math, cadMeta, Base, Tag.Form;

constructor TPainel_Mestre.Create(AOwner: TComponent);
begin
  inherited
  Create(AOwner);
//  TDMImpressao.CarregaMenuFrame(MenuImprimir.Items, Self);
  DMImpressao.CarregaMenuFrame(MenuImprimir.Items, Self);
  InitializeFrame;
  InitializeChartDataSet;
end;

procedure TPainel_Mestre.InitializeFrame;
begin
  FDataMes := DataHoraSys;
  FCodEmpresa := Empresa.FieldByName('CODIGO').AsInteger;
  CarregaMenu(nil);
  DefineDias(StartOfTheMonth(FDataMes), EndOfTheMonth(FDataMes));
end;

procedure TPainel_Mestre.CarregaMenu(Sender: TdxTileControlItem);
var
  ADelta: Integer;
begin
  if Sender = nil then
    ADelta := 0
  else
    ADelta := Sender.Tag;

  FDataMes := IncYear(FDataMes, ADelta);

  Mes.Close;
  Mes.ParamByName('Dt_Inicio').AsDateTime  := StartOfTheYear(FDataMes);
  Mes.ParamByName('Dt_Fim').AsDateTime     := EndOfTheYear(FDataMes);
  Mes.ParamByName('CodEmpresa').AsInteger  := FCodEmpresa;
  Mes.Open;

  tcMenuMes.Groups[0].DeleteItems;
  CarregaMeses;
end;

procedure TPainel_Mestre.CarregaMeses;
Var
  I:Integer;
begin
  tcMenuMes.OptionsView.ItemHeight := 100;
  I := 0;
  tcMenuMes.Items.Add;
  tcMenuMes.Items[I].Tag                      := -1;
  tcMenuMes.Items[I].GroupIndex               := 0;
  tcMenuMes.Items[I].Size                     := tcisLarge;
  tcMenuMes.Items[I].Text1.Font.Size          := 20;
  tcMenuMes.Items[I].Text1.Font.Style         := [fsBold];
  tcMenuMes.Items[I].Text1.Align              := oaMiddleCenter;
  tcMenuMes.Items[I].Text1.Value              := '<< Ano Anterior';
  tcMenuMes.Items[I].OnClick                  := CarregaMenu;
  tcMenuMes.Items[I].Style.BorderColor        := $008D697F;
  tcMenuMes.Items[I].Style.GradientBeginColor := $008D697F;
  tcMenuMes.Items[I].Style.GradientEndColor   := $008D697F;
  I := I + 1;


  Mes.First;
  if Mes.RecordCount = 0 then
  begin
    tcMenuMes.Items.Add;
    tcMenuMes.Items[I].Tag                      := -2;
    tcMenuMes.Items[I].GroupIndex               := 0;
    tcMenuMes.Items[I].Size                     := tcisLarge;
    tcMenuMes.Items[I].Text1.Font.Size          := 20;
    tcMenuMes.Items[I].Text1.Font.Style         := [fsBold];
    tcMenuMes.Items[I].Text1.Align              := oaMiddleCenter;
    tcMenuMes.Items[I].Text1.Value              := 'Sem Dados Para exibir';
    tcMenuMes.Items[I].Text2.Font.Size          := 20;
    tcMenuMes.Items[I].Text2.Font.Style         := [fsBold];
    tcMenuMes.Items[I].Text2.Align              := oaBottomCenter;
    tcMenuMes.Items[I].Text2.Value              := 'Clique aqui para Sair';
    tcMenuMes.Items[I].OnClick                  := OnItemClickSair;
    tcMenuMes.Items[I].Style.BorderColor        := $008D697F;
    tcMenuMes.Items[I].Style.GradientBeginColor := $008D697F;
    tcMenuMes.Items[I].Style.GradientEndColor   := $008D697F;
    I := I + 1;
  end;

  while not Mes.Eof do
  begin
    tcMenuMes.Items.Add;

    tcMenuMes.Items[I].Glyph.Align      := oaMiddleLeft;
    tcMenuMes.Items[I].Glyph.ImageIndex := 26;
    tcMenuMes.Items[I].Glyph.Images     := FrmPrincipal.imgTile32;
    tcMenuMes.Items[I].Tag              := Mes.RecNo;
    tcMenuMes.Items[I].Size             := tcisLarge;
    tcMenuMes.Items[I].Text1.Value      := MESES_NOMES[StrToInt(Mes.FieldByName('MES').AsString)] + ' ' + Mes.FieldByName('ANO').AsString;



    tcMenuMes.Items[I].GroupIndex                 := 0;
    tcMenuMes.Items[I].Size                       := tcisLarge;
    tcMenuMes.Items[I].Style.BorderColor          := $008D697F;
    tcMenuMes.Items[I].Style.GradientBeginColor   := $008D697F;
    tcMenuMes.Items[I].Style.GradientEndColor     := $008D697F;
    tcMenuMes.Items[I].Text1.Align                := oaTopLeft;
    tcMenuMes.Items[I].Text1.AssignedValues       := [avColor, avTextColor, avFont];
    tcMenuMes.Items[I].Text1.Color                := clMedGray;
    tcMenuMes.Items[I].Text1.Font.Charset         := DEFAULT_CHARSET;
    tcMenuMes.Items[I].Text1.Font.Color           := clDefault;
    tcMenuMes.Items[I].Text1.Font.Height          := -15;
    tcMenuMes.Items[I].Text1.Font.Name            := 'Segoe UI';
    tcMenuMes.Items[I].Text1.Font.Style           := [fsBold];
    tcMenuMes.Items[I].Text1.IndentHorz           := 55;
    tcMenuMes.Items[I].Text1.Value                := MESES_NOMES[StrToInt(Mes.FieldByName('MES').AsString)] + ' ' + Mes.FieldByName('ANO').AsString;;
    tcMenuMes.Items[I].Text1.TextColor            := clWhite;
    tcMenuMes.Items[I].Text2.Align                := oaMiddleLeft;
    tcMenuMes.Items[I].Text2.AssignedValues       := [avTextColor, avFont];
    tcMenuMes.Items[I].Text2.Font.Charset         := DEFAULT_CHARSET;
    tcMenuMes.Items[I].Text2.Font.Color           := clDefault;
    tcMenuMes.Items[I].Text2.Font.Height          := -24;
    tcMenuMes.Items[I].Text2.Font.Name            := 'Segoe UI';
    tcMenuMes.Items[I].Text2.Font.Style           := [fsBold];
    tcMenuMes.Items[I].Text2.IndentHorz           := 55;
    tcMenuMes.Items[I].Text2.Value                := FormatFloat('R$##,###,##0.00',Mes.FieldByName('FATURAMENTO').AsFloat);
    tcMenuMes.Items[I].Text2.TextColor            := clWhite;
    tcMenuMes.Items[I].Text3.Align                := oaBottomLeft;
    tcMenuMes.Items[I].Text3.AssignedValues       := [avTextColor, avFont];
    tcMenuMes.Items[I].Text3.Font.Charset         := DEFAULT_CHARSET;
    tcMenuMes.Items[I].Text3.Font.Color           := clDefault;
    tcMenuMes.Items[I].Text3.Font.Height          := -12;
    tcMenuMes.Items[I].Text3.Font.Name            := 'Segoe UI';
    tcMenuMes.Items[I].Text3.Font.Style           := [fsBold];
    tcMenuMes.Items[I].Text3.IndentHorz           := 65;
    tcMenuMes.Items[I].Text3.Value                := '';
    tcMenuMes.Items[I].Text3.TextColor            := clWhite;
    tcMenuMes.Items[I].Text4.Align                := oaBottomLeft;
    tcMenuMes.Items[I].Text4.AssignedValues       := [avTextColor];
    tcMenuMes.Items[I].Text4.IndentHorz           := 100;
    tcMenuMes.Items[I].Text4.IndentVert           := 8;
    tcMenuMes.Items[I].Text4.Value                := 'Meta: ' + FormatFloat('R$##,###,##0.00',Mes.FieldByName('META').AsFloat);
    tcMenuMes.Items[I].Text4.TextColor            := clWhite;

    tcMenuMes.Items[I].OnClick                    := OnItemClick;

    I := I + 1;
    Mes.Next;
  end;

  tcMenuMes.Items.Add;
  tcMenuMes.Items[I].Tag                      := 1;
  tcMenuMes.Items[I].GroupIndex               := 0;
  tcMenuMes.Items[I].Size                     := tcisLarge;
  tcMenuMes.Items[I].Text1.Font.Size          := 20;
  tcMenuMes.Items[I].Text1.Align              := oaMiddleCenter;
  tcMenuMes.Items[I].Text1.Font.Style         := [fsBold];
  tcMenuMes.Items[I].Text1.Value              := 'Ano Seguinte >>';
  tcMenuMes.Items[I].OnClick                  := CarregaMenu;
  tcMenuMes.Items[I].Style.BorderColor        := $008D697F;
  tcMenuMes.Items[I].Style.GradientBeginColor := $008D697F;
  tcMenuMes.Items[I].Style.GradientEndColor   := $008D697F;
end;

function TPainel_Mestre.MesSelecao(AMesSelecionado: Integer): TDateTime;
var
 AMesAtual, AAnoAtual, AAnoSelecionado, AResultado :Integer;
 AData :TDateTime;
begin
  AMesSelecionado := StrToInt(Mes.FieldByName('MES').AsString);
  AData      := DataHoraSys;
  AMesAtual  := MonthOf(AData);
  AAnoAtual  := YearOf(AData);
  AAnoSelecionado :=  YearOf(FDataMes);//ESSA VARIAVEL É A MESMA QUE TRABALHA NA TROCA DE ANO DO TILES


  //DEFINE A DIFERENCA DE MES
  AResultado := AMesSelecionado - AMesAtual;

  //COLOCA O MES CORRETO
  AData      := IncMonth(AData, AResultado);

  //VERIFICA SE O ANO É DIFERENTE
  if AAnoAtual <> AAnoSelecionado then
  begin
    AResultado := AAnoSelecionado - AAnoAtual;
    AData :=  IncYear(AData, AResultado);
  end;
  Result := AData;
end;

procedure TPainel_Mestre.OnItemClick(Sender: TdxTileControlItem);
var
 AData :TDateTime;
begin
  Mes.RecNo := Sender.tag;
  AData := MesSelecao(StrToInt(Mes.FieldByName('MES').AsString));

  FCodMeta := Mes.FieldByName('CODMETA').AsInteger;
  DefineDias(StartOfTheMonth(AData), EndOfTheMonth(AData));
//  tcMenuMes.ActiveDetail := nil;
//  tiIniciar.DetailOptions. := nil;
  Ocultar(pnlMes);
end;


////////////////DEFINE DIAS\\\\\\\\\\\\\\\\\
procedure TPainel_Mestre.DefineDias(DataInicio, DataFim :TDateTime);
begin
  FDataAtual  := DataHoraSys;
  FDataInicio := DataInicio;
  FDataFim    := DataFim;

  if (FDataAtual > FDataInicio) and (FDataAtual < FDataFim) then
  begin
    FDiasRestantes  := DaysBetween(FDataAtual, FDataFim);
    FDiasAcumulados := DaysBetween(FDataInicio, FDataAtual);
    FDiasAcumulados := FDiasAcumulados + 1;
  end else                     ////////////VARIAVEL FDiasRestantes, FDiasAcumulados  GLOBAL SÒ MEXE AQUI
  begin
    FDiasRestantes  := 0;
    FDiasAcumulados := DaysBetween(FDataInicio, FDataFim);
    FDiasAcumulados := FDiasAcumulados + 1;
  end;
  tcTopoMes.Items[0].Text1.Value := MESES_NOMES[monthOf(FDataInicio)] + ' ' + FormatDateTime('YYYY',FDataInicio);
  FCodMeta := Mes.FieldByName('CODMETA').AsInteger;
  AtualizaTela;

end;

procedure TPainel_Mestre.AtualizaTela;
begin
  FCodEmpresa := Empresa.FieldByName('CODIGO').AsInteger;
  Cadastro_Analitico.Close;
  Cadastro_Analitico.ParamByName('CodEmpresa').AsInteger := FCodEmpresa;
  Cadastro_Analitico.ParamByName('Dt_Inicio').AsDateTime := FDataInicio;
  Cadastro_Analitico.ParamByName('Dt_Fim').AsDateTime    := FDataFim;
//  Cadastro_Analitico.ParamByName('CodTabela').Value    := Cadastro.FieldByName('CODIGO').Value;
//  Cadastro_Analitico.ParamByName('CodMeta').AsInteger    := FCodMeta;
  Cadastro_Analitico.Open;
end;

procedure TPainel_Mestre.OnItemClickSair(Sender: TdxTileControlItem);
begin
  Ocultar(pnlMes);
end;

procedure TPainel_Mestre.pnDetailSiteResize(Sender: TObject);
begin
  inherited;
  tcTopoMes.OptionsView.ItemWidth := trunc(tcTopoMes.Width/2) - 15;
end;

procedure TPainel_Mestre.pnlIniciarExit(Sender: TObject);
begin
  inherited;
  Ocultar(pnlIniciar);
end;

procedure TPainel_Mestre.WREventosCadastroImpressaoBeforePrint(
  Sender: TObject; var APermiteImprimir: Boolean);
begin
  inherited;
  APermiteImprimir := True;
end;

procedure TPainel_Mestre.dxTileBarItem5Click(
  Sender: TdxTileControlItem);
begin
  inherited;
  if Totalizador.FieldByName('QUANT').AsFloat > 0 then
  begin
    ConsultaTag_NormalModalFiltro(Self, Tag_Venda,' (p.ATIVO = ''S'') and (p.IS_VENDA = ''S'') and (p.CodEmpresa = ' + IntToStr(Empresa.FieldByName('CODIGO').AsInteger) + ')' +
   ' and  (p.dt_competencia between '+ QuotedStr(FormatDateTime('MM/DD/YYYY', FDataInicio)) + ' and ' + QuotedStr(FormatDateTime('MM/DD/YYYY',FDataFim)) + ')' +
   ' and (p.NF_FINALIDADE = 1) and not(p.dt_faturamento is null)');
//    ConsultaMidChildFiltro(TConsuVenda, ' (p.ATIVO = ''S'') and (p.IS_VENDA = ''S'') and (p.CodEmpresa = ' + IntToStr(Empresa.FieldByName('CODIGO').AsInteger) + ')' +
//   ' and  (p.dt_competencia between '+ QuotedStr(FormatDateTime('MM/DD/YYYY', FDataInicio)) + ' and ' + QuotedStr(FormatDateTime('MM/DD/YYYY',FDataFim)) + ')' +
//   ' and (p.NF_FINALIDADE = 1) and not(p.dt_faturamento is null)');
  end
end;

procedure TPainel_Mestre.dxTileBarItem6Click(
  Sender: TdxTileControlItem);
begin
  inherited;
  if FCodMeta = 0 then
    CadastroMidChildBotaoNovo(TFrmMeta)
  else
    CadastroMidChildChave(TFrmMeta, FCodMeta);
end;

procedure TPainel_Mestre.dxTileControl1Item1Click(
  Sender: TdxTileControlItem);
begin
  inherited;
  AtualizaTela;
  pnlMes.Left := Trunc((Width - pnlMes.Width)/2);
  pnlMes.Top := pnDetailSite.Top;
  pnlMes.Height := Height - pnDetailSite.Top;
  if pnlMes.Visible = True then
    ocultar(pnlMes)
  else  begin
    Mostrar(pnlMes);
    pnlMes.Visible := True;
    pnlMes.SetFocus;
  end;
end;

procedure TPainel_Mestre.tiMetaClick(
  Sender: TdxTileControlItem);
begin
  inherited;
  ocultar(pnlIniciar);
  CadastroMidChildBotaoNovo(TFrmMeta);
end;

procedure TPainel_Mestre.tiImprimirClick(
  Sender: TdxTileControlItem);
begin
  inherited;
  if Totalizador.FieldByName('QUANT').AsFloat > 0 then
    MenuImprimir.PopupOnMouse
  else
    ShowMessage('Não há Dados para imprimir');
end;

//var
//  AData :TDateTime;
//  if Mes.RecordCount > 0 then
//  begin
//    Mes.RecNo   := Mes.RecNo -1;
//    AData := MesSelecao(StrToInt(Mes.FieldByName('MES').AsString));
//    DefineDias(StartOfTheMonth(AData), EndOfTheMonth(AData));
//  end;

procedure TPainel_Mestre.dxTileControl3Item4Click(
  Sender: TdxTileControlItem);
begin
  inherited;
  pnlIniciar.Left := Width - pnlIniciar.Width;
  pnlIniciar.Top := pnDetailSite.Top;
  pnlIniciar.Height := Height - pnDetailSite.Top;
  if pnlIniciar.Visible = True then
    ocultar(pnlIniciar)
  else  begin
    Mostrar(pnlIniciar);
    pnlIniciar.SetFocus;
  end;
end;

////////////////FIM - DEFINE DIAS\\\\\\\\\\\\\\\\\

/////////////CODIGO ANTIGO\\\\\\\\\\\\\\\\\\

{$REGION 'Codigo Antigo'}
procedure TPainel_Mestre.SelectItem(APhotoID, AAgentID: Integer);
var
  I: Integer;
begin
  for I := 0 to tcAgents.Items.Count - 1 do
    if tcAgents.Items[I].Tag = AAgentID then
    begin
      tcAgents.Items[I].MakeVisible;
      tcAgents.Items[I].Click;
      Break;
    end;
end;

procedure TPainel_Mestre.tiIniciarActivateDetail(
  Sender: TdxTileControlItem);
begin
  inherited;
 //
end;

procedure TPainel_Mestre.tiIniciarDeactivateDetail(
  Sender: TdxTileControlItem);
begin
  inherited;
//
end;

procedure TPainel_Mestre.InitializeChartDataSet;
var
  AYear, I: Integer;
begin
  Exit;
  cdsChart.DisableControls;
  try
    for I := 1 to 6 do
      for AYear := 2003 to 2012 do
      begin
       cdsChart.Append;
       cdsChartDate.Value := AYear;
       cdsChartMidWest.Value := Random(20) + 4;
       cdsChartNorthEast.Value := Random(20) + 5;
       cdsChartSouth.Value := Random(20) + 2;
       cdsChartWest.Value := Random(20) + 3;
       cdsChartAgentID.Value := I;
       cdsChart.Post;
      end;
  finally
    cdsChart.EnableControls;
  end;
end;

procedure TPainel_Mestre.AA(Sender: TObject; var NewWidth, NewHeight: Integer;
  var Resize: Boolean);
begin
  // TdxSmartGlyph
end;

procedure TPainel_Mestre.cxSplitter2BeforeClose(Sender: TObject;
  var AllowClose: Boolean);
begin
  AllowClose := False;
end;
{$ENDREGION}

end.
