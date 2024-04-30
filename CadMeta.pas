unit CadMeta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CadM, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxContainer, cxEdit,
  dxLayoutControlAdapters, dxLayoutcxEditAdapters, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  cxCurrencyEdit, cxDBEdit, dxLayoutContainer, cxDropDownEdit, cxCalendar,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, frxClass, frxDBSet,
  UCHistDataset, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet,
  System.Generics.Collections, WREventos, UCBase, cxClasses,
  dxLayoutLookAndFeels, System.ImageList, Vcl.ImgList, Vcl.ExtCtrls,
  dxStatusBar, cxLabel, cxMaskEdit, cxTextEdit, Vcl.StdCtrls, cxButtons,
  dxLayoutControl, cxSpinEdit, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, dxDateRanges, cxDBData, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxButtonEdit, Vcl.ComCtrls, dxCore, cxDateUtils, dxWheelPicker,
  dxNumericWheelPicker, dxDateTimeWheelPicker, dxDBDateTimeWheelPicker,
  dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxScrollbarAnnotations,
  dxUIAdorners, WRButtonsEditAdd, FrDashboardBlocoMestre,
  FrDashboardBlocoGrafico, dxCustomTileControl, dxTileControl;

type
  TFrmMeta = class(TFrmCadM)
    cbxEmpresa: TcxDBLookupComboBox;
    dxLayoutItem1: TdxLayoutItem;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutItem6: TdxLayoutItem;
    cxDBSpinEdit1: TcxDBSpinEdit;
    dxLayoutItem8: TdxLayoutItem;
    cxDBSpinEdit2: TcxDBSpinEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem5: TdxLayoutItem;
    edtPercentual: TcxCurrencyEdit;
    dxLayoutItem9: TdxLayoutItem;
    edtValor: TcxCurrencyEdit;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    btnAdicionarProduto: TcxButton;
    dxLayoutItem12: TdxLayoutItem;
    btnRemoverProduto: TcxButton;
    Meta_Detalhe: TFDQuery;
    DSMeta_Detalhe: TDataSource;
    cxGrid1DBTableView1CODMETA: TcxGridDBColumn;
    cxGrid1DBTableView1TABELA: TcxGridDBColumn;
    cxGrid1DBTableView1CODTABELA: TcxGridDBColumn;
    cxGrid1DBTableView1PERCENTUAL: TcxGridDBColumn;
    cxGrid1DBTableView1VALOR: TcxGridDBColumn;
    dxLayoutItem14: TdxLayoutItem;
    lblCategoriaÎProduto_CategoriaÎDESCRICAO: TcxLabel;
    dxLayoutGroup1: TdxLayoutGroup;
    TabCategoria: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    TabTipoProduto: TdxLayoutGroup;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    dxLayoutItem13: TdxLayoutItem;
    edtCategoriaÎProduto_Categoria: TcxButtonEdit;
    dxLayoutItem15: TdxLayoutItem;
    lblTipoÎProduto_TipoÎDESCRICAO: TcxLabel;
    dxLayoutItem20: TdxLayoutItem;
    edtMarcaÎProduto_Marca: TcxButtonEdit;
    dxLayoutItem21: TdxLayoutItem;
    edtMarcaÎProduto_MarcaÎDescricao: TcxLabel;
    TabMarca: TdxLayoutGroup;
    cxGrid1DBTableView1QUANT: TcxGridDBColumn;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    TabFuncionario: TdxLayoutGroup;
    dxLayoutItem25: TdxLayoutItem;
    edtAtendenteÎPessoasÎRAZAOSOCIAL: TcxLabel;
    dxLayoutItem27: TdxLayoutItem;
    edtQuant: TcxCurrencyEdit;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    edtTipoÎProduto_Tipo: TcxButtonEdit;
    dxDBDateTimeWheelPicker1: TdxDBDateTimeWheelPicker;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutItem16: TdxLayoutItem;
    edtAtendenteÎPessoas: TcxButtonEdit;
    tcCategoria: TdxTileControl;
    dxLayoutItem18: TdxLayoutItem;
    dxTileControl1Group1: TdxTileControlGroup;
    dxTileControl1Item1: TdxTileControlItem;
    KPI: TFDQuery;
    tcTotal: TdxTileControl;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    tcVendaExcluida: TdxTileControl;
    dxLayoutItem22: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure dxLayoutGroup1TabChanged(Sender: TObject);
    procedure btnAdicionarProdutoClick(Sender: TObject);
    procedure btnRemoverProdutoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CadastroAfterOpen(DataSet: TDataSet);
    procedure CadastroBeforeClose(DataSet: TDataSet);
    procedure btnConfirmarClick(Sender: TObject);
    procedure edtPercentualPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure edtValorPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cxButton3Click(Sender: TObject);
    procedure cxDBCurrencyEdit1PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure TimerStatusBarTimer(Sender: TObject);
    procedure cxButton1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure cxButton1Click(Sender: TObject);
  private
    procedure DefineTipo;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMeta: TFrmMeta;

implementation

{$R *.dfm}

uses
  ConMeta, Principal, wrPreencheLookup, StrUtils, DateUtils, wrForms, wrFuncoes_Office, wrFuncoes,
  wrConstantes, Math, unitFuncoes, Base_APP_Menu;

procedure TFrmMeta.btnAdicionarProdutoClick(Sender: TObject);
var
  APercentual : Double;
  ATipo: String;
begin
  inherited;
  VerificaSePodeAlteraDataSet(Cadastro);
  try
//    APercentual := VerificaPercentual(APercentual, Meta_Detalhe);
//    if (APercentual + edtPercentual.Value) > 100 then
//    begin
//      ShowMessage('Não pode passar do valor total da meta');
//      exit;
//    end;
    Meta_Detalhe.Insert;
    Meta_Detalhe.FieldByName('CODMETA').AsInteger   :=  Cadastro.FieldByName('CODIGO').AsInteger;
    if TabCategoria.ActuallyVisible then
    begin
      ATipo := 'PRODUTO_CATEGORIA';
      Meta_Detalhe.FieldByName('TABELA').AsString    := ATipo;
      Meta_Detalhe.FieldByName('CODTABELA').AsString := edtCategoriaÎProduto_Categoria.EditValue;
    end;
    if TabTipoProduto.ActuallyVisible then
    begin
      ATipo := 'PRODUTO_TIPO';
      Meta_Detalhe.FieldByName('TABELA').AsString    := ATipo;
      Meta_Detalhe.FieldByName('CODTABELA').AsString := edtTipoÎProduto_Tipo.EditValue;
    end;
    if TabMarca.ActuallyVisible then
    begin
      ATipo := 'PRODUTO_MARCA';
      Meta_Detalhe.FieldByName('TABELA').AsString    := ATipo;
      Meta_Detalhe.FieldByName('CODTABELA').AsString := edtMarcaÎProduto_Marca.EditValue;
    end;
    if TabFuncionario.ActuallyVisible then
    begin
      ATipo := 'PESSOAS';
      Meta_Detalhe.FieldByName('TABELA').AsString    := ATipo;
      Meta_Detalhe.FieldByName('CODTABELA').AsString := FControleWR.FindComponente(edtAtendenteÎPessoas).Pessoa.Codigo;
    end;

    Meta_Detalhe.FieldByName('PERCENTUAL').AsFloat  := edtPercentual.Value;
    Meta_Detalhe.FieldByName('VALOR').AsFloat       := edtValor.Value;
    Meta_Detalhe.FieldByName('QUANT').AsFloat       := edtQuant.Value;
    Meta_Detalhe.Post;
    Meta_Detalhe.Refresh;
  except
    ShowMessage(ATipo + ' já está Rateado para essa Meta');
    Exit;
  end;
  edtCategoriaÎProduto_Categoria.Clear;
  edtAtendenteÎPessoas.Clear;
  edtMarcaÎProduto_Marca.Clear;
  edtTipoÎProduto_Tipo.Clear;
  edtPercentual.Clear;
  edtValor.Clear;
  edtQuant.Clear;
end;

procedure TFrmMeta.btnConfirmarClick(Sender: TObject);
var
  ADias :Integer;
  ATotalDias :Integer;
  QuerX: TFDQuery;
begin
  if Cadastro.FieldByName('DATA').IsNull then
    Cadastro.FieldByName('DATA').AsDateTime := DataHoraSys;
    
  QuerX := GeraFDQuery;
  try
    QuerX.SQL.Text := 'select DESCRICAO, DATA' + #13#10 +
                      'from META M' + #13#10 +
                      'where (M.CODEMPRESA = :CODEMPRESA) ' + #13#10 +
                            'and (M.CODIGO <> :CODIGO)';
//
//
    QuerX.ParamByName('CODEMPRESA').AsInteger := Cadastro.FieldByName('CODEMPRESA').AsInteger;
    QuerX.ParamByName('CODIGO').AsInteger     := Cadastro.FieldByName('CODIGO').AsInteger;
    QuerX.Open;
    QuerX.First;
    while not QuerX.Eof do
    begin
      if FormatDateTime('MM/YYYY',QuerX.FieldByName('DATA').AsDateTime) = FormatDateTime('MM/YYYY',Cadastro.FieldByName('DATA').AsDateTime) then
      begin
        ShowMessage('Já Existe uma Meta para esse Mês: ' + QuerX.FieldByName('DESCRICAO').AsString);
        Exit;
      end;
      QuerX.Next;
    end;
  finally
    QuerX.Free;
  end;
  inherited;
end;

procedure TFrmMeta.btnRemoverProdutoClick(Sender: TObject);
begin
  inherited;
  if Meta_Detalhe.IsEmpty then
    Exit;
  try
    Meta_Detalhe.Delete;
  except
  end;
end;

procedure TFrmMeta.CadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  Meta_Detalhe.Open;
end;

procedure TFrmMeta.CadastroBeforeClose(DataSet: TDataSet);
begin
  inherited;
  Meta_Detalhe.Close;
end;

procedure TFrmMeta.cxButton1Click(Sender: TObject);
var
  QuerX :TFDQuery;
  QuerY :TFDQuery;
  AItem: TdxTileControlItem;
  ADescricao: String;
  ACodigo: Integer;
begin
  inherited;
  QuerX := GeraFDQuery;
  Query := GeraFDQuery;
  try
    QuerX.SQL.Text := 'select count(DISTINCT v.CODIGO) as QUANT_REGISTROS, T.CODIGO, T.descricao, v.dt_competencia,  coalesce(sum(VP.total_relatorio), 0) as TEXT1' + #13#10 +
                      'from VENDA V' + #13#10 +
                      'LEFT JOIN venda_produto vp ON vp.codvenda = v.codigo' + #13#10 +
                      'left join produto p on p.codigo = vp.codproduto' + #13#10 +
                      'left join produto_categoria T on T.codigo = p.codproduto_CATEGORIA' + #13#10 +
                      'where (V.VENDA_FINALIZADO = ''S'') and (vp.parent is null)' + #13#10 +
                      'and (V.DT_COMPETENCIA between :Dt_Inicio and :Dt_Fim)' + #13#10 +
                      'group by 2,3,4' + #13#10 +
                      'order by 2';
    QuerX.ParamByName('Dt_Inicio').AsDateTime  := StartOfTheMonth(DataHoraSys);
    QuerX.ParamByName('Dt_Fim').AsDateTime     := EndOfTheMonth(DataHoraSys);
    QuerX.Open;


    QuerY.SQL.Text := 'delete from KPI_DIA';
    QuerY.ExecSQL;

    QuerY.Transaction.StartTransaction;
    QuerY.SQL.Text := 'select * from KPI_DIA';
    QuerY.Open;

    while not QuerX.Eof do
    begin
      QuerY.Insert;
      QuerY.FieldByName('CODIGO').AsInteger := ProximoCodigoGen('CR_KPI');

      if QuerX.FieldByName('CODIGO').IsNull then
        ACodigo := 0
      else
        ACodigo := QuerX.FieldByName('CODIGO').AsInteger;

      if QuerX.FieldByName('DESCRICAO').AsString = '' then
        ADescricao := 'Sem Classificação'
      else
        ADescricao := QuerX.FieldByName('DESCRICAO').AsString;

      QuerY.FieldByName('CHAVE_PK1').AsInteger       := ACodigo;
      QuerY.FieldByName('DESCRICAO').AsString        := ADescricao;
      QuerY.FieldByName('QUANT_REGISTROS').AsInteger := QuerX.FieldByName('QUANT_REGISTROS').AsInteger;
      QuerY.FieldByName('ATIVO').AsString            := 'S';
      QuerY.FieldByName('TEXT1').AsString            := FormatFloat('R$ ##,###,##0.00',QuerX.FieldByName('TEXT1').AsFloat);
      QuerY.FieldByName('VALUE1').AsFloat            := QuerX.FieldByName('TEXT1').AsFloat;
      QuerY.FieldByName('KPI_TIPO').AsString         := 'VENDA_CATEGORIA';
      QuerY.FieldByName('TAG').AsInteger             := 40;
      QuerY.FieldByName('DT_COMPETENCIA').AsDateTime := QuerX.FieldByName('DT_COMPETENCIA').AsDateTime;
//      QuerY.FieldByName('TAG_ESTILO').AsInteger
      QuerY.Post;
      QuerX.Next;
    end;
//
//    QuerX.SQL.Text := 'select count(DISTINCT v.CODIGO) as QUANT_REGISTROS from VENDA V' + #13#10 +
//                      'where (V.VENDA_FINALIZADO = ''E'')';
//    QuerX.Open;
//
//    QuerY.Insert;
//    QuerY.FieldByName('CODIGO').AsInteger          := ProximoCodigoGen('CR_KPI');
//    QuerY.FieldByName('DESCRICAO').AsString        := 'VENDAS EXCLUIDAS';
//    QuerY.FieldByName('QUANT_REGISTROS').AsInteger := QuerX.FieldByName('QUANT_REGISTROS').AsInteger;
//    QuerY.FieldByName('ATIVO').AsString            := 'S';
//    QuerY.FieldByName('TEXT1').AsString            := IntToStr(QuerX.FieldByName('QUANT_REGISTROS').AsInteger);
//    QuerY.FieldByName('VALUE1').AsFloat            := QuerX.FieldByName('QUANT_REGISTROS').AsInteger;
//    QuerY.FieldByName('META').AsFloat              := 1;
//    QuerY.FieldByName('KPI_TIPO').AsString         := 'VENDA_EXCLUIDA';
//    QuerY.FieldByName('TAG').AsInteger             := 40;
//    QuerY.Post;

    QuerY.Transaction.Commit;

  finally
    QuerX.free;
    QuerY.free;
  end;

//    QuerY.SQL.Text := 'select * from KPI where KPI_TIPO = ''VENDA_CATEGORIA''';
//    QuerY.Open;
//
//    tcCategoria.BeginUpdate;
//    try
//      tcCategoria.Items.Clear;
//      QuerY.First;
//      while not QuerY.EOF do
//      begin
//        AItem                      := tcCategoria.CreateItem(False);
//        AItem.Size                 := tcisLarge;
//        AItem.Tag                  := QuerY.FieldByName('CHAVE_PK1').AsInteger;
//        AItem.Text1.Value          := QuerY.FieldByName('DESCRICAO').AsString;
//        AItem.Text2.Align          := oaMiddleCenter;
//        AItem.Text2.AssignedValues := [avFont];
//        AItem.Text2.Font.Charset   := DEFAULT_CHARSET;
//        AItem.Text2.Font.Color     := clDefault;
//        AItem.Text2.Font.Height    := -27;
//        AItem.Text2.Font.Name      := 'Segoe UI';
//        AItem.Text2.Value          := FormatFloat('R$ ##,###,##0.00',QuerY.FieldByName('VALUE1').AsFloat);
//        QuerY.Next;
//      end
//    finally
//      tcCategoria.EndUpdate;
//    end;
//
//    QuerY.SQL.Text := 'select DESCRICAO, TEXT1, VALUE1, META from KPI where KPI_TIPO = ''VENDA_EXCLUIDA''';
//    QuerY.Open;
//
//    tcVendaExcluida.BeginUpdate;
//    try
//      tcVendaExcluida.Items.Clear;
//
//      AItem                      := tcVendaExcluida.CreateItem(False);
//      AItem.Size                 := tcisLarge;
////        AItem.Tag                  := QuerY.FieldByName('CHAVE_PK1').AsInteger;
//      AItem.Text1.Value          := QuerY.FieldByName('DESCRICAO').AsString;
//      AItem.Text2.Align          := oaMiddleCenter;
//      AItem.Text2.AssignedValues := [avFont];
//      AItem.Text2.Font.Charset   := DEFAULT_CHARSET;
//      AItem.Text2.Font.Color     := clDefault;
//      AItem.Text2.Font.Height    := -27;
//      AItem.Text2.Font.Name      := 'Segoe UI';
//      AItem.Text2.Value          := QuerY.FieldByName('TEXT1').AsString;
//
//      if QuerY.FieldByName('VALUE1').asFloat >= QuerY.FieldByName('META').asFloat then
//      begin
//        AItem.Style.GradientBeginColor := clRed;
//        AItem.Style.GradientEndColor := clRed;
//      end
//      else
//      begin
//        AItem.Style.GradientBeginColor := clDefault;
//        AItem.Style.GradientEndColor := clDefault;
//      end;
//
//    finally
//      tcVendaExcluida.EndUpdate;
//    end;
//
//    QuerY.SQL.Text := 'select SUM(VALUE1) as VALUE1 from KPI where KPI_TIPO = ''VENDA_CATEGORIA''';
//    QuerY.Open;
//
//    tcTotal.BeginUpdate;
//    try
//      tcTotal.Items.Clear;
//
//      AItem                      := tcTotal.CreateItem(False);
//      AItem.Size                 := tcisLarge;
////        AItem.Tag                  := QuerY.FieldByName('CHAVE_PK1').AsInteger;
//      AItem.Text1.Value          := 'TOTAL FATURAMENTO';
//      AItem.Text2.Align          := oaMiddleCenter;
//      AItem.Text2.AssignedValues := [avFont];
//      AItem.Text2.Font.Charset   := DEFAULT_CHARSET;
//      AItem.Text2.Font.Color     := clDefault;
//      AItem.Text2.Font.Height    := -27;
//      AItem.Text2.Font.Name      := 'Segoe UI';
//      AItem.Text2.Value          := FormatFloat('R$ ##,###,##0.00',QuerY.FieldByName('VALUE1').AsFloat);
//
//    finally
//      tcTotal.EndUpdate;
//    end;



end;

procedure TFrmMeta.cxButton1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited;
  MouseMoveMenuKPIButton(Sender, Shift, X, Y);
end;

procedure TFrmMeta.cxButton3Click(Sender: TObject);
begin
  inherited;
//  try
    Meta_Detalhe.Insert;
    Meta_Detalhe.FieldByName('CODMETA').AsInteger   :=  Cadastro.FieldByName('CODIGO').AsInteger;
    if TabMarca.ActuallyVisible then
    begin
      Meta_Detalhe.FieldByName('TABELA').AsString    := 'PRODUTO_MARCA';
      Meta_Detalhe.FieldByName('CODTABELA').AsString := edtMarcaÎProduto_Marca.EditValue;
    end;
    Meta_Detalhe.FieldByName('VALOR').AsFloat  := edtQuant.Value;
    Meta_Detalhe.FieldByName('QUANT').AsFloat  := edtQuant.Value;
    Meta_Detalhe.Post;
    Meta_Detalhe.Refresh;
//  except
//    ShowMessage(ATipo + ' já está Rateado para essa Meta');
//    Exit;
//  end;
  edtMarcaÎProduto_Marca.SetFocusWR;
  edtMarcaÎProduto_Marca.Clear;
  edtQuant.Clear;
end;

procedure TFrmMeta.cxDBCurrencyEdit1PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var
  QuerX :TFDQuery;
begin
  inherited;
  QuerX := GeraFDQuery(TransaFD);
  try
    QuerX.SQL.Text := 'Select * from Meta_Detalhe md where md.codmeta = :CodMeta';
    QuerX.ParamByName('CodMeta').AsInteger := Cadastro.FieldByName('CODIGO').AsInteger;
    QuerX.Open;
    QuerX.First;
    if QuerX.RecordCount > 0 then
    begin
      if DisplayValue < Cadastro.FieldByName('VALOR').AsFloat then
      begin
        ShowMessage('Já existe metas configuradas, o valor da meta não pode ser reduzido');
        DisplayValue := Cadastro.FieldByName('VALOR').AsFloat;
      end
      else
      begin
        while not QuerX.Eof do
        begin
          QuerX.Edit;
          QuerX.FieldByName('PERCENTUAL').AsFloat := ValidaNumero(PercRelativo(QuerX.FieldByName('VALOR').AsFloat, DisplayValue));
          QuerX.Next;
        end;
        Meta_Detalhe.Close;
        Meta_Detalhe.Open;
      end;
    end;
  finally
    QuerX.Free;
  end;
end;

procedure TFrmMeta.dxLayoutGroup1TabChanged(Sender: TObject);
begin
  inherited;
  DefineTipo;
end;

procedure TFrmMeta.edtPercentualPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  edtValor.Value := ValidaNumero((Cadastro.FieldByname('VALOR').AsFloat * DisplayValue)/100);
end;

procedure TFrmMeta.edtValorPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  inherited;
  edtPercentual.Value := ValidaNumero(PercRelativo(DisplayValue, Cadastro.FieldByname('VALOR').AsFloat));
end;

procedure TFrmMeta.DefineTipo;
begin
  if TabCategoria.ActuallyVisible then
  begin
    Meta_Detalhe.Close;
    Meta_Detalhe.SQL[1] := 'C.DESCRICAO ';
    Meta_Detalhe.SQL[3] := 'left join PRODUTO_CATEGORIA C on C.CODIGO = MD.CODTABELA ';
    Meta_Detalhe.ParamByName('Tabela').AsString := 'PRODUTO_CATEGORIA';
    Meta_Detalhe.Open;
  end;
  if TabMarca.ActuallyVisible then
  begin
    Meta_Detalhe.Close;
    Meta_Detalhe.SQL[1] := 'M.DESCRICAO ';
    Meta_Detalhe.SQL[3] := 'left join PRODUTO_MARCA M on M.CODIGO = MD.CODTABELA ';
    Meta_Detalhe.ParamByName('Tabela').AsString := 'PRODUTO_MARCA';
    Meta_Detalhe.Open;
  end;
  if TabTipoProduto.ActuallyVisible then
  begin
    Meta_Detalhe.Close;
    Meta_Detalhe.SQL[1] := 'T.DESCRICAO ';
    Meta_Detalhe.SQL[3] := 'left join PRODUTO_TIPO T on T.CODIGO = MD.CODTABELA ';
    Meta_Detalhe.ParamByName('Tabela').AsString := 'PRODUTO_TIPO';
    Meta_Detalhe.Open;
  end;
  if TabFuncionario.ActuallyVisible then
  begin
    Meta_Detalhe.Close;
    Meta_Detalhe.SQL[1] := 'P.RAZAOSOCIAL as DESCRICAO ';
    Meta_Detalhe.SQL[3] := 'left join PESSOAS P on P.CODIGO = MD.CODTABELA ';
    Meta_Detalhe.ParamByName('Tabela').AsString := 'PESSOAS';
    Meta_Detalhe.Open;
  end;


end;

procedure TFrmMeta.FormCreate(Sender: TObject);
begin
  inherited;
  PreencheLookupEmpresa(cbxEmpresa.Properties);
end;

procedure TFrmMeta.FormShow(Sender: TObject);
begin
  inherited;
  DefineTipo;
end;

procedure TFrmMeta.TimerStatusBarTimer(Sender: TObject);
begin
  inherited;
//  btnMineracaoClick(nil);
end;

initialization
  RegisterClass(TFrmCadM);

end.
