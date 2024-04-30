unit Frame_ConComissao_Selecao_Financeiro_Agencia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Frame_ConComissao_Selecao_Financeiro,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils, Vcl.Menus, cxStyles,
  cxSchedulerStorage, cxSchedulerCustomControls, cxSchedulerDateNavigator,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxLayoutContainer,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  Data.DB, cxDBData, cxCalendar, cxLabel, cxCheckBox, cxTextEdit,
  cxCurrencyEdit, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, dxScreenTip, uWRFormataCamposDataSet,
  FireDAC.Comp.Client, cxCustomStatusKeeper, cxStatusKeeper, UCHistDataset,
  System.Generics.Collections, WREventos, frxClass, frxDBSet, System.ImageList,
  Vcl.ImgList, cxImageList, System.Actions, Vcl.ActnList, dxCustomHint, cxHint,
  Vcl.ExtCtrls, dxLayoutLookAndFeels, FireDAC.Comp.DataSet, dxPSCore,
  dxPScxCommon, cxClasses, cxMemo, cxCustomListBox, cxCheckListBox,
  cxButtonEdit, uButtonFlat, cxGridViewLayoutContainer, cxGridLayoutView,
  cxGridDBLayoutView, cxGridLevel, cxGridCustomLayoutView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, cxDateNavigator, cxDropDownEdit, Vcl.StdCtrls, cxButtons,
  cxDateProfileButton, cxMaskEdit, dxLayoutControl, dxCustomTileControl,
  dxTileControl, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxScrollbarAnnotations, cxGroupBox, cxCheckGroup;

type
  TFrame_ConsuComissao_Selecao_Financeiro_Agencia = class(TFrame_ConsuComissao_Selecao_Financeiro)
    GridConsultaDBTableView1AGENCIA: TcxGridDBColumn;
    procedure WREventosConsultaGetFiltrosConsulta(Sender: TObject);
    procedure WREventosCadastroValidaEdicaoCampos(var AFieldName,
      AFieldNameTratado: string; AValue: Variant; ADataSet: TDataSet);
    procedure WREventosCadastroValidaEdicaoCamposBefore(var AFieldName,
      AFieldNameTratado: string; AValue: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frame_ConsuComissao_Selecao_Financeiro_Agencia: TFrame_ConsuComissao_Selecao_Financeiro_Agencia;

implementation

{$R *.dfm}

uses UnitFuncoes, Base, Classes.WR, wrFuncoes, Tag.Form;

procedure TFrame_ConsuComissao_Selecao_Financeiro_Agencia.WREventosCadastroValidaEdicaoCampos(
  var AFieldName, AFieldNameTratado: string; AValue: Variant;
  ADataSet: TDataSet);
var
  APessoa: TPessoaRetorno;
  ATipoPreferencial: String;
begin
  inherited;
  PessoaBusca(TransaDragAndDrop, AValue, APessoa, ATipoPreferencial);
  ADataSet.FieldByName('PESSOA_AGENCIA_TIPO').AsString := APessoa.Tipo.Descricao;
  ADataSet.FieldByName('PESSOA_AGENCIA_SEQUENCIA').AsString := APessoa.Sequencia.ToString;
end;

procedure TFrame_ConsuComissao_Selecao_Financeiro_Agencia.WREventosCadastroValidaEdicaoCamposBefore(
  var AFieldName, AFieldNameTratado: string; AValue: Variant);
begin
  inherited;
  QueryDragAndDrop.Close;
  QueryDragAndDrop.SQL.Text :=  'SELECT V.CODIGO, V.CODIGO as CODPEDIDO,  V.RAZAOSOCIAL AS DESCRICAO, ' +
                                'V.DT_ALTERACAO, V.PESSOA_AGENCIA_CODIGO as CODAGENCIA_COMISSAO, ' +
                                'V.PESSOA_AGENCIA_TIPO, V.PESSOA_AGENCIA_SEQUENCIA FROM VENDA V  ' +
                                'WHERE V.CODIGO = :CODPEDIDO  ';

  QueryDragAndDrop.ParamByName('CODPEDIDO').Value := Consulta.FieldByName('CODIGO').AsString;
  QueryDragAndDrop.Open;
end;

procedure TFrame_ConsuComissao_Selecao_Financeiro_Agencia.WREventosConsultaGetFiltrosConsulta(
  Sender: TObject);
begin
  GridConsultaDBTableView1.DataController.BeginUpdate;
  GridConsultaDBTableView1.DataController.Groups.ClearGrouping;
  GridConsultaDBTableView1.DataController.EndUpdate;
  inherited;
  // Aqui abre a SubGrid
  LiGridSubGrid.Visible:= (GridConsultaDBTableView1.GroupedColumnCount > 0);

  // Aqui agrupa no Grid principal a Situação e ordena pelo NF_DT_EMISSAO
  GridConsultaDBTableView1.DataController.BeginUpdate;
  GridConsultaDBTableView1.DataController.Groups.ClearGrouping;
  GridConsultaDBTableView1.Columns[GridConsultaDBTableView1AGENCIA.Index].GroupIndex := 0;
  GridConsultaDBTableView1.Columns[GridConsultaDBTableView1AGENCIA.Index].SortOrder := TdxSortOrder.soDescending;
  GridConsultaDBTableView1.DataController.EndUpdate;

  // Aqui monta o subgrid de acordo com as colunas agrupadas no Grid principal
  if GridConsultaDBTableView1.GroupedColumnCount > 0 then
  begin
    with TcxGridDBColumn(GridConsultaDBTableView1.GroupedColumns[0]).DataBinding do
    try
      AgrupaSubGrid('CODAGENCIA_COMISSAO', 'AGENCIA_COMISSAO', 'P.CODIGO' );
    finally
    end;
    LiGridSubGrid.Visible:= True;
  end;
end;

initialization
  RegisterClass(TFrame_ConsuComissao_Selecao_Financeiro_Agencia);
  RegisterFrameCon(Tag_Comissao_Selecao_Financeiro_Agencia, TFrame_ConsuComissao_Selecao_Financeiro_Agencia);

end.
