unit frFrameProdutoSubUnidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FrFrameMestre, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutContainer, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, uWRFormataCamposDataSet, uWRFrameEventos, cxClasses,
  dxLayoutLookAndFeels, UCBase, System.ImageList, Vcl.ImgList, Vcl.StdCtrls,
  cxButtons, dxLayoutControl, dxCustomTileControl, dxTileControl, UCHistDataset,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxLayoutcxEditAdapters, cxContainer, cxCheckBox, cxDBEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxScrollbarAnnotations;

type
  TFrameProdutoSubUnidade = class(TFrmFrameMestre)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    tcMenu: TdxTileControl;
    dxTileControlGroup1: TdxTileControlGroup;
    tciAdcionar: TdxTileControlItem;
    tcMenuItem1: TdxTileControlItem;
    tcExcluir: TdxTileControlItem;
    DSProduto_SubUnidade: TDataSource;
    Produto_SubUnidade: TFDQuery;
    Produto_SubUnidadeCODIGO: TIntegerField;
    Produto_SubUnidadeCODUNIDADE: TIntegerField;
    Produto_SubUnidadeCODPRODUTO: TStringField;
    Produto_SubUnidadeUNIDADE_RENDIMENTO: TStringField;
    Produto_SubUnidadeQTDADEPECA: TFloatField;
    Produto_SubUnidadeCOMP: TFloatField;
    Produto_SubUnidadeLARG: TFloatField;
    Produto_SubUnidadeESPESSURA: TFloatField;
    Produto_SubUnidadeRENDIMENTO: TFloatField;
    Produto_SubUnidadeDESCRICAO: TStringField;
    Produto_SubUnidadeFORMULA: TStringField;
    Produto_SubUnidadeTEM_DIVISAO_MATERIAL: TStringField;
    Produto_SubUnidadeDESCRICAO_PERSONALIZADA: TStringField;
    Produto_SubUnidadeESPECIFICACAO: TStringField;
    Produto_SubUnidadeTEM_FORNECEDOR: TStringField;
    Produto_SubUnidadePESSOA_FORNECEDOR_CODIGO: TStringField;
    Produto_SubUnidadePESSOA_FORNECEDOR_TIPO: TStringField;
    Produto_SubUnidadePESSOA_FORNECEDOR_SEQUENCIA: TIntegerField;
    dxLayoutItem4: TdxLayoutItem;
    chkPode_Alterar_Estoque: TcxDBCheckBox;
    dxLayoutItem5: TdxLayoutItem;
    cbxUnidade: TcxDBComboBox;
    dxLayoutItem6: TdxLayoutItem;
    cxDBComboBox1: TcxDBComboBox;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    procedure tciAdcionarClick(Sender: TdxTileControlItem);
    procedure Produto_SubUnidadeBeforeOpen(DataSet: TDataSet);
  private

    procedure Inicializar;
    { Private declarations }
  public
    class procedure CarregaFrame1(var AFrame: TFrameProdutoSubUnidade; ATileSender: TdxTileControlItem; ADataSource: TDataSource);
    { Public declarations }
  end;

var
  FrameProdutoSubUnidade: TFrameProdutoSubUnidade;

implementation

{$R *.dfm}

uses FrmUnidadeSubunidade;

class procedure TFrameProdutoSubUnidade.CarregaFrame1(var AFrame: TFrameProdutoSubUnidade; ATileSender: TdxTileControlItem; ADataSource: TDataSource);
begin
  if AFrame = nil then
  begin
    AFrame := TFrameProdutoSubUnidade.Create(TWinControl(ATileSender.Owner), ADataSource);
    AFrame.wrFrameEventos.DoOnInicializar;
    ATileSender.DetailOptions.DetailControl:=AFrame;
    AFrame.Inicializar;
  end;
end;

procedure TFrameProdutoSubUnidade.Inicializar;
begin
//  Produto_SubUnidade.Open;
end;

procedure TFrameProdutoSubUnidade.Produto_SubUnidadeBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
//  Produto_SubUnidade.ParamByName('CODIGO').AsString := DS.DataSet.FieldByName('CODIGO').AsString;
end;

procedure TFrameProdutoSubUnidade.tciAdcionarClick(Sender: TdxTileControlItem);
begin
  inherited;
  TFormUnidadeSubunidade.AbrirExterno(DS.DataSet.FieldByName('NF_UNIDADE').AsString,'UN', Produto_SubUnidade);
end;

end.
