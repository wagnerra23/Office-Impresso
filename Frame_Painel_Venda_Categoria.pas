unit Frame_Painel_Venda_Categoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB,
  cxDBData, cxCurrencyEdit, cxLabel, cxContainer, Vcl.Menus, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  frxClass, frxDBSet, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxClasses,
  Datasnap.DBClient, Vcl.StdCtrls, cxButtons, uButtonFlat, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxGridChartView, cxGridDBChartView, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, Vcl.ExtCtrls,
  dxCustomTileControl, dxTileControl, System.Generics.Collections,
  WREventos, dxTileBar, dxLayoutContainer, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, dxLayoutControl, cxCustomPivotGrid, cxPivotGrid,
  cxDBPivotGrid, Vcl.ComCtrls, dxCore, cxDateUtils, cxSchedulerStorage,
  cxSchedulerCustomControls, cxSchedulerDateNavigator, cxDateNavigator,
  cxDateProfileButton, cxCalendar, cxGroupBox, cxRadioGroup, System.ImageList,
  Vcl.ImgList, cxImageList, dxLayoutLookAndFeels, Frame_Painel_Mestre,
  dxScrollbarAnnotations, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TPainel_Venda_Categoria = class(TPainel_Mestre)
    PivoDetalhe: TFDQuery;
    DSPivoDetalhe: TDataSource;
    PivoDetalheQTDVENDA: TLargeintField;
    PivoDetalheDESCRICAO: TDateField;
    PivoDetalheCATEGORIA: TStringField;
    PivoDetalheQUANT: TFloatField;
    PivoTotal: TFDQuery;
    DSPivoTotal: TDataSource;
    PivoTotalQTDVENDA: TLargeintField;
    PivoTotalCODIGO: TStringField;
    PivoTotalDESCRICAO: TStringField;
    PivoTotalMETA: TFloatField;
    PivoTotalQUANT: TFloatField;
    PivoTotalpercMeta: TFloatField;
    PivoTotalnecessario: TCurrencyField;
    PivoTotalmedia: TCurrencyField;
    PivoTotalprojecao: TCurrencyField;
    fr3PivoDetalhe: TfrxDBDataset;
    fr3PivoTotal: TfrxDBDataset;
    frxDBDataset1: TfrxDBDataset;
    PivoTotalINDICE: TIntegerField;
    PivoQuantDetalhe: TFDQuery;
    PivoQuantDetalheDESCRICAO: TDateField;
    PivoQuantDetalheMARCA: TStringField;
    PivoQuantDetalheQTDPRODUTO: TFloatField;
    fr3PivoQuantDetalhe: TfrxDBDataset;
    PivoQuantTotal: TFDQuery;
    PivoQuantTotalINDICE: TIntegerField;
    PivoQuantTotalQTDVENDA: TLargeintField;
    PivoQuantTotalDESCRICAO: TStringField;
    PivoQuantTotalQTDPRODUTO: TFloatField;
    fr3PivotQuantTotal: TfrxDBDataset;
    PivoQuantTotalprojecao: TIntegerField;
    PivoQuantTotalmedia: TIntegerField;
    PivoQuantTotalpercMeta: TCurrencyField;
    PivoQuantTotalQUANTMETA: TFloatField;
    PivoQuantTotalNecessario: TCurrencyField;
    TotalizadorQTDVENDAS: TLargeintField;
    TotalizadorQUANT: TFloatField;
    Totalizadormediageral: TCurrencyField;
    Cadastro_AnaliticoQTDVENDA: TLargeintField;
    Cadastro_AnaliticoDESCRICAO: TDateField;
    Cadastro_AnaliticoMETA: TFloatField;
    Cadastro_AnaliticoQUANT: TFloatField;
    CadastroCODIGO: TStringField;
    CadastroDESCRICAO: TStringField;
    CadastroMETA: TFloatField;
    CadastroQUANT: TFloatField;
    CadastropercMeta: TFloatField;
    Cadastroprojecao: TCurrencyField;
    Cadastronecessario: TCurrencyField;
    Cadastrofalta: TCurrencyField;
    Cadastromedia: TCurrencyField;
    PivoQuantServico: TFDQuery;
    PivoQuantServicoTotal: TFDQuery;
    fr3PivoQuantServicoTotal: TfrxDBDataset;
    fr3PivoQuantServico: TfrxDBDataset;
    PivoQuantServicoTotalINDICE: TIntegerField;
    PivoQuantServicoTotalMeta: TFloatField;
    PivoQuantServicoTotalPmeta: TFloatField;
    PivoQuantServicoTotalProjecao: TIntegerField;
    PivoQuantVendaTotal: TFDQuery;
    IntegerField1: TIntegerField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    IntegerField4: TIntegerField;
    fr3PivoQuantVendaTotal: TfrxDBDataset;
    PivoQuantServicoTotalNecessario: TIntegerField;
    PivoQuantVendaTotalNecessario: TIntegerField;
    PivoQuantServicoTotalMedia: TFloatField;
    PivoQuantVendaTotalMedia: TFloatField;
    PivoQuantServicoDESCRICAO: TDateField;
    PivoQuantServicoSERVICO: TLargeintField;
    PivoQuantVenda: TFDQuery;
    fr3PivoQuantVenda: TfrxDBDataset;
    PivoQuantVendaDESCRICAO: TDateField;
    PivoQuantVendaQTDVENDA: TLargeintField;
    PivoQuantServicoTotalDESCRICAO: TStringField;
    PivoQuantVendaTotalDESCRICAO: TStringField;
    PivoQuantVendaTotalQTDVENDA: TLargeintField;
    PivoQuantServicoTotalSERVICO: TLargeintField;
    PivoTotalAnoPassado: TFDQuery;
    LargeintField1: TLargeintField;
    StringField1: TStringField;
    StringField2: TStringField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    CurrencyField1: TCurrencyField;
    CurrencyField2: TCurrencyField;
    CurrencyField3: TCurrencyField;
    fr3PivoTotalAnoPassado: TfrxDBDataset;
    PivoQuantTotalAnoPassado: TFDQuery;
    IntegerField3: TIntegerField;
    LargeintField2: TLargeintField;
    StringField3: TStringField;
    FloatField6: TFloatField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    CurrencyField4: TCurrencyField;
    FloatField7: TFloatField;
    CurrencyField5: TCurrencyField;
    fr3PivoQuantTotalAnoPassado: TfrxDBDataset;
    PivoQuantServicoTotalAnoPassado: TFDQuery;
    IntegerField7: TIntegerField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    FloatField10: TFloatField;
    StringField4: TStringField;
    LargeintField3: TLargeintField;
    fr3PivoQuantServicoTotalAnoPassado: TfrxDBDataset;
    PivoQuantVendaTotalAnoPassado: TFDQuery;
    IntegerField10: TIntegerField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    FloatField13: TFloatField;
    StringField5: TStringField;
    LargeintField4: TLargeintField;
    fr3PivoQuantVendaTotalAnoPassado: TfrxDBDataset;
    PivoTotalTotalVenda: TCurrencyField;
    PivoTotalTotalProjecao: TCurrencyField;
    PivoTotalAnoPassadoINDICE: TStringField;
    PivoQuantServicoINDICE: TStringField;
    PivoQuantVendaINDICE: TStringField;
    PivoTotalpercMetaProjecao: TCurrencyField;
    PivoTotalpercMetaVenda: TFloatField;
    tcAgentsItem1: TdxTileControlItem;
    procedure WREventosCadastroPreencheVariaveisImpressaoPersonalizada(
      Sender: TObject);
    procedure CarregaTile;
    procedure OnItemClick(Sender: TdxTileControlItem);
    procedure CarregaGrafico(ACodEmpresa :integer; ADtIncio, ADtFim :TDate);
    procedure TotalizadorCalcFields(DataSet: TDataSet);
    procedure CadastroCalcFields(DataSet: TDataSet);
    procedure PivoTotalCalcFields(DataSet: TDataSet);
    procedure PivoQuantTotalCalcFields(DataSet: TDataSet);
    procedure Panel1Exit(Sender: TObject);
    procedure PivoQuantServicoTotalCalcFields(DataSet: TDataSet);
    procedure PivoQuantVendaTotalCalcFields(DataSet: TDataSet);
    procedure tiImprimirClick(Sender: TdxTileControlItem);
  private
    procedure CarregaTela;


    { Private declarations }
  public
    procedure AtualizaTela; override;
    procedure InitializeFrame; override;
    { Public declarations }
  end;

var
  Painel_Venda_Categoria: TPainel_Venda_Categoria;
  FTotalVenda :Double;
  FTotalProjecao :Double;
//  FCodMeta :Integer;

implementation

{$R *.dfm}

uses Principal, wrFuncoes, unitFuncoes, wrPreencheLookup, StrUtils, DateUtils, wrForms, wrFuncoes_Office,
  wrConstantes, Math, cadMeta, Base, Tag.Form;


procedure TPainel_Venda_Categoria.InitializeFrame;
begin
  inherited;
  AtualizaTela;
end;

///////////////////// ZONA DE CALC FIELDS \\\\\\\\\\\\\\\\\\\\\\\\\\\\
procedure TPainel_Venda_Categoria.Panel1Exit(Sender: TObject);
begin
  inherited;
  Ocultar(pnlMes);
end;


procedure TPainel_Venda_Categoria.PivoQuantTotalCalcFields(
  DataSet: TDataSet);
var
  ADiasTotais :Integer;
begin
  inherited;
  ADiasTotais := DaysBetween(FDataInicio,FDataFim);
  ADiasTotais := ADiasTotais + 1;

  PivoQuantTotal.FieldByName('percMeta').AsFloat     := ValidaNumero(PercRelativo(PivoQuantTotal.FieldByName('QTDPRODUTO').AsFloat, PivoQuantTotal.FieldByname('QUANTMETA').AsFloat));
  PivoQuantTotal.FieldByName('media').AsFloat        := PivoQuantTotal.FieldByName('QTDPRODUTO').AsFloat / FDiasAcumulados;
  PivoQuantTotal.FieldByName('projecao').AsFloat     := PivoQuantTotal.FieldByName('media').AsFloat * ADiasTotais;
  if (FDiasRestantes > 0) and (PivoQuantTotal.FieldByName('QUANTMETA').AsFloat > 0) then
    PivoQuantTotal.FieldByName('Necessario').AsFloat := trunc((PivoQuantTotal.FieldByName('QUANTMETA').AsFloat - PivoQuantTotal.FieldByName('QTDPRODUTO').AsFloat) / FDiasRestantes)
  else
  begin
    if PivoQuantTotal.FieldByName('QUANTMETA').AsFloat > PivoQuantTotal.FieldByName('QTDPRODUTO').AsFloat then
      PivoQuantTotal.FieldByName('Necessario').AsFloat  := 0
    else
     PivoQuantTotal.FieldByName('Necessario').AsFloat := trunc((PivoQuantTotal.FieldByName('QTDPRODUTO').AsFloat - PivoQuantTotal.FieldByName('QUANTMETA').AsFloat));
  end;
end;

procedure TPainel_Venda_Categoria.PivoTotalCalcFields(DataSet: TDataSet);
var
  ADiasTotais :Integer;
  ATotalVenda, ATotalProjecao : Double;
  APassou: Integer;
begin
  inherited;
  PivoTotal.FieldByName('percMeta').AsFloat := ValidaNumero(PercRelativo(PivoTotal.FieldByName('QUANT').AsFloat, PivoTotal.FieldByname('META').AsFloat));

  if (FDiasRestantes > 0) and (PivoTotal.FieldByName('META').AsFloat > 0) then
    PivoTotal.FieldByName('Necessario').AsFloat := trunc((PivoTotal.FieldByName('META').AsFloat - PivoTotal.FieldByName('QUANT').AsFloat) / FDiasRestantes)
  else
  begin
    if PivoTotal.FieldByName('QUANT').AsFloat > PivoTotal.FieldByName('META').AsFloat then
      PivoTotal.FieldByName('Necessario').AsFloat := 0
    else
     PivoTotal.FieldByName('Necessario').AsFloat := trunc((PivoTotal.FieldByName('META').AsFloat - PivoTotal.FieldByName('QUANT').AsFloat));
  end;

  ADiasTotais := DaysBetween(FDataInicio,FDataFim);
  ADiasTotais := ADiasTotais + 1;

  PivoTotal.FieldByName('media').AsFloat      := PivoTotal.FieldByName('QUANT').AsFloat / FDiasAcumulados;
  PivoTotal.FieldByName('projecao').AsFloat   := roundto(PivoTotal.FieldByName('media').AsFloat,-2) * ADiasTotais;

  PivoTotal.FieldByName('TotalProjecao').AsFloat := FTotalProjecao;
  PivoTotal.FieldByName('TotalVenda').AsFloat := FTotalVenda;

  PivoTotal.FieldByName('percMetaProjecao').AsFloat := ValidaNumero(PercRelativo(PivoTotal.FieldByName('TotalProjecao').AsFloat, Meta.FieldByname('VALOR').AsFloat));
  PivoTotal.FieldByName('percMetaVenda').AsFloat := ValidaNumero(PercRelativo(PivoTotal.FieldByName('TotalVenda').AsFloat, Meta.FieldByname('VALOR').AsFloat));
end;

procedure TPainel_Venda_Categoria.CadastroCalcFields(DataSet: TDataSet);
var
  ADiasTotais :Integer;
begin
  inherited;
  if Cadastro.FieldByName('META').AsFloat > 0 then
  begin
    Cadastro.FieldByName('percMeta').AsFloat   := ValidaNumero(PercRelativo(Cadastro.FieldByName('QUANT').AsFloat, Cadastro.FieldByname('META').AsFloat));
    Cadastro.FieldByName('falta').AsFloat      := Cadastro.FieldByName('META').AsFloat - Cadastro.FieldByName('QUANT').AsFloat;
    if FDiasRestantes > 0 then
      Cadastro.FieldByName('Necessario').AsFloat := (Cadastro.FieldByName('META').AsFloat - Cadastro.FieldByName('QUANT').AsFloat) / FDiasRestantes
    else
      Cadastro.FieldByName('Necessario').AsFloat := 0;
  end
  else
  begin
    Cadastro.FieldByName('falta').AsFloat      := 0;
    Cadastro.FieldByName('percMeta').AsFloat   := 0;
    Cadastro.FieldByName('Necessario').AsFloat := 0;
  end;
  ADiasTotais := DaysBetween(FDataInicio,FDataFim);
  ADiasTotais := ADiasTotais + 1;

  Cadastro.FieldByName('media').AsFloat      := Cadastro.FieldByName('QUANT').AsFloat / FDiasAcumulados;
  Cadastro.FieldByName('projecao').AsFloat   := Cadastro.FieldByName('media').AsFloat * ADiasTotais;
end;

procedure TPainel_Venda_Categoria.TotalizadorCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  if Totalizador.FieldByName('QUANT').AsFloat > 0 then
  begin
    Totalizador.FieldByName('mediageral').AsFloat := Totalizador.FieldByName('QUANT').AsFloat / Totalizador.FieldByName('QTDVENDAS').AsFloat;
  end else
  begin
    Totalizador.FieldByName('mediageral').AsFloat  := 0;
  end;
end;

procedure TPainel_Venda_Categoria.PivoQuantServicoTotalCalcFields(
  DataSet: TDataSet);
var
  ADiasTotais :Integer;
begin
  inherited;
  ADiasTotais := DaysBetween(FDataInicio,FDataFim);
  ADiasTotais := ADiasTotais + 1;

  PivoQuantServicoTotal.FieldByName('Media').AsFloat :=  trunc(PivoQuantServicoTotal.FieldByName('SERVICO').AsFloat / FDiasAcumulados);
  PivoQuantServicoTotal.FieldByName('Projecao').AsInteger :=  PivoQuantServicoTotal.FieldByName('Media').AsInteger * ADiasTotais;
end;

procedure TPainel_Venda_Categoria.PivoQuantVendaTotalCalcFields(
  DataSet: TDataSet);
var
  ADiasTotais :Integer;
begin
  inherited;
  ADiasTotais := DaysBetween(FDataInicio,FDataFim);
  ADiasTotais := ADiasTotais + 1;

  PivoQuantVendaTotal.FieldByName('Media').AsFloat :=  trunc(PivoQuantVendaTotal.FieldByName('QTDVENDA').AsFloat / FDiasAcumulados);
  PivoQuantVendaTotal.FieldByName('Projecao').AsInteger :=  PivoQuantVendaTotal.FieldByName('Media').AsInteger * ADiasTotais;
end;

///////////////////// FIM - ZONA DE CALC FIELDS \\\\\\\\\\\\\\\\\\\\\\\\\\\\
procedure TPainel_Venda_Categoria.AtualizaTela;
begin
  inherited;
  CarregaTela;
  CarregaTile;
end;

procedure TPainel_Venda_Categoria.CarregaTela;
Var
  APercentual: Double;
begin
  FTotalVenda := 0;
  FTotalProjecao := 0;
  FDataAtual := DataHoraSys;
  Meta.Close;
  Meta.ParamByName('Codigo').Value     := FCodMeta;
  Meta.ParamByName('CodEmpresa').Value := FCodEmpresa;
  Meta.Open;


  Totalizador.Close;
  Totalizador.ParamByName('CodEmpresa').AsInteger := FCodEmpresa;
  Totalizador.ParamByName('Dt_Inicio').AsDateTime := FDataInicio;
  Totalizador.ParamByName('Dt_Fim').AsDateTime    := FDataFim;
  Totalizador.Open;

  Cadastro.Close;
  Cadastro.ParamByName('CodEmpresa').AsInteger := FCodEmpresa;
  Cadastro.ParamByName('Dt_Inicio').AsDateTime := FDataInicio;
  Cadastro.ParamByName('Dt_Fim').AsDateTime    := FDataFim;
  Cadastro.ParamByName('CodMeta').AsInteger    := FCodMeta;
  Cadastro.Open;


  GrupoBotaoVermelho.Visible := Totalizador.FieldByname('QUANT').AsFloat <= 0;
  GrupoMeio.Visible := Totalizador.FieldByname('QUANT').AsFloat > 0;
  GrupoMenuLateral.Visible := Totalizador.FieldByname('QUANT').AsFloat > 0;

  ////////////////PERSONALIZAR O TILEBAR SUPERIOR\\\\\\\\\\\\\\\\\

  //FATURAMENTO
  dxTileBar1.Items[0].Text2.Value := FormatFloat('R$##,###,##0.00',Totalizador.FieldByname('QUANT').AsFloat);
  if Meta.FieldByName('VALOR').AsFloat > 0 then
  begin
    APercentual := ValidaNumero(PercRelativo(Totalizador.FieldByname('QUANT').AsFloat, Meta.FieldByName('VALOR').AsFloat));
    dxTileBar1.Items[0].Text3.Value := FormatFloat('%##,###,##0.00',APercentual);
    dxTileBar1.Items[0].Text4.Value := 'Relativo a Meta ';
  end
  else
  begin
    dxTileBar1.Items[0].Text3.Value := '';
    if Totalizador.FieldByname('QUANT').AsFloat > 0 then
    begin
      dxTileBar1.Items[0].Text4.Value := '';
      dxTileBar1.Items[0].Text4.TextColor := clWhite;
    end
    else
    begin
      dxTileBar1.Items[0].Text4.Value := 'Não há Dados';
      dxTileBar1.Items[0].Text4.TextColor := clRed;
    end;
  end;

  //META
  if FCodMeta = 0 then
  begin
    dxTileBar1.Items[1].Text1.Value     := 'Clique P/ Configurar';
    dxTileBar1.Items[1].Text2.Value     := 'a Meta';
    dxTileBar1.Items[1].Text3.Value     := '';
    dxTileBar1.Items[1].Text4.Value     := '';
  end
  else
  begin
    dxTileBar1.Items[1].Text1.Value     := 'Meta';
    dxTileBar1.Items[1].Text2.Value     := FormatFloat('R$##,###,##0.00',Meta.FieldByName('VALOR').AsFloat);
    dxTileBar1.Items[1].Text3.Value     := IntToStr(FDiasRestantes);//'('+ FormatFloat('R$ ##,###,##0.00',Totalizador.FieldByname('QUANT').AsFloat) + ' - ' + FormatFloat('%##,###,##0.00',APercentual) + ' Concluido)';
    if Totalizador.FieldByname('QUANT').AsFloat > 0 then
    begin
      dxTileBar1.Items[1].Text4.IndentHorz := 70;
      dxTileBar1.Items[1].Text4.Value      := 'Dias Restantes';
      dxTileBar1.Items[1].Text4.TextColor  := clWhite;
    end;
  end;


  //MEDIA GERAL
  dxTileBar1.Items[2].Text2.Value := FormatFloat('R$##,###,##0.00',Totalizador.FieldByName('mediageral').AsFloat);
  dxTileBar1.Items[2].Text3.Value := '';
  if Totalizador.FieldByname('QUANT').AsFloat > 0 then
  begin
    dxTileBar1.Items[2].Text4.IndentHorz := 50;
    dxTileBar1.Items[2].Text4.Value := 'Faturamento/Qtd Vendas';
    dxTileBar1.Items[2].Text4.TextColor := clWhite;
  end
  else
  begin
    dxTileBar1.Items[2].Text4.Value := 'Não há Dados';
    dxTileBar1.Items[2].Text4.TextColor := clRed;
  end;


  //QUANT VENDAS
  dxTileBar1.Items[3].Text2.Value := FormatFloat('##0',Totalizador.FieldByname('QTDVENDAS').AsFloat);
  dxTileBar1.Items[3].Text3.Value := '';
  if Totalizador.FieldByname('QUANT').AsFloat > 0 then
  begin
     dxTileBar1.Items[3].Text4.Value := '';
    dxTileBar1.Items[3].Text4.TextColor := clWhite;
  end
  else
  begin
    dxTileBar1.Items[3].Text4.Value := 'Não há Dados';
    dxTileBar1.Items[3].Text4.TextColor := clRed;
  end;

  //DIAS
  if Totalizador.FieldByname('QUANT').AsFloat > 0 then
  begin
    dxTileBar1.Items[4].Text2.Value := IntToStr(FDiasRestantes);
    dxTileBar1.Items[4].Text3.Value := IntToStr(FDiasAcumulados);
    dxTileBar1.Items[4].Text4.TextColor := clWhite;
  end
  else
  begin
    dxTileBar1.Items[4].Text4.Value := 'Não há Dados';
    dxTileBar1.Items[4].Text4.TextColor := clRed;
  end;

  ////////////////FIM - PERSONALIZAR O TILEBAR SUPERIOR\\\\\\\\\\\\\\\\\
end;

procedure TPainel_Venda_Categoria.CarregaTile;
var
  AItem: TdxTileControlItem;
  dsAgents: TDataSet;
  ACor1, ACor2, ACor3 :String;
  AMensagem, AMensagemMeta, AMensagemAtingiu, AMensagemPercMeta, AMensagemNecessario:String;
begin
  tcAgents.BeginUpdate;
  try
    tcAgents.Items.Clear;
//    dsAgents := DMRealtorWorld.clHomesAndAgents;
    Cadastro.First;
    while not Cadastro.EOF do
    begin

//      ACor1 := clGray;   //Cinza
//      ACor2 := clGray;
//      ACor3 := clGray;


       if FDiasRestantes > 0 then
         AMensagem := '/Dia';

      tcAgents.OptionsView.ItemHeight := 130;
      tcAgents.OptionsView.ItemWidth  := 270;

      AMensagemMeta := 'Meta: ' + FormatFloat('R$ ##,###,##0.00',Cadastro.FieldByName('META').AsFloat);
      AMensagemAtingiu := '' + FormatFloat('R$ ##,###,##0.00',Cadastro.FieldByName('QUANT').AsFloat);
      AMensagemPercMeta := '(' + FormatFloat('% ##,###,##0.00',Cadastro.FieldByName('percMeta').AsFloat) +')';
      AMensagemNecessario := 'Necessario: ' + FormatFloat('R$ ##,###,##0.00',Cadastro.FieldByName('necessario').AsFloat) + AMensagem;

      if Cadastro.FieldByName('META').AsFloat = 0 then
      begin
        AMensagemMeta :=  '';
        AMensagemPercMeta := '';
        AMensagemNecessario := AMensagemAtingiu;
        AMensagemAtingiu := '';
      end;

      AItem := tcAgents.CreateItem(False);
//      AItem.Glyph.Image := CarregaImagemCaminhoTile(GetCaminhoGED_Pessoa_Miniatura(Categoria.FieldByName('CODIGO').AsString)); //  QUE MERDA ISSO, SISTEMA NÃO TRABALHA COM IMAGEM DIREITO
    //  AItem.Style := FrmPrincipal.tcMenu.Style;
      AItem.Glyph.Images := imgBase;
      if Cadastro.FieldByName('QUANT').AsFloat > Cadastro.FieldByName('META').AsFloat then
        AItem.Glyph.ImageIndex := 4
      else
        AItem.Glyph.ImageIndex := 5;
      AItem.Glyph.Align := oaBottomCenter;
      AItem.Glyph.Image.Scale(70, 100);
      AItem.Style.BorderColor        := clGrayText; //$20B3B3B3;//StringToColor(ACor1);
      AItem.Style.GradientBeginColor := clWhite;//$20B3B3B3;//StringToColor(ACor2);
      AItem.Style.GradientEndColor   := clWhite;//$20B3B3B3;//StringToColor(ACor3);

      AItem.Tag              := Cadastro.RecNo;//////PEGA O REGISTRO DO QUERY POR CAUSA DAS CATEGORIAS QUE O CODIGO É STRING '1.1'
//      AItem.Style.Font.Size  := 13;
      AItem.Text1.Value      := Cadastro.FieldByName('DESCRICAO').AsString ;     //+ ' ' + Vendedores.FieldByName('LastName').AsString
//      AItem.Text1.Font.Style := [fsBold];
      AItem.Text1.TextColor  := $0055453F;
      AItem.Text1.Font.Size  := 18;
      AItem.Text1.IndentHorz := 10;
      AItem.Text1.IndentVert := 10;

      AItem.Text2.Value      := AMensagemMeta;
      AItem.Text2.Align      := oaTopLeft;
      AItem.Text1.TextColor  := $008D8B8B;
      AItem.Text2.Font.Size  := 11;
      AItem.Text2.IndentHorz := 10;
      AItem.Text2.IndentVert := 37;
      AItem.Text3.Value      := AMensagemAtingiu + AMensagemPercMeta;
      AItem.Text3.Align      := oaTopLeft;
      if (Cadastro.FieldByName('QUANT').AsFloat < Cadastro.FieldByName('META').AsFloat) then
        AItem.Text3.TextColor := clRed
      else
        AItem.Text3.TextColor := $0055453F;;
      AItem.Text3.Font.Size  := 11;
      AItem.Text3.IndentHorz := 10;
      AItem.Text3.IndentVert := 55;
      AItem.Text4.Value      := AMensagemNecessario;
      AItem.Text4.Align      := oaBottomLeft;
      AItem.Text4.Font.Style := [fsBold];
      AItem.Text4.TextColor  := $0055453F;;
      AItem.Text4.Font.Size  := 15;
//      AItem.Text4.IndentHorz := 10;
//      AItem.Text4.IndentVert := 30;
      AItem.OnClick          := OnItemClick;

      Cadastro.Next;
    end;

  finally
    tcAgents.EndUpdate;
  end;
end;

procedure TPainel_Venda_Categoria.OnItemClick(Sender: TdxTileControlItem);
begin
  Cadastro.RecNo := Sender.Tag;//////PEGA O REGISTRO DO QUERY POR CAUSA DAS CATEGORIAS QUE O CODIGO É STRING '1.1'
  CarregaGrafico(FCodEmpresa, FDataInicio, FDataFim);
end;

////////////////CARREGA MEIO DA TELA\\\\\\\\\\\\\\\\\
procedure TPainel_Venda_Categoria.CarregaGrafico(ACodEmpresa :integer; ADtIncio, ADtFim :TDate);
var
  AMensagemResumo, AMensagemTopo: String;
begin
  Cadastro_Analitico.Close;
  Cadastro_Analitico.ParamByName('CodEmpresa').AsInteger := ACodEmpresa;
  Cadastro_Analitico.ParamByName('Dt_Inicio').AsDateTime := ADtIncio;
  Cadastro_Analitico.ParamByName('Dt_Fim').AsDateTime    := ADtFim;
  Cadastro_Analitico.ParamByName('CodTabela').Value      := Cadastro.FieldByName('CODIGO').Value;
  Cadastro_Analitico.ParamByName('CodMeta').AsInteger    := Meta.FieldByName('CODIGO').AsInteger;
  Cadastro_Analitico.Open;

//  if Cadastro.FieldByName('meta').AsFloat > Cadastro.FieldByName('QUANT').AsFloat  then
//  begin
//    if FDiasRestantes > 0 then
//    begin
//      AMensagemResumo := ' É Necessario Vender: ' + FormatFloat('R$ ##,###,##0.00',Cadastro.FieldByName('necessario').AsFloat) + ' Por dia, Para Atingir a Meta de: ' + FormatFloat('R$ ##,###,##0.00',Cadastro_Analitico.FieldByName('META').AsFloat);
//
//    end
//    else
//    begin
//      AMensagemResumo := ' Faltou: ' + FormatFloat('R$ ##,###,##0.00',Cadastro.FieldByName('falta').AsFloat) + ' Para Atingir a Meta de : ' + FormatFloat('R$ ##,###,##0.00',Cadastro.FieldByName('META').AsFloat);
//    end;
//  end
//  else
//  begin
//    AMensagemResumo := ' Parabéns! Você Bateu sua Meta! Total: ' + FormatFloat('R$ ##,###,##0.00',Cadastro.FieldByName('QUANT').AsFloat);
//  end;
//
//  if FDiasRestantes > 0 then
//  begin
//    if Cadastro.FieldByName('media').AsFloat > Cadastro.FieldByName('necessario').AsFloat  then
//    begin
//      AMensagemTopo := 'Sua Media diária de ' + FormatFloat('R$ ##,###,##0.00',Cadastro.FieldByName('media').AsFloat) + ' é maior que a meta diária necessaria: ' + FormatFloat('R$ ##,###,##0.00',Cadastro.FieldByName('necessario').AsFloat) + ' Continue assim, Parabéns!';
////      cxLabel1.Style.TextColor := clGreen;
//    end
//    else
//    begin
//      AMensagemTopo := 'Sua Media diária de ' + FormatFloat('R$ ##,###,##0.00',Cadastro.FieldByName('media').AsFloat) + ' é menor que a meta diária necessaria: ' + FormatFloat('R$ ##,###,##0.00',Cadastro.FieldByName('necessario').AsFloat) + ' Vamos vender mais!';
////      cxLabel1.Style.TextColor := clRed;
//    end;
//  end
//  else
//  begin
//    AMensagemTopo := '';
//  end;

//  cxLabel1.Caption :=  AMensagemTopo;

//  Label1.Caption := Cadastro.FieldByName('DESCRICAO').AsString;
//  lblDiasRestantes.Caption := IntToStr(FDiasRestantes);
//  lblMetaEmpresa.Caption   := FormatFloat('R$ ##,###,##0.00',Cadastro.FieldByName('META').AsFloat);
//  lblSeuValor.Caption      := FormatFloat('R$ ##,###,##0.00',Cadastro.FieldByName('QUANT').AsFloat);
//  lblFalta.Caption         := FormatFloat('R$ ##,###,##0.00',Cadastro.FieldByName('falta').AsFloat);
//  lblMediaDia.Caption      := FormatFloat('R$ ##,###,##0.00',Cadastro.FieldByName('media').AsFloat);
//  lblProjecao.Caption      := FormatFloat('R$ ##,###,##0.00',Cadastro.FieldByName('projecao').AsFloat);

 // lblProjecao.Caption := 'Restando ' + IntToStr(FDiasRestantes) + ' Dias, sua média diária é de: ' + FormatFloat('R$ ##,###,##0.00',Cadastro.FieldByName('media').AsFloat) + ' Com uma Projeção de ' + FormatFloat('R$ ##,###,##0.00',Cadastro.FieldByName('projecao').AsFloat) + ' Até o fim do periodo.'  + AMensagemResumo;
end;

procedure TPainel_Venda_Categoria.tiImprimirClick(
  Sender: TdxTileControlItem);
var
  QuerX : TFDQuery;
begin
////////////////RELATORIO\\\\\\\\\\\\\\\\\
  ///  Tras todas Categorias e Valores
  FTotalProjecao := 0;
  FTotalVenda := 0;

  PivoDetalhe.Close;
  PivoDetalhe.ParamByName('CodEmpresa').AsInteger := FCodEmpresa;
  PivoDetalhe.ParamByName('Dt_Inicio').AsDateTime := FDataInicio;
  PivoDetalhe.ParamByName('Dt_Fim').AsDateTime    := FDataFim;
  PivoDetalhe.ParamByName('CodMeta').AsInteger    := FCodMeta;
  PivoDetalhe.Open;

  QuerX := GeraFDQuery;
  QuerX.Close;
  QuerX.SQL.Text := 'select count(DISTINCT v.CODIGO) as QTDVENDA, v.DT_COMPETENCIA as DESCRICAO' + #13#10 +
                    'from VENDA V' + #13#10 +
                    'LEFT JOIN venda_produto vp ON vp.codvenda = v.codigo' + #13#10 +
                    'left join produto p on p.codigo = vp.codproduto' + #13#10 +
                    'left join produto_categoria T on T.codigo = p.codproduto_CATEGORIA' + #13#10 +
                    'left join META_DETALHE MD on MD.CODTABELA = T.CODIGO and MD.CODMETA = :CodMeta' + #13#10 +
                    'where (V.ATIVO = ''S'')and(V.IS_VENDA = ''S'') and (v.CodEmpresa = :CodEmpresa)and' + #13#10 +
                          '(V.DT_COMPETENCIA between :Dt_Inicio and :Dt_Fim) and (v.NF_FINALIDADE = 1)' + #13#10 +
                          'and not(V.DT_FATURAMENTO is null)' + #13#10 +
                    'group by 2' + #13#10 +
                    'order by 2';

  QuerX.ParamByName('CodEmpresa').AsInteger := FCodEmpresa;
  QuerX.ParamByName('Dt_Inicio').AsDateTime := FDataInicio;
  QuerX.ParamByName('Dt_Fim').AsDateTime    := FDataFim;
  QuerX.ParamByName('CodMeta').AsInteger    := FCodMeta;
  QuerX.Open;

  FDiasAcumulados := QuerX.RecordCount;

//  /// Tras os Totalizadores



  PivoTotal.Close;
  PivoTotal.ParamByName('CodEmpresa').AsInteger := FCodEmpresa;
  PivoTotal.ParamByName('Dt_Inicio').AsDateTime := FDataInicio;
  PivoTotal.ParamByName('Dt_Fim').AsDateTime    := FDataFim;
  PivoTotal.ParamByName('CodMeta').AsInteger    := FCodMeta;
  PivoTotal.Open;

  /// Tras os Totalizadores do ANO PASSADO
  PivoTotalAnoPassado.Close;
  PivoTotalAnoPassado.ParamByName('CodEmpresa').AsInteger := FCodEmpresa;
  PivoTotalAnoPassado.ParamByName('Dt_Inicio').AsDateTime := IncYear(FDataInicio, -1);
  PivoTotalAnoPassado.ParamByName('Dt_Fim').AsDateTime    := IncYear(FDataFim, -1);
  PivoTotalAnoPassado.ParamByName('CodMeta').AsInteger    := FCodMeta;
  PivoTotalAnoPassado.Open;



  // Tras os Detalhes para quantidades por Marca
  PivoQuantDetalhe.Close;
  PivoQuantDetalhe.ParamByName('CodEmpresa').AsInteger := FCodEmpresa;
  PivoQuantDetalhe.ParamByName('Dt_Inicio').AsDateTime := FDataInicio;
  PivoQuantDetalhe.ParamByName('Dt_Fim').AsDateTime    := FDataFim;
  PivoQuantDetalhe.ParamByName('CodMeta').AsInteger    := FCodMeta;
  PivoQuantDetalhe.Open;

  // Tras os Totalizadores para quantidades por Marca
  PivoQuantTotal.Close;
  PivoQuantTotal.ParamByName('CodEmpresa').AsInteger := FCodEmpresa;
  PivoQuantTotal.ParamByName('Dt_Inicio').AsDateTime := FDataInicio;
  PivoQuantTotal.ParamByName('Dt_Fim').AsDateTime    := FDataFim;
  PivoQuantTotal.ParamByName('CodMeta').AsInteger    := FCodMeta;
  PivoQuantTotal.Open;

  // Tras os Totalizadores para quantidades por Marca ANO PASSADO
  PivoQuantTotalAnoPassado.Close;
  PivoQuantTotalAnoPassado.ParamByName('CodEmpresa').AsInteger := FCodEmpresa;
  PivoQuantTotalAnoPassado.ParamByName('Dt_Inicio').AsDateTime := IncYear(FDataInicio, -1);
  PivoQuantTotalAnoPassado.ParamByName('Dt_Fim').AsDateTime    := IncYear(FDataFim, -1);
  PivoQuantTotalAnoPassado.ParamByName('CodMeta').AsInteger    := FCodMeta;
  PivoQuantTotalAnoPassado.Open;

  // Tras os Detalhes para quantidades por Serviço
  PivoQuantServico.Close;
  PivoQuantServico.ParamByName('CodEmpresa').AsInteger := FCodEmpresa;
  PivoQuantServico.ParamByName('Dt_Inicio').AsDateTime := FDataInicio;
  PivoQuantServico.ParamByName('Dt_Fim').AsDateTime    := FDataFim;
  PivoQuantServico.Open;

  // Tras os Detalhes para quantidades por Venda
  PivoQuantVenda.Close;
  PivoQuantVenda.ParamByName('CodEmpresa').AsInteger := FCodEmpresa;
  PivoQuantVenda.ParamByName('Dt_Inicio').AsDateTime := FDataInicio;
  PivoQuantVenda.ParamByName('Dt_Fim').AsDateTime    := FDataFim;
  PivoQuantVenda.Open;

  //Tras os Totalizadores por Servico
  PivoQuantServicoTotal.Close;
  PivoQuantServicoTotal.ParamByName('CodEmpresa').AsInteger := FCodEmpresa;
  PivoQuantServicoTotal.ParamByName('Dt_Inicio').AsDateTime := FDataInicio;
  PivoQuantServicoTotal.ParamByName('Dt_Fim').AsDateTime    := FDataFim;
  PivoQuantServicoTotal.Open;

  //Tras os Totalizadores por QUANTVENDA
  PivoQuantVendaTotal.Close;
  PivoQuantVendaTotal.ParamByName('CodEmpresa').AsInteger := FCodEmpresa;
  PivoQuantVendaTotal.ParamByName('Dt_Inicio').AsDateTime := FDataInicio;
  PivoQuantVendaTotal.ParamByName('Dt_Fim').AsDateTime    := FDataFim;
  PivoQuantVendaTotal.Open;


  //Tras os Totalizadores por Servico ANO PASSADO
  PivoQuantServicoTotalAnoPassado.Close;
  PivoQuantServicoTotalAnoPassado.ParamByName('CodEmpresa').AsInteger := FCodEmpresa;
  PivoQuantServicoTotalAnoPassado.ParamByName('Dt_Inicio').AsDateTime := IncYear(FDataInicio, -1);
  PivoQuantServicoTotalAnoPassado.ParamByName('Dt_Fim').AsDateTime    := IncYear(FDataFim, -1);
  PivoQuantServicoTotalAnoPassado.Open;

  //Tras os Totalizadores por QUANTVENDA  ANO PASSADO
  PivoQuantVendaTotalAnoPassado.Close;
  PivoQuantVendaTotalAnoPassado.ParamByName('CodEmpresa').AsInteger := FCodEmpresa;
  PivoQuantVendaTotalAnoPassado.ParamByName('Dt_Inicio').AsDateTime := IncYear(FDataInicio, -1);
  PivoQuantVendaTotalAnoPassado.ParamByName('Dt_Fim').AsDateTime    := IncYear(FDataFim, -1);
  PivoQuantVendaTotalAnoPassado.Open;
  ////////////////FIM - RELATORIO\\\\\\\\\\\\\\\\\

   PivoTotal.First;
  while not PivoTotal.Eof do
  begin
    FTotalProjecao := FTotalProjecao + PivoTotal.FieldByName('projecao').AsFloat;
    FTotalVenda := FTotalVenda +  PivoTotal.FieldByName('QUANT').AsFloat;
    PivoTotal.Next;
  end;

  PivoTotal.edit;
  PivoTotal.FieldByName('TotalProjecao').AsFloat := FTotalProjecao;
  PivoTotal.FieldByName('TotalVenda').AsFloat :=  FTotalVenda;

  PivoTotal.FieldByName('percMetaProjecao').AsFloat := ValidaNumero(PercRelativo(PivoTotal.FieldByName('TotalProjecao').AsFloat, Meta.FieldByname('VALOR').AsFloat));
  PivoTotal.FieldByName('percMetaVenda').AsFloat := ValidaNumero(PercRelativo(PivoTotal.FieldByName('TotalVenda').AsFloat, Meta.FieldByname('VALOR').AsFloat));
  PivoTotal.Post;


  inherited;

end;

procedure TPainel_Venda_Categoria.WREventosCadastroPreencheVariaveisImpressaoPersonalizada(
  Sender: TObject);
var
  AReport: TfrxReport;
begin
  inherited;
  AReport := WREventosCadastro.Impressao.Report;
end;

initialization
  RegisterClass(TPainel_Venda_Categoria);
  RegisterFramePainel(Tag_BI_Venda_por_Categoria, TPainel_Venda_Categoria);
end.
