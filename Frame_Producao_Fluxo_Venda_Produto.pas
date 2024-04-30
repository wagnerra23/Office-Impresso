unit Frame_Producao_Fluxo_Venda_Produto;

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
  cxButtons, dxLayoutControl, dxCustomTileControl, dxTileControl, cxCurrencyEdit,
  dxSkinsCore, dxScrollbarAnnotations;

type
  TFrmFrame_Producao_Fluxo_Venda_Produto = class(TFrame_Producao_Fluxo)
    cxLabel1: TcxLabel;
    LiMensagemEtapa: TdxLayoutItem;
    LiMensagemPreRequisito: TdxLayoutItem;
    cxLabel2: TcxLabel;
    LiMensagemBaixa: TdxLayoutItem;
    cxLabel3: TcxLabel;
    procedure btnAdicionarEtapaFluxoClick(Sender: TObject);
    procedure btnAdicionarMaterialBaixaClick(Sender: TObject);
    procedure btnAdicionarPrerequisitoClick(Sender: TObject);
    procedure dxLayoutTabChanged(Sender: TObject);
    procedure FrameEnter(Sender: TObject);
    procedure cbxEtapaPropertiesEditValueChanged(Sender: TObject);
  private
    procedure AtualizaLookupEquipe;
    procedure AtualizaLookupPreRequisito;
    procedure AtualizaLookupBaixaAutomatica;
  public
    class procedure CarregaFrame1(var AFrame: TFrmFrame_Producao_Fluxo_Venda_Produto; AParent: TWinControl; ADS: TDatasource;
      ADatasetProdutoEtapa, ADatasetPreRequisito, ADatasetProdutoBaixaAutomatica: TDataSet);
  end;

var
  FrmFrame_Producao_Fluxo_Venda_Produto: TFrmFrame_Producao_Fluxo_Venda_Produto;

implementation

{$R *.dfm}

uses UnitFuncoes, wrFuncoes, System.Threading, FireDAC.Comp.Client, frFrameMestre;

class procedure TFrmFrame_Producao_Fluxo_Venda_Produto.CarregaFrame1(var AFrame: TFrmFrame_Producao_Fluxo_Venda_Produto; AParent: TWinControl; ADS: TDatasource;
ADatasetProdutoEtapa, ADatasetPreRequisito, ADatasetProdutoBaixaAutomatica: TDataSet);
begin
  if Not Assigned(AFrame) then
  begin
    AFrame := TFrmFrame_Producao_Fluxo_Venda_Produto.Create(AParent, ADS);
    TFrmFrameMestre(AFrame).wrFrameEventos.DoOnInicializar;
    TFrmFrame_Producao_Fluxo_Venda_Produto(AFrame).DSPreRequisito.Dataset           := ADatasetPreRequisito;
    TFrmFrame_Producao_Fluxo_Venda_Produto(AFrame).DSProdutoEtapa.Dataset           := ADatasetProdutoEtapa;
    TFrmFrame_Producao_Fluxo_Venda_Produto(AFrame).DSProdutoBaixaAutomatica.Dataset := ADatasetProdutoBaixaAutomatica;
  end;
end;

procedure TFrmFrame_Producao_Fluxo_Venda_Produto.AtualizaLookupBaixaAutomatica;
var
  Thread: TThread;
  AQtdProdutosNoCombo: integer;
begin
  Thread := TThread.CreateAnonymousThread( procedure begin
    TThread.Synchronize(Thread,
    procedure
    begin
//      PreencheLookupEtapasPreRequisito(TFDQuery(DS.DataSet).Transaction, cbxEtapaBaixaAutomatica.Properties, DS.DataSet.FieldByName('CODIGO').AsString);
//      PreencheLookupProdutoComposicaoBaixaAutomatica(TFDQuery(DS.Dataset).Transaction, cbxProdutoComposicao.Properties, DS.DataSet.FieldByName('CODIGO').AsString);
//
//      AQtdProdutosNoCombo := cbxProdutoComposicao.Properties.ListSource.Dataset.RecordCount;
//      if AQtdProdutosNoCombo <> 0 then
//      begin
//        lblQtdProdutos.Caption := VarToStr(AQtdProdutosNoCombo) + ' Produtos Disponíveis.'
//      end
//      else
//        lblQtdProdutos.Caption := 'Nenhum produto disponíveis.';
//      lilblQtdProdutos.Visible := True;
//      cbxProdutoComposicao.Enabled := (cbxProdutoComposicao.Properties.ListSource.Dataset.RecordCount > 0);
    end);
  end);
  Thread.FreeOnTerminate := True;
  Thread.Start;
end;

procedure TFrmFrame_Producao_Fluxo_Venda_Produto.AtualizaLookupEquipe;
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

procedure TFrmFrame_Producao_Fluxo_Venda_Produto.AtualizaLookupPreRequisito;
var
  Thread: TThread;
begin
  Thread := TThread.CreateAnonymousThread( procedure begin
    TThread.Synchronize(Thread,
    procedure
    begin
      PreencheLookupVendaEtapasPreRequisito(TFDQuery(DS.Dataset).Transaction, cbxEtapa.Properties, DS.DataSet.FieldByName('CODIGO').AsString, DS.DataSet.FieldByName('CODVENDA').AsString);
      PreencheLookupVendaEtapasPreRequisito(TFDQuery(DS.Dataset).Transaction, cbxEtapaPreRequisito.Properties, DS.DataSet.FieldByName('CODIGO').AsString, DS.DataSet.FieldByName('CODVENDA').AsString);
    end);
  end);
  Thread.FreeOnTerminate := True;
  Thread.Start;
end;

procedure TFrmFrame_Producao_Fluxo_Venda_Produto.btnAdicionarEtapaFluxoClick(
  Sender: TObject);
var
  AUltimaOrdem: Integer;
begin
  inherited;
  try
    DSProdutoEtapa.DataSet.Last;
    AUltimaOrdem := DSProdutoEtapa.DataSet.FieldByName('ORDEM').AsInteger;
    AlteraDataSet;
    DSProdutoEtapa.DataSet.Insert;
    DSProdutoEtapa.DataSet.FieldByName('CODIGO').AsInteger              := Trunc(GetProximoCodigoGen('CR_VENDA_PRODUTO_ETAPA'));
    DSProdutoEtapa.DataSet.FieldByName('ATIVO').AsString                := 'S';
    DSProdutoEtapa.DataSet.FieldByName('DT_ALTERACAO').AsDateTime       := DataHoraSys;
    DSProdutoEtapa.DataSet.FieldByName('CODVENDA').AsString             := DS.DataSet.FieldByName('CODVENDA').AsString;
    DSProdutoEtapa.DataSet.FieldByName('CODVENDA_PRODUTO').AsString     := DS.DataSet.FieldByName('CODIGO').AsString;
    DSProdutoEtapa.DataSet.FieldByName('CODCENTRO_TRABALHO').AsString   := cbxLookupEquipe.EditValue;
    DSProdutoEtapa.DataSet.FieldByName('DESCRICAO').AsString            := edtDescricaoServico.Text;

    if cbxTipoData.SelectedItem = 0 then
      DSProdutoEtapa.DataSet.FieldByName('TEMPO_MINUTOS').AsInteger           := Trunc(edtTempoEdit.Value*24*60);
    if cbxTipoData.SelectedItem = 1 then
      DSProdutoEtapa.DataSet.FieldByName('TEMPO_MINUTOS').AsInteger           := Trunc(edtTempoEdit.Value*60);
    if cbxTipoData.SelectedItem = 2 then
      DSProdutoEtapa.DataSet.FieldByName('TEMPO_MINUTOS').AsInteger           := Trunc(edtTempoEdit.Value);

    DSProdutoEtapa.DataSet.FieldByName('TEMPO_STRING').AsString     := edtTempoEdit.EditingText + ' ' +  cbxTipoData.EditingText;


//    DSProdutoEtapa.DataSet.FieldByName('TEMPO_HORAS').AsFloat           := edtTempo.Time * 24;

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
  edtDescricaoServico.Clear;
  DSProdutoEtapa.DataSet.Refresh;
end;

procedure TFrmFrame_Producao_Fluxo_Venda_Produto.btnAdicionarMaterialBaixaClick(
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
        DSProdutoBaixaAutomatica.DataSet.FieldByName('CODIGO').AsInteger              := Trunc(GetProximoCodigoGen('CR_VENDA_PRODUTO_BAIXA_AUTOM'));
        DSProdutoBaixaAutomatica.DataSet.FieldByName('ATIVO').AsString                := 'S';
        DSProdutoBaixaAutomatica.DataSet.FieldByName('DT_ALTERACAO').AsDateTime       := DataHoraSys;
        DSProdutoBaixaAutomatica.DataSet.FieldByName('CODVENDA').AsString             := DS.DataSet.FieldByName('CODVENDA').AsString;
        DSProdutoBaixaAutomatica.DataSet.FieldByName('CODVENDA_PRODUTO').AsString     := DS.DataSet.FieldByName('CODIGO').AsString;
        DSProdutoBaixaAutomatica.DataSet.FieldByName('CODVENDA_ETAPA').AsInteger      := ACodEtapa;
        DSProdutoBaixaAutomatica.DataSet.FieldByName('CODVENDA_PRODUTO_COMPOSICAO').AsInteger   := ACodProdutoComposicao;
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

procedure TFrmFrame_Producao_Fluxo_Venda_Produto.btnAdicionarPrerequisitoClick(
  Sender: TObject);
var
  Thread: TThread;
  ACodEtapa, ACodEtapaPreRequisito: integer;
begin
  inherited;
  ACodEtapa             :=  cbxEtapa.EditValue;
  ACodEtapaPreRequisito :=  cbxEtapaPrerequisito.EditValue;
  cbxEtapa.Clear;
  cbxEtapaPrerequisito.Clear;

  Thread := TThread.CreateAnonymousThread( procedure begin
    TThread.Synchronize(Thread,
    procedure
    begin
      try
        AlteraDataSet;
        DSPreRequisito.DataSet.Insert;
        DSPreRequisito.DataSet.FieldByName('CODIGO').AsInteger              := Trunc(GetProximoCodigoGen('CR_VENDA_PRODUTO_PREREQUISITO'));
        DSPreRequisito.DataSet.FieldByName('ATIVO').AsString                := 'S';
        DSPreRequisito.DataSet.FieldByName('DT_ALTERACAO').AsDateTime       := DataHoraSys;
        DSPreRequisito.DataSet.FieldByName('CODVENDA').AsString             := DS.DataSet.FieldByName('CODVENDA').AsString;
        DSPreRequisito.DataSet.FieldByName('CODVENDA_PRODUTO').AsString               := DS.DataSet.FieldByName('CODIGO').AsString;
        DSPreRequisito.DataSet.FieldByName('CODVENDA_ETAPA').AsInteger                := ACodEtapa;
        DSPreRequisito.DataSet.FieldByName('CODVENDA_ETAPA_PREREQUISITO').AsInteger   := ACodEtapaPreRequisito;
//        DSPreRequisito.DataSet.FieldByName('CODVENDA_PRODUTO_COMPOSICAO').AsInteger   := ACodEtapaPreRequisito;
        DSPreRequisito.DataSet.Post;
      except
        on E:Exception do
        begin
          ShowMessage(E.Message);
        end;
      end;
      DSPreRequisito.DataSet.Refresh;
    end);
  end);
  Thread.FreeOnTerminate := True;
  Thread.Start;
end;

procedure TFrmFrame_Producao_Fluxo_Venda_Produto.cbxEtapaPropertiesEditValueChanged(
  Sender: TObject);
var
  Thread: TThread;
begin
  if (VarToStr(cbxEtapa.EditValue) <> '') then
  begin
    Thread := TThread.CreateAnonymousThread( procedure begin
      TThread.Synchronize(Thread,
      procedure
      begin
        PreencheLookupVendaEtapasPreRequisitoComEtapaSelecionada(TFDQuery(DS.Dataset).Transaction, cbxEtapaPreRequisito.Properties,
                                                                  DS.DataSet.FieldByName('CODIGO').AsString,
                                                                  cbxEtapa.EditValue,
                                                                  DS.DataSet.FieldByName('CODVENDA').AsString);

      end);
    end);
    Thread.FreeOnTerminate := True;
    Thread.Start;
  end;
end;

procedure TFrmFrame_Producao_Fluxo_Venda_Produto.dxLayoutTabChanged(
  Sender: TObject);
begin
  inherited;
  if TabFluxo.ActuallyVisible then
  begin
    AtualizaLookupEquipe;
    GrupoAdicionarFluxo.Enabled := not (DS.DataSet.FieldByname('EM_PRODUCAO').AsString = 'S');
    GrupoGridEtapas.Enabled := not (DS.DataSet.FieldByname('EM_PRODUCAO').AsString = 'S');
    LiMensagemEtapa.Visible := not (DS.DataSet.FieldByname('EM_PRODUCAO').AsString = 'S');
  end;

  if TabPreRequisito.ActuallyVisible then
  begin
    AtualizaLookupPreRequisito;
    GrupoAdicionarPrerequisito.Enabled := not (DS.DataSet.FieldByname('EM_PRODUCAO').AsString = 'S');
    GrupoGridPrerequisito.Enabled := not (DS.DataSet.FieldByname('EM_PRODUCAO').AsString = 'S');
    LiMensagemPreRequisito.Visible := not (DS.DataSet.FieldByname('EM_PRODUCAO').AsString = 'S');
  end;

  if TabBaixaMateriaisProducao.ActuallyVisible then
  begin
    AtualizaLookupBaixaAutomatica;
    GrupoAdicionarBaixaAutomatica.Enabled := not (DS.DataSet.FieldByname('EM_PRODUCAO').AsString = 'S');
    GrupoGridBaixa.Enabled := not (DS.DataSet.FieldByname('EM_PRODUCAO').AsString = 'S');
    LiMensagemBaixa.Visible := not (DS.DataSet.FieldByname('EM_PRODUCAO').AsString = 'S');
  end;





end;

procedure TFrmFrame_Producao_Fluxo_Venda_Produto.FrameEnter(Sender: TObject);
begin
  inherited;
  AtualizaLookupEquipe;
  GrupoAdicionarFluxo.Enabled := not (DS.DataSet.FieldByname('EM_PRODUCAO').AsString = 'S');
  GrupoGridEtapas.Enabled := not (DS.DataSet.FieldByname('EM_PRODUCAO').AsString = 'S');
  LiMensagemEtapa.Visible := (DS.DataSet.FieldByname('EM_PRODUCAO').AsString = 'S');
end;

end.
