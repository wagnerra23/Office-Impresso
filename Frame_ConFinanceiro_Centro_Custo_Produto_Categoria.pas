unit Frame_ConFinanceiro_Centro_Custo_Produto_Categoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Frame_ConFinanceiro_Centro_Custo_Mestre, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White, cxContainer, cxEdit, Vcl.ComCtrls, dxCore,
  cxDateUtils, Vcl.Menus, cxStyles, cxSchedulerStorage, cxSchedulerCustomControls, cxSchedulerDateNavigator, dxLayoutcxEditAdapters, dxLayoutControlAdapters,
  dxLayoutContainer, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData, cxCalendar,
  cxCurrencyEdit, cxLabel, cxCheckBox, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, dxScreenTip, uWRFormataCamposDataSet, FireDAC.Comp.Client,
  cxCustomStatusKeeper, cxStatusKeeper, UCHistDataset, System.Generics.Collections, WREventos, frxClass, frxDBSet, System.ImageList, Vcl.ImgList, cxImageList,
  System.Actions, Vcl.ActnList, dxCustomHint, cxHint, Vcl.ExtCtrls, dxLayoutLookAndFeels, FireDAC.Comp.DataSet, dxPSCore, dxPScxCommon, cxClasses,
  cxCustomListBox, cxCheckListBox, cxButtonEdit, uButtonFlat, cxGridViewLayoutContainer, cxGridLayoutView, cxGridDBLayoutView, cxGridLevel,
  cxGridCustomLayoutView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, cxMemo, cxDateNavigator, cxDropDownEdit,
  Vcl.StdCtrls, cxButtons, cxDateProfileButton, cxTextEdit, cxMaskEdit, dxLayoutControl, dxCustomTileControl, dxTileControl, cxGroupBox, cxCheckGroup;

type
  TFrame_ConsuFinanceiro_Centro_Custo_Produto_Categoria = class(TFrame_ConsuFinanceiro_Centro_Custo_Mestre)
    Financeiro_Centro_Custo: TFDQuery;
    FinanceiroCentroCusto: TFDQuery;
    AtualizaCentroCusto: TdxTileControlItem;
    AnalisaCentrodeCusto: TdxTileControlItem;
    procedure dxTileControl1Item1Click(Sender: TdxTileControlItem);
    procedure GridSubGridViewDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure GridConsultaDBTableView1DataControllerSummaryAfterSummary(
      ASender: TcxDataSummary);
    procedure AnalisaCentrodeCustoClick(Sender: TdxTileControlItem);
    procedure WREventosCadastroPreencheVariaveisImpressaoPersonalizada(
      Sender: TObject);
    procedure tiImprimirClick(Sender: TdxTileControlItem);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  procedure Custos_por_Categoria_Venda(ADataInicial:TDate);

var
  Frame_ConsuFinanceiro_Centro_Custo_Produto_Categoria: TFrame_ConsuFinanceiro_Centro_Custo_Produto_Categoria;


implementation

{$R *.dfm}
Uses Base, UnitFuncoes, Aguarde, wrFuncoes, DateUtils, FrmDataCentroCusto, Tag.Form, Controller.Financeiro_Centro_Custo;

procedure Custos_por_Categoria_Venda(ADataInicial:TDate);
//var
//  QuerX, QuerFinanceiro :TFDQuery;
begin
//  QuerX := GeraFDQuery(TransaDragAndDrop);
//  QuerFinanceiro := GeraFDQuery(TransaDragAndDrop);
//  try
//    QuerX.sql.text := 'select P.CODPRODUTO_CATEGORIA as CODPRODUTO_GRUPO, PC.DESCRICAO, sum(VP.QUANT) as VENDAS, ' +
//                             'sum((VP.VALOR * VP.QUANT) - coalesce(VP.VDESC, 0) + coalesce(VP.VOUTRO, 0)) as Total, ' +
//                             'sum(v.total) as TotalVenda ' +
//                      'from VENDA V ' +
//                      'left join VENDA_PRODUTO VP on (V.CODIGO = VP.CODVENDA) ' +
//                      'left join PRODUTO P on (P.CODIGO = VP.CODPRODUTO) ' +
//                      'left join PRODUTO_CATEGORIA PC on (P.CODPRODUTO_CATEGORIA = PC.CODIGO) ' +
//                      'where V.STATUS like ''ATIVO%'' ' +
//                            'and (V.DT_FATURAMENTO is not null) ' +
//                            'and (VP.PARENT is null) ' +
//                            'and (V.DT_EMISSAO between :DTINICIO and :DTFIM) ' +
//                            'group by 1, 2 order by 4 DESC ';
//
//    QuerX.ParamByName('DtInicio').AsDateTime := StartOfTheDay(edtDT_INICIO.Date);
//    QuerX.ParamByName('DtFim').AsDateTime    := endOfTheDay(edtDT_Fim.Date);
//    QuerX.First;
//    while not QuerX.Eof do
//    begin
//      try
//        if QuerX.FieldByName('TOTAL').AsFloat = 0 then
//        begin
//          QuerX.Next;
//          Continue;
//        end;
//
//
//        ///WHILE ?????
//        FinanceiroCentroCusto.Insert;
//
//
////        if QuerX.FieldByName('CODPRODUTO_GRUPO').IsNull then
////          FinanceiroCentroCusto.FieldByName('CODCENTRO_CUSTO').Value                := 0
////        else
//          FinanceiroCentroCusto.FieldByName('CODCENTRO_CUSTO').Value                := QuerX.FieldByName('CODPRODUTO_GRUPO').Value;
//
//        FinanceiroCentroCusto.FieldByName('TABELA').AsString               := 'PRODUTO_CATEGORIA';
//        FinanceiroCentroCusto.FieldByName('DESCRICAO').AsString            := QuerX.FieldByName('DESCRICAO').AsString;
//        if FinanceiroCentroCusto.FieldByName('DESCRICAO').AsString = '' then
//          FinanceiroCentroCusto.FieldByName('DESCRICAO').AsString  := 'Outros';
//        FinanceiroCentroCusto.FieldByName('CODDRE').AsInteger              := Cadastro.FieldByName('CODIGO').AsInteger;
//
//        FinanceiroCentroCusto.FieldByName('TOTAL').AsFloat                 := QuerX.FieldByName('TOTAL').AsFloat;
//        FinanceiroCentroCusto.FieldByName('PERCENTUAL_HORIZONTAL').AsFloat := ValidaNumero(FinanceiroCentroCusto.FieldByName('TOTAL').AsFloat/TotalVendas); //ValidaNumero((QuerX.FieldByName('TOTALVENDA').AsFloat / TotalVendas)*100);
//
//        FinanceiroCentroCusto.Post;
//      except
//        FinanceiroCentroCusto.Cancel;
//      end;
//      QuerX.Next;
//    end;
//  finally
//    QuerX.free;
//  end;
//



end;


{$REGION 'não sei o que é'}
(*var
  QuerX, QuerNovoCodigo: TFDQuery;
  TotalVendas, TotalClassificacao, TotalReceita,TotalDespesa,
  ASaldoClassificacao:  Real;
  Function ProximoCodigoDRE_Centro_Custo: integer;
  begin
    QuerNovoCodigo := GeraFDQuery(TransaDragAndDrop);
    try
      QuerNovoCodigo.SQL.Text := 'SELECT MAX(CAST(CODIGO AS DOUBLE PRECISION)) FROM DRE_CENTRO_CUSTO  '+
                                 'where CODDRE = :Codigo ';
      QuerNovoCodigo.ParamByName('CODIGO').AsInteger :=Consulta.FieldByName('CODIGO').AsInteger;
      QuerNovoCodigo.Open;
      result:=QuerNovoCodigo.Fields[0].Asinteger + 1;
    finally
      FreeAndNil(QuerNovoCodigo);
    end;
  end;

  Function ProximoCodigoDRE_PLano_Contas_Centro_Custo: integer;
  begin
    QuerNovoCodigo := GeraFDQuery(TransaDragAndDrop);
    try
      QuerNovoCodigo.SQL.Text := 'SELECT MAX(CAST(CODIGO AS DOUBLE PRECISION)) FROM DRE_PLANOCONTAS_CENTRO_CUSTO  '+
                                 'where CODDRE = :Codigo ';
      QuerNovoCodigo.ParamByName('CODIGO').AsInteger :=Consulta.FieldByName('CODIGO').AsInteger;
      QuerNovoCodigo.Open;
      result:=QuerNovoCodigo.Fields[0].Asinteger + 1
    finally
      FreeAndNil(QuerNovoCodigo);
    end;
  end; *)
//begin

       (*

  Consulta.DisableControls;
//  DRE_PlanoContas_Centro_Custo.DisableControls;
//
//  while not Financeiro_Centro_Custo.Eof do
//    Financeiro_Centro_Custo.Delete;

//  while not DRE_PlanoContas_Centro_Custo.Eof do
//    DRE_PlanoContas_Centro_Custo.Delete;

  QuerX := GeraFDQuery(TransaDragAndDrop);
  try
    QuerX.sql.text := 'select P.CODPRODUTO_CATEGORIA as CODPRODUTO_GRUPO, PC.DESCRICAO, sum(VP.QUANT) as VENDAS, ' +
                             'sum((VP.VALOR * VP.QUANT) - coalesce(VP.VDESC, 0) + coalesce(VP.VOUTRO, 0)) as Total, ' +
                             'sum(v.total) as TotalVenda ' +
                      'from VENDA V ' +
                      'left join VENDA_PRODUTO VP on (V.CODIGO = VP.CODVENDA) ' +
                      'left join PRODUTO P on (P.CODIGO = VP.CODPRODUTO) ' +
                      'left join PRODUTO_CATEGORIA PC on (P.CODPRODUTO_CATEGORIA = PC.CODIGO) ' +
                      'where V.STATUS like ''ATIVO%'' ' +
                            'and (V.DT_FATURAMENTO is not null) ' +
                            'and (VP.PARENT is null) ' +
                            'and (V.DT_EMISSAO between :DTINICIO and :DTFIM) ' +
                            'group by 1, 2 order by 4 DESC ';


    QuerX.ParamByName('DtInicio').AsDateTime := StartOfTheDay(EdtDataInicio.Date);
    QuerX.ParamByName('DtFim').AsDateTime    := endOfTheDay(EdtDataFim.Date);
    TotalVendas:=0;
    QuerX.Open;
    QuerX.First;
    while not QuerX.Eof do
    begin
      TotalVendas:=TotalVendas+QuerX.FieldByName('Total').AsFloat;
      QuerX.Next;
    end;

    QuerX.First;
    while not QuerX.Eof do
    begin
      try
        if QuerX.FieldByName('TOTAL').AsFloat = 0 then
        begin
          QuerX.Next;
          Continue;
        end;
        Financeiro_Centro_Custo.Insert;

        if QuerX.FieldByName('CODPRODUTO_GRUPO').IsNull then
          Financeiro_Centro_Custo.FieldByName('CODIGO').Value   := 0
        else
          Financeiro_Centro_Custo.FieldByName('CODIGO').Value   := QuerX.FieldByName('CODPRODUTO_GRUPO').Value;

        Financeiro_Centro_Custo.FieldByName('TABELA').AsString      :='PRODUTO_GRUPO';
        Financeiro_Centro_Custo.FieldByName('DESCRICAO').AsString   := QuerX.FieldByName('DESCRICAO').AsString;
        if Financeiro_Centro_Custo.FieldByName('DESCRICAO').AsString = '' then
          Financeiro_Centro_Custo.FieldByName('DESCRICAO').AsString := 'Outros';
        Financeiro_Centro_Custo.FieldByName('CODDRE').AsInteger     := Consulta.FieldByName('CODIGO').AsInteger;

        Financeiro_Centro_Custo.FieldByName('TOTAL').AsFloat        :=  QuerX.FieldByName('TOTAL').AsFloat;
        Financeiro_Centro_Custo.FieldByName('PERCENTUAL_HORIZONTAL').AsFloat :=  ValidaNumero(Financeiro_Centro_Custo.FieldByName('TOTAL').AsFloat/TotalVendas); //ValidaNumero((QuerX.FieldByName('TOTALVENDA').AsFloat / TotalVendas)*100);

        Financeiro_Centro_Custo.Post;
      except
        Financeiro_Centro_Custo.Cancel;
      end;
      QuerX.Next;
    end;
  finally
    QuerX.Free;
  end;
  *)

 (*{ if edtRegime.Text = 'DFC' then
  begin
    QuerX := GeraFDQuery(TransaDragAndDrop);
    try
      QuerX.sql.text := 'select VT.CODPLANOCONTAS, sum((VP.VALOR * VP.QUANT) - coalesce(VP.VDESC, 0) + coalesce(VP.VOUTRO, 0)) as TotalVenda ' +
                        'from VENDA V ' +
                        'left join VENDA_PRODUTO VP on (V.CODIGO = VP.CODVENDA)' +
                        'left join VENDA_TIPO VT on (V.VENDA_TIPO = VT.DESCRICAO) ' +
                        'where V.STATUS like ''ATIVO%'' ' +
                              'and (V.DT_FATURAMENTO is not null) ' +
                              'and (VP.PARENT is null)' +
                              'and (V.DT_EMISSAO between :DTINICIO and :DTFIM) ' +
                              'group by 1';

      QuerX.ParamByName('DtInicio').AsDateTime := StartOfTheDay(edtDT_INICIO.Date);
      QuerX.ParamByName('DtFim').AsDateTime    := endOfTheDay(edtDT_Fim.Date);
//      TotalVendas:=0;
      QuerX.Open;


      QuerX.First;
      while not QuerX.Eof do
      begin
        if DRE_Classificacao.Locate('CODPLANOCONTAS', QuerX.FieldByName('CODPLANOCONTAS').AsString,[] ) then
        begin
          DRE_Classificacao.Edit;
          DRE_Classificacao.FieldByName('SALDO').AsFloat  := QuerX.FieldByName('TotalVenda').AsFloat;    // /100
          DRE_Classificacao.Post;
        end;
        QuerX.Next;
      end;
    finally
      QuerX.Free;
    end;
  end;
  DRE_Classificacao.Refresh;
  DRE_Classificacao.First;  //PLANO CONTAS
  while not DRE_Classificacao.Eof do
  begin
//    Soma toda a Classificacao
//    TotalClassificacao:=SomaClassificacao(DRE_Classificacao.FieldByName('CODDRE_CLASSIFICACAO').Value);
    ASaldoClassificacao   := DRE_Classificacao.FieldByName('SALDO').AsFloat;
//    if ASaldoClassificacao < 0 then
//      ASaldoClassificacao:=ASaldoClassificacao*-1;
    DRE_Centro_Custo.Refresh;
    DRE_Centro_Custo.First;   //GRUPO
    while not DRE_Centro_Custo.Eof do
    begin                                                                         //DRE_Classificacao.FieldByName('SALDO').AsFloat

      DRE_PlanoContas_Centro_Custo.Insert;
      DRE_PlanoContas_Centro_Custo.FieldByName('CODIGO').AsInteger              := ProximoCodigoDRE_PLano_Contas_Centro_Custo;
      DRE_PlanoContas_Centro_Custo.FieldByName('CODDRE').AsInteger              := Consulta.FieldByName('CODIGO').AsInteger;
      DRE_PlanoContas_Centro_Custo.FieldByName('CODPLANOCONTAS').AsString       := DRE_Classificacao.FieldByName('CODPLANOCONTAS').AsString;
      DRE_PlanoContas_Centro_Custo.FieldByName('CODDRE_CENTRO_CUSTO').AsInteger := DRE_Centro_Custo.FieldByName('CODIGO').AsInteger;
      DRE_PlanoContas_Centro_Custo.FieldByName('PERCENTUAL_HORIZONTAL').AsFloat := DRE_Centro_Custo.FieldByName('PERCENTUAL_HORIZONTAL').AsFloat;
      DRE_PlanoContas_Centro_Custo.FieldByName('PLANOCONTAS').AsString          := DRE_Classificacao.FieldByName('PLANOCONTAS').AsString;
      DRE_PlanoContas_Centro_Custo.FieldByName('CLASSIFICACAO').AsString        := DRE_Classificacao.FieldByName('CLASSIFICACAO').AsString;
      DRE_PlanoContas_Centro_Custo.FieldByName('VALOR').AsFloat                 := DRE_Classificacao.FieldByName('SALDO').AsFloat * ValidaNumero(DRE_Centro_Custo.FieldByName('PERCENTUAL_HORIZONTAL').AsFloat);    // /100

//      DRE_PlanoContas_Centro_Custo.FieldByName('VALOR').AsFloat     := RdT( DRE_Classificacao.FieldByName('SALDO').AsFloat * ValidaNumero(DRE_Centro_Custo.FieldByName('PERCENTUAL_HORIZONTAL').AsFloat/100), -2);
//      DRE_PlanoContas_Centro_Custo.FieldByName('VALOR').AsFloat     := RdT(AOldDesc, -2);

      ASaldoClassificacao:= ASaldoClassificacao - DRE_PlanoContas_Centro_Custo.FieldByName('VALOR').AsFloat;
//      DRE_PlanoContas_Centro_Custo.FieldByName('PERCENTUAL_VERTICAL').AsFloat   := ValidaNumero(DRE_PlanoContas_Centro_Custo.FieldByName('VALOR').AsFloat / DRE_Centro_Custo.FieldByName('TOTAL').AsFloat{Cadastro.FieldByName('TOTAL_RECEITAS').AsFloat {TotalVendas / TotalClassificacao})* 100;
      DRE_PlanoContas_Centro_Custo.FieldByName('PERCENTUAL_VERTICAL').AsFloat   := ValidaNumero(DRE_PlanoContas_Centro_Custo.FieldByName('VALOR').AsFloat / DRE_Centro_Custo.FieldByName('TOTAL').AsFloat {TotalVendas / TotalClassificacao})* 100;

      if (edtRegime.Text = 'DFC')  then
        DRE_PlanoContas_Centro_Custo.FieldByName('PERCENTUAL_VERTICAL_ABSOLUTO').AsFloat  := ValidaNumero((DRE_PlanoContas_Centro_Custo.FieldByName('VALOR').AsFloat / TotalVendas)*100)
      else
        DRE_PlanoContas_Centro_Custo.FieldByName('PERCENTUAL_VERTICAL_ABSOLUTO').AsFloat  := ValidaNumero((DRE_PlanoContas_Centro_Custo.FieldByName('VALOR').AsFloat / Cadastro.FieldByName('TOTAL_RECEITAS').AsFloat {TotalVendas / TotalClassificacao})* 100);

      DRE_PlanoContas_Centro_Custo.Post;


      DRE_Centro_Custo.Next;

    end;

    IF (ASaldoClassificacao <> 0) and not(edtRegime.Text = 'DFC')  then
    begin
      DRE_PlanoContas_Centro_Custo.Edit;
      DRE_PlanoContas_Centro_Custo.FieldByName('VALOR').AsFloat                 := (DRE_PlanoContas_Centro_Custo.FieldByName('VALOR').AsFloat+ASaldoClassificacao) ;
      DRE_PlanoContas_Centro_Custo.FieldByName('PERCENTUAL_VERTICAL').AsFloat   := ValidaNumero(DRE_PlanoContas_Centro_Custo.FieldByName('VALOR').AsFloat / Cadastro.FieldByName('TOTAL_RECEITAS').AsFloat {TotalVendas / TotalClassificacao})* 100;
      DRE_PlanoContas_Centro_Custo.Post;
    end;

    DRE_Classificacao.Next;
  end;  *)
//  DRE_Centro_Custo.EnableControls;
//  DRE_PlanoContas_Centro_Custo.EnableControls;
//
//  BtnConfirmar.Click;
//  DRE_PlanoContas_Centro_Custo.Close;
//  DRE_PlanoContas_Centro_Custo.Open;
//end;
{$ENDREGION}

procedure TFrame_ConsuFinanceiro_Centro_Custo_Produto_Categoria.AnalisaCentrodeCustoClick(
  Sender: TdxTileControlItem);
var
  ADT_Inicio, ADT_Fim: TDateTime;
begin
  inherited;
  try
    FormDataCentroCusto.Abrir(TWinControl(Sender),ADT_Inicio, ADT_Fim);
    try
      Transa.StartTransaction;
      ControllerFinanceiro_Centro_Custo_InsereCentroCustoEmMassa(ADT_Inicio, ADT_Fim, FAgrupamento.Agrupamento, Transa);
      Transa.Commit;
    except
      on E:Exception do
      begin
        ShowMessage(E.Message);
        Transa.Rollback;
      end;
    end;
  finally
    Transa.Free;
  end;
end;

procedure TFrame_ConsuFinanceiro_Centro_Custo_Produto_Categoria.dxTileControl1Item1Click(Sender: TdxTileControlItem);
begin
  inherited;
//  Custos_por_Categoria_Venda(EdtDataInicio.Date);
end;

procedure TFrame_ConsuFinanceiro_Centro_Custo_Produto_Categoria.GridConsultaDBTableView1DataControllerSummaryAfterSummary(
  ASender: TcxDataSummary);
begin
  inherited;
  EdtTotal.Value := edtCredito.Value - edtDebito.Value;
end;

procedure TFrame_ConsuFinanceiro_Centro_Custo_Produto_Categoria.GridSubGridViewDragDrop(
  Sender, Source: TObject; X, Y: Integer);
var
  HT: TcxCustomGridHitTest;
  ACodigo: Variant;
  AFieldName:String;
begin
  HT := GridSubGridView.GetHitTest(X, Y);
  if not (HT is TcxGridRecordCellHitTest) then
    Abort;

  ACodigo    := TcxGridRecordCellHitTest(HT).GridRecord.Values[GridSubGridViewCODIGO.Index];
  AFieldName := TcxGridDBColumn(GridConsultaDBTableView1.GroupedColumns[0]).DataBinding.FieldName;
  AcaoSelecionados(AFieldName, ACodigo);
//  inherited;
end;


procedure TFrame_ConsuFinanceiro_Centro_Custo_Produto_Categoria.tiImprimirClick(
  Sender: TdxTileControlItem);
begin
  inherited;
//  MenuImprimir.PopupOnMouse;
end;

procedure TFrame_ConsuFinanceiro_Centro_Custo_Produto_Categoria.WREventosCadastroPreencheVariaveisImpressaoPersonalizada(
  Sender: TObject);
var
  AReport: TfrxReport;
begin
  inherited;
  AReport := WREventosCadastro.Impressao.Report;
end;

initialization
  RegisterClass(TFrame_ConsuFinanceiro_Centro_Custo_Produto_Categoria);
  RegisterFrameCon(Tag_Financeiro_Centro_Custo_Produto_Categoria, TFrame_ConsuFinanceiro_Centro_Custo_Produto_Categoria);

end.
