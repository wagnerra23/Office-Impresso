unit CadProduto_Grade_Modelo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls,
  Vcl.Forms, Vcl.Dialogs, CadM, Data.DB, dxLayoutContainer, UCBase, IBX.IBCustomDataSet, IBX.IBDatabase, cxDBEdit,
  cxLabel, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinsdxStatusBarPainter,
  dxSkinscxPCPainter, Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData,
  cxContainer, dxLayoutControlAdapters, dxLayoutcxEditAdapters, cxButtonEdit, cxMaskEdit, cxDropDownEdit,
  dxLayoutLookAndFeels, Vcl.ImgList, IBX.IBStoredProc, Vcl.ExtCtrls, cxTextEdit, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxDBNavigator, Vcl.StdCtrls,
  cxButtons, dxLayoutControl, dxStatusBar, cxCurrencyEdit, cxCheckBox,
  System.ImageList, cxDataControllerConditionalFormattingRulesManagerDialog, WREventos,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  UCHistDataset, frxClass, frxDBSet, dxUIAdorners, fs_iinterpreter, wrFuncoes_Office,
  System.Generics.Collections, WRButtonsEditAdd, dxDateRanges,
  dxScrollbarAnnotations, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TFrmProduto_Grade_Modelo = class(TFrmCadM)
    GrupoTamanho: TdxLayoutGroup;
    cbxTipo: TcxDBComboBox;
    licbxTipo: TdxLayoutItem;
    edtT1: TcxDBTextEdit;
    liedtT1: TdxLayoutItem;
    liedtT2: TdxLayoutItem;
    edtT2: TcxDBTextEdit;
    liedtT3: TdxLayoutItem;
    edtT3: TcxDBTextEdit;
    liedtT4: TdxLayoutItem;
    edtT4: TcxDBTextEdit;
    liedtT5: TdxLayoutItem;
    edtT5: TcxDBTextEdit;
    liedtT8: TdxLayoutItem;
    edtT8: TcxDBTextEdit;
    liedtT7: TdxLayoutItem;
    edtT7: TcxDBTextEdit;
    liedtT6: TdxLayoutItem;
    edtT6: TcxDBTextEdit;
    liedtT12: TdxLayoutItem;
    edtT12: TcxDBTextEdit;
    liedtT11: TdxLayoutItem;
    edtT11: TcxDBTextEdit;
    liedtT10: TdxLayoutItem;
    edtT10: TcxDBTextEdit;
    liedtT9: TdxLayoutItem;
    edtT9: TcxDBTextEdit;
    liedtT13: TdxLayoutItem;
    edtT13: TcxDBTextEdit;
    liedtT14: TdxLayoutItem;
    edtT14: TcxDBTextEdit;
    liedtT15: TdxLayoutItem;
    edtT15: TcxDBTextEdit;
    liedtT16: TdxLayoutItem;
    edtT16: TcxDBTextEdit;
    liedtT17: TdxLayoutItem;
    edtT17: TcxDBTextEdit;
    liedtT18: TdxLayoutItem;
    edtT18: TcxDBTextEdit;
    liedtT19: TdxLayoutItem;
    edtT19: TcxDBTextEdit;
    liedtT22: TdxLayoutItem;
    edtT22: TcxDBTextEdit;
    liedtT21: TdxLayoutItem;
    edtT21: TcxDBTextEdit;
    liedtT23: TdxLayoutItem;
    edtT23: TcxDBTextEdit;
    liedtT24: TdxLayoutItem;
    edtT24: TcxDBTextEdit;
    liedtT25: TdxLayoutItem;
    edtT25: TcxDBTextEdit;
    liedtT26: TdxLayoutItem;
    edtT26: TcxDBTextEdit;
    liedtT27: TdxLayoutItem;
    edtT27: TcxDBTextEdit;
    liedtT28: TdxLayoutItem;
    edtT28: TcxDBTextEdit;
    liedtT29: TdxLayoutItem;
    edtT29: TcxDBTextEdit;
    liedtT30: TdxLayoutItem;
    edtT30: TcxDBTextEdit;
    liedtT20: TdxLayoutItem;
    edtT20: TcxDBTextEdit;
    GrupoTabs: TdxLayoutGroup;
    GrupoMedidas: TdxLayoutGroup;
    MainLayoutGroup45: TdxLayoutGroup;
    MainLayoutGroup46: TdxLayoutGroup;
    GrupoMedidas01L: TdxLayoutGroup;
    GrupoMedidas02L: TdxLayoutGroup;
    GrupoMedidas03L: TdxLayoutGroup;
    GrupoMedidas01R: TdxLayoutGroup;
    GrupoMedidas02R: TdxLayoutGroup;
    GrupoMedidas03R: TdxLayoutGroup;
    Ck01: TcxCheckBox;
    MainLayoutItem105: TdxLayoutItem;
    Ck02: TcxCheckBox;
    MainLayoutItem106: TdxLayoutItem;
    Ck03: TcxCheckBox;
    MainLayoutItem107: TdxLayoutItem;
    edtMedidasT01_01: TcxCurrencyEdit;
    liedtMedidasT01_01: TdxLayoutItem;
    edtMedidasT01_02: TcxCurrencyEdit;
    liedtMedidasT01_02: TdxLayoutItem;
    edtMedidasT01_03: TcxCurrencyEdit;
    liedtMedidasE01_03: TdxLayoutItem;
    EdtMedidasT16_01: TcxCurrencyEdit;
    ItemMedidasR1_: TdxLayoutItem;
    EdtMedidasT16_02: TcxCurrencyEdit;
    ItemMedidasR2_: TdxLayoutItem;
    EdtMedidasT16_03: TcxCurrencyEdit;
    ItemMedidasR3_: TdxLayoutItem;
    edtMedidasT02_01: TcxCurrencyEdit;
    liItemMedidas01T02: TdxLayoutItem;
    edtMedidasT02_02: TcxCurrencyEdit;
    liedtMedidasT02_02: TdxLayoutItem;
    edtMedidasT02_03: TcxCurrencyEdit;
    MainLayoutItem112: TdxLayoutItem;
    EdtMedidasT17_01: TcxCurrencyEdit;
    MainLayoutItem113: TdxLayoutItem;
    EdtMedidasT17_02: TcxCurrencyEdit;
    MainLayoutItem114: TdxLayoutItem;
    EdtMedidasT17_03: TcxCurrencyEdit;
    MainLayoutItem115: TdxLayoutItem;
    edtMedidasT03_01: TcxCurrencyEdit;
    ItemMedidas01T03: TdxLayoutItem;
    edtMedidasT04_01: TcxCurrencyEdit;
    liedtMedidasT04_01: TdxLayoutItem;
    edtMedidasT05_01: TcxCurrencyEdit;
    liedtMedidasT05_01: TdxLayoutItem;
    edtMedidasT06_01: TcxCurrencyEdit;
    liedtMedidasT06_01: TdxLayoutItem;
    edtMedidasT07_01: TcxCurrencyEdit;
    liedtMedidasT07_01: TdxLayoutItem;
    edtMedidasT08_01: TcxCurrencyEdit;
    liedtMedidasT08_01: TdxLayoutItem;
    edtMedidasT09_01: TcxCurrencyEdit;
    liedtMedidasT09_01: TdxLayoutItem;
    edtMedidasT10_01: TcxCurrencyEdit;
    liedtMedidasT10_01: TdxLayoutItem;
    edtMedidasT11_01: TcxCurrencyEdit;
    liedtMedidasT11_01: TdxLayoutItem;
    edtMedidasT12_01: TcxCurrencyEdit;
    liedtMedidasT12_01: TdxLayoutItem;
    edtMedidasT13_01: TcxCurrencyEdit;
    liedtMedidasT13_01: TdxLayoutItem;
    edtMedidasT14_01: TcxCurrencyEdit;
    liedtMedidasT14_01: TdxLayoutItem;
    edtMedidasT15_01: TcxCurrencyEdit;
    liedtMedidasT15_01: TdxLayoutItem;
    MainLayoutGroup47: TdxLayoutGroup;
    MainLayoutGroup48: TdxLayoutGroup;
    edtMedidasT03_02: TcxCurrencyEdit;
    MainLayoutItem108: TdxLayoutItem;
    edtMedidasT04_02: TcxCurrencyEdit;
    liedtMedidasT04_02: TdxLayoutItem;
    edtMedidasT05_02: TcxCurrencyEdit;
    liedtMedidasT05_02: TdxLayoutItem;
    edtMedidasT06_02: TcxCurrencyEdit;
    liedtMedidasT06_02: TdxLayoutItem;
    edtMedidasT07_02: TcxCurrencyEdit;
    liedtMedidasT07_02: TdxLayoutItem;
    edtMedidasT08_02: TcxCurrencyEdit;
    liedtMedidasT08_02: TdxLayoutItem;
    edtMedidasT09_02: TcxCurrencyEdit;
    liedtMedidasT09_02: TdxLayoutItem;
    edtMedidasT10_02: TcxCurrencyEdit;
    liedtMedidasT10_02: TdxLayoutItem;
    edtMedidasT11_02: TcxCurrencyEdit;
    liedtMedidasT11_02: TdxLayoutItem;
    edtMedidasT12_02: TcxCurrencyEdit;
    liedtMedidasT12_02: TdxLayoutItem;
    edtMedidasT13_02: TcxCurrencyEdit;
    liedtMedidasT13_02: TdxLayoutItem;
    edtMedidasT14_02: TcxCurrencyEdit;
    liedtMedidasT14_02: TdxLayoutItem;
    edtMedidasT15_02: TcxCurrencyEdit;
    liedtMedidasT15_02: TdxLayoutItem;
    edtMedidasT03_03: TcxCurrencyEdit;
    MainLayoutItem127: TdxLayoutItem;
    edtMedidasT04_03: TcxCurrencyEdit;
    liedtMedidasT04_03: TdxLayoutItem;
    edtMedidasT05_03: TcxCurrencyEdit;
    liedtMedidasT05_03: TdxLayoutItem;
    edtMedidasT06_03: TcxCurrencyEdit;
    liedtMedidasT06_03: TdxLayoutItem;
    edtMedidasT07_03: TcxCurrencyEdit;
    liedtMedidasT07_03: TdxLayoutItem;
    edtMedidasT08_03: TcxCurrencyEdit;
    liedtMedidasT08_03: TdxLayoutItem;
    edtMedidasT09_03: TcxCurrencyEdit;
    liedtMedidasT09_03: TdxLayoutItem;
    edtMedidasT10_03: TcxCurrencyEdit;
    liedtMedidasT10_03: TdxLayoutItem;
    edtMedidasT11_03: TcxCurrencyEdit;
    liedtMedidasT11_03: TdxLayoutItem;
    edtMedidasT12_03: TcxCurrencyEdit;
    liedtMedidasT12_03: TdxLayoutItem;
    edtMedidasT13_03: TcxCurrencyEdit;
    liedtMedidasT13_03: TdxLayoutItem;
    edtMedidasT14_03: TcxCurrencyEdit;
    liedtMedidasT14_03: TdxLayoutItem;
    edtMedidasT15_03: TcxCurrencyEdit;
    liedtMedidasT15_03: TdxLayoutItem;
    edtMedidasT18_01: TcxCurrencyEdit;
    MainLayoutItem141: TdxLayoutItem;
    edtMedidasT19_01: TcxCurrencyEdit;
    MainLayoutItem142: TdxLayoutItem;
    edtMedidasT20_01: TcxCurrencyEdit;
    MainLayoutItem143: TdxLayoutItem;
    edtMedidasT21_01: TcxCurrencyEdit;
    MainLayoutItem144: TdxLayoutItem;
    edtMedidasT22_01: TcxCurrencyEdit;
    MainLayoutItem145: TdxLayoutItem;
    edtMedidasT23_01: TcxCurrencyEdit;
    MainLayoutItem146: TdxLayoutItem;
    EdtMedidasT24_01: TcxCurrencyEdit;
    MainLayoutItem147: TdxLayoutItem;
    EdtMedidasT25_01: TcxCurrencyEdit;
    MainLayoutItem148: TdxLayoutItem;
    EdtMedidasT26_01: TcxCurrencyEdit;
    MainLayoutItem149: TdxLayoutItem;
    EdtMedidasT27_01: TcxCurrencyEdit;
    MainLayoutItem150: TdxLayoutItem;
    EdtMedidasT28_01: TcxCurrencyEdit;
    MainLayoutItem151: TdxLayoutItem;
    EdtMedidasT29_01: TcxCurrencyEdit;
    MainLayoutItem152: TdxLayoutItem;
    EdtMedidasT30_01: TcxCurrencyEdit;
    MainLayoutItem153: TdxLayoutItem;
    EdtMedidasT18_02: TcxCurrencyEdit;
    MainLayoutItem155: TdxLayoutItem;
    EdtMedidasT19_02: TcxCurrencyEdit;
    MainLayoutItem156: TdxLayoutItem;
    EdtMedidasT20_02: TcxCurrencyEdit;
    MainLayoutItem157: TdxLayoutItem;
    EdtMedidasT21_02: TcxCurrencyEdit;
    MainLayoutItem158: TdxLayoutItem;
    EdtMedidasT22_02: TcxCurrencyEdit;
    MainLayoutItem159: TdxLayoutItem;
    EdtMedidasT23_02: TcxCurrencyEdit;
    MainLayoutItem160: TdxLayoutItem;
    EdtMedidasT24_02: TcxCurrencyEdit;
    MainLayoutItem161: TdxLayoutItem;
    EdtMedidasT25_02: TcxCurrencyEdit;
    MainLayoutItem162: TdxLayoutItem;
    EdtMedidasT26_02: TcxCurrencyEdit;
    MainLayoutItem163: TdxLayoutItem;
    EdtMedidasT27_02: TcxCurrencyEdit;
    MainLayoutItem164: TdxLayoutItem;
    EdtMedidasT28_02: TcxCurrencyEdit;
    MainLayoutItem165: TdxLayoutItem;
    EdtMedidasT29_02: TcxCurrencyEdit;
    MainLayoutItem166: TdxLayoutItem;
    EdtMedidasT30_02: TcxCurrencyEdit;
    MainLayoutItem167: TdxLayoutItem;
    EdtMedidasT18_03: TcxCurrencyEdit;
    MainLayoutItem169: TdxLayoutItem;
    EdtMedidasT19_03: TcxCurrencyEdit;
    MainLayoutItem170: TdxLayoutItem;
    EdtMedidasT20_03: TcxCurrencyEdit;
    MainLayoutItem171: TdxLayoutItem;
    EdtMedidasT21_03: TcxCurrencyEdit;
    MainLayoutItem172: TdxLayoutItem;
    EdtMedidasT22_03: TcxCurrencyEdit;
    MainLayoutItem173: TdxLayoutItem;
    EdtMedidasT23_03: TcxCurrencyEdit;
    MainLayoutItem174: TdxLayoutItem;
    EdtMedidasT24_03: TcxCurrencyEdit;
    MainLayoutItem175: TdxLayoutItem;
    EdtMedidasT25_03: TcxCurrencyEdit;
    MainLayoutItem176: TdxLayoutItem;
    EdtMedidasT26_03: TcxCurrencyEdit;
    MainLayoutItem177: TdxLayoutItem;
    EdtMedidasT27_03: TcxCurrencyEdit;
    MainLayoutItem178: TdxLayoutItem;
    EdtMedidasT28_03: TcxCurrencyEdit;
    MainLayoutItem179: TdxLayoutItem;
    EdtMedidasT29_03: TcxCurrencyEdit;
    MainLayoutItem180: TdxLayoutItem;
    edtMedidasT30_03: TcxCurrencyEdit;
    MainLayoutItem181: TdxLayoutItem;
    ItemMedidasL1: TdxLayoutLabeledItem;
    ItemMedidasL2: TdxLayoutLabeledItem;
    ItemMedidasL3: TdxLayoutLabeledItem;
    ItemMedidasR1: TdxLayoutLabeledItem;
    ItemMedidasR2: TdxLayoutLabeledItem;
    ItemMedidasR3: TdxLayoutLabeledItem;
    LiLinha1: TdxLayoutGroup;
    LiLinha2: TdxLayoutGroup;
    LiLinha3: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    GridRecursos: TcxGrid;
    GridEtapas: TcxGridDBTableView;
    GridRecursosLevel1: TcxGridLevel;
    dxLayoutItem2: TdxLayoutItem;
    edtDescricaoItem: TcxTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    btnAdicionarItem: TcxButton;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutItem4: TdxLayoutItem;
    btnRemoverItem: TcxButton;
    ProdutoGradeModeloItem: TFDQuery;
    DataSource1: TDataSource;
    DSProdutoGradeModeloItem: TDataSource;
    GridEtapasDESCRICAO: TcxGridDBColumn;
    GridEtapasDT_ALTERACAO: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure cbTipoGradePropertiesChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure Ck02PropertiesChange(Sender: TObject);
    procedure Ck03PropertiesChange(Sender: TObject);
    procedure Ck01PropertiesChange(Sender: TObject);
    procedure btnRemoverItemClick(Sender: TObject);
    procedure btnAdicionarItemClick(Sender: TObject);
    procedure CadastroAfterOpen(DataSet: TDataSet);
    procedure CadastroBeforeClose(DataSet: TDataSet);
  private
    { Private declarations }
    FDadosMedidas: TStringList;

    procedure SetMedidas(const AIsMedidas: Boolean);
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses
  StrUtils, wrFuncoes, Rotinas, ConProduto_Grade_Modelo, ACBrUtil, UnitFuncoes;

procedure TFrmProduto_Grade_Modelo.btnAdicionarItemClick(Sender: TObject);
begin
  inherited;
  if edtDescricaoItem.Text = '' then
  begin
    ShowMessage('Inserir uma descrição');
    Exit;
  end;
  VerificaSePodeAlteraDataSet;
  ProdutoGradeModeloItem.Insert;
  ProdutoGradeModeloItem.FieldByName('CODIGO').AsInteger              := Trunc(GetProximoCodigoGen('cr_produto_grade_modelo_item'));
  ProdutoGradeModeloItem.FieldByName('ATIVO').AsString                := 'S';
  ProdutoGradeModeloItem.FieldByName('DT_ALTERACAO').AsDateTime       := DataHoraSys;
  ProdutoGradeModeloItem.FieldByName('DESCRICAO').AsString            := edtDescricaoItem.Text;
  ProdutoGradeModeloItem.FieldByName('CODPRODUTO_GRADE_MODELO').AsInteger  := Cadastro.FieldByName('CODIGO').AsInteger;
  ProdutoGradeModeloItem.Post;

  edtDescricaoItem.Clear;
  edtDescricaoItem.SetFocusWR;
end;

procedure TFrmProduto_Grade_Modelo.btnConfirmarClick(Sender: TObject);
var
  i: Integer;
  AMedida: TArray<string>;
begin
  Cadastro.FieldByName('TIPOSMEDIDAS').AsString := IfThen(Ck01.Checked, 'S', 'N') + IfThen(Ck02.Checked, 'S', 'N') + IfThen(Ck03.Checked, 'S', 'N');

  if (GrupoMedidas.Visible) and (FDadosMedidas.Count = 90) then
  begin
    AMedida := '0;0;0'.Split([';']);
    for i := 1 to 30 do
    begin
      AMedida[0] := TcxCurrencyEdit(FDadosMedidas.Objects[(i*3)-3]).Value.ToString;
      AMedida[1] := TcxCurrencyEdit(FDadosMedidas.Objects[(i*3)-2]).Value.ToString;
      AMedida[2] := TcxCurrencyEdit(FDadosMedidas.Objects[(i*3)-1]).Value.ToString;

      if (AMedida[0] = '0') and (AMedida[1] = '0') and (AMedida[2] = '0') then
        Cadastro.FieldByName('T'+i.ToString).Clear
      else
        Cadastro.FieldByName('T'+i.ToString).AsString := AMedida[0]+';'+AMedida[1]+';'+AMedida[2];
    end;
  end;

  inherited;
end;

procedure TFrmProduto_Grade_Modelo.btnRemoverItemClick(Sender: TObject);
begin
  inherited;
  VerificaSePodeAlteraDataSet;
  if not ProdutoGradeModeloItem.IsEmpty then
    ProdutoGradeModeloItem.Delete;

end;

procedure TFrmProduto_Grade_Modelo.CadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  ProdutoGradeModeloItem.Open;
end;

procedure TFrmProduto_Grade_Modelo.CadastroBeforeClose(DataSet: TDataSet);
begin
  inherited;
  ProdutoGradeModeloItem.Close;
end;

procedure TFrmProduto_Grade_Modelo.cbTipoGradePropertiesChange(Sender: TObject);
begin
  inherited;
  GrupoTamanho.Visible := cbxTipo.ItemIndex = 0;
  GrupoMedidas.Visible := cbxTipo.ItemIndex = 1;

  SetMedidas(GrupoMedidas.Visible);
end;

procedure TFrmProduto_Grade_Modelo.Ck01PropertiesChange(Sender: TObject);
begin
  GrupoMedidas01L.Visible := Ck01.Checked;
  GrupoMedidas01R.Visible := Ck01.Checked;
end;

procedure TFrmProduto_Grade_Modelo.Ck02PropertiesChange(Sender: TObject);
begin
  GrupoMedidas02L.Visible := Ck02.Checked;
  GrupoMedidas02R.Visible := Ck02.Checked;
end;

procedure TFrmProduto_Grade_Modelo.Ck03PropertiesChange(Sender: TObject);
begin
  GrupoMedidas03L.Visible := Ck03.Checked;
  GrupoMedidas03R.Visible := Ck03.Checked;
end;

procedure TFrmProduto_Grade_Modelo.FormCreate(Sender: TObject);
begin
  inherited;
  with ProdutoControleUnidades do
  begin
    Ck01.Caption := CaptionComprimento.Descricao;
    ItemMedidasL1.CaptionOptions.Text := CaptionComprimento.Descricao;
    ItemMedidasR1.CaptionOptions.Text := CaptionComprimento.Descricao;
    Ck02.Caption := CaptionLargura.Descricao;
    ItemMedidasL2.CaptionOptions.Text := CaptionLargura.Descricao;
    ItemMedidasR2.CaptionOptions.Text := CaptionLargura.Descricao;
    Ck03.Caption := CaptionEspessura.Descricao;
    ItemMedidasL3.CaptionOptions.Text := CaptionEspessura.Descricao;
    ItemMedidasR3.CaptionOptions.Text := CaptionEspessura.Descricao;
  end;
  GrupoTabs.tabbedOptions.hideTabs:=True;
end;

procedure TFrmProduto_Grade_Modelo.FormDestroy(Sender: TObject);
begin
  inherited;
  FDadosMedidas.Free;
end;

procedure TFrmProduto_Grade_Modelo.SetMedidas(const AIsMedidas: Boolean);
var
  i: Integer;
  AMedida: TArray<string>;
begin
  //Tem que ficar aqui, o Create é chamado depois do evento DataChange.
  if (FDadosMedidas = nil) then
  begin
    FDadosMedidas := TStringList.Create;
    FDadosMedidas.Sorted := True;
    for i := 0 to (Self.ComponentCount - 1) do
    begin
      if (Self.Components[i] is TcxCurrencyEdit) and
         (StartsStr('EDTMEDIDAST', UpperCase(Self.Components[i].Name))){ and
         (Self.Components[i].Name[14] = '_')} then
      begin
        FDadosMedidas.AddObject(Self.Components[i].Name, Self.Components[i]);
      end;
    end;
  end;
  //Carrega os dados.
  if (FDadosMedidas.Count = 90) then
  begin
    for i := 1 to 30 do
    begin
      if AIsMedidas then
        AMedida := Cadastro.FieldByName('T'+i.ToString).AsString.Split([';']);
      if (High(AMedida) <> 2) then
        AMedida := '0;0;0'.Split([';']);
      if AMedida[0].ToDouble > 0.0 then
        TcxCurrencyEdit(FDadosMedidas.Objects[(i*3)-3]).Value := AMedida[0].ToDouble
      else
        TcxCurrencyEdit(FDadosMedidas.Objects[(i*3)-3]).Clear;
      if AMedida[1].ToDouble > 0.0 then
        TcxCurrencyEdit(FDadosMedidas.Objects[(i*3)-2]).Value := AMedida[1].ToDouble
      else
        TcxCurrencyEdit(FDadosMedidas.Objects[(i*3)-2]).Clear;
      if AMedida[2].ToDouble > 0.0 then
        TcxCurrencyEdit(FDadosMedidas.Objects[(i*3)-1]).Value := AMedida[2].ToDouble
      else
        TcxCurrencyEdit(FDadosMedidas.Objects[(i*3)-1]).Clear;
    end;
  end
  else
    ShowMessageWR('Os nomes dos CurrencyEdit da medida possuem um padrão para funcionarem corretamente, '+
                  'um ou mais estão com o nome diferente desse padrão, o mesmo deverá ser corrigido.');
end;

initialization
  RegisterClass(TFrmProduto_Grade_Modelo);

end.
