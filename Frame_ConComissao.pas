unit Frame_ConComissao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ConMestre, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, Menus, cxContainer, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxPScxPageControlProducer,
  IBX.IBCustomDataSet, IBX.IBQuery, IBX.IBDatabase, dxPSCore, dxPScxCommon,
  ExtCtrls, ComCtrls, cxLabel, StdCtrls, cxButtons, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, Gradient, dxSkinsCore, dxSkinscxPCPainter, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxSkinsdxBarPainter, cxNavigator, dxSkinsdxRibbonPainter, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Datasnap.DBClient, FireDAC.Comp.Client, FireDAC.Comp.DataSet, cxDBLookupComboBox, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxCurrencyEdit, cxDBEdit, dxGDIPlusClasses, cxImage, cxTextEdit,
  dxCore, cxDateUtils, dxLayoutContainer, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, dxServerModeData, dxServerModeFireDACDataSource,
  dxLayoutLookAndFeels, cxDateProfileButton, cxCalendar, cxGroupBox,
  cxCheckGroup, cxGridServerModeTableView, dxLayoutControl, dxStatusBar,
  dxScreenTip, System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList,
  dxCustomHint, cxHint, cxButtonEdit, cxGridCustomLayoutView, cxGridLayoutView,
  cxGridDBLayoutView, cxDataControllerConditionalFormattingRulesManagerDialog, WREventos, cxImageList,
  dxDateRanges, ConsM, dxRibbonCustomizationForm, dxRibbonSkins,
  dxOfficeSearchBox, dxBar, cxBarEditItem, System.Generics.Collections,
  frxClass, frxDBSet, dxRibbon, dxRibbonStatusBar, uButtonFlat,
  cxGridViewLayoutContainer, cxSchedulerStorage, cxSchedulerCustomControls,
  cxSchedulerDateNavigator, cxDateNavigator, cxCustomStatusKeeper,
  cxStatusKeeper, UCHistDataset, Frame_Con, dxCustomTileControl, dxTileControl, uWRFormataCamposDataSet,
  dxScrollbarAnnotations, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TFrame_ConsuComissao = class(TConsu_Frame)
    ConsultaCODIGO: TIntegerField;
    ConsultaDT_FINANCEIRO: TSQLTimeStampField;
    ConsultaTIPO: TStringField;
    ConsultaDT_ALTERACAO: TSQLTimeStampField;
    GridConsultaDBTableView1CODIGO: TcxGridDBColumn;
    GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn;
    GridConsultaDBTableView1DATA: TcxGridDBColumn;
    GridConsultaDBTableView1DT_FINANCEIRO: TcxGridDBColumn;
    GridConsultaDBTableView1DT_COMISSAO_GERADA: TcxGridDBColumn;
    GridConsultaDBTableView1TIPO: TcxGridDBColumn;
    GridConsultaDBTableView1TIPO_FINANCEIRO: TcxGridDBColumn;
    GridConsultaDBTableView1TIPO_DATA: TcxGridDBColumn;
    GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn;
    ConsultaPESSOA_RESPONSAVEL_CODIGO: TStringField;
    ConsultaPESSOA_RESPONSAVEL_TIPO: TStringField;
    ConsultaPESSOA_RESPONSAVEL_SEQUENCIA: TIntegerField;
    ConsultaVALOR_COMISSAO: TFloatField;
    ConsultaRAZAOSOCIAL: TStringField;
    ConsultaCARGO: TStringField;
    GridConsultaDBTableView1CODCOMISSAO: TcxGridDBColumn;
    GridConsultaDBTableView1PESSOA_RESPONSAVEL_CODIGO: TcxGridDBColumn;
    GridConsultaDBTableView1PESSOA_RESPONSAVEL_TIPO: TcxGridDBColumn;
    GridConsultaDBTableView1PESSOA_RESPONSAVEL_SEQUENCIA: TcxGridDBColumn;
    GridConsultaDBTableView1VALOR_COMISSAO: TcxGridDBColumn;
    GridConsultaDBTableView1SOMA_FINANCEIRO_VENCIDA: TcxGridDBColumn;
    GridConsultaDBTableView1SOMA_FINANCEIRO_EMABERTO: TcxGridDBColumn;
    GridConsultaDBTableView1GERA_COMISSAO: TcxGridDBColumn;
    GridConsultaDBTableView1SOMA_FINANCEIRO_QUITADA: TcxGridDBColumn;
    GridConsultaDBTableView1ACAO: TcxGridDBColumn;
    GridConsultaDBTableView1RAZAOSOCIAL: TcxGridDBColumn;
    GridConsultaDBTableView1CARGO: TcxGridDBColumn;
    ConsultaDESCRICAO: TStringField;
    CreateDaTela: TWRFormataCamposDataSets;
    GridConsultaDBTableView1ATIVO: TcxGridDBColumn;
    ConsultaSOMA_FINANCEIRO_VENCIDA: TFloatField;
    ConsultaSOMA_FINANCEIRO_EMABERTO: TFloatField;
    ConsultaSOMA_FINANCEIRO_QUITADA: TFloatField;
    ConsultaATIVO: TStringField;
    dxLayoutItem1: TdxLayoutItem;
    edtCredito: TcxCurrencyEdit;
    procedure WREventosConsultaGetFiltrosConsulta(Sender: TObject);
    procedure WREventosConsultaSQLTrataNomes(Sender: TObject; var ASQL: string);
    procedure CreateDaTelaCarregaDataSets(Sender: TObject);
    procedure GridConsultaDBTableView1DataControllerSummaryAfterSummary(ASender: TcxDataSummary);
    procedure tiAgrupar_DesagruparClick(Sender: TdxTileControlItem);
    procedure tcTopoBtnItem1Click(Sender: TdxTileControlItem);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frame_ConsuComissao: TFrame_ConsuComissao;

implementation

{$R *.dfm}

Uses Base, StrUtils, UnitFuncoes, wrConstantes, wrFuncoes, Tag.Form;

procedure TFrame_ConsuComissao.CreateDaTelaCarregaDataSets(Sender: TObject);
begin
  inherited;
  CreateDaTela.AdicionarDataSet(Consulta, 'COMISSAO');
end;

procedure TFrame_ConsuComissao.GridConsultaDBTableView1DataControllerSummaryAfterSummary(ASender: TcxDataSummary);
begin
  inherited;
  edtCredito.Value := SomaColuna(GridConsultaDBTableView1, GridConsultaDBTableView1VALOR_COMISSAO);
end;

procedure TFrame_ConsuComissao.tcTopoBtnItem1Click(Sender: TdxTileControlItem);
begin
  inherited;
//  GridConsultaDBTableView1DblPocketClick(Sender);
//  if Not Assigned(FCadastro) then
//    FCadastro := TForm(ABaseClass_Pocket[TFrmBase(Owner).tcBase.Tag].Create(TForm(Self.Owner)));
//  TFrmBase(FCadastro).ShowCadastroPocketItemNovo(TFrmBase(Owner).tcBase.Tag, null);
end;

procedure TFrame_ConsuComissao.tiAgrupar_DesagruparClick(Sender: TdxTileControlItem);
begin
  inherited;
  GridConsultaDBTableView1.DataController.Groups.ClearGrouping;
end;

procedure TFrame_ConsuComissao.WREventosConsultaGetFiltrosConsulta(Sender: TObject);
Var
  ACampo_Codigo: String;
  ACampo_Sql: String;
begin
  inherited;
  SQLWhere.AddAnd('C.TIPO = ''Financeiro''');
  LiGridSubGrid.Visible:= (GridConsultaDBTableView1.GroupedColumnCount > 0);
  if GridConsultaDBTableView1.GroupedColumnCount > 0 then
  begin
    with TcxGridDBColumn(GridConsultaDBTableView1.GroupedColumns[0]).DataBinding do
    try
      ACampo_Codigo    := FieldName;
      if ACampo_Codigo = 'CONTA' then             // F.CODUSUARIO_CONTA, PC.DESCRICAO as PLANOCONTAS,
      begin
        ACampo_Sql       := 'C.'+ACampo_Codigo;
      end
      else if ACampo_Codigo = 'RAZAOSOCIAL' then
      begin
        ACampo_Sql       := 'P.RAZAOSOCIAL'; //
        ACampo_Codigo    := 'RAZAOSOCIAL';
      end
      else if ACampo_Codigo = 'USUARIO_CONTA' then
      begin
        ACampo_Sql       := 'UC.USUARIO'; //  RAZAOSOCIAL
        ACampo_Codigo    := 'USUARIO';
      end
      else if ACampo_Codigo = 'PLANOCONTAS' then   // C.DESCRICAO as CONTA, U.USUARIO, UC.USUARIO as USUARIO_CONTA
      begin
        ACampo_Sql       := 'PC.DESCRICAO';
        ACampo_Codigo    := 'CODPLANOCONTAS';
      end
      else begin
        if Consulta.FieldByName(ACampo_Codigo).AutoGenerateValue <> TAutoRefreshFlag(arNone) then
          ACampo_Codigo    := 'COD'+ACampo_Codigo;

        ACampo_Sql       := 'c.'+ACampo_Codigo;
      end;
      AgrupaSubGrid(ACampo_Codigo, FieldName, ACampo_Sql);
    finally
    end;
    LiGridSubGrid.Visible:= True;
  end;

  SplitSubGrid.Visible:= LiGridSubGrid.Visible;
end;

procedure TFrame_ConsuComissao.WREventosConsultaSQLTrataNomes(Sender: TObject; var ASQL: string);
begin
  inherited;

  ASQL := ReplaceText(ASQL, 'RAZAOSOCIAL', 'P.RAZAOSOCIAL');
  ASQL := ReplaceText(ASQL, 'DT_ALTERACAO', 'C.DT_ALTERACAO');

  ASQL := ReplaceText(ASQL, 'VENCTO', 'C.VENCTO');

  ASQL := ReplaceText(ASQL, 'ATIVO', 'C.ATIVO');
end;

initialization
  RegisterFrameCon(Tag_Comissao, TFrame_ConsuComissao);

end.
