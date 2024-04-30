unit Frame_Painel_Venda_Funcionario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, DB,
  cxLookAndFeelPainters, dxCustomTileControl, dxTileControl,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, DBClient, cxGridChartView, cxGridDBChartView, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridLevel, cxGrid, ExtCtrls, cxTextEdit, cxCurrencyEdit, cxImage,
  cxMemo, cxSplitter, MidasLib, cxNavigator, dxDateRanges,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, cxLabel, cxMaskEdit, cxDropDownEdit, cxCalendar, frxClass,
  frxDBSet, uButtonFlat, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxLayoutContainer, dxLayoutControlAdapters, System.Generics.Collections,
  WREventos, dxTileBar, dxLayoutControl, dxLayoutcxEditAdapters,
  System.ImageList, Vcl.ImgList, cxImageList, dxLayoutLookAndFeels, Frame_Painel_Mestre, dxScrollbarAnnotations, dxSkinsCore, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TPainel_Venda_Funionario = class(TPainel_Mestre)
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
    Cadastromedia: TCurrencyField;
    Cadastroprojecao: TCurrencyField;
    Cadastronecessario: TCurrencyField;
    Cadastrofalta: TCurrencyField;
    procedure TotalizadorCalcFields(DataSet: TDataSet);
    procedure CarregaTile;
    procedure OnItemClick(Sender: TdxTileControlItem);
    procedure CarregaGrafico(ACodEmpresa :integer; ADtIncio, ADtFim :TDate);
    procedure WREventosCadastroPreencheVariaveisImpressaoPersonalizada(
      Sender: TObject);
    procedure CadastroCalcFields(DataSet: TDataSet);
  private
    procedure CarregaTela;

  public
    procedure AtualizaTela; override;
    procedure InitializeFrame; override;
  end;

var
  Painel_Venda_Funionario: TPainel_Venda_Funionario;


implementation

{$R *.dfm}

uses Principal, wrFuncoes, unitFuncoes, wrPreencheLookup, StrUtils, DateUtils, wrForms, wrFuncoes_Office,
  wrConstantes, Math, cadMeta, Base, Tag.Form;

procedure TPainel_Venda_Funionario.InitializeFrame;
begin
  inherited;
  AtualizaTela;
end;

procedure TPainel_Venda_Funionario.CadastroCalcFields(DataSet: TDataSet);
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


  Cadastro.FieldByName('media').AsFloat      := Cadastro.FieldByName('QUANT').AsFloat / FDiasAcumulados;
  Cadastro.FieldByName('projecao').AsFloat   := Cadastro.FieldByName('media').AsFloat * FDiasRestantes;
end;

procedure TPainel_Venda_Funionario.TotalizadorCalcFields(DataSet: TDataSet);
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

procedure TPainel_Venda_Funionario.AtualizaTela;
begin
  inherited;
  CarregaTela;
  CarregaTile;
end;

procedure TPainel_Venda_Funionario.CarregaTela;
Var
  ADataAtual, ADataInicio, ADataFim: TDate;
  ACodEmpresa :Integer;
  APercentual: Double;
  AMES: String;
begin
  FDataAtual := DataHoraSys;
  Meta.Close;
  Meta.ParamByName('Codigo').Value := FCodMeta;
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

procedure TPainel_Venda_Funionario.CarregaTile;
var
  AItem: TdxTileControlItem;
  dsAgents: TDataSet;
  ACor1, ACor2, ACor3 :String;
  AMensagem :String;
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

      AItem := tcAgents.CreateItem(False);
//      AItem.Glyph.Image := CarregaImagemCaminhoTile(GetCaminhoGED_Pessoa_Miniatura(Categoria.FieldByName('CODIGO').AsString)); //  QUE MERDA ISSO, SISTEMA NÃO TRABALHA COM IMAGEM DIREITO
      AItem.Style := FrmPrincipal.tcMenu.Style;
      AItem.Glyph.Align := oaMiddleRight;
      AItem.Glyph.Image.Scale(70, 100);
      AItem.Style.BorderColor        := clGrayText;//StringToColor(ACor1);
      AItem.Style.GradientBeginColor := clWhite;//StringToColor(ACor2);
      AItem.Style.GradientEndColor   := clWhite;//StringToColor(ACor3);

      AItem.Tag              := Cadastro.RecNo;//////PEGA O REGISTRO DO QUERY POR CAUSA DAS CATEGORIAS QUE O CODIGO É STRING '1.1'
//      AItem.Style.Font.Size  := 13;
      AItem.Text1.Value      := Cadastro.FieldByName('DESCRICAO').AsString ;     //+ ' ' + Vendedores.FieldByName('LastName').AsString
//      AItem.Text1.Font.Style := [fsBold];
      AItem.Text1.TextColor   := $008D8B8B;
      AItem.Text1.Font.Size  := 18;
      AItem.Text1.IndentHorz := 10;
      AItem.Text1.IndentVert := 10;
      AItem.Text1.WordWrap   := True;
      AItem.Text2.Value      := 'Meta: ' + FormatFloat('R$ ##,###,##0.00',Cadastro.FieldByName('META').AsFloat);
      AItem.Text2.Align      := oaTopLeft;
      AItem.Text2.Font.Size  := 11;
      AItem.Text2.IndentHorz := 10;
      AItem.Text2.IndentVert := 37;
//      AItem.Text3.Value      :=
      AItem.Text3.Align      := oaTopLeft;
//      if (Cadastro.FieldByName('QUANT').AsFloat < Cadastro.FieldByName('META').AsFloat) then
//        AItem.Text3.TextColor := clRed
//      else
////        AItem.Text3.TextColor := clWhite;
      AItem.Text3.Font.Size  := 11;
      AItem.Text3.TextColor := $00524CBD;;
      AItem.Text3.IndentHorz := 10;
      AItem.Text3.IndentVert := 55;
      AItem.Text4.Value      := 'Atingiu: ' + FormatFloat('R$ ##,###,##0.00',Cadastro.FieldByName('QUANT').AsFloat) + '(' + FormatFloat('% ##,###,##0.00',Cadastro.FieldByName('percMeta').AsFloat) +')'; //'Necessario: ' + FormatFloat('R$ ##,###,##0.00',Cadastro.FieldByName('necessario').AsFloat) + AMensagem;
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

procedure TPainel_Venda_Funionario.OnItemClick(Sender: TdxTileControlItem);
begin
  Cadastro.RecNo := Sender.Tag;//////PEGA O REGISTRO DO QUERY POR CAUSA DAS CATEGORIAS QUE O CODIGO É STRING '1.1'
  CarregaGrafico(FCodEmpresa, FDataInicio, FDataFim);
end;

////////////////CARREGA MEIO DA TELA\\\\\\\\\\\\\\\\\

procedure TPainel_Venda_Funionario.CarregaGrafico(ACodEmpresa :integer; ADtIncio, ADtFim :TDate);
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
end;

procedure TPainel_Venda_Funionario.WREventosCadastroPreencheVariaveisImpressaoPersonalizada(
  Sender: TObject);
var
  AReport: TfrxReport;
begin
  inherited;
  AReport := WREventosCadastro.Impressao.Report;
end;

initialization
  RegisterFramePainel(Tag_BI_Venda_por_Funcionario, TPainel_Venda_Funionario);

end.
