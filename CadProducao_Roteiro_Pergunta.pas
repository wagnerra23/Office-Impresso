unit CadProducao_Roteiro_Pergunta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CadM, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, Vcl.Menus, cxContainer, cxEdit, dxLayoutControlAdapters, dxLayoutcxEditAdapters, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, fs_iinterpreter, dxUIAdorners, cxClasses, frxClass, frxDBSet, UCHistDataset,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, WREventos, UCBase, dxLayoutLookAndFeels, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls, dxStatusBar, dxLayoutContainer, cxMaskEdit, cxDropDownEdit, cxDBEdit, cxTextEdit,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, cxImageComboBox, cxMemo, cxImageList, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, dxDateRanges, cxDBData, cxCurrencyEdit, dxRatingControl, cxGridLevel,
  cxGridCustomLayoutView, cxGridLayoutView, cxGridDBLayoutView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, cxFilterControl, cxDBFilterControl,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxCheckBox,
  System.Generics.Collections, cxLabel;

type
  TFrmProducao_Roteiro_Pergunta = class(TFrmCadM)
    dxLayoutItem1: TdxLayoutItem;
    edtClassificacao: TcxDBImageComboBox;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    cxDBComboBox1: TcxDBComboBox;
    edtObservacao: TcxDBMemo;
    LiedtObservacao: TdxLayoutItem;
    ImgProduto_Tipo32x32: TcxImageList;
    ImgProduto_Tipo16x16: TcxImageList;
    dxLayoutItem4: TdxLayoutItem;
    GridConsulta: TcxGrid;
    GridConsultaDBTableView1: TcxGridDBTableView;
    GridConsultaDBTableView1COMPOSICAO: TcxGridDBColumn;
    GridConsultaDBTableView1TEM_GRADE: TcxGridDBColumn;
    GridConsultaDBTableView1TEM_TABELA_PRECO: TcxGridDBColumn;
    GridConsultaDBTableView1TEM_FLUXO: TcxGridDBColumn;
    GridConsultaDBTableView1TEM_WIZARD: TcxGridDBColumn;
    GridConsultaDBTableView1CODIGO: TcxGridDBColumn;
    GridConsultaDBTableView1CODFABRICA: TcxGridDBColumn;
    GridConsultaDBTableView1DESCRICAO: TcxGridDBColumn;
    GridConsultaDBTableView1UNIDADE: TcxGridDBColumn;
    GridConsultaDBTableView1ESTOQUE_P: TcxGridDBColumn;
    GridConsultaDBTableView1VALOR: TcxGridDBColumn;
    GridConsultaDBTableView1ATIVO: TcxGridDBColumn;
    GridConsultaDBTableView1CODNF_NCM: TcxGridDBColumn;
    GridConsultaDBTableView1PRODUTO_TIPO: TcxGridDBColumn;
    GridConsultaDBTableView1ESTRELA: TcxGridDBColumn;
    GridConsultaDBTableView1PRODUTO_GRUPO: TcxGridDBColumn;
    GridConsultaDBTableView1ESTOQUE_MIN: TcxGridDBColumn;
    GridConsultaDBTableView1ESTOQUE_MAX: TcxGridDBColumn;
    GridConsultaDBTableView1CATEGORIA: TcxGridDBColumn;
    GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn;
    GridConsultaDBTableView1DT_ULTIMA_COMPRA: TcxGridDBColumn;
    GridConsultaDBTableView1LOCAL: TcxGridDBColumn;
    GridConsultaDBTableView1FORNECEDOR: TcxGridDBColumn;
    GridConsultaDBTableView1COR: TcxGridDBColumn;
    GridConsultaDBTableView1LOCAL_APLICACAO: TcxGridDBColumn;
    GridConsultaDBTableView1CLASSIFICACAO: TcxGridDBColumn;
    GridConsultaDBTableView1CustoRef: TcxGridDBColumn;
    GridConsultaDBTableView1CALC_PACRESC_PRAZO: TcxGridDBColumn;
    GridConsultaDBTableView1CALC_PDESC_ATACADO: TcxGridDBColumn;
    GridConsultaDBTableView1CALC_VPRAZO: TcxGridDBColumn;
    GridConsultaDBTableView1CALC_VATACADO: TcxGridDBColumn;
    GridConsultaDBTableView1CUSTO: TcxGridDBColumn;
    GridConsultaDBTableView1VALOR_COMPRA: TcxGridDBColumn;
    GridConsultaDBLayoutView1: TcxGridDBLayoutView;
    GridConsultaDBLayoutView1Group_Root: TdxLayoutGroup;
    cxGridLevel1: TcxGridLevel;
    Produto: TFDQuery;
    ProdutoESTOQUE_P: TFloatField;
    ProdutoCODIGO: TStringField;
    ProdutoCODFABRICA: TStringField;
    ProdutoCODPRODUTO_TIPO: TIntegerField;
    ProdutoATIVO: TStringField;
    ProdutoDESCRICAO: TStringField;
    ProdutoUNIDADE: TStringField;
    ProdutoLOCAL: TStringField;
    ProdutoESTOQUE_MIN: TFloatField;
    ProdutoESTOQUE_MAX: TFloatField;
    ProdutoVALOR: TFloatField;
    ProdutoCODEMPRESA: TStringField;
    ProdutoCODPRODUTO: TStringField;
    ProdutoPRODUTO_TIPO: TStringField;
    ProdutoCOR: TStringField;
    ProdutoCODNF_NCM: TStringField;
    ProdutoLOCAL_APLICACAO: TStringField;
    ProdutoCustoRef: TStringField;
    ProdutoDesc: TStringField;
    ProdutoCATEGORIA: TStringField;
    ProdutoFORNECEDOR: TStringField;
    ProdutoLARG: TFloatField;
    ProdutoCOMP: TFloatField;
    ProdutoESPESSURA: TFloatField;
    ProdutoDT_ULTIMA_COMPRA: TSQLTimeStampField;
    ProdutoCODPRODUTO_CATEGORIA: TStringField;
    ProdutoCODPRODUTO_GRUPO: TStringField;
    ProdutoPRODUTO_GRUPO: TStringField;
    ProdutoESTRELA: TStringField;
    ProdutoCLASSIFICACAO: TStringField;
    ProdutoCUSTO: TFloatField;
    ProdutoDT_ALTERACAO: TSQLTimeStampField;
    ProdutoTEM_GRADE: TStringField;
    ProdutoTEM_TABELA_PRECO: TStringField;
    ProdutoTEM_COMPOSICAO: TStringField;
    ProdutoTEM_FLUXO: TStringField;
    ProdutoTEM_WIZARD: TStringField;
    ProdutoVALOR_COMPRA: TFloatField;
    ProdutoCODFAMILIA: TIntegerField;
    ProdutoCALC_PACRESC_PRAZO: TFloatField;
    ProdutoCALC_PDESC_ATACADO: TFloatField;
    ProdutoCALC_VPRAZO: TFloatField;
    ProdutoCALC_VATACADO: TFloatField;
    ProdutoCALC_QPESO_BRUTO: TFloatField;
    ProdutoMinData: TAggregateField;
    ProdutoMaxData: TAggregateField;
    DSProduto: TDataSource;
    edtFilterCaption: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    edtFilterText: TcxDBTextEdit;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutItem7: TdxLayoutItem;
    edtCheckListAssunto: TcxTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    btnAdicionarCheckList: TButton;
    dxLayoutItem9: TdxLayoutItem;
    GridCheckList: TcxGrid;
    GridCheckListDBTableView1: TcxGridDBTableView;
    GridCheckListDBTableView1CODIGO: TcxGridDBColumn;
    GridCheckListDBTableView1PODE_CHECAR: TcxGridDBColumn;
    GridCheckListDBTableView1DESCRICAO: TcxGridDBColumn;
    GridCheckListDBTableView1CODPRODUCAO: TcxGridDBColumn;
    GridCheckListDBTableView1TEM_OBRIGATORIO: TcxGridDBColumn;
    GridCheckListDBTableView1CODPRODUCAO_OS: TcxGridDBColumn;
    GridCheckListLevel1: TcxGridLevel;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    Produto_Roteiro_Ficha_Tecnica: TFDQuery;
    AggregateField1: TAggregateField;
    AggregateField2: TAggregateField;
    DSProduto_Roteiro_Ficha_Tecnica: TDataSource;
    procedure GridConsultaDBTableView1DataControllerFilterBeforeChange(Sender: TcxDBDataFilterCriteria;
      ADataSet: TDataSet; const AFilterText: string);
    procedure edtCodigoPropertiesChange(Sender: TObject);
    procedure CadastroBeforeClose(DataSet: TDataSet);
    procedure CadastroBeforeOpen(DataSet: TDataSet);
    procedure btnAdicionarCheckListClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}
Uses DataModule;

procedure TFrmProducao_Roteiro_Pergunta.btnAdicionarCheckListClick(Sender: TObject);
begin
  inherited;
  if (edtCheckListAssunto.Text) = '' then
  begin
    ShowMessage('Informe o assunto.');
    edtCheckListAssunto.SetFocus;
    Exit;
  end;

  VerificaSePodeAlteraDataSet;
  Produto_Roteiro_Ficha_Tecnica.Insert;
  Produto_Roteiro_Ficha_Tecnica.FieldByName('CODIGO').AsInteger          := SQLProximoCodigoProduto_Roteiro_Ficha_Tecnica(TransaFD,Cadastro.FieldByName('CODIGO').Value);
  Produto_Roteiro_Ficha_Tecnica.FieldByName('CODROTEIRO_PERGUNTA').Value := Cadastro.FieldByName('CODIGO').Value;
  Produto_Roteiro_Ficha_Tecnica.FieldByName('DESCRICAO').AsString        := edtCheckListAssunto.Text;
  Produto_Roteiro_Ficha_Tecnica.FieldByName('PODE_CHECAR').AsString          := 'N';
  Produto_Roteiro_Ficha_Tecnica.FieldByName('TEM_OBRIGATORIO').AsString      := 'N';
  Produto_Roteiro_Ficha_Tecnica.Post;

//  TFrameHistorico.AdicionaHistorico(TransaFD, UCHist_Cadastro, 'PRODUCAO', 'Adicionou Material ' + PmPrincipal.Produto.FieldByName('DESCRICAO').AsString);

  edtCheckListAssunto.Text := '';
  edtCheckListAssunto.SetFocus;
end;

procedure TFrmProducao_Roteiro_Pergunta.CadastroBeforeClose(DataSet: TDataSet);
begin
  inherited;
  Produto.Close;
  Produto_Roteiro_Ficha_Tecnica.Close;
end;

procedure TFrmProducao_Roteiro_Pergunta.CadastroBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  Produto.Open;
  Produto_Roteiro_Ficha_Tecnica.Open;
end;

procedure TFrmProducao_Roteiro_Pergunta.edtCodigoPropertiesChange(Sender: TObject);
var
  AStream: TMemoryStream;
begin
  inherited;
  if not (ds.State in dsEditModes) then
  begin
    if Not Cadastro.FieldByName('FILTRO').IsNull then
    begin
      try
        AStream := TMemoryStream.Create;
        TBlobField(Cadastro.FieldByName('FILTRO')).SaveToStream(AStream);
        AStream.Position := 0;
        GridConsultaDBTableView1.DataController.Filter.LoadFromStream(AStream);
      finally
        AStream.Free;
      end;
    end else
      GridConsultaDBTableView1.DataController.Filter.Clear;
  end;
end;

procedure TFrmProducao_Roteiro_Pergunta.GridConsultaDBTableView1DataControllerFilterBeforeChange(
  Sender: TcxDBDataFilterCriteria; ADataSet: TDataSet; const AFilterText: string);
var
  AStream: TMemoryStream;
begin
  inherited;
  if ds.State in dsEditModes then
  begin
    Cadastro.FieldByName('FILTER_CAPTION').AsString:= Sender.FilterCaption;
    Cadastro.FieldByName('FILTER_TEXT').AsString   := Sender.FilterText;
    AStream := TMemoryStream.Create;
    try
      GridConsultaDBTableView1.DataController.Filter.SaveToStream(AStream);
      if AStream <> nil then
      begin
        AStream.Position := 0;
        TBlobField(Cadastro.FieldByName('FILTRO')).LoadFromStream(AStream);
      end else
        Cadastro.FieldByName('FILTRO').Clear;
    finally
      AStream.Free;
    end;
  end;
end;

initialization
  RegisterClass(TFrmProducao_Roteiro_Pergunta);

end.
