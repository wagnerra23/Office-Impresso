unit Frame_Painel_CentroCusto_Categoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Frame_Painel_Mestre, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  Data.DB, cxDBData, cxCurrencyEdit, cxLabel, dxLayoutContainer,
  dxLayoutControlAdapters, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, dxLayoutLookAndFeels,
  System.ImageList, Vcl.ImgList, cxImageList, System.Generics.Collections,
  WREventos, Vcl.Menus, frxClass, frxDBSet, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxClasses, Datasnap.DBClient, dxTileBar, cxGridChartView,
  cxGridDBChartView, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, dxLayoutControl,
  dxCustomTileControl, dxTileControl, Vcl.ExtCtrls, cxImageComboBox,
  dxRatingControl, cxImage;

type
  TPainel_CentroCusto_Categoria = class(TPainel_Mestre)
    CadastropercMeta: TFloatField;
    CadastroCODIGO: TStringField;
    CadastroDESCRICAO: TStringField;
    Cadastronecessario: TFloatField;
    Cadastroprojecao: TFloatField;
    Cadastromedia: TFloatField;
    Cadastrofalta: TIntegerField;
    Cadastro_AnaliticoDESCRICAO: TDateField;
    cxGridDBChartView2Series1: TcxGridDBChartSeries;
    cxGridDBChartView2Series2: TcxGridDBChartSeries;
    cxGridDBTableView3CREDITO: TcxGridDBColumn;
    cxGridDBTableView3DEBITO: TcxGridDBColumn;
    cxGridDBTableView3DESCRICAO: TcxGridDBColumn;
    Cadastro_Analiticoicone: TIntegerField;
    cxGridDBTableView3icone: TcxGridDBColumn;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    CadastroDEBITO: TFloatField;
    CadastroCREDITO: TFloatField;
    Cadastro_AnaliticoDEBITO: TFloatField;
    Cadastro_AnaliticoCREDITO: TFloatField;
    procedure Cadastro_AnaliticoCalcFields(DataSet: TDataSet);
    procedure cxGridDBTableView3DblClick(Sender: TObject);
  private
    procedure CarregaTela;
    procedure CarregaTile;
    procedure CarregaGrafico(ACodEmpresa: integer; ADtIncio, ADtFim: TDate);
    procedure OnItemClick(Sender: TdxTileControlItem);
    { Private declarations }
  public
    procedure AtualizaTela; override;
    procedure InitializeFrame; override;
    { Public declarations }
  end;

var
  Painel_CentroCusto_Categoria: TPainel_CentroCusto_Categoria;

implementation

{$R *.dfm}

uses Principal, wrFuncoes, unitFuncoes, wrPreencheLookup, StrUtils, DateUtils, wrForms, wrFuncoes_Office,
  wrConstantes, Math, cadMeta, Base, Financeiro, Frame_ConFinanceiro_Financeiro, Tag.Form,
  Frame_Con;


procedure TPainel_CentroCusto_Categoria.InitializeFrame;
begin
  inherited;
  AtualizaTela;
end;

procedure TPainel_CentroCusto_Categoria.AtualizaTela;
begin
  inherited;
  CarregaTela;
  CarregaTile;
end;

procedure TPainel_CentroCusto_Categoria.CarregaTela;
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
//  Cadastro.ParamByName('CodMeta').AsInteger    := FCodMeta;
  Cadastro.Open;

  GrupoBotaoVermelho.Visible := Totalizador.FieldByname('CREDITO').AsFloat <= 0;
  GrupoMeio.Visible          := Totalizador.FieldByname('CREDITO').AsFloat > 0;
  GrupoMenuLateral.Visible   := Totalizador.FieldByname('CREDITO').AsFloat > 0;

////////////////PERSONALIZAR O TILEBAR SUPERIOR\\\\\\\\\\\\\\\\\

  //FATURAMENTO
  dxTileBar1.Items[0].Text2.Value := FormatFloat('R$##,###,##0.00',Totalizador.FieldByname('DEBITO').AsFloat);
  if Meta.FieldByName('VALOR').AsFloat > 0 then
  begin
    APercentual := ValidaNumero(PercRelativo(Totalizador.FieldByname('CREDITO').AsFloat, Meta.FieldByName('VALOR').AsFloat));
    dxTileBar1.Items[0].Text3.Value := FormatFloat('%##,###,##0.00',APercentual);
    dxTileBar1.Items[0].Text4.Value := 'Relativo a Meta ';
  end
  else
  begin
    dxTileBar1.Items[0].Text3.Value := '';
    if Totalizador.FieldByname('CREDITO').AsFloat > 0 then
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
    dxTileBar1.Items[1].Text3.Value     := IntToStr(FDiasRestantes);//'('+ FormatFloat('R$ ##,###,##0.00',Totalizador.FieldByname('CREDITO').AsFloat) + ' - ' + FormatFloat('%##,###,##0.00',APercentual) + ' Concluido)';
    if Totalizador.FieldByname('CREDITO').AsFloat > 0 then
    begin
      dxTileBar1.Items[1].Text4.IndentHorz := 70;
      dxTileBar1.Items[1].Text4.Value      := 'Dias Restantes';
      dxTileBar1.Items[1].Text4.TextColor  := clWhite;
    end;
  end;


  //MEDIA GERAL
  dxTileBar1.Items[2].Text2.Value := FormatFloat('R$##,###,##0.00',Totalizador.FieldByName('CREDITO').AsFloat);
  dxTileBar1.Items[2].Text3.Value := '';
  dxTileBar1.Items[2].Text4.Value := '';
//  if Totalizador.FieldByname('CREDITO').AsFloat > 0 then
//  begin
//    dxTileBar1.Items[2].Text4.IndentHorz := 50;
//    dxTileBar1.Items[2].Text4.Value := 'Crédito';
//    dxTileBar1.Items[2].Text4.TextColor := clWhite;
//  end
//  else
//  begin
//    dxTileBar1.Items[2].Text4.Value := 'Não há Dados';
//    dxTileBar1.Items[2].Text4.TextColor := clRed;
//  end;
  //QUANT VENDAS
//  dxTileBar1.Items[3].Text2.Value := FormatFloat('##0',Totalizador.FieldByname('QTDVENDAS').AsFloat);
  dxTileBar1.Items[3].Text3.Value := '';
  if Totalizador.FieldByname('CREDITO').AsFloat > 0 then
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
  if Totalizador.FieldByname('CREDITO').AsFloat > 0 then
  begin
    dxTileBar1.Items[3].Text2.Value := IntToStr(FDiasRestantes);
    dxTileBar1.Items[3].Text3.Value := IntToStr(FDiasAcumulados);
    dxTileBar1.Items[3].Text4.TextColor := clWhite;
  end
  else
  begin
    dxTileBar1.Items[3].Text4.Value := 'Não há Dados';
    dxTileBar1.Items[3].Text4.TextColor := clRed;
  end;

  ////////////////FIM - PERSONALIZAR O TILEBAR SUPERIOR\\\\\\\\\\\\\\\\\
end;


procedure TPainel_CentroCusto_Categoria.CarregaTile;
var
  AItem: TdxTileControlItem;
  dsAgents: TDataSet;
  AMensagem, AMensagemMeta, AMensagemAtingiu, AMensagemPercMeta, AMensagemNecessario:String;
begin
  tcAgents.BeginUpdate;
  try
    tcAgents.Items.Clear;
//    dsAgents := DMRealtorWorld.clHomesAndAgents;
    Cadastro.First;
    while not Cadastro.EOF do
    begin

       if FDiasRestantes > 0 then
         AMensagem := '/Dia';

//      AMensagemMeta := 'Meta: ' + FormatFloat('R$ ##,###,##0.00',Cadastro.FieldByName('META').AsFloat);
      AMensagemAtingiu := '' + FormatFloat('R$ ##,###,##0.00',Cadastro.FieldByName('DEBITO').AsFloat);
//      AMensagemPercMeta := '(' + FormatFloat('% ##,###,##0.00',Cadastro.FieldByName('percMeta').AsFloat) +')';
//      AMensagemNecessario := 'Necessario: ' + FormatFloat('R$ ##,###,##0.00',Cadastro.FieldByName('necessario').AsFloat) + AMensagem;

//      if Cadastro.FieldByName('META').AsFloat = 0 then
//      begin
//        AMensagemMeta :=  '';
//        AMensagemPercMeta := '';
//        AMensagemNecessario := AMensagemAtingiu;
//        AMensagemAtingiu := '';
//      end;
       AMensagemNecessario := FormatFloat('R$ ##,###,##0.00',Cadastro.FieldByName('CREDITO').AsFloat);

      tcAgents.OptionsView.ItemHeight := 130;
      tcAgents.OptionsView.ItemWidth  := 270;

      AItem := tcAgents.CreateItem(False);
//      AItem.Glyph.Image := CarregaImagemCaminhoTile(GetCaminhoGED_Pessoa_Miniatura(Categoria.FieldByName('CODIGO').AsString)); //  QUE MERDA ISSO, SISTEMA NÃO TRABALHA COM IMAGEM DIREITO
      AItem.Style                     := FrmPrincipal.tcMenu.Style;
      AItem.Glyph.Images              := imgBase;
      if Cadastro.FieldByName('CREDITO').AsFloat > Cadastro.FieldByName('DEBITO').AsFloat then
        AItem.Glyph.ImageIndex          := 4
      else
        AItem.Glyph.ImageIndex          := 5;
      AItem.Glyph.Align               := oaBottomRight;
      AItem.Glyph.Image.Scale(70, 100);
      AItem.Style.BorderColor         := clGrayText; //$20B3B3B3;//StringToColor(ACor1);
      AItem.Style.GradientBeginColor  := clWhite;//$20B3B3B3;//StringToColor(ACor2);
      AItem.Style.GradientEndColor    := clWhite;//$20B3B3B3;//StringToColor(ACor3);

      AItem.Tag               := Cadastro.RecNo;//////PEGA O REGISTRO DO QUERY POR CAUSA DAS CATEGORIAS QUE O CODIGO É STRING '1.1'
//      AItem.Style.Font.Size  := 13;
      AItem.Text1.Value       := Cadastro.FieldByName('DESCRICAO').AsString ;     //+ ' ' + Vendedores.FieldByName('LastName').AsString
//      AItem.Text1.Font.Style := [fsBold];
      AItem.Text1.TextColor   := $0055453F;
      AItem.Text1.Font.Size   := 18;
      AItem.Text1.IndentHorz  := 10;
      AItem.Text1.IndentVert  := 10;
      AItem.Text1.WordWrap    := True;

      AItem.Text2.Value       := AMensagemMeta;
      AItem.Text2.Align       := oaTopLeft;
      AItem.Text1.TextColor   := $008D8B8B;
      AItem.Text2.Font.Size   := 11;
      AItem.Text2.IndentHorz  := 10;
      AItem.Text2.IndentVert  := 37;
    //  AItem.Text3.Value       := AMensagemAtingiu + AMensagemPercMeta;
      AItem.Text3.Align       := oaTopLeft;
//      if (Cadastro.FieldByName('CREDITO').AsFloat < Cadastro.FieldByName('META').AsFloat) then
//        AItem.Text3.TextColor := clRed
//      else
        AItem.Text3.TextColor := $00524CBD;;
      AItem.Text3.Font.Size   := 11;
      AItem.Text3.IndentHorz  := 07;
      AItem.Text3.IndentVert  := 70;
      AItem.Text4.Value       := AMensagemNecessario;
      AItem.Text4.Align       := oaBottomLeft;
      AItem.Text4.Font.Style  := [fsBold];
      AItem.Text4.TextColor   := $0055453F;;
      AItem.Text4.Font.Size   := 15;
//      AItem.Text4.IndentHorz := 10;
//      AItem.Text4.IndentVert := 30;
      AItem.OnClick           := OnItemClick;

      Cadastro.Next;
    end;

  finally
    tcAgents.EndUpdate;
  end;
end;

procedure TPainel_CentroCusto_Categoria.cxGridDBTableView3DblClick(
  Sender: TObject);
var
 AConFrame :TConsu_Frame;
begin
  inherited;
  //TFrame_ConsuFinanceiro_Financeiro.Abrir('DT_COMPETENCIA BETWEEN ' + QuotedStr(FormatDateTime('MM/DD/YYYY',FDataInicio)) + ' and ' + QuotedStr(FormatDateTime('MM/DD/YYYY 23:59:59',FDataFim)));
  AConFrame := Criar(Tag_Financeiro);

  AConFrame.SetData(Cadastro_Analitico.FieldByName('DESCRICAO').AsDateTime, Cadastro_Analitico.FieldByName('DESCRICAO').AsDateTime, 'Competência');

  TFrame_ConsuFinanceiro_Financeiro(AConFrame).cxCheckGroup1.States[0] := cbsChecked;// cxCheckListBox1.Items[0].Checked := True;
  TFrame_ConsuFinanceiro_Financeiro(AConFrame).cxCheckGroup1.States[1] := cbsChecked;
  TFrame_ConsuFinanceiro_Financeiro(AConFrame).cxCheckGroup1.States[2] := cbsChecked;
  TFrame_ConsuFinanceiro_Financeiro(AConFrame).cxCheckGroup1.States[3] := cbsChecked;

  AConFrame.Abrir;

end;

procedure TPainel_CentroCusto_Categoria.OnItemClick(Sender: TdxTileControlItem);
begin
  Cadastro.RecNo := Sender.Tag;//////PEGA O REGISTRO DO QUERY POR CAUSA DAS CATEGORIAS QUE O CODIGO É STRING '1.1'
  CarregaGrafico(FCodEmpresa, FDataInicio, FDataFim);
end;


procedure TPainel_CentroCusto_Categoria.Cadastro_AnaliticoCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  if (Cadastro_Analitico.FieldByName('DEBITO').AsFloat > Cadastro_Analitico.FieldByName('CREDITO').AsFloat) then
    Cadastro_Analitico.FieldByName('ICONE').AsInteger := 1
  else
    Cadastro_Analitico.FieldByName('ICONE').AsInteger := 0;
end;

procedure TPainel_CentroCusto_Categoria.CarregaGrafico(ACodEmpresa :integer; ADtIncio, ADtFim :TDate);
begin
  Cadastro_Analitico.Close;
  Cadastro_Analitico.ParamByName('CodEmpresa').AsInteger := ACodEmpresa;
  Cadastro_Analitico.ParamByName('Dt_Inicio').AsDateTime := ADtIncio;
  Cadastro_Analitico.ParamByName('Dt_Fim').AsDateTime    := ADtFim;
  Cadastro_Analitico.ParamByName('CodTabela').Value      := Cadastro.FieldByName('CODIGO').Value;
//  Cadastro_Analitico.ParamByName('CodMeta').AsInteger    := Meta.FieldByName('CODIGO').AsInteger;
  Cadastro_Analitico.Open;
end;


initialization
  RegisterFramePainel(Tag_BI_CentroCusto_Categoria, TPainel_CentroCusto_Categoria);

end.
