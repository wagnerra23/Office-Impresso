unit Producao_Fila;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, dxLayoutContainer, dxLayoutControl,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, Data.DB, cxDBData, cxGridLevel, cxGridCustomLayoutView,
  cxGridLayoutView, cxGridDBLayoutView, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxLayoutLookAndFeels, cxContainer,
  dxLayoutcxEditAdapters, cxLabel, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.ExtCtrls,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxDBEdit, Vcl.DBCtrls, wrPreencheLookup, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Data.FMTBcd, cxGridBandedTableView,
  Data.SqlExpr, cxGridDBBandedTableView, cxImageComboBox, System.ImageList, Vcl.ImgList, cxImageList, dxRatingControl, cxProgressBar,
  dxSkinsCore, dxScrollbarAnnotations;

type
  TFrmProducao_Fila = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutItem1: TdxLayoutItem;
    GridConsulta: TcxGrid;
    cxGridLevel1: TcxGridLevel;
    dxLayoutItem2: TdxLayoutItem;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBLayoutView1: TcxGridDBLayoutView;
    dxLayoutGroup1: TdxLayoutGroup;
    cxGridLevel2: TcxGridLevel;
    dxLayoutItem3: TdxLayoutItem;
    cxGrid2: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBLayoutView2: TcxGridDBLayoutView;
    dxLayoutGroup2: TdxLayoutGroup;
    cxGridLevel3: TcxGridLevel;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutSplitterItem1: TdxLayoutSplitterItem;
    dxLayoutSplitterItem2: TdxLayoutSplitterItem;
    cxEditStyleController1: TcxEditStyleController;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    LookBrancoWeb: TdxLayoutWebLookAndFeel;
    dxLayoutSkinLookAndFeelData: TdxLayoutSkinLookAndFeel;
    cxLabel1: TcxLabel;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    ConsultaFuncionarios: TFDQuery;
    ConsultaFuncionariosMinData: TAggregateField;
    ConsultaFuncionariosMaxData: TAggregateField;
    Timer1: TTimer;
    DS: TDataSource;
    ConsultaLista: TFDQuery;
    AggregateField1: TAggregateField;
    AggregateField2: TAggregateField;
    DSLista: TDataSource;
    ConsultaParados: TFDQuery;
    AggregateField3: TAggregateField;
    AggregateField4: TAggregateField;
    DSParados: TDataSource;
    Transa: TFDTransaction;
    ConsultaParadosPOSICAO: TIntegerField;
    ConsultaParadosPRIORIDADE: TIntegerField;
    ConsultaParadosCODIGO: TIntegerField;
    ConsultaParadosSITUACAO: TStringField;
    ConsultaParadosDESCRICAO: TStringField;
    ConsultaParadosRAZAOSOCIAL: TStringField;
    cxGridDBTableView1POSICAO: TcxGridDBColumn;
    cxGridDBTableView1PRIORIDADE: TcxGridDBColumn;
    cxGridDBTableView1CODIGO: TcxGridDBColumn;
    cxGridDBTableView1SITUACAO: TcxGridDBColumn;
    cxGridDBTableView1DESCRICAO: TcxGridDBColumn;
    cxGridDBTableView1RAZAOSOCIAL: TcxGridDBColumn;
    ConsultaCT: TFDQuery;
    AggregateField5: TAggregateField;
    AggregateField6: TAggregateField;
    DSCT: TDataSource;
    ConsultaCTCODIGO: TIntegerField;
    ConsultaCTDESCRICAO: TStringField;
    cbxSelecionaCT: TcxLookupComboBox;
    dxLayoutItem5: TdxLayoutItem;
    ConsultaFuncionariosPOSICAO: TIntegerField;
    ConsultaFuncionariosPRIORIDADE: TIntegerField;
    ConsultaFuncionariosCLIENTE: TStringField;
    ConsultaFuncionariosFUNCIONARIO: TStringField;
    ConsultaFuncionariosDESCRICAO: TStringField;
    ConsultaFuncionariosCODIGO: TIntegerField;
    ConsultaFuncionariosCODCENTRO_TRABALHO: TIntegerField;
    cxGridDBTableView2POSICAO: TcxGridDBColumn;
    cxGridDBTableView2PRIORIDADE: TcxGridDBColumn;
    cxGridDBTableView2CLIENTE: TcxGridDBColumn;
    cxGridDBTableView2FUNCIONARIO: TcxGridDBColumn;
    cxGridDBTableView2DESCRICAO: TcxGridDBColumn;
    cxGridDBTableView2CODIGO: TcxGridDBColumn;
    cxGridDBTableView2CODCENTRO_TRABALHO: TcxGridDBColumn;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    lblFila: TdxLayoutItem;
    lblTaNaFila: TcxLabel;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutGroup8: TdxLayoutGroup;
    lblParado: TdxLayoutItem;
    lblTaParado: TcxLabel;
    lblExecutando: TdxLayoutItem;
    lblTaExecutando: TcxLabel;
    dxLayoutGroup4: TdxLayoutGroup;
    GroupTaParado: TdxLayoutGroup;
    dxLayoutLookAndFeelList2: TdxLayoutLookAndFeelList;
    Produzindo: TdxLayoutStandardLookAndFeel;
    background: TdxLayoutLookAndFeelList;
    dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel;
    dxLayoutLookAndFeelList4: TdxLayoutLookAndFeelList;
    dxLayoutLookAndFeelList5: TdxLayoutLookAndFeelList;
    Fila: TdxLayoutStandardLookAndFeel;
    Disponiveis: TdxLayoutStandardLookAndFeel;
    Aguardando: TdxLayoutStandardLookAndFeel;
    Parado: TdxLayoutStandardLookAndFeel;
    SQLTable1: TSQLTable;
    GridConsultaDBBandedTableView1: TcxGridDBBandedTableView;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    GridConsultaDBBandedTableView1POSICAO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1CODIGO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1ASSUNTO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1CLIENTE: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1LOCAL: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1EQUIPE: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1PRODUCAO_ESTAGIO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1SITUACAO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1FUNCIONARIO: TcxGridDBBandedColumn;
    cxImageListTreeList: TcxImageList;
    GridConsultaDBBandedTableView1PRIORIDADE_PRODUCAO: TcxGridDBBandedColumn;
    cxStyle4: TcxStyle;
    GridConsultaDBBandedTableView1ESTILO: TcxGridDBBandedColumn;
    GridConsultaDBBandedTableView1FILA: TcxGridDBBandedColumn;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure cbxSelecionaCTPropertiesEditValueChanged(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure GridConsultaDBBandedTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProducao_Fila: TFrmProducao_Fila;

implementation

{$R *.dfm}

uses Base, wrForms;

procedure TFrmProducao_Fila.cbxSelecionaCTPropertiesEditValueChanged(
  Sender: TObject);
begin
  ConsultaLista.Close;
  ConsultaFuncionarios.Close;
  ConsultaParados.Close;

  ConsultaLista.ParamByName('codcentro_trabalho').Value        :=  cbxSelecionaCT.EditValue;
  ConsultaFuncionarios.ParamByName('codcentro_trabalho').Value :=  cbxSelecionaCT.EditValue;
  ConsultaParados.ParamByName('codcentro_trabalho').Value      :=  cbxSelecionaCT.EditValue;

  ConsultaLista.Open;
  ConsultaFuncionarios.Open;
  ConsultaParados.Open;

  lblTaNaFila.Caption := IntToStr(ConsultaLista.RecordCount);
  lblTaExecutando.Caption := IntToStr(ConsultaFuncionarios.RecordCount);
  lblTaParado.Caption := IntToStr(ConsultaParados.RecordCount);
end;

procedure TFrmProducao_Fila.FormCreate(Sender: TObject);
begin
  ConsultaLista.Open;
  ConsultaFuncionarios.Open;
  ConsultaParados.Open;
  PreencheLookupEquipesListaAtendimento(cbxSelecionaCT.Properties);
end;

procedure TFrmProducao_Fila.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_F11) then
  begin
    if (BorderStyle = bsNone) then
      BorderStyle :=  bsSizeable
    else
      BorderStyle :=  bsNone;
  end;
end;

procedure TFrmProducao_Fila.GridConsultaDBBandedTableView1DblClick(Sender: TObject);
begin
  if ConsultaLista.RecordCount > 0 then
//    CadastroModalChave(TFrmProducao, ConsultaLista.FieldByName('codigo').Value );
//    TFrmBase(ABaseClass_Pocket[Tag_Agenda_Kanban].Create(TForm(Self.Owner))).ShowCadastroPocketItem(TFrmBase(Owner).tcBase.Tag, ConsultaLista.FieldByName('codigo').Value, WREventosCadastro.UsaTravaCadastroPocket);

end;

procedure TFrmProducao_Fila.Timer1Timer(Sender: TObject);
begin
  if (VarToStr(cbxSelecionaCT.EditValue) <> '') then
  begin
    ConsultaLista.Refresh;
    ConsultaFuncionarios.Refresh;
    ConsultaParados.Refresh;

    lblTaNaFila.Caption := IntToStr(ConsultaLista.RecordCount);
    lblTaExecutando.Caption := IntToStr(ConsultaFuncionarios.RecordCount);
    lblTaParado.Caption := IntToStr(ConsultaParados.RecordCount);
  end;
end;

end.
