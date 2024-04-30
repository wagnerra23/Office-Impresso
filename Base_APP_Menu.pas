unit Base_APP_Menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxCustomTileControl, cxClasses, dxTileControl,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.ImageList, Vcl.ImgList, cxImageList, cxStyles, cxCustomData, cxDBData, cxGridLevel, cxGridChartView, cxGridDBChartView,
  cxGridCustomView, cxGrid, Vcl.ExtCtrls, Generics.Collections, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, cxButtons, Classes.APP, wr_memoria, Frame_BI_Acoes, dxGDIPlusClasses, cxContainer, cxEdit, cxImage,
  Tag.Form, Tag.KPI;

const
  Tag_Funcao_Configuarao = 1;
  Tag_Funcao_Produtos_Todos = 2;
  Tag_Funcao_Produtos_Servicos = 3;
  Tag_Funcao_Produtos_Produtos = 4;
  Tag_Funcao_Produtos_Familia  = 5;
  Tag_Funcao_Produtos_Grade    = 6;

  Tag_Funcao_Produtos_Patrimonio     = 7;
  Tag_Funcao_Produtos_Estoque_Minimo = 8;
  Tag_Funcao_Produtos_Estoque_Maximo = 9;
  Tag_Funcao_Produtos_Sub_unidade    = 10;
  Tag_Funcao_Produtos_NCM_Invalidaos = 11;

type
  TMenu_Mestre = class(TFrmBase)
    KPI_Menu: TFDQuery;
    KPI: TFDQuery;
    imgMenu: TcxImageList;
    pnlSaldoContas: TPanel;
    dxTileControl3: TdxTileControl;
    dxTileControlGroup2: TdxTileControlGroup;
    dxTileControlItem6: TdxTileControlItem;
    dxTileControlItem7: TdxTileControlItem;
    dxTileControlItem8: TdxTileControlItem;
    dxTileControlItem9: TdxTileControlItem;
    dxTileControlItem10: TdxTileControlItem;
    dxTileControlItem12: TdxTileControlItem;
    dxTileControlItem13: TdxTileControlItem;
    dxTileControlItem16: TdxTileControlItem;
    dxTileControlItem18: TdxTileControlItem;
    dxTileControlItem20: TdxTileControlItem;
    dxTileControlItem21: TdxTileControlItem;
    dxTileControlItem23: TdxTileControlItem;
    dxTileControlItem24: TdxTileControlItem;
    dxTileControlItem25: TdxTileControlItem;
    dxTileControlItem26: TdxTileControlItem;
    pnlHint: TPanel;
    tcMenu: TdxTileControl;
    dxTileControlGroup1: TdxTileControlGroup;
    tcmTituloRecebido: TdxTileControlItem;
    tcmSaldoBalanco: TdxTileControlItem;
    tcmRecebido5: TdxTileControlItem;
    tcmAreceberEVencidas: TdxTileControlItem;
    tcmTituloPago: TdxTileControlItem;
    tcmTitulo: TdxTileControlItem;
    tcmRecebido4: TdxTileControlItem;
    tcmRecebido6: TdxTileControlItem;
    tcmRecebido3: TdxTileControlItem;
    tcmSeparador: TdxTileControlItem;
    tcmIntegracoes: TdxTileControlItem;
    tcmEmpresa: TdxTileControlItem;
    tcmUsuarios: TdxTileControlItem;
    tcmBaseDeConhecimento: TdxTileControlItem;
    tcmRecebido1: TdxTileControlItem;
    tcmPago1: TdxTileControlItem;
    tcmSubTitulo: TdxTileControlItem;
    tcmRelatorio: TdxTileControlItem;
    tcmRecebido2: TdxTileControlItem;
    t: TdxTileControlItem;
    tcmProdutoComposto: TdxTileControlItem;
    tcmProdutoPresonalizados: TdxTileControlItem;
    tcmProdutoPrecificacao: TdxTileControlItem;
    tcMenuItem1: TdxTileControlItem;
    GridGrafico: TcxGrid;
    GridGraficoViewColunas: TcxGridDBChartView;
    GridGraficoViewColunasDataGroup1: TcxGridDBChartDataGroup;
    GridGraficoViewColunasSeries1: TcxGridDBChartSeries;
    GridGraficoLevel1: TcxGridLevel;
    Panel2: TPanel;
    dxTileControl4: TdxTileControl;
    dxTileControlGroup3: TdxTileControlGroup;
    dxTileControlItem3: TdxTileControlItem;
    dxTileControlItem5: TdxTileControlItem;
    dxTileControlItem11: TdxTileControlItem;
    dxTileControlItem15: TdxTileControlItem;
    dxTileControlItem17: TdxTileControlItem;
    dxTileControlItem19: TdxTileControlItem;
    dxTileControlItem22: TdxTileControlItem;
    dxTileControlItem27: TdxTileControlItem;
    dxTileControlItem28: TdxTileControlItem;
    dxTileControlItem29: TdxTileControlItem;
    dxTileControlItem30: TdxTileControlItem;
    dxTileControlItem31: TdxTileControlItem;
    dxTileControlItem32: TdxTileControlItem;
    dxTileControlItem33: TdxTileControlItem;
    dxTileControlItem34: TdxTileControlItem;
    dxTileControlItem35: TdxTileControlItem;
    dxTileControlItem36: TdxTileControlItem;
    dxTileControlItem37: TdxTileControlItem;
    dxTileControlItem38: TdxTileControlItem;
    dxTileControlItem39: TdxTileControlItem;
    dxTileControlItem40: TdxTileControlItem;
    dxTileControlItem41: TdxTileControlItem;
    dxTileControl4Item1: TdxTileControlItem;
    dxTileControl4Item2: TdxTileControlItem;
    dxTileControl4Item3: TdxTileControlItem;
    dxTileControl4Item4: TdxTileControlItem;
    dxTileControl4Item5: TdxTileControlItem;
    dxTileControl4Item6: TdxTileControlItem;
    dxTileControl4Item7: TdxTileControlItem;
    dxTileControl4Item8: TdxTileControlItem;
    dxTileControl4Item9: TdxTileControlItem;
    dxTileControl4Item10: TdxTileControlItem;
    dxTileControl4Item11: TdxTileControlItem;
    dxTileControl4Item12: TdxTileControlItem;
    dxTileControl4Item13: TdxTileControlItem;
    dxTileControl4Item14: TdxTileControlItem;
    dxTileControl4Item15: TdxTileControlItem;
    dxTileControl4Item16: TdxTileControlItem;
    Timer1: TTimer;
    procedure tcBaseMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure FormDeactivate(Sender: TObject);
    procedure tcBaseMouseLeave(Sender: TObject);
  private
    { Private declarations }
    FbtnImage:Boolean;
    FbtnText1:Boolean;
    FbtnText2:Boolean;
    FbtnText3:Boolean;
    FbtnText4:Boolean;
  public
    { Public declarations }
    FCamada: Integer;
    FNivel: integer;
    FUltimoIndexInGroup: integer;
    FChavePK1: Integer;
    FChavePK2: String;
    FChavePK3: String;
    FArrayTags: array of string;
    procedure OnItemClick(Sender: TdxTileControlItem);  virtual;

    procedure CriaMenu_APP(ATag_APP : Integer; AHeight: Integer = 115);
    procedure CriaSubMenu_APP(MemTable : TDataSet);
  end;

procedure FuncaoVigilante;
procedure FecharTodos;
procedure MouseMoveMenuKPI(Sender: TObject; Shift: TShiftState; X, Y: Integer);
procedure MouseMoveMenuKPIButton(Sender: TObject; Shift: TShiftState; X, Y: Integer);

var
  Menu_Mestre: TMenu_Mestre;
  FNivelAtivo: Integer;
  UltimaTag: Integer;
  ATagAPP, ATagKPI, ARight: Integer;
  FLista_Menu: array [Tag_Form_First..Tag_Form_Last] of array [Tag_KPI_First..Tag_KPI_Last] of array [0..100] of TMenu_Mestre;// Essas tags estão estranhas, tag do Form aqui?;

implementation

{$R *.dfm}

Uses wrMenu, unitFuncoes, Principal, Base_Produto, Tag.APP, Controller.API;

procedure TMenu_Mestre.CriaMenu_APP(ATag_APP : Integer; AHeight: Integer = 115);
var
 I, J :Integer;
 AKPIs: TList<TWR_KPI>;
 APoint: TPoint;
begin

  {$REGION 'Antigo'}
{
  AKPIs :=  GetKPIsPorAPP(AAPP[ATag_APP]);
  ATagAPP := 0;
//  FCamada := FCamadaAtiva + 1;
  if AKPIs.Count = 0 then exit;
  for I := 0 to AKPIs.Count - 1 do
  begin
    if Not AKPIs.Items[I].Ativo then
      Continue;

    if AKPIs.Items[I].Tipo = 'modulo' then  MenuCria_Modulo(tcBase, AKPIs.Items[I].Tag_KPI, I, I, AKPIs.Items[I].Titulo);
    if AKPIs.Items[I].Tipo = 'titulo' then  MenuCria_Titulo(tcBase, AKPIs.Items[I].Tag_KPI, I, I, AKPIs.Items[I].Titulo);
    if AKPIs.Items[I].Tipo = 'titulo-branco' then  MenuCria_Titulo_Branco(tcBase, AKPIs.Items[I].Titulo, AKPIs.Items[I].Text1);
    if AKPIs.Items[I].Tipo = 'subtitulo' then  MenuCria_Sub_Titulo(tcBase, AKPIs.Items[I].Tag_KPI, I, I, AKPIs.Items[I].Titulo, AKPIs.Items[I].Text1);
    if AKPIs.Items[I].Tipo = 'separador' then  MenuCria_Separador(tcBase, I, I);
    if AKPIs.Items[I].Tipo = 'aviso-vermelho' then  MenuCria_AvisoVermelho(tcBase, AKPIs.Items[I].Titulo, AKPIs.Items[I].Text1);
    if AKPIs.Items[I].Tipo = 'kpi-vermelho' then  MenuCria_KPI_Vermelho(tcBase, AKPIs.Items[I].Titulo, AKPIs.Items[I].Text1);
    if AKPIs.Items[I].Tipo = 'config-verde' then  MenuCria_Configuracao_Verde(tcBase, AKPIs.Items[I].Tag_KPI, I, I, AKPIs.Items[I].Titulo);
    if AKPIs.Items[I].Tipo = 'config-cinza' then  MenuCria_Configuracao_Cinza(tcBase, AKPIs.Items[I].Tag_KPI, I, I, AKPIs.Items[I].Titulo);
    if AKPIs.Items[I].Tipo = 'lido-verde' then  MenuCria_Lido_Verde(tcBase, AKPIs.Items[I].Titulo, AKPIs.Items[I].Text1);
    if AKPIs.Items[I].Tipo = 'nao-lido-vermelho' then  MenuCria_Nao_Lido_Vermelho(tcBase, AKPIs.Items[I].Titulo, AKPIs.Items[I].Text1);

    if not Assigned(AAPP_KPI_Menu) then
      Continue;

    for J := 0 to AAPP_KPI_Menu.Count -1 do
    begin
      if Assigned(AAPP_KPI_Menu.Items[J]) and (AAPP_KPI_Menu.Items[J].Tag_KPI = AKPIs.Items[I].Tag_KPI) then
        MenuCria_Sub_Titulo(tcBase, AKPIs.Items[I].Tag_KPI, I, I, AAPP_KPI_Menu.Items[J].Descricao, AAPP_KPI_Menu.Items[J].Text1);
    end;

  end;  }
{$ENDREGION}

//  wr_memoria_KPI.Filter := 'TAG_APP = ' + VarToStr(ATag_APP);
//  wr_memoria_KPI.Filtered := True;
  if wr_memoria_KPI.RecordCount = 0 then exit;

  wr_memoria_KPI.First;
  while not wr_memoria_KPI.eof do
  begin
    if not (wr_memoria_KPI.FieldByName('ATIVO').AsString = 'S') then
      Continue;

    if wr_memoria_KPI.FieldByName('TIPO_KPI').AsString = 'modulo' then
      MenuCria_Modulo(tcBase, wr_memoria_KPI.FieldByName('TAG_KPI').AsInteger, I, I, wr_memoria_KPI.FieldByName('DESCRICAO').AsString);
    if wr_memoria_KPI.FieldByName('TIPO_KPI').AsString = 'titulo' then
      MenuCria_Titulo(tcBase, wr_memoria_KPI.FieldByName('TAG_KPI').AsInteger, I, I, wr_memoria_KPI.FieldByName('DESCRICAO').AsString);
    if wr_memoria_KPI.FieldByName('TIPO_KPI').AsString = 'titulo-branco' then
      MenuCria_Titulo_Branco(tcBase, wr_memoria_KPI.FieldByName('DESCRICAO').AsString, wr_memoria_KPI.FieldByName('TEXT1').AsString);
    if wr_memoria_KPI.FieldByName('TIPO_KPI').AsString = 'subtitulo' then
      MenuCria_Sub_Titulo(tcBase, wr_memoria_KPI.FieldByName('TAG_KPI').AsInteger, I, I, wr_memoria_KPI.FieldByName('DESCRICAO').AsString, wr_memoria_KPI.FieldByName('TEXT1').AsString);
    if wr_memoria_KPI.FieldByName('TIPO_KPI').AsString = 'separador' then
      MenuCria_Separador(tcBase, I, I);
    if wr_memoria_KPI.FieldByName('TIPO_KPI').AsString = 'aviso-vermelho' then
      MenuCria_AvisoVermelho(tcBase, wr_memoria_KPI.FieldByName('DESCRICAO').AsString, wr_memoria_KPI.FieldByName('TEXT1').AsString);
    if wr_memoria_KPI.FieldByName('TIPO_KPI').AsString = 'kpi-vermelho' then
      MenuCria_KPI_Vermelho(tcBase, wr_memoria_KPI.FieldByName('DESCRICAO').AsString, wr_memoria_KPI.FieldByName('TEXT1').AsString);
    if wr_memoria_KPI.FieldByName('TIPO_KPI').AsString = 'config-verde' then
      MenuCria_Configuracao_Verde(tcBase, wr_memoria_KPI.FieldByName('TAG_KPI').AsInteger, I, I, wr_memoria_KPI.FieldByName('DESCRICAO').AsString);
    if wr_memoria_KPI.FieldByName('TIPO_KPI').AsString = 'config-cinza' then
      MenuCria_Configuracao_Cinza(tcBase, wr_memoria_KPI.FieldByName('TAG_KPI').AsInteger, I, I, wr_memoria_KPI.FieldByName('DESCRICAO').AsString);
    if wr_memoria_KPI.FieldByName('TIPO_KPI').AsString = 'lido-verde' then
      MenuCria_Lido_Verde(tcBase, wr_memoria_KPI.FieldByName('DESCRICAO').AsString, wr_memoria_KPI.FieldByName('TEXT1').AsString);
    if wr_memoria_KPI.FieldByName('TIPO_KPI').AsString = 'nao-lido-vermelho' then
      MenuCria_Nao_Lido_Vermelho(tcBase, AKPIs.Items[I].Titulo, wr_memoria_KPI.FieldByName('TEXT1').AsString);

//    if not Assigned(AAPP_KPI_Menu) then
//      Continue;
//
//    for J := 0 to AAPP_KPI_Menu.Count -1 do
//    begin
//      if Assigned(AAPP_KPI_Menu.Items[J]) and (AAPP_KPI_Menu.Items[J].Tag_KPI = AKPIs.Items[I].Tag_KPI) then
//        MenuCria_Sub_Titulo(tcBase, AKPIs.Items[I].Tag_KPI, I, I, AAPP_KPI_Menu.Items[J].Descricao, AAPP_KPI_Menu.Items[J].Text1);
//    end;

    wr_memoria_KPI.Next;
  end;
  for I := 0 to tcBase.Items.Count -1 do
    tcBase.Items[I].OnClick := OnItemClick;

  // Se quiser trocar a largura dos tiles precisa ser trocar o ItemWidth //
  tcBase.OptionsView.ItemWidth  := AHeight ;

  Height := tcBase.OptionsView.ItemHeight * tcBase.Items.Count - 11 ;   // O invisivel padrão
  Width  := tcBase.OptionsView.ItemWidth * 2 + 6 ;
end;

procedure TMenu_Mestre.CriaSubMenu_APP(MemTable : TDataSet);
var
  ASubMenu: TWR_KPI_Menu;
  I: integer;
begin
  SetLength(FArrayTags, MemTable.RecordCount);
  I := 1;
  MemTable.First;
  while not MemTable.Eof do
  begin
    MenuCria_Sub_Titulo(tcBase, MemTable.FieldByName('CODIGO').AsInteger, I, I, MemTable.FieldByName('Descricao').AsString, MemTable.FieldByName('Text1').AsString);
    Height := tcBase.OptionsView.ItemHeight * tcBase.Items.Count - 11 ;   // O invisivel padrão
    Width  := tcBase.OptionsView.ItemWidth * 2 + 6 ;

    FArrayTags[I] := MemTable.FieldByName('CHAVE_PK2').AsString; // Precisa mudar para um objeto que contém as 3 CHAVES.

    MemTable.Next;
    I := I+1;
  end;
  for I := 0 to tcBase.Items.Count -2 do
  begin
    tcBase.Items[I].OnClick := OnItemClick;
  end;
  FNivel := MemTable.FieldByName('Nivel').AsInteger;
  FChavePK1 := MemTable.FieldByName('CHAVE_PK1').AsInteger;
  FChavePK2 := MemTable.FieldByName('CHAVE_PK2').AsString;
  FChavePK3 := MemTable.FieldByName('CHAVE_PK3').AsString;
end;

//---------------------- EVENTOS CLICK --------------------------------//
procedure TMenu_Mestre.OnItemClick(Sender: TdxTileControlItem);
Var
  Evento_Clicado: Integer;
  Evento_Clicado_String: String;
begin
  Evento_Clicado := TComponent(Sender).Tag;
  if Assigned(AWR_KPI[Evento_Clicado]) then
  begin
    if FbtnImage then
    begin
      Debug('Image');
      Evento_Clicado_String := AWR_KPI[Evento_Clicado].Event_Click_Image;
    end;
    if FbtnText1 then
      Evento_Clicado_String := AWR_KPI[Evento_Clicado].Event_Click_Text1;
    if FbtnText2 then
      Evento_Clicado_String := AWR_KPI[Evento_Clicado].Event_Click_Text2;
    if FbtnText3 then
      Evento_Clicado_String := AWR_KPI[Evento_Clicado].Event_Click_Text3;
    if FbtnText4 then
      Evento_Clicado_String := AWR_KPI[Evento_Clicado].Event_Click_Text4;
  end;
  Visible := False;
  ControllerAPI(TComponent(Sender).Tag, Evento_Clicado_String, FbtnImage, FbtnText1, FbtnText2, FbtnText3, FbtnText4);
end;

//---------------------- EVENTOS DE MOUSE MOVE --------------------------------//
procedure TMenu_Mestre.tcBaseMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
var
  HT: TdxTileControlHitTest;
  AKPI, AFilho1, AFilho: TWR_KPI_Menu;
  ASubMenuArray: TList<TWR_KPI_Menu>;
  AResumoMes, AResumoDia: TWR_KPI_Menu_Resumo;
  AIndex, AHT_Tag, I, J, Xi, Yi: integer;
begin
  inherited;
  Timer1.Enabled := False;
  FbtnImage:=False;
  FbtnText1:=False;
  FbtnText2:=False;
  FbtnText3:=False;
  FbtnText4:=False;

  HT := TdxTileControl(Sender).ActiveHitTest; // GetHitTest(X, Y);

  if HT.Item = nil then
    Abort;

  if not (HT is TdxTileControlHitTest) then
    Abort;
  if (Sender is TdxCustomTileControl)and(HT.Item <> nil) then
  begin
    AHT_Tag := HT.Item.Tag;

    if Mouse_na_Imagem(HT.Item,X,Y) then
      FbtnImage:=True;
    if Mouse_No_Text1(HT.Item,X,Y) then
      FbtnText1:=True;
    if Mouse_No_Text2(HT.Item,X,Y) then
      FbtnText2:=True;
    if Mouse_No_Text3(HT.Item,X,Y) then
      FbtnText3:=True;
    if Mouse_No_Text4(HT.Item,X,Y) then
      FbtnText4:=True;

    // Se for diferente do último IndexInGroup, deve esconder a configuração e aparecer em outro
    if HT.Item.Index <> FUltimoIndexInGroup then
    begin
      HT.Item.TileControl.Items[FUltimoIndexInGroup].Glyph.Align := oaMiddleRight;
      HT.Item.TileControl.Items[FUltimoIndexInGroup].Glyph.ImageIndex := -1;
      HT.Item.TileControl.Items[FUltimoIndexInGroup].Glyph.IndentHorz := 8;
      HT.Item.TileControl.Items[FUltimoIndexInGroup].Glyph.IndentVert := 0;
      HT.Item.TileControl.Items[FUltimoIndexInGroup].Glyph.Images := imgMenu;

      HT.Item.TileControl.Items[HT.Item.Index].Glyph.Align := oaMiddleRight;
      HT.Item.TileControl.Items[HT.Item.Index].Glyph.ImageIndex := 1;
      HT.Item.TileControl.Items[HT.Item.Index].Glyph.IndentHorz := 8;
      HT.Item.TileControl.Items[HT.Item.Index].Glyph.IndentVert := 0;
      HT.Item.TileControl.Items[HT.Item.Index].Glyph.Images := imgMenu;

      FUltimoIndexInGroup := HT.Item.Index;
    end;

    if UltimaTag = AHT_Tag then
      Exit;

    if FNivel = 0 then        // Nível 0 é o base, Tipo/Categoria. Entra para o segundo nível do array (APP | KPI | Indicador).
    begin
      ATagKPI := AHT_Tag;
      AIndex := 0;
    end
    else                      // Se não for nível 0, quer dizer que é filho de um dos agrupadores. Entra no terceiro nível do array.
      AIndex := AHT_Tag;

    // Se o mouse está em cima de um tile que já criou seu filho e ele está visível, não deve criar de novo,
    // deve apenas informar em qual camada está com o mouse em cima.
    if (FLista_Menu[ATagAPP][ATagKPI][AIndex] <> nil) and FLista_Menu[ATagAPP][ATagKPI][AIndex].Visible then
    begin

      if UltimaTag <> AHT_Tag then  // Se for diferente quer dizer que trocou o mouse de um tcBase para o outro
        FNivelAtivo := FLista_Menu[ATagAPP][ATagKPI][AIndex].FNivel;

      Exit;
    end;

    Xi := TWinControl(HT.Item.Owner).ExplicitLeft + TWinControl(HT.Item.Owner).ExplicitWidth;      // Calcula onde o tile deve nascer
    Yi := TWinControl(HT.Item.Owner).ExplicitTop + (HT.Item.IndexInGroup - 1)*tcBase.OptionsView.ItemHeight;

    wr_memoria_KPI_Menu.Filter := 'TABELA = ''PRODUTO_CATEGORIA'' AND TAG_KPI = '+
                                   VarToStr(ATagKPI) + ' AND COMPETENCIA = ' + QuotedStr(FormatDateTime('MM/YYYY', DataHoraSys)) +
                                   ' AND NIVEL = ' + VarToStr(FNivel + 1);
    if FChavePK1 <> 0 then
      wr_memoria_KPI_Menu.Filter := wr_memoria_KPI_Menu.Filter + ' AND PARENT = ' + QuotedStr(VarToStr(FChavePK1))
    else
    if FChavePK2 <> '' then  // Precisa arrumar isso aqui, a chave está em FArrayTags.
      wr_memoria_KPI_Menu.Filter := wr_memoria_KPI_Menu.Filter + ' AND PARENT = ' + QuotedStr(FArrayTags[HT.Item.IndexInGroup])
    else
    if FChavePK3 <> '' then
      wr_memoria_KPI_Menu.Filter := wr_memoria_KPI_Menu.Filter + ' AND PARENT = ' + QuotedStr(FChavePK3);

    wr_memoria_KPI_Menu.Filtered := True;

    if wr_memoria_KPI_Menu.RecordCount > 0 then
    begin

      if FLista_Menu[ATagAPP][ATagKPI][AIndex] = nil then
      begin
        FLista_Menu[ATagAPP][ATagKPI][AIndex]:= TMenu_Mestre.Create(FrmPrincipal);
        FLista_Menu[ATagAPP][ATagKPI][AIndex].CriaSubMenu_APP(wr_memoria_KPI_Menu);   // Cria os tiles
      end;
      FLista_Menu[ATagAPP][ATagKPI][AIndex].Left := Xi;
      FLista_Menu[ATagAPP][ATagKPI][AIndex].Top := Yi;
      FLista_Menu[ATagAPP][ATagKPI][AIndex].ShowMenuTile(AIndex);
      UltimaTag := AHT_Tag;    // Precisa dizer qual foi a tag que acabou de abrir, pois o mouse nunca vai estar em cima do que acabou de ser criado.
    end;
  end;

  Application.ProcessMessages;
end;

procedure MouseMoveMenuKPIButton(Sender: TObject; Shift: TShiftState; X, Y: Integer);
var
  HT: TdxTileControlHitTest;
  ATag: integer;
begin
  if not AWR_APP[TagAPP_BI].Ativo then
    Exit;

//  if Fechando then
//    Exit;

  ATag := TcxButton(TcxButton(Sender)).Tag;
  if (ATag >= 0) and not (AWR_Form[ATag] = nil) then
  begin
    if (FLista_Menu[ATag][0][0] <> nil) and FLista_Menu[ATag][0][0].Visible then
      Exit;

    if AWR_Form[ATag].Tag_App = 0 then
      Exit;

    if FLista_Menu[AWR_Form[ATag].Tag_APP][0][0] = nil then
    begin
      FLista_Menu[ATag][0][0]:= TMenu_Mestre.Create(FrmPrincipal);
      FLista_Menu[ATag][0][0].CriaMenu_APP(AWR_Form[ATag].Tag_APP);
      FLista_Menu[ATag][0][0].ShowMenu(AWR_Form[ATag].Tag_APP);
    end else
      FLista_Menu[ATag][0][0].ShowMenu(AWR_Form[ATag].Tag_APP);

    ATagAPP := ATag;
    UltimaTag := ATagAPP;
//    FCamadaAtiva := UltimaTag;
    FMenuAberto := True;

  end ;
//  else
//    FuncaoVigilante;
end;

procedure MouseMoveMenuKPI(Sender: TObject; Shift: TShiftState; X, Y: Integer);
var
  HT: TdxTileControlHitTest;
  I, AHT_Tag: integer;
begin
//  if FMenuAberto then
//    Exit;
  if not AWR_APP[TagAPP_BI].Ativo then
    Exit;

//  if Fechando then
//    Exit;

  HT := TdxTileControl(Sender).ActiveHitTest; // GetHitTest(X, Y);
  if not (HT is TdxTileControlHitTest) then
  begin
    Abort;
  end;

  if (Sender is TdxCustomTileControl)and(HT.Item <> nil) then
  begin
    AHT_Tag := HT.Item.Tag;

    if (AHT_Tag >= 0) and not (AWR_Form[AHT_Tag] = nil) and (AWR_Form[AHT_Tag].Caption <> '') then
    begin
      if (FLista_Menu[AHT_Tag][0][0] <> nil) and FLista_Menu[AHT_Tag][0][0].Visible then
        Exit;

      if FLista_Menu[AWR_Form[AHT_Tag].Tag_APP][0][0] = nil then
      begin
        FLista_Menu[AHT_Tag][0][0]:= TMenu_Mestre.Create(FrmPrincipal);

        if AHT_Tag = TagAPP_DRE then
          FLista_Menu[AHT_Tag][0][0].CriaMenu_APP(AHT_Tag, 250)
        else
          FLista_Menu[AHT_Tag][0][0].CriaMenu_APP(AHT_Tag);

        FMenuAberto := True;
      end;
      if FLista_Menu[AHT_Tag][0][0].tcBase <> nil then
        if FLista_Menu[AHT_Tag][0][0].tcBase.Items.Count > 1  then
        begin
          FLista_Menu[AHT_Tag][0][0].ShowMenu(AHT_Tag);
        end;
//      end else
//        FLista_Menu[AHT_Tag][0][0].ShowMenu(AHT_Tag);

      ATagAPP := AHT_Tag;
      UltimaTag := ATagAPP;
//      FCamadaAtiva := UltimaTag;

    end;
  end;
end;

procedure FuncaoVigilante;
var
  I: integer;
begin
  while FMenuAberto do
  begin
    for I := 0 to 300 do
    begin
      if (FLista_Menu[ATagAPP][ATagKPI][I] <> nil) and
         (FLista_Menu[ATagAPP][ATagKPI][I].FNivel > FNivelAtivo)
      then
      begin
        FLista_Menu[ATagAPP][ATagKPI][I].Visible := False;
      end;
      Application.ProcessMessages;
    end;
  end;
end;

//--------------------------------------------------------------//

procedure TMenu_Mestre.FormDeactivate(Sender: TObject);
Var
  i : integer;
  AOk: Boolean;
begin
  inherited;
  if (FNivelAtivo = (FNivel - 1)) then
    Exit;

  AOk:= True;
  //  Verificar se tem algum menu de APP, aberto que seja superior, fazer for no array
  if Assigned(AWR_KPI_Menu) then
  begin
    for I := 0 to AWR_KPI_Menu.Count - 1 do  //kkk ainda nçao tem o array de Menu ativos e nem a dependencia
    begin
      if AWR_KPI_Menu[i].Tag_KPI = tcBase.Tag then
        AOk:= False;
    end;
  end;
//  if AOk and (FCamadaAtiva > FCamada) then
//  begin
//    FCamadaAtiva := FCamada;
//    Visible := False;
//  end;
end;

procedure TMenu_Mestre.tcBaseMouseLeave(Sender: TObject);
begin
  inherited;
  FuncaoVigilante;
end;

procedure FecharTodos;
var
  I, J, K: integer;
begin
  if not AWR_APP[TagAPP_BI].Ativo then
    Exit;

  FMenuAberto := False;
  if (FLista_Menu[ATagAPP][0][0] <> nil) then
    FLista_Menu[ATagAPP][0][0].Visible := False;

  for K := 0 to 10000 do
  begin
    if (FLista_Menu[ATagAPP][ATagKPI][K] <> nil) then
      FLista_Menu[ATagAPP][ATagKPI][K].Visible := False;

    Application.ProcessMessages;
  end;
end;


end.
