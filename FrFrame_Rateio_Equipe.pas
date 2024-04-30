unit FrFrame_Rateio_Equipe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxClasses, dxLayoutLookAndFeels,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxLayoutContainer, dxLayoutControl, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, dxLayoutcxEditAdapters, cxContainer, cxTextEdit,
  cxMaskEdit, cxButtonEdit, cxLabel, cxCurrencyEdit, dxLayoutControlAdapters,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, IBX.IBCustomDataSet, uControleWR, dxScrollbarAnnotations,
  dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinsDefaultPainters,
  dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TFrame_Rateio_Equipe = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    edtEquipeÎCentro_Trabalho: TcxButtonEdit;
    dxLayoutItem3: TdxLayoutItem;
    edtEquipeÎCentro_TrabalhoÎDESCRICAO: TcxLabel;
    dxLayoutItem4: TdxLayoutItem;
    edtPercentual: TcxCurrencyEdit;
    dxLayoutItem5: TdxLayoutItem;
    btnAdicionarCentroCusto: TcxButton;
    dxLayoutItem6: TdxLayoutItem;
    btnRemoverCentroCusto: TcxButton;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    dxLayoutSkinLookAndFeelBranco: TdxLayoutSkinLookAndFeel;
    dxLayoutSkinLookAndFeelBranco2: TdxLayoutSkinLookAndFeel;
    DS: TDataSource;
    RateioFuncionarioSalario: TFDQuery;
    DSExterno: TDataSource;
    dxLayoutItem7: TdxLayoutItem;
    btnFechar: TcxButton;
    TransaFD: TFDTransaction;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1QTD_HORAS_TRABALHADAS_MENSAL: TcxGridDBColumn;
    cxGrid1DBTableView1CODEQUIPE: TcxGridDBColumn;
    cxGrid1DBTableView1PERC_RATEIO_EQUIPE: TcxGridDBColumn;
    cxGrid1DBTableView1QTD_HORAS_RATEADAS: TcxGridDBColumn;
    cxGrid1DBTableView1Equipe: TcxGridDBColumn;
    dxLayoutItem8: TdxLayoutItem;
    edtDireto: TcxCurrencyEdit;
    dxLayoutItem9: TdxLayoutItem;
    edtIndireto: TcxCurrencyEdit;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    liedtRazaoSocial: TdxLayoutItem;
    edtRazaoSocial: TcxLabel;
    DSPessoaSelecionada: TDataSource;
    liedtQtdHoras: TdxLayoutItem;
    edtQtdHoras: TcxCurrencyEdit;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    dxLayoutItem11: TdxLayoutItem;
    cxLabel2: TcxLabel;
    dxLayoutItem10: TdxLayoutItem;
    lblHoras: TcxLabel;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    procedure btnAdicionarCentroCustoClick(Sender: TObject);
    procedure btnRemoverCentroCustoClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RateioFuncionarioSalarioBeforeOpen(DataSet: TDataSet);
    procedure cxGrid1DBTableView1PERCENTUALPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure edtIndiretoPropertiesEditValueChanged(Sender: TObject);
    procedure RateioFuncionarioSalarioBeforePost(DataSet: TDataSet);
    procedure edtPercentualPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure edtDiretoPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
  private
    { Private declarations }
  protected
    FControleWR: TControleWR;
  public
    { Public declarations }
    class procedure Abrir(ASender: TWinControl; ADataSetExterno, ADataSetPessoaSelecionada: TDataSet; AEquipeDragDrop: String);

  end;

var
  Frame_Rateio_Equipe: TFrame_Rateio_Equipe;

implementation

{$R *.dfm}

uses
  wrFuncoes_Office, UnitFuncoes, Aguarde, wrFuncoes, Frame_CadSalario;

class procedure TFrame_Rateio_Equipe.Abrir(ASender: TWinControl; ADataSetExterno, ADataSetPessoaSelecionada: TDataSet; AEquipeDragDrop: String);
var
  AFrmFrameCentroCusto: TFrame_Rateio_Equipe;
begin
  AFrmFrameCentroCusto:= TFrame_Rateio_Equipe.Create(ASender.Owner);
  try
    AFrmFrameCentroCusto.PopupMode   := pmAuto;
    AFrmFrameCentroCusto.DSExterno.DataSet  := ADataSetExterno;
    AFrmFrameCentroCusto.DSPessoaSelecionada.DataSet  := ADataSetPessoaSelecionada;
    TFDQuery(AFrmFrameCentroCusto.DS.DataSet).Transaction := TFDQuery(AFrmFrameCentroCusto.DSExterno.DataSet).Transaction;
    AFrmFrameCentroCusto.edtEquipeÎCentro_Trabalho.EditValue := AEquipeDragDrop;
    AFrmFrameCentroCusto.edtRazaoSocial.Caption := TFDQuery(AFrmFrameCentroCusto.DSExterno.DataSet).FieldByName('DESCRICAO').AsString;
    AFrmFrameCentroCusto.edtQtdHoras.Text       := AFrmFrameCentroCusto.DSPessoaSelecionada.DataSet.FieldByName('QTD_HORAS_TRABALHADAS_MENSAL').AsString;
    if AFrmFrameCentroCusto.DSPessoaSelecionada.DataSet.Locate('TIPO_RATEIO', 'INDIRETO', []) then
    begin
      AFrmFrameCentroCusto.edtIndireto.Value := AFrmFrameCentroCusto.DSPessoaSelecionada.DataSet.FieldByName('PERC_RATEIO').AsFloat;
      AFrmFrameCentroCusto.edtDireto.Value := 100 - AFrmFrameCentroCusto.edtIndireto.Value;

    end
    else
      AFrmFrameCentroCusto.edtIndireto.Value := 0;

//    AFrmFrameCentroCusto.DS.AutoEdit := AFrmFrameCentroCusto.WRCalc.DSVendaOuCompra.AutoEdit;
//    AFrmFrameCentroCusto.edtPercentual.SetFocusWR;
    PosicionarControleAbaixoDe(AFrmFrameCentroCusto, ASender);
    AFrmFrameCentroCusto.ShowModal;
  finally
    AFrmFrameCentroCusto.Free;
  end;
end;


procedure TFrame_Rateio_Equipe.btnAdicionarCentroCustoClick(Sender: TObject);
var
  APercentual : Double;
begin
  try
    if edtPercentual.Value < 0 then
    begin
      ShowMessage('A % de rateio não pode ser um valor negativo');
      edtPercentual.SetFocusWR;
      Exit;
    end;

    APercentual := VerificaPercentual(APercentual, RateioFuncionarioSalario, 'PERC_RATEIO');
    if (APercentual + edtPercentual.Value) > 100 then
    begin
      ShowMessage('Não pode passar de 100%');
      exit;
    end;
    RateioFuncionarioSalario.Insert;
    DSCopiarCamposIguais(DSExterno.DataSet, RateioFuncionarioSalario, ['CODIGO', 'CODUSUARIO_ALTERACAO', 'DT_ALTERACAO', 'CODEQUIPE', 'PERC_RATEIO_EQUIPE']);
    RateioFuncionarioSalario.FieldByName('CODIGO').AsInteger             := Trunc(GetProximoCodigoGen('CR_PRODUTO'));
    RateioFuncionarioSalario.FieldByName('PERC_RATEIO').Value            := edtPercentual.Value;
    RateioFuncionarioSalario.FieldByName('CODEQUIPE').AsString           := edtEquipeÎCentro_Trabalho.EditValue;
    RateioFuncionarioSalario.FieldByName('DT_ALTERACAO').AsDateTime      := DataHoraSys;
    RateioFuncionarioSalario.FieldByName('QTD_HORAS_RATEADAS').AsFloat   := RateioFuncionarioSalario.FieldByName('QTD_HORAS_TRABALHADAS_MENSAL').AsFloat*edtPercentual.Value/100;
    RateioFuncionarioSalario.FieldByName('TIPO_RATEIO').AsString         := 'DIRETO';
    CalculaValores(RateioFuncionarioSalario, 'mês');
    RateioFuncionarioSalario.Post;
    RateioFuncionarioSalario.Refresh;
  except
    on E:Exception do
    begin
      Debug(E.Message);
      RateioFuncionarioSalario.Cancel;
      Exit;
    end;
  end;
  edtEquipeÎCentro_Trabalho.SetFocusWR;
  edtEquipeÎCentro_Trabalho.Clear;
  edtPercentual.Clear;
end;

procedure TFrame_Rateio_Equipe.btnRemoverCentroCustoClick(Sender: TObject);
begin
  if RateioFuncionarioSalario.IsEmpty then
    Exit;
  try
    RateioFuncionarioSalario.Delete;
  except
  end;
end;

procedure TFrame_Rateio_Equipe.cxGrid1DBTableView1PERCENTUALPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin         {
  FinanceiroCentroCusto.FieldByName('VALOR').AsFloat                 := (DSExterno.DataSet.FieldByName('VALOR').AsFloat * (DisplayValue/100));
  FinanceiroCentroCusto.FieldByName('PERCENTUAL').AsFloat            := DisplayValue;
  FinanceiroCentroCusto.Refresh;  }
end;

procedure TFrame_Rateio_Equipe.edtDiretoPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TFrame_Rateio_Equipe.edtIndiretoPropertiesEditValueChanged(
  Sender: TObject);
begin
  edtIndireto.Value := 100 - edtDireto.Value;
  lblHoras.Caption := (edtDireto.Value * edtQtdHoras.Value / 100).ToString;
end;

procedure TFrame_Rateio_Equipe.edtPercentualPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TFrame_Rateio_Equipe.RateioFuncionarioSalarioBeforeOpen(
  DataSet: TDataSet);
begin
  RateioFuncionarioSalario.Params[0] := TFDQuery(DSExterno.DataSet).Params[0];
  RateioFuncionarioSalario.Params[1] := TFDQuery(DSExterno.DataSet).Params[1];
//  RateioFuncionarioSalario.ParamByName('PESSOA_FUNCIONARIO_CODIGO').AsString := TFDQuery(DSExterno.DataSet).FieldByName('PESSOA_FUNCIONARIO_CODIGO').AsString;
end;

procedure TFrame_Rateio_Equipe.RateioFuncionarioSalarioBeforePost(
  DataSet: TDataSet);
begin
  RateioFuncionarioSalario.FieldByName('QTD_HORAS_RATEADAS').AsFloat := RateioFuncionarioSalario.FieldByName('PERC_RATEIO').AsFloat * edtQtdHoras.Value / 100;
end;

procedure TFrame_Rateio_Equipe.FormCreate(Sender: TObject);
begin
  FControleWR := TControleWR.Create;
  FControleWR.Inicializar(Self);
end;

procedure TFrame_Rateio_Equipe.FormShow(Sender: TObject);
begin
  RateioFuncionarioSalario.Open;
end;

procedure TFrame_Rateio_Equipe.btnFecharClick(Sender: TObject);
Var
  APercRestante, APercentual :Double;
begin
  if RateioFuncionarioSalario.recordCount > 0 then
  begin
    APercentual := VerificaPercentual(APercentual, RateioFuncionarioSalario, 'PERC_RATEIO');
    if (APercentual < edtDireto.Value) or (APercentual > edtDireto.Value) then
    begin
      ShowMessage('O somatório do rateio deve dar ' +edtDireto.Text+ '%, referente ao rateio do Custo Direto.');
      exit;
    end else
    begin
      if DSPessoaSelecionada.DataSet.Locate('TIPO_RATEIO', 'INDIRETO', []) then
        DSPessoaSelecionada.DataSet.Delete;

      if edtIndireto.Value > 0 then
      begin
        APercRestante := 100;

        RateioFuncionarioSalario.First;
        while not RateioFuncionarioSalario.eof do
        begin
          APercRestante := APercRestante - RateioFuncionarioSalario.FieldByName('PERC_RATEIO').Value;
          RateioFuncionarioSalario.Next;
        end;

        RateioFuncionarioSalario.Insert;
        DSCopiarCamposIguais(DSExterno.DataSet, RateioFuncionarioSalario, ['CODIGO', 'CODUSUARIO_ALTERACAO', 'DT_ALTERACAO', 'CODEQUIPE', 'PERC_RATEIO_EQUIPE']);
        RateioFuncionarioSalario.FieldByName('CODIGO').AsInteger             := Trunc(GetProximoCodigoGen('CR_PRODUTO'));
        RateioFuncionarioSalario.FieldByName('PERC_RATEIO').Value            := APercRestante;
        RateioFuncionarioSalario.FieldByName('CODEQUIPE').AsString           := '0';
        RateioFuncionarioSalario.FieldByName('DT_ALTERACAO').AsDateTime      := DataHoraSys;
        RateioFuncionarioSalario.FieldByName('QTD_HORAS_RATEADAS').AsFloat   := RateioFuncionarioSalario.FieldByName('QTD_HORAS_TRABALHADAS_MENSAL').AsFloat*APercRestante/100;
        RateioFuncionarioSalario.FieldByName('TIPO_RATEIO').AsString         := 'INDIRETO';
        CalculaValores(RateioFuncionarioSalario, 'mês');
        RateioFuncionarioSalario.Post;
        RateioFuncionarioSalario.Refresh;
      end;

      DSExterno.DataSet.Refresh;
//      RateioFuncionarioSalario.Transaction.Commit;
    end;
  end;
  Close;
end;



end.
