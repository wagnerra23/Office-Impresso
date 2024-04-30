unit Frame_Painel_Estoque_Movimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB,
  cxDBData, cxCurrencyEdit, cxLabel, Vcl.Menus, cxContainer, dxLayoutContainer,
  dxLayoutControlAdapters, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  System.Generics.Collections, WREventos, frxClass, frxDBSet,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxClasses, Datasnap.DBClient,
  Vcl.ExtCtrls, dxCustomTileControl, dxTileBar, dxTileControl, Vcl.StdCtrls,
  cxButtons, cxGridChartView, cxGridDBChartView, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, dxLayoutControl, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxLayoutLookAndFeels, System.ImageList, Vcl.ImgList, cxImageList, Frame_Painel_Mestre,
  dxScrollbarAnnotations, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TPainel_Estoque_Movimento = class(TPainel_Mestre)
    Totalizador_Producao: TFDQuery;
    procedure WREventosCadastroPreencheVariaveisImpressaoPersonalizada(
      Sender: TObject);
    procedure dxTileBarItem8Click(Sender: TdxTileControlItem);
    procedure CarregaTile;
    procedure OnItemClick(Sender: TdxTileControlItem);
    procedure CarregaGrafico(ACodEmpresa :integer; ADtIncio, ADtFim :TDate);
  private
    procedure CarregaTela;
    procedure AtualizaTela;
  public
    procedure InitializeFrame; override;
  end;

var
  Painel_Estoque_Movimento: TPainel_Estoque_Movimento;
  FTipoUso: String;

implementation

{$R *.dfm}

uses Principal, wrFuncoes, unitFuncoes, wrPreencheLookup, StrUtils, DateUtils, wrForms, wrFuncoes_Office,
  wrConstantes, Math, cadMeta, Base, Tag.Form;


procedure TPainel_Estoque_Movimento.InitializeFrame;
begin
  inherited;
  AtualizaTela;
end;

procedure TPainel_Estoque_Movimento.AtualizaTela;
begin
  FCodMeta := 0;
  CarregaTela;
  CarregaTile;
end;

procedure TPainel_Estoque_Movimento.dxTileBarItem8Click(
  Sender: TdxTileControlItem);
begin
  inherited;
  FTipoUso := 'Despesa';
  AtualizaTela;
end;

procedure TPainel_Estoque_Movimento.CarregaTela;
Var
  APercentual: Double;
begin
  FDataAtual := DataHoraSys;
  Meta.Close;
  Meta.ParamByName('Codigo').Value := FCodMeta;
  Meta.Open;
  begin
    FDataInicio := StartOfTheMonth(FDataAtual);
    FDataFim    := EndOfTheMonth(FDataAtual);
    FCodEmpresa := Empresa.FieldByName('CODIGO').AsInteger;
//    cxLabel1.Caption  := MESES_NOMES[MonthOf(FDataAtual)] + ' ' + FormatDateTime('YYYY',FDataAtual);
  end;

  DefineDias(FDataInicio, FDataFim);

  Totalizador.Close;
  Totalizador.ParamByName('CodEmpresa').AsInteger := FCodEmpresa;
  Totalizador.ParamByName('Dt_Inicio').AsDateTime := FDataInicio;
  Totalizador.ParamByName('Dt_Fim').AsDateTime    := FDataFim;
  Totalizador.Open;

  Totalizador_Producao.Close;
//  Totalizador_Producao.ParamByName('CodEmpresa').AsInteger := FCodEmpresa;
  Totalizador_Producao.ParamByName('Dt_Inicio').AsDateTime := FDataInicio;
  Totalizador_Producao.ParamByName('Dt_Fim').AsDateTime    := FDataFim;
  Totalizador_Producao.Open;

  Cadastro.Close;
//  Cadastro.ParamByName('CodEmpresa').AsInteger := FCodEmpresa;
  Cadastro.ParamByName('Dt_Inicio').AsDateTime := FDataInicio;
  Cadastro.ParamByName('Dt_Fim').AsDateTime    := FDataFim;
  Cadastro.ParamByName('tipoUso').AsString     := FTipoUso;
  Cadastro.Open;


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
    dxTileBar1.Items[0].Text4.Value := '';
  end;

  //META
  dxTileBar1.Items[1].Text1.Value := 'Reaproveitamento';
  dxTileBar1.Items[1].Text2.Value := FormatFloat('R$##,###,##0.00',Totalizador_Producao.FieldByName('REAPROVEITAMENTO').AsFloat);
//  dxTileBar1.Items[1].Text3.Value := FormatFloat('%##,###,##0.00',APercentual);//'('+ FormatFloat('R$ ##,###,##0.00',Totalizador.FieldByname('QUANT').AsFloat) + ' - ' + FormatFloat('%##,###,##0.00',APercentual) + ' Concluido)';
//  dxTileBar1.Items[1].Text4.Value := 'Concluido';


  //MEDIA GERAL
  dxTileBar1.Items[2].Text1.Value := 'Despesas';
  dxTileBar1.Items[2].Text2.Value := FormatFloat('R$##,###,##0.00',Totalizador_Producao.FieldByName('DESPESA').AsFloat);
  dxTileBar1.Items[2].Text3.Value := '';
  dxTileBar1.Items[2].Text4.Value := '';

  //QUANT VENDAS
  dxTileBar1.Items[3].Text2.Value := FormatFloat('##0',Totalizador.FieldByname('QTDVENDAS').AsFloat);
  dxTileBar1.Items[3].Text3.Value := '';
  dxTileBar1.Items[3].Text4.Value := '';

  //DIAS
  dxTileBar1.Items[4].Text2.Value := IntToStr(FDiasRestantes);
  dxTileBar1.Items[4].Text3.Value := IntToStr(FDiasAcumulados);
  ////////////////FIM - PERSONALIZAR O TILEBAR SUPERIOR\\\\\\\\\\\\\\\\\
end;

procedure TPainel_Estoque_Movimento.CarregaTile;
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
//      if (Cadastro.FieldByName('QUANT').AsFloat >= Cadastro.FieldByName('META').AsFloat) then
//      begin
        ACor1 := '$2034CB7F';   //VERDE
        ACor2 := '$200EAF54';
        ACor3 := '$2010C268';
//      end
//      else
//      begin
//        ACor1 := '$204789EE';  //LARANJA
//        ACor2 := '$20205EE6';
//        ACor3 := '$204789EE';
//      end;

       if FDiasRestantes > 0 then
         AMensagem := '/Dia';

      tcAgents.OptionsView.ItemHeight := 130;
      tcAgents.OptionsView.ItemWidth  := 270;

      AItem := tcAgents.CreateItem(True);
//      AItem.Glyph.Image := CarregaImagemCaminhoTile(GetCaminhoGED_Pessoa_Miniatura(Categoria.FieldByName('CODIGO').AsString)); //  QUE MERDA ISSO, SISTEMA NÃO TRABALHA COM IMAGEM DIREITO
      AItem.Style := FrmPrincipal.tcMenu.Style;
      AItem.Glyph.Align := oaMiddleRight;
      AItem.Glyph.Image.Scale(70, 100);
      AItem.Style.BorderColor        := StringToColor(ACor1);
      AItem.Style.GradientBeginColor := StringToColor(ACor2);
      AItem.Style.GradientEndColor   := StringToColor(ACor3);

      AItem.Tag              := Cadastro.RecNo;//////PEGA O REGISTRO DO QUERY POR CAUSA DAS CATEGORIAS QUE O CODIGO É STRING '1.1'
//      AItem.Style.Font.Size  := 13;
      AItem.Text1.Value      := Cadastro.FieldByName('DESCRICAO').AsString;     //+ ' ' + Vendedores.FieldByName('LastName').AsString
      AItem.Text1.Font.Style := [fsBold];
      AItem.Text1.Font.Size  := 18;
      AItem.Text1.IndentHorz := 10;
      AItem.Text1.IndentVert := 10;
      AItem.Text2.Value      := 'Custo Despesa: ' + FormatFloat('R$ ##,###,##0.00',Cadastro.FieldByName('CUSTOTOTAL').AsFloat);
      AItem.Text2.Align      := oaTopLeft;
      AItem.Text2.Font.Size  := 11;
      AItem.Text2.IndentHorz := 10;
      AItem.Text2.IndentVert := 37;
      AItem.Text3.Value      := 'Quantidade: ' + FormatFloat('##0',Cadastro.FieldByName('QTDPRODUTO').AsFloat);
      AItem.Text3.Align      := oaTopLeft;
      AItem.Text3.Font.Size  := 11;
      AItem.Text3.IndentHorz := 10;
      AItem.Text3.IndentVert := 55;
//      AItem.Text4.Value      := 'Necessario: ' + FormatFloat('R$ ##,###,##0.00',Cadastro.FieldByName('necessario').AsFloat) + AMensagem;
//      AItem.Text4.Align      := oaBottomLeft;
//      AItem.Text4.Font.Style := [fsBold];
//      AItem.Text4.Font.Size  := 15;
//      AItem.Text4.IndentHorz := 10;
//      AItem.Text4.IndentVert := 30;
      AItem.OnClick          := OnItemClick;

      Cadastro.Next;
    end;

  finally
    tcAgents.EndUpdate;
  end;
end;

procedure TPainel_Estoque_Movimento.OnItemClick(Sender: TdxTileControlItem);
begin
  Cadastro.RecNo := Sender.Tag;//////PEGA O REGISTRO DO QUERY POR CAUSA DAS CATEGORIAS QUE O CODIGO É STRING '1.1'
  CarregaGrafico(Empresa.FieldByName('CODIGO').AsInteger, FDataInicio, FDataFim);
end;

procedure TPainel_Estoque_Movimento.CarregaGrafico(ACodEmpresa :integer; ADtIncio, ADtFim :TDate);
var
  AMensagemResumo, AMensagemTopo: String;
begin
  Cadastro_Analitico.Close;
//  Cadastro_Analitico.ParamByName('CodEmpresa').AsInteger := ACodEmpresa;
  Cadastro_Analitico.ParamByName('Dt_Inicio').AsDateTime := ADtIncio;
  Cadastro_Analitico.ParamByName('Dt_Fim').AsDateTime    := ADtFim;
  Cadastro_Analitico.ParamByName('CodPessoa').Value      := Cadastro.FieldByName('CODIGO').Value;
  Cadastro_Analitico.ParamByName('tipoUso').AsString     := FTipoUso;
  Cadastro_Analitico.Open;
end;



procedure TPainel_Estoque_Movimento.WREventosCadastroPreencheVariaveisImpressaoPersonalizada(
  Sender: TObject);
var
  AReport: TfrxReport;
begin
  inherited;
  AReport := WREventosCadastro.Impressao.Report;
end;

initialization
  RegisterFramePainel(Tag_BI_Estoque_Produto_Movimento, TPainel_Estoque_Movimento);

end.
