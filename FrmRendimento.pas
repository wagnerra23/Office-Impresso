unit FrmRendimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, cxMaskEdit, cxDropDownEdit, cxDBEdit, dxLayoutContainer, cxTextEdit,
  cxCurrencyEdit, cxClasses, dxLayoutControl, Data.DB, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  dxLayoutLookAndFeels, cxLabel, uWRCalculaConfiguracoes, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, dxDateRanges, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Vcl.DBCtrls,
  cxDBLabel, dxCustomTileControl, dxTileControl, uButtonFlat, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White;

type
  TFormRendimento = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    LiedtQtdaDePeca_Rendimento: TdxLayoutItem;
    edtQtdaDePeca: TcxDBCurrencyEdit;
    LiedtComp_Rendimento: TdxLayoutItem;
    edtComp: TcxDBCurrencyEdit;
    LiedtLarg_Rendimento: TdxLayoutItem;
    edtLarg: TcxDBCurrencyEdit;
    LiedtEspessura_Rendimento: TdxLayoutItem;
    edtEspessura: TcxDBCurrencyEdit;
    dxLayoutItem5: TdxLayoutItem;
    edtRendimento: TcxDBCurrencyEdit;
    LiCbUnidade: TdxLayoutItem;
    edtUNIDADE: TcxDBComboBox;
    DS: TDataSource;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    dxLayoutSkinLookAndFeelBranco: TdxLayoutSkinLookAndFeel;
    dxLayoutSkinLookAndFeelBranco2: TdxLayoutSkinLookAndFeel;
    cxLabel1: TcxLabel;
    dxLayoutItem2: TdxLayoutItem;
    WRCalc: TWRCalculaConfiguracoes;
    LiedtQuant_Compra: TdxLayoutItem;
    edtQuant_Compra: TcxDBCurrencyEdit;
    LiedtQuant: TdxLayoutItem;
    edtQuant: TcxDBCurrencyEdit;
    Unidade_SubUnidade: TFDQuery;
    DSUnidade_SubUnidade: TDataSource;
    edtUN_SUBUNIDADE: TcxDBComboBox;
    liedtNF_UNIDADE: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    edtQTDADEPECA_RENDIMENTO: TcxDBCurrencyEdit;
    dxLayoutItem9: TdxLayoutItem;
    cxLabel3: TcxLabel;
    dxLayoutItem10: TdxLayoutItem;
    cxLabel4: TcxLabel;
    dxLayoutItem15: TdxLayoutItem;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    lblConversor: TcxLabel;
    dxLayoutItem8: TdxLayoutItem;
    cxDBLabel1: TcxDBLabel;
    dxLayoutItem11: TdxLayoutItem;
    GrupoLabel: TdxLayoutGroup;
    lblEspecificacao: TcxLabel;
    dxLayoutItem12: TdxLayoutItem;
    WRButtonFlat1: TWRButtonFlat;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    WRButtonFlat2: TWRButtonFlat;
    dxLayoutItem16: TdxLayoutItem;
    WRButtonFlat3: TWRButtonFlat;
    lblNF_UNIDADE: TcxDBLabel;
    lilblNF_UNIDADE: TdxLayoutItem;
    TransaFD: TFDTransaction;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    dxLayoutGroup1: TdxLayoutGroup;
    tcMenu: TdxTileControl;
    dxTileControlGroup1: TdxTileControlGroup;
    tcCadastraUnidade: TdxTileControlItem;
    dxTileControl1: TdxTileControl;
    dxTileControl1Item1: TdxTileControlItem;
    dxTileControl1Group1: TdxTileControlGroup;
    cbxUn_SubUnidade_Descricao: TcxComboBox;
    dxLayoutItem3: TdxLayoutItem;
    tcMenuItem1: TdxTileControlItem;
    tcSubUnidadeOK: TdxTileControlItem;
    procedure FormCreate(Sender: TObject);
    procedure edtQtdaDePeca_RendimentoPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure edtComp_RendimentoPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure edtLarg_RendimentoPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure edtEspessura_RendimentoPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
      var ErrorText: TCaption; var Error: Boolean);
    procedure FormShow(Sender: TObject);
    procedure tcCadastraUnidadeClick(Sender: TdxTileControlItem);
    procedure dxTileControl1Item1Click(Sender: TdxTileControlItem);
    procedure cbxUn_SubUnidade_DescricaoPropertiesEditValueChanged(Sender: TObject);
    procedure tcMenuItem1Click(Sender: TdxTileControlItem);
    procedure edtUN_SUBUNIDADEPropertiesEditValueChanged(Sender: TObject);
  private
    procedure AtualizaLabels;
    procedure VerificaCadastroDeUnidade(AUnidade:String);
    procedure CadastraUnidadeEsubUnidade(AUnidade:String);
    { Private declarations }
  public
    { Public declarations }
    Class procedure Abrir(ASender: TWinControl; AWRCalc: TWRCalculaConfiguracoes; ADataSet : TDataSet);
  end;

var
  FormRendimento: TFormRendimento;

implementation

Uses wrFuncoes_Office, UnitFuncoes, wrFuncoes, FrmUnidadeSubunidade, wrForms,
  CadUnidade;

{$R *.dfm}

{ TForm1 }

class procedure TFormRendimento.Abrir(ASender: TWinControl; AWRCalc: TWRCalculaConfiguracoes; ADataSet : TDataSet);
var
  ARendimento: TFormRendimento;
begin
  ARendimento:= TFormRendimento.Create(ASender.Owner);
  try
    ARendimento.PopupMode := pmAuto;
    ARendimento.WRCalc    := AWRCalc;
    ARendimento.DS.DataSet:= ADataSet;
    ARendimento.DS.AutoEdit:= ARendimento.WRCalc.DSProduto.AutoEdit;
    ARendimento.LiCbUnidade.enabled := ADataSet.FieldByName('CODPRODUTO').IsNull;

//    ARendimento.liedtNF_UNIDADE.enabled :=
    PosicionarControleAbaixoDe(ARendimento, ASender);
    ARendimento.ShowModal;
  finally
    ARendimento.Free;
  end;
end;

procedure TFormRendimento.FormCreate(Sender: TObject);
begin
  PreencheComboBoxUnidade(edtUN_SUBUNIDADE);
  PreencheComboBoxUnidade(edtUNIDADE);
  // TODO: Tem que Colocar os Labels corretos aqui
end;

procedure TFormRendimento.FormShow(Sender: TObject);
begin
  if  WRCalc.DBProduto.FieldByName('UN_SUBUNIDADE_DESCRICAO').AsString = WRCalc.DBProduto.FieldByName('UN_SUBUNIDADE').AsString then
    cbxUn_SubUnidade_Descricao.Text := 'Sem Formúla'
  else
    cbxUn_SubUnidade_Descricao.Text := WRCalc.DBProduto.FieldByName('UN_SUBUNIDADE_DESCRICAO').AsString;
  AtualizaLabels;
  VerificaCadastroDeUnidade(DS.DataSet.FieldByName('UN_SUBUNIDADE').AsString);
end;

procedure TFormRendimento.VerificaCadastroDeUnidade(AUnidade:String);
var
  QuerX :TFDQuery;
begin
  QuerX := GeraFDQuery;
  try
    QuerX.SQL.Text := 'select * from unidade u where u.unidade = :Unidade';
    QuerX.ParamByName('Unidade').AsString := AUnidade;
    QuerX.Open;
    if QuerX.RecordCount = 0 then
    begin
      tcCadastraUnidade.Visible := True;
    end else
    begin
      tcCadastraUnidade.Visible := False;
    end;

    if cbxUn_SubUnidade_Descricao.Text = 'Sem Formúla' then
      tcSubUnidadeOK.Visible := False
    else
      tcSubUnidadeOK.Visible := True;


//    if tcCadastraUnidade.Visible = False then
//    begin
//      if WRCalc.DBProduto.FieldByName('UN_SUBUNIDADE').AsString <> WRCalc.DBProduto.FieldByName('UNIDADE').AsString then
//      begin
//        if Unidade_SubUnidade.RecordCount = 0 then
//          tcCadastraConversao.Visible := True
//        else
//          tcCadastraConversao.Visible := False;
//      end;
//    end;
  finally
    QuerX.Free;
  end;


end;

procedure TFormRendimento.CadastraUnidadeEsubUnidade(AUnidade:String);
var
  QuerX :TFDQuery;
  ACodUnidade: Integer;
begin
  QuerX := GeraFDQuery(TransaFD);
  try
    QuerX.SQL.Text := 'select * from UNIDADE where unidade = :Unidade';
    QuerX.ParamByName('Unidade').AsString := AUnidade;
    if QuerX.RecordCount = 0 then
    begin
      if ShowMessageWR('Deseja Cadastrar está unidade?', MB_ICONQUESTION) = mrYes then
      begin
        QuerX.SQL.Text := 'select * from UNIDADE';
        QuerX.Open;
        QuerX.Insert;
        QuerX.FieldByName('CODIGO').AsInteger := trunc(GetProximoCodigoGen('CR_UNIDADE'));
        QuerX.FieldByName('UNIDADE').AsString := AUnidade;
        QuerX.FieldByName('DESCRICAO').AsString := AUnidade;
        QuerX.FieldByName('ATIVO').AsString := 'S';
        ACodUnidade := QuerX.FieldByName('CODIGO').AsInteger;
        QuerX.Post;


        QuerX.SQL.Text := 'select * from UNIDADE_SUBUNIDADE';
        QuerX.Open;
        QuerX.Insert;
        QuerX.FieldByName('CODIGO').AsInteger                 := trunc(GetProximoCodigoGen('CR_UNIDADE_SUBUNIDADE'));
        QuerX.FieldByName('CODUNIDADE').AsInteger             := ACodUnidade;
        QuerX.FieldByName('SUBUNIDADE').AsString              := AUnidade;
        QuerX.FieldByName('QTDADEPECA').AsFloat               := 1;
        QuerX.FieldByName('COMP').AsFloat                     := 1;
        QuerX.FieldByName('LARG').AsFloat                     := 1;
        QuerX.FieldByName('ESPESSURA').AsFloat                := 1;
        QuerX.FieldByName('RENDIMENTO').AsFloat               := 1;
        QuerX.FieldByName('UN_SUBUNIDADE_DESCRICAO').AsString := AUnidade;
        QuerX.FieldByName('CODUSUARIO').AsInteger             := Usuario.Codigo;
        QuerX.Post;

        QuerX.Transaction.Commit;

        TControleUnidades.ReleaseInstance;

//        PreencheComboBoxUnidade(edtUN_SUBUNIDADE);
//        PreencheComboBoxUnidade(edtUNIDADE);

        WRCalc.DBProduto.Edit;
        if WRCalc.DBProduto.FieldByName('UNIDADE').AsString = '' then
        begin
          WRCalc.DBProduto.FieldByName('UNIDADE').AsString := DS.DataSet.FieldByName('UN_SUBUNIDADE').AsString;
          WRCalc.DBProduto.FieldByName('UN_SUBUNIDADE_DESCRICAO').AsString := AUnidade;
          cbxUn_SubUnidade_DescricaoPropertiesEditValueChanged(nil);
        end;
      end;
    end else
    begin
      ShowMessage('Essa Unidade já está cadastrada');
    end;
  finally
    QuerX.free;
  end;

end;

procedure TFormRendimento.cbxUn_SubUnidade_DescricaoPropertiesEditValueChanged(
  Sender: TObject);
begin
  if cbxUn_SubUnidade_Descricao.Text <> '' then
  begin
    Unidade_SubUnidade.Close;
    Unidade_SubUnidade.ParamByName('Un_SubUnidade_Descricao').AsString := cbxUn_SubUnidade_Descricao.Text;
    Unidade_SubUnidade.Open;


    if Unidade_SubUnidade.RecordCount > 0 then
    begin
      if not(WRCalc.DBProduto.FieldByName('CODPRODUTO').IsNull)  then
      begin
        if WRCalc.DBProduto.FieldByName('UNIDADE').AsString <> Unidade_SubUnidade.FieldByName('SUBUNIDADE').AsString then
        begin
          ShowMessage('A Conversão escolhida, tem uma unidade final diferente da unidade do produto cadastrado');
          cbxUn_SubUnidade_Descricao.Text := WRCalc.DBProduto.FieldByName('UN_SUBUNIDADE_DESCRICAO').AsString;
          Exit;
        end;
      end;
      cbxUn_SubUnidade_Descricao.Text := Unidade_SubUnidade.FieldByName('UN_SUBUNIDADE_DESCRICAO').AsString;

      if WRCalc.DBVendaOuCompra.FieldByName('DT_FATURAMENTO').IsNull then
      begin
        WRCalc.DBProduto.Edit;
        WRCalc.DBProduto.FieldByName('UN_SUBUNIDADE_DESCRICAO').AsString  := Unidade_SubUnidade.FieldByName('UN_SUBUNIDADE_DESCRICAO').AsString;
        WRCalc.DBProduto.FieldByName('UNIDADE').AsString                  := Unidade_SubUnidade.FieldByName('SUBUNIDADE').AsString;
        WRCalc.DBProduto.FieldByName('QTDADEPECA').AsFloat                := Unidade_SubUnidade.FieldByName('QTDADEPECA').AsFloat;
        WRCalc.DBProduto.FieldByName('COMP').AsFloat                      := Unidade_SubUnidade.FieldByName('COMP').AsFloat;
        WRCalc.DBProduto.FieldByName('LARG').AsFloat                      := Unidade_SubUnidade.FieldByName('LARG').AsFloat;
        WRCalc.DBProduto.FieldByName('ESPESSURA').AsFloat                 := Unidade_SubUnidade.FieldByName('ESPESSURA').AsFloat;
        WRCalc.DBProduto.FieldByName('RENDIMENTO').AsFloat                := Unidade_SubUnidade.FieldByName('RENDIMENTO').AsFloat;

      //    WRCalc.DBProduto.FieldByName('QUANT_RENDIMENTO').AsFloat   := Unidade_SubUnidade.FieldByName('QUANT').AsFloat;
        //      edtRendimento.Value := QuerX.FieldByName('QUANT').AsFloat;
        WRCalc.calcbuild;
        WRCalc.SprCopiarFormula;
      end;
    end;
    AtualizaLabels;
  end;

end;

procedure TFormRendimento.edtUN_SUBUNIDADEPropertiesEditValueChanged(
  Sender: TObject);
var
  QuerX :TFDQuery;
begin
  if lblNF_UNIDADE.Caption <> '' then
    lilblNF_UNIDADE.Visible := edtUN_SUBUNIDADE.Text <> lblNF_UNIDADE.Caption;

  VerificaCadastroDeUnidade(edtUN_SUBUNIDADE.Text);

  QuerX := GeraFDQuery;
  try
    QuerX.SQL.Text := 'select * from UNIDADE_SUBUNIDADE US left join UNIDADE U on U.CODIGO = US.CODUNIDADE where U.UNIDADE = :Unidade';


    QuerX.Close;
    QuerX.ParamByName('Unidade').AsString := edtUN_SUBUNIDADE.Text;
    QuerX.Open;

    QuerX.First;
    if QuerX.RecordCount > 0 then
    begin
      while not QuerX.Eof do
      begin
        cbxUn_SubUnidade_Descricao.Properties.Items.Add(QuerX.FieldByName('UN_SUBUNIDADE_DESCRICAO').AsString);
        QuerX.Next;
      end;
//      cbxUn_SubUnidade_DescricaoPropertiesEditValueChanged(nil);
    end;
  finally
    QuerX.free;
  end;
end;

procedure TFormRendimento.AtualizaLabels;
var
  AOperadorMat :String;
  QuerX :TFDQuery;
begin

//  GrupoLabel.Visible := (WRCalc.DBProduto.FieldByName('UNIDADE').AsString <> WRCalc.DBProduto.FieldByName('UNIDADE_RENDIMENTO').AsString);

  QuerX := GeraFDQuery;
  try
    QuerX.SQL.Text := 'Select * from UNIDADE_SUBUNIDADE where UN_SUBUNIDADE_DESCRICAO = :Un_SubUnidade_Descricao';
    QuerX.ParamByName('Un_SubUnidade_Descricao').AsString := WRCalc.DBProduto.FieldByName('UN_SUBUNIDADE_DESCRICAO').AsString;
    QuerX.Open;
    if QuerX.RecordCount > 0 then
    begin
      lblEspecificacao.Caption   := QuerX.FieldByName('ESPECIFICACAO').AsString;
//      if QuerX.FieldByName('TEM_DIVISAO_MATERIAL').AsString = 'S' then
//        AOperadorMat := '÷'
//      else
        AOperadorMat := 'X';
    end
    else
    begin
      lblEspecificacao.Caption   := '';
      AOperadorMat := 'X';
    end;


    lblConversor.Caption       := AOperadorMat + FloatToStr(WRCalc.DBProduto.FieldByName('RENDIMENTO').AsFloat);

  finally
    QuerX.Free;
  end;
end;

procedure TFormRendimento.tcCadastraUnidadeClick(Sender: TdxTileControlItem);
begin
  CadastraUnidadeEsubUnidade(WRCalc.DBProduto.FieldByName('UN_SUBUNIDADE').AsString);
//  CadastroModalBotaoNovo(TFrmUnidade);
  VerificaCadastroDeUnidade(WRCalc.DBProduto.FieldByName('UN_SUBUNIDADE').AsString);
end;

procedure TFormRendimento.tcMenuItem1Click(Sender: TdxTileControlItem);
begin
  if tcCadastraUnidade.Visible then
  begin
    ShowMessage('Selecione uma unidade de compra valida ou cadastre a unidade clicando no botão acima');
    Exit;
  end;
  cbxUn_SubUnidade_Descricao.Text := TFormUnidadeSubunidade.AbrirExterno(WRCalc.DBProduto.FieldByName('UN_SUBUNIDADE').AsString, WRCalc.DBProduto.FieldByName('UNIDADE').AsString, Unidade_SubUnidade);
  cbxUn_SubUnidade_DescricaoPropertiesEditValueChanged(nil);
end;

procedure TFormRendimento.dxTileControl1Item1Click(Sender: TdxTileControlItem);
begin
//  if edtUN_SUBUNIDADE.Text <> edtUNIDADE.Text then
//  begin
//    if cbxUn_SubUnidade_Descricao.Text = 'Sem Formúla' then
//    begin
//      ShowMessage('Atenção!' + sLineBreak + ' Favor Aplicar uma Formúla' + sLineBreak + 'a Unidade de Compra é Diferente da Unidade de Estoque, e não há nenhuma formúla para converter.');
//      Exit;
//    end;
//  end;
  Close;
end;

procedure TFormRendimento.edtQtdaDePeca_RendimentoPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  WRCalc.ValidaCampoMedidas('QTDADEPECA', DisplayValue);
end;

procedure TFormRendimento.edtComp_RendimentoPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  WRCalc.ValidaCampoMedidas('COMP', DisplayValue);
end;

procedure TFormRendimento.edtLarg_RendimentoPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  WRCalc.ValidaCampoMedidas('LARG', DisplayValue);
end;

procedure TFormRendimento.edtEspessura_RendimentoPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  WRCalc.ValidaCampoMedidas('ESPESSURA', DisplayValue);
end;







end.
