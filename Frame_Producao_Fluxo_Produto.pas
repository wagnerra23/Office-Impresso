unit Frame_Producao_Fluxo_Produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frFrame_Producao_Fluxo, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, Data.DB, cxDBData, cxContainer, cxTextEdit,
  dxLayoutControlAdapters, dxLayoutContainer, dxLayoutcxEditAdapters,
  System.Generics.Collections, WREventos, UCHistDataset,
  uWRFormataCamposDataSet, uWRFrameEventos, cxClasses, dxLayoutLookAndFeels,
  UCBase, System.ImageList, Vcl.ImgList, cxLabel, cxSpinEdit, cxTimeEdit,
  cxDBLookupComboBox, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxCheckBox, cxDBEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxGridLevel, cxGridCustomView, cxGrid, Vcl.StdCtrls,
  cxButtons, dxLayoutControl, dxCustomTileControl, dxTileControl, cxImage,
  dxGDIPlusClasses, cxCurrencyEdit, dxScrollbarAnnotations, dxSkinsCore,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TFrmFrame_Producao_Fluxo_Produto = class(TFrame_Producao_Fluxo)
    cxImage1: TcxImage;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cbxCodCentro_Trabalho: TcxDBLookupComboBox;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    chkPode_Alterar_Estoque: TcxDBCheckBox;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    cxCurrencyEdit1: TcxCurrencyEdit;
    dxLayoutItem18: TdxLayoutItem;
    procedure btnAdicionarEtapaFluxoClick(Sender: TObject);
    procedure btnAdicionarMaterialBaixaClick(Sender: TObject);
    procedure cbxEtapaPropertiesEditValueChanged(Sender: TObject);
    procedure btnAdicionarPrerequisitoClick(Sender: TObject);
    procedure btnRemoverMaterialBaixaClick(Sender: TObject);
    procedure dxLayoutTabChanged(Sender: TObject);
    procedure FrameEnter(Sender: TObject);
    procedure dxTileControl1Item1Click(Sender: TdxTileControlItem);
    procedure GridEtapasTEMPOMINUTOSPropertiesEditValueChanged(Sender: TObject);
  private
    procedure AtualizaLookupEquipe;
    procedure AtualizaLookupPreRequisito;
    procedure AtualizaLookupBaixaAutomatica;
  public
    class procedure CarregaFrame1(var AFrame: TFrmFrame_Producao_Fluxo_Produto; AParent: TWinControl; ADS: TDatasource;
      ADatasetProdutoEtapa, ADatasetPreRequisito, ADatasetProdutoBaixaAutomatica: TDataSet);
  end;

var
  FrmFrame_Producao_Fluxo_Produto: TFrmFrame_Producao_Fluxo_Produto;

implementation

{$R *.dfm}

uses UnitFuncoes, wrFuncoes, System.Threading, FireDAC.Comp.Client, frFrameMestre;

class procedure TFrmFrame_Producao_Fluxo_Produto.CarregaFrame1(var AFrame: TFrmFrame_Producao_Fluxo_Produto; AParent: TWinControl; ADS: TDatasource;
ADatasetProdutoEtapa, ADatasetPreRequisito, ADatasetProdutoBaixaAutomatica: TDataSet);
begin
  if Not Assigned(AFrame) then
  begin
    AFrame := TFrmFrame_Producao_Fluxo_Produto.Create(AParent, ADS);
    TFrmFrameMestre(AFrame).wrFrameEventos.DoOnInicializar;
    TFrmFrame_Producao_Fluxo_Produto(AFrame).DSPreRequisito.Dataset           := ADatasetPreRequisito;
    TFrmFrame_Producao_Fluxo_Produto(AFrame).DSProdutoEtapa.Dataset           := ADatasetProdutoEtapa;
    TFrmFrame_Producao_Fluxo_Produto(AFrame).DSProdutoBaixaAutomatica.Dataset := ADatasetProdutoBaixaAutomatica;
  end;
end;

procedure TFrmFrame_Producao_Fluxo_Produto.btnAdicionarEtapaFluxoClick(Sender: TObject);
var
  AUltimaOrdem: Integer;
begin
  inherited;
  try
    DSProdutoEtapa.DataSet.Last;
    AUltimaOrdem := DSProdutoEtapa.DataSet.FieldByName('ORDEM').AsInteger;
    AlteraDataSet;
    DSProdutoEtapa.DataSet.Insert;
    DSProdutoEtapa.DataSet.FieldByName('CODIGO').AsInteger              := Trunc(GetProximoCodigoGen('CR_PRODUTO_ETAPA'));
    DSProdutoEtapa.DataSet.FieldByName('ATIVO').AsString                := 'S';
    DSProdutoEtapa.DataSet.FieldByName('DT_ALTERACAO').AsDateTime       := DataHoraSys;
    DSProdutoEtapa.DataSet.FieldByName('CODPRODUTO').AsString           := DS.DataSet.FieldByName('CODIGO').AsString;
    DSProdutoEtapa.DataSet.FieldByName('DESCRICAO').AsString            := edtDescricaoServico.Text;
    DSProdutoEtapa.DataSet.FieldByName('CODCENTRO_TRABALHO').AsString   := cbxLookupEquipe.EditValue;

    if cbxTipoData.SelectedItem = 0 then
      DSProdutoEtapa.DataSet.FieldByName('TEMPO_MINUTOS').AsInteger           := Trunc(edtTempoEdit.Value*24*60);
    if cbxTipoData.SelectedItem = 1 then
      DSProdutoEtapa.DataSet.FieldByName('TEMPO_MINUTOS').AsInteger           := Trunc(edtTempoEdit.Value*60);
    if cbxTipoData.SelectedItem = 2 then
      DSProdutoEtapa.DataSet.FieldByName('TEMPO_MINUTOS').AsInteger           := Trunc(edtTempoEdit.Value);

    DSProdutoEtapa.DataSet.FieldByName('TEMPO_STRING').AsString     := edtTempoEdit.EditingText + ' ' +  cbxTipoData.EditingText;


    DSProdutoEtapa.DataSet.FieldByName('ORDEM').AsInteger               := AUltimaOrdem + 1;
    DSProdutoEtapa.DataSet.Post;
  except
    on E:Exception do
    begin
      ShowMessage(E.Message);
    end;
  end;

  cbxLookupEquipe.Clear;
  edtTempo.Clear;
  edtTempoEdit.Clear;
  edtDescricaoServico.Clear;
  DSProdutoEtapa.DataSet.Refresh;
end;

procedure TFrmFrame_Producao_Fluxo_Produto.btnAdicionarMaterialBaixaClick(
  Sender: TObject);
var
  Thread: TThread;
  ACodEtapa, ACodProdutoComposicao: integer;
begin
  inherited;
  ACodEtapa               :=  cbxEtapaBaixaAutomatica.EditValue;
  ACodProdutoComposicao   :=  cbxProdutoComposicao.EditValue;
  cbxEtapaBaixaAutomatica.Clear;
  cbxProdutoComposicao   .Clear;

  Thread := TThread.CreateAnonymousThread( procedure begin
    TThread.Synchronize(Thread,
    procedure
    begin
      try
        AlteraDataSet;
        DSProdutoBaixaAutomatica.DataSet.Insert;
        DSProdutoBaixaAutomatica.DataSet.FieldByName('CODIGO').AsInteger              := Trunc(GetProximoCodigoGen('CR_PRODUTO_BAIXA_AUTOMATICA'));
        DSProdutoBaixaAutomatica.DataSet.FieldByName('ATIVO').AsString                := 'S';
        DSProdutoBaixaAutomatica.DataSet.FieldByName('DT_ALTERACAO').AsDateTime       := DataHoraSys;
        DSProdutoBaixaAutomatica.DataSet.FieldByName('CODPRODUTO').AsString           := DS.DataSet.FieldByName('CODIGO').AsString;
        DSProdutoBaixaAutomatica.DataSet.FieldByName('CODPRODUTO_ETAPA').AsInteger    := ACodEtapa;
        DSProdutoBaixaAutomatica.DataSet.FieldByName('CODPRODUTO_COMPOSICAO').AsInteger   := ACodProdutoComposicao;
        DSProdutoBaixaAutomatica.DataSet.Post;
      except
        on E:Exception do
        begin
          ShowMessage(E.Message);
        end;
      end;
      DSProdutoBaixaAutomatica.DataSet.Refresh;
    end);
  end);
  Thread.FreeOnTerminate := True;
  Thread.Start;
  AtualizaLookupBaixaAutomatica;
end;

procedure TFrmFrame_Producao_Fluxo_Produto.btnAdicionarPrerequisitoClick(Sender: TObject);
var
  Thread: TThread;
  ACodEtapa, ACodEtapaPreRequisito: integer;
begin
  inherited;
  ACodEtapa             :=  cbxEtapa.EditValue;
  ACodEtapaPreRequisito :=  cbxEtapaPrerequisito.EditValue;
  cbxEtapa.Clear;
  cbxEtapaPrerequisito.Clear;
//
//  Thread := TThread.CreateAnonymousThread( procedure begin
//    TThread.Synchronize(Thread,
//    procedure
//    begin
      try
        AlteraDataSet;
        DSPreRequisito.DataSet.Insert;
        DSPreRequisito.DataSet.FieldByName('CODIGO').AsInteger              := Trunc(GetProximoCodigoGen('CR_PRODUTO_PREREQUISITO'));
        DSPreRequisito.DataSet.FieldByName('ATIVO').AsString                := 'S';
        DSPreRequisito.DataSet.FieldByName('DT_ALTERACAO').AsDateTime       := DataHoraSys;
        DSPreRequisito.DataSet.FieldByName('CODPRODUTO').AsString           := DS.DataSet.FieldByName('CODIGO').AsString;
        DSPreRequisito.DataSet.FieldByName('CODPRODUTO_ETAPA').AsInteger            := ACodEtapa;
        DSPreRequisito.DataSet.FieldByName('CODPRODUTO_ETAPA_PREREQUISITO').AsInteger   := ACodEtapaPreRequisito;
        DSPreRequisito.DataSet.Post;
      except
        on E:Exception do
        begin
          ShowMessage(E.Message);
        end;
      end;
      DSPreRequisito.DataSet.Refresh;
//    end);
//  end);
//  Thread.FreeOnTerminate := True;
//  Thread.Start;
end;

procedure TFrmFrame_Producao_Fluxo_Produto.btnRemoverMaterialBaixaClick(
  Sender: TObject);
begin
  inherited;
  AtualizaLookupBaixaAutomatica;
end;

procedure TFrmFrame_Producao_Fluxo_Produto.cbxEtapaPropertiesEditValueChanged(
  Sender: TObject);
var
  Thread: TThread;
begin
//  if (VarToStr(cbxEtapa.EditValue) <> '') then
//  begin
//    Thread := TThread.CreateAnonymousThread( procedure begin
//      TThread.Synchronize(Thread,
//      procedure
//      begin
//        PreencheLookupEtapasPreRequisitoComEtapaSelecionada(TFDQuery(DS.Dataset).Transaction, cbxEtapaPreRequisito.Properties,
//                                                            DS.DataSet.FieldByName('CODIGO').AsString,
//                                                            cbxEtapa.EditValue);
//
//      end);
//    end);
//    Thread.FreeOnTerminate := True;
//    Thread.Start;
//  end;
end;

procedure TFrmFrame_Producao_Fluxo_Produto.dxLayoutTabChanged(Sender: TObject);
begin
  inherited;
  if TabFluxo.ActuallyVisible then
    AtualizaLookupEquipe;

  if TabPreRequisito.ActuallyVisible then
    AtualizaLookupPreRequisito;

  if TabBaixaMateriaisProducao.ActuallyVisible then
    AtualizaLookupBaixaAutomatica;
end;

procedure TFrmFrame_Producao_Fluxo_Produto.dxTileControl1Item1Click(
  Sender: TdxTileControlItem);
var
  QuerX: TFDQuery;
  AUltimaOrdem: integer;
begin
  inherited;
  try
    if MessageDlg('Esta operação irá excluir as etapas atuais.' + slinebreak +
                    'Deseja continuar?', mtConfirmation, mbYesNo, 0) = mrYes then
    begin
      AlteraDataSet;
      tiGerarEtapas.Enabled := False;
      dxLayoutItem17.Visible := True;
      Application.ProcessMessages;

      DSProdutoEtapa.DataSet.First;
      while not DSProdutoEtapa.DataSet.eof do
        DSProdutoEtapa.DataSet.Delete;

      DSPreRequisito.DataSet.First;
      while not DSPreRequisito.DataSet.eof do
        DSPreRequisito.DataSet.Delete;

      DSProdutoBaixaAutomatica.DataSet.First;
      while not DSProdutoBaixaAutomatica.DataSet.eof do
        DSProdutoBaixaAutomatica.DataSet.Delete;
    end;
  except
    on E:Exception do
    begin
      ShowMessage('Ocorreu algum erro: ' + E.Message);
    end;
  end;

  try  // Insere as novas etapas de acordo com a composição
    AUltimaOrdem := 0;
    QuerX := SQL_BuscaEtapasDaComposicao(TFDQuery(DS.Dataset).Transaction, DS.Dataset.FieldByName('CODIGO').AsString);
    QuerX.First;
    while not QuerX.eof do
    begin
      DSProdutoEtapa.DataSet.Insert;
      DSProdutoEtapa.DataSet.FieldByName('CODIGO').AsInteger              := Trunc(GetProximoCodigoGen('CR_PRODUTO_ETAPA'));
      DSProdutoEtapa.DataSet.FieldByName('DT_ALTERACAO').AsDateTime       := DataHoraSys;
      DSProdutoEtapa.DataSet.FieldByName('ATIVO').AsString                := 'S';
      DSProdutoEtapa.DataSet.FieldByName('CODPRODUTO').AsString           := DS.DataSet.FieldByName('CODIGO').AsString;
      DSProdutoEtapa.DataSet.FieldByName('CODCENTRO_TRABALHO').AsInteger  := QuerX.FieldByName('CODCENTRO_TRABALHO').AsInteger;
      DSProdutoEtapa.DataSet.FieldByName('DESCRICAO').AsString            := QuerX.FieldByName('DESCRICAO').AsString;
      DSProdutoEtapa.DataSet.FieldByName('TEMPO_HORAS').AsFloat           := QuerX.FieldByName('TEMPO_HORAS').AsFloat;
      DSProdutoEtapa.DataSet.FieldByName('CODPRODUTO_COMPOSICAO').AsInteger := QuerX.FieldByName('CODCOMPOSICAO').AsInteger;
      DSProdutoEtapa.DataSet.FieldByName('CODETAPA_ORIGINAL').AsInteger     := QuerX.FieldByName('CODIGO').AsInteger;

      AUltimaOrdem := AUltimaOrdem + 1;
      DSProdutoEtapa.DataSet.FieldByName('ORDEM').AsFloat                 := AUltimaOrdem;
      DSProdutoEtapa.DataSet.Post;
      QuerX.Next;
    end;

  // Insere os pré-requisitos das etapas antigas
    QuerX := SQL_BuscaPreRequisitosDaComposicao(TFDQuery(DS.Dataset).Transaction, DSProdutoEtapa.DataSet.FieldByName('CODPRODUTO').AsString);
    QuerX.First;
    while not QuerX.eof do
    begin
      DSPreRequisito.DataSet.Insert;
      DSPreRequisito.DataSet.FieldByName('CODIGO').AsInteger              := Trunc(GetProximoCodigoGen('CR_PRODUTO_PREREQUISITO'));
      DSPreRequisito.DataSet.FieldByName('ATIVO').AsString                := 'S';
      DSPreRequisito.DataSet.FieldByName('DT_ALTERACAO').AsDateTime       := DataHoraSys;
      DSPreRequisito.DataSet.FieldByName('CODPRODUTO').AsString           := DS.DataSet.FieldByName('CODIGO').AsString;
      DSPreRequisito.DataSet.FieldByName('CODPRODUTO_ETAPA').AsInteger            := QuerX.FieldByName('CODPRODUTO_ETAPA').AsInteger;
      DSPreRequisito.DataSet.FieldByName('CODPRODUTO_ETAPA_PREREQUISITO').AsInteger   := QuerX.FieldByName('CODPRODUTO_ETAPA_PREREQUISITO').AsInteger;
      DSPreRequisito.DataSet.Post;
      QuerX.Next;
    end;
  finally
    QuerX.Free;
  end;

  DSProdutoEtapa.DataSet.Refresh;
  DSPreRequisito.DataSet.Refresh;
  dxLayoutItem17.Visible := False;
  tiGerarEtapas.Enabled := True;
  Application.ProcessMessages;
end;

procedure TFrmFrame_Producao_Fluxo_Produto.FrameEnter(Sender: TObject);
begin
  inherited;
  AtualizaLookupEquipe;
  PreencheLookupCentro_Trabalho(cbxCodCentro_Trabalho.Properties);
end;

procedure TFrmFrame_Producao_Fluxo_Produto.GridEtapasTEMPOMINUTOSPropertiesEditValueChanged(
  Sender: TObject);
var
  ATempoMinutos: integer;
begin
  inherited;
//  ATempoMinutos := DSProdutoEtapa.DataSet.FieldByName('TEMPO_MINUTOS').AsInteger;
//  if ATempoMinutos > 1440 then
//    DSProdutoEtapa.DataSet.FieldByName('TEMPO_STRING').AsString := FormatFloat('0.##', ATempoMinutos/1440) + ' Dia(s)'
//  else
//  if DSProdutoEtapa.DataSet.FieldByName('TEMPO_MINUTOS').AsInteger > 60 then
//    DSProdutoEtapa.DataSet.FieldByName('TEMPO_STRING').AsString := FormatFloat('0.##', ATempoMinutos/60) + ' Hora(s)'
//  else
//    DSProdutoEtapa.DataSet.FieldByName('TEMPO_STRING').AsString := FormatFloat('0.##', ATempoMinutos) + ' Minuto(s)'

end;

procedure TFrmFrame_Producao_Fluxo_Produto.AtualizaLookupBaixaAutomatica;
var
  Thread: TThread;
  AQtdProdutosNoCombo: integer;
begin
  Thread := TThread.CreateAnonymousThread( procedure begin
    TThread.Synchronize(Thread,
    procedure
    begin
      PreencheLookupEtapasPreRequisito(TFDQuery(DS.DataSet).Transaction, cbxEtapaBaixaAutomatica.Properties, DS.DataSet.FieldByName('CODIGO').AsString);
      PreencheLookupProdutoComposicaoBaixaAutomatica(TFDQuery(DS.Dataset).Transaction, cbxProdutoComposicao.Properties, DS.DataSet.FieldByName('CODIGO').AsString);

      AQtdProdutosNoCombo := cbxProdutoComposicao.Properties.ListSource.Dataset.RecordCount;
      if AQtdProdutosNoCombo <> 0 then
      begin
        lblQtdProdutos.Caption := VarToStr(AQtdProdutosNoCombo) + ' Produtos Disponíveis.'
      end
      else
        lblQtdProdutos.Caption := 'Nenhum produto disponíveis.';
      lilblQtdProdutos.Visible := True;
      cbxProdutoComposicao.Enabled := (cbxProdutoComposicao.Properties.ListSource.Dataset.RecordCount > 0);
    end);
  end);
  Thread.FreeOnTerminate := True;
  Thread.Start;
end;

procedure TFrmFrame_Producao_Fluxo_Produto.AtualizaLookupEquipe;
var
  Thread: TThread;
begin
  Thread := TThread.CreateAnonymousThread( procedure begin
    TThread.Synchronize(Thread,
    procedure
    begin
      PreencheLookupCentro_Trabalho(cbxLookupEquipe.Properties);
    end);
  end);
  Thread.FreeOnTerminate := True;
  Thread.Start;
end;

procedure TFrmFrame_Producao_Fluxo_Produto.AtualizaLookupPreRequisito;
var
  Thread: TThread;
begin
  Thread := TThread.CreateAnonymousThread( procedure begin
    TThread.Synchronize(Thread,
    procedure
    begin
      PreencheLookupEtapasPreRequisito(TFDQuery(DS.Dataset).Transaction, cbxEtapa.Properties, DS.DataSet.FieldByName('CODIGO').AsString);
      PreencheLookupEtapasPreRequisito(TFDQuery(DS.Dataset).Transaction, cbxEtapaPreRequisito.Properties, DS.DataSet.FieldByName('CODIGO').AsString);
    end);
  end);
  Thread.FreeOnTerminate := True;
  Thread.Start;
end;

end.
