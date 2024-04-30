unit CadConfiguracao_Componente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CadM, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, Vcl.Menus, cxContainer, cxEdit, dxLayoutControlAdapters, dxLayoutcxEditAdapters, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, frxClass, frxDBSet, UCHistDataset, FireDAC.Comp.Client, Data.DB,
  FireDAC.Comp.DataSet, WREventos, UCBase, cxClasses, dxLayoutLookAndFeels, System.ImageList, Vcl.ImgList, Vcl.ExtCtrls,
  dxStatusBar, dxLayoutContainer, cxButtonEdit, cxDBEdit, cxMaskEdit, cxDropDownEdit, cxTextEdit, Vcl.StdCtrls,
  cxButtons, dxLayoutControl, Vcl.DBCtrls, cxCheckBox, dxUIAdorners, cxMemo, cxRichEdit, cxDBRichEdit, fs_iinterpreter,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges, cxDBData, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxColorComboBox, dxCore,
  dxColorEdit, System.Generics.Collections, cxLabel, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxScrollbarAnnotations, WRButtonsEditAdd;

type
  TFrmConfiguracao_Componente = class(TFrmCadM)
    dxLayoutItem1: TdxLayoutItem;
    EdtCampo: TcxDBTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    EdtHint: TcxDBTextEdit;
    dxLayoutItem10: TdxLayoutItem;
    EdtTabela: TcxDBTextEdit;
    dxLayoutItem11: TdxLayoutItem;
    EdtTela: TcxDBTextEdit;
    dxLayoutItem12: TdxLayoutItem;
    EdtFormatacao: TcxDBTextEdit;
    CkUnico: TcxDBCheckBox;
    dxLayoutItem3: TdxLayoutItem;
    CkPadrao: TcxDBCheckBox;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem16: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    edtObservacao: TcxDBRichEdit;
    LiedtObservacao: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    cxGridCSSViewCSS: TcxGridDBTableView;
    cxGridCSSLevel1: TcxGridLevel;
    cxGridCSS: TcxGrid;
    dxLayoutItem2: TdxLayoutItem;
    Configuracao_CSS: TFDQuery;
    DSConfiguracao_CSS: TDataSource;
    cxGridCSSViewCSSCODIGO: TcxGridDBColumn;
    cxGridCSSViewCSSCODCONFIGURACAO_COMPONENTE: TcxGridDBColumn;
    cxGridCSSViewCSSDESCRICAO: TcxGridDBColumn;
    cxGridCSSViewCSSCSS: TcxGridDBColumn;
    dxLayoutItem4: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutItem6: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    edtDescricao_CSS: TcxTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutItem9: TdxLayoutItem;
    cxButton3: TcxButton;
    cxGridCSSViewCSSCOR: TcxGridDBColumn;
    edtCor: TdxColorEdit;
    LiedtCor: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    cxButton4: TcxButton;
    dxLayoutItem14: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    Configuracao_CSSCODIGO: TIntegerField;
    Configuracao_CSSCODCONFIGURACAO_COMPONENTE: TIntegerField;
    Configuracao_CSSDESCRICAO: TStringField;
    Configuracao_CSSCSS: TMemoField;
    Configuracao_CSSCOR: TIntegerField;
    Configuracao_CSSORDEM: TFloatField;
    cxGridCSSViewCSSORDEM: TcxGridDBColumn;
    dxLayoutItem15: TdxLayoutItem;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem17: TdxLayoutItem;
    cxDBCheckBox2: TcxDBCheckBox;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutItem18: TdxLayoutItem;
    cxDBRichEdit1: TcxDBRichEdit;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutItem23: TdxLayoutItem;
    btnAdicionarRegra: TcxButton;
    dxLayoutItem24: TdxLayoutItem;
    btnRemoverRegra: TcxButton;
    Acoes_Regra: TFDQuery;
    DSAcoes_Regra: TDataSource;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1CODCONFIGURACAO_COMPONENTE: TcxGridDBColumn;
    cxGrid1DBTableView1CODCONFIGURACAO_REGRA: TcxGridDBColumn;
    cxGrid1DBTableView1CODCONFIGURACAO_ACOES: TcxGridDBColumn;
    cxGrid1DBTableView1TEM_PADRAO: TcxGridDBColumn;
    cxGrid1DBTableView1TAB: TcxGridDBColumn;
    cxGrid1DBTableView1CSS: TcxGridDBColumn;
    cxGrid1DBTableView1OBRIGATORIO: TcxGridDBColumn;
    cxGrid1DBTableView1OBRIGATORIO_EXPRESSAO: TcxGridDBColumn;
    cxGrid1DBTableView1SQLCAMPOSADICIONAIS: TcxGridDBColumn;
    cxGrid1DBTableView1IMPEDIR_DUPLICIDADE_SQL: TcxGridDBColumn;
    cxGrid1DBTableView1TEM_CAPTIONOUHINT: TcxGridDBColumn;
    cxGrid1DBTableView1CODCONFIGURACAO_FORM: TcxGridDBColumn;
    cxGrid1DBTableView1DT_ALTERACAO: TcxGridDBColumn;
    cxGrid1DBTableView1ATIVO: TcxGridDBColumn;
    edtValor_Inicial: TcxTextEdit;
    liedtValor_Inicial: TdxLayoutItem;
    cbxCodConfiguracao_Acoes: TcxLookupComboBox;
    licbxCodConfiguracao_Acoes: TdxLayoutItem;
    edtInformacao: TcxTextEdit;
    liedtInformacao: TdxLayoutItem;
    lichkObrigatorio: TdxLayoutItem;
    chkObrigatorio: TcxCheckBox;
    lichkMultEmpresa: TdxLayoutItem;
    chkMultEmpresa: TcxCheckBox;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutItem20: TdxLayoutItem;
    cxDBCheckBox3: TcxDBCheckBox;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    liedtCondicao: TdxLayoutItem;
    edtCondicao: TcxTextEdit;
    cxGrid1DBTableView1ACOES: TcxGridDBColumn;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutItem22: TdxLayoutItem;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxLabel1: TcxLabel;
    dxLayoutItem21: TdxLayoutItem;
    cxLabel2: TcxLabel;
    dxLayoutItem25: TdxLayoutItem;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure CadastroBeforeClose(DataSet: TDataSet);
    procedure cxGridCSSViewCSSDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure cxGridCSSViewCSSDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure cxGridCSSViewCSSStartDrag(Sender: TObject; var DragObject: TDragObject);
    procedure edtCodigoPropertiesChange(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAdicionarRegraClick(Sender: TObject);
    procedure CadastroAfterOpen(DataSet: TDataSet);
    procedure cxGrid1DBTableView1TEM_PADRAOPropertiesEditValueChanged(
      Sender: TObject);
  private
    AKeys: Variant;
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

Uses UnitFuncoes, WrFuncoes, System.Math;

{$R *.dfm}

procedure TFrmConfiguracao_Componente.btnAdicionarRegraClick(Sender: TObject);
begin
  inherited;
  VerificaSePodeAlteraDataSet;
  Acoes_Regra.Insert;
  Acoes_Regra.FieldByName('CODIGO').AsInteger                      := Trunc(GetProximoCodigoGen('CR_CONFIGURACAO_ACOES_REGRA', TransaFD));;
  Acoes_Regra.FieldByName('CODCONFIGURACAO_COMPONENTE').AsInteger  := Cadastro.FieldByName('CODIGO').AsInteger;
  Acoes_Regra.FieldByName('CODCONFIGURACAO_ACOES').AsInteger       := cbxCodConfiguracao_Acoes.EditingValue;
  Acoes_Regra.FieldByName('CODCONFIGURACAO_FORM').AsInteger        := Cadastro.FieldByName('CODCONFIGURACAO_FORM').AsInteger;
//  Acoes_Regra.FieldByName('INFORMACAO').AsString                   := edtInformacao.Text;
//  Acoes_Regra.FieldByName('CONDICAO').AsString                     := edtCondicao.Text;
  if chkObrigatorio.Checked then
     Acoes_Regra.FieldByName('OBRIGATORIO').AsString := 'S'
  else
     Acoes_Regra.FieldByName('OBRIGATORIO').AsString := 'N';

  Acoes_Regra.FieldByName('TEM_PADRAO').AsString                   := 'N';
  Cadastro.FieldByName('TEM_PADRAO').AsString                      := 'N';
  Acoes_Regra.FieldByName('DT_ALTERACAO').AsDateTime               := DataHoraSys;
  Acoes_Regra.Post;
end;

procedure TFrmConfiguracao_Componente.CadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  Configuracao_CSS.Open;
  Acoes_Regra.Open;
end;

procedure TFrmConfiguracao_Componente.CadastroBeforeClose(DataSet: TDataSet);
begin
  inherited;
  Configuracao_CSS.Close;
  Acoes_Regra.Open;
end;

procedure TFrmConfiguracao_Componente.cxButton1Click(Sender: TObject);
begin
  inherited;
  if edtDescricao_CSS.Text = '' then   // Acho que pode ter stilo vazio, essa regra morre
  begin
    ShowMessage('Informe a Descrição');
    Exit;
  end;
  VerificaSePodeAlteraDataSet;
  Configuracao_CSS.Insert;
  Configuracao_CSS.FieldByName('CODIGO').AsInteger                     := Trunc(GetProximoCodigoGen('CR_CONFIGURACAO_COMPONENTE_CSS', TransaFD));;
  Configuracao_CSS.FieldByName('CODCONFIGURACAO_COMPONENTE').AsInteger := Cadastro.FieldByName('CODIGO').AsInteger;
  Configuracao_CSS.FieldByName('DESCRICAO').AsString                   := edtDescricao_CSS.Text;
  Configuracao_CSS.FieldByName('ORDEM').AsInteger                      := Configuracao_CSS.RecordCount+1;
  Configuracao_CSS.FieldByName('Cor').Value                            := edtCor.EditingValue;
  Configuracao_CSS.Post;
  edtDescricao_CSS.Clear;
  edtCor.Clear;
end;

procedure TFrmConfiguracao_Componente.cxButton2Click(Sender: TObject);
begin
  inherited;
  VerificaSePodeAlteraDataSet;
  if not Configuracao_CSS.IsEmpty then
    Configuracao_CSS.Delete;
end;

procedure TFrmConfiguracao_Componente.cxButton3Click(Sender: TObject);
begin
  inherited;
  cxGridCSSViewCSS.ConditionalFormatting.ShowRulesManagerDialog;
//  GravaConditionalFormattingSimples(cxGridCSSViewCSS, Configuracao_CSS);
end;

procedure TFrmConfiguracao_Componente.cxButton4Click(Sender: TObject);
Var
  QuerX: TFDQuery;
begin
  inherited;
  QuerX:=GeraFDQuery(TransaFD);
  try
    QuerX.SQL.Text := 'ALTER TABLE '+EdtTabela.Text+' ADD ' + EdtCampo.Text + ' varchar(150);';
    QuerX.ExecSQL;
  finally
    FreeAndNil(QuerX);
  end;
end;

procedure TFrmConfiguracao_Componente.cxGrid1DBTableView1TEM_PADRAOPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if Acoes_Regra.FieldByName('TEM_PADRAO').AsString = 'N' then
    Cadastro.FieldByName('TEM_PADRAO').AsString := 'N';
end;

procedure TFrmConfiguracao_Componente.cxGridCSSViewCSSDragDrop(Sender, Source: TObject; X, Y: Integer);
var
 HT: TcxCustomGridHitTest;
begin
  with TcxGridSite(Sender) do
  begin
    HT := ViewInfo.GetHitTest(X, Y);
    ReorderRows(TcxGridTableView(GridView), TcxGridRecordCellHitTest(HT).GridRecord, AKeys);
  end;
  inherited;
end;

procedure TFrmConfiguracao_Componente.cxGridCSSViewCSSDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
var
  HT: TcxCustomGridHitTest;
begin
  with TcxGridSite(Sender) do
  begin
    HT := ViewInfo.GetHitTest(X, Y);
    Accept := (HT is TcxGridRecordCellHitTest) and (TcxGridRecordCellHitTest(HT).GridRecord.RecordIndex <> GridView.DataController.FocusedRecordIndex)
  end;
  inherited;
end;

procedure TFrmConfiguracao_Componente.cxGridCSSViewCSSStartDrag(Sender: TObject; var DragObject: TDragObject);
//var
//  I: Integer;
begin
  with TcxGridDBTableView(TcxGridSite(Sender).GridView) do
    AKeys := DataController.DataSet.FieldValues['ORDEM'];
    //AKeys := Controller.FocusedRecord.Values[cxGrid1DBTableView1ID.Index];

{  with TcxGridDBTableView(TcxGridSite(Sender).GridView) do
  begin
    AKeys := VarArrayCreate([0, Controller.SelectedRecordCount - 1], varVariant);
    for I := 0 to Controller.SelectedRecordCount - 1 do
      AKeys[I] := Controller.SelectedRecords[I].Values[cxGridCSSViewCSSORDERBY.Index];
  end;        }
  inherited;
end;

procedure TFrmConfiguracao_Componente.edtCodigoPropertiesChange(Sender: TObject);
begin
  inherited;
//  CarregaConditionalFormattingSimples(cxGridCSSViewCSS, Configuracao_CSS);
end;

procedure TFrmConfiguracao_Componente.FormCreate(Sender: TObject);
begin
  inherited;
  PreencheLookupConfiguracao_Acoes(cbxCodConfiguracao_Acoes.Properties);
end;

initialization
  RegisterClass(TFrmConfiguracao_Componente);

end.
