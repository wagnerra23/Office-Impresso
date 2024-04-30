unit Frame_Acao_Configuracao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Frame_Painel, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxClasses, dxLayoutContainer,
  dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  Data.DB, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxGroupBox, cxRadioGroup, cxCheckBox, dxLayoutControlAdapters,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, dxCustomTileControl, dxTileControl, Base,
  dxScrollbarAnnotations, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxFilterControl,
  Vcl.ExtCtrls, cxCheckComboBox, Classes.Acoes, System.Generics.Collections, cxLabel,
  cxButtonEdit, uControleWR, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White, cxGridLayoutView;

type
  TFrmFrame_Acao_Configuracao = class(TFrmBase)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    chkFiltroDeletado: TcxCheckBox;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    chkFiltroEditado: TcxCheckBox;
    dxLayoutItem3: TdxLayoutItem;
    chkFiltroNovo: TcxCheckBox;
    dxLayoutGroup1: TdxLayoutGroup;
    cxRadioGroup1: TcxRadioGroup;
    dxLayoutItem5: TdxLayoutItem;
    cxComboBox1: TcxComboBox;
    dxLayoutItem4: TdxLayoutItem;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    cxComboBox2: TcxComboBox;
    dxLayoutItem8: TdxLayoutItem;
    cxComboBox3: TcxComboBox;
    cxButton1: TcxButton;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem11: TdxLayoutItem;
    cxComboBox4: TcxComboBox;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    dxLayoutItem15: TdxLayoutItem;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    tcBotoesConfirmar: TdxTileControl;
    dxLayoutItem16: TdxLayoutItem;
    dxTileControl1Item1: TdxTileControlItem;
    GrupoConfirmarCancelar: TdxTileControlGroup;
    dxTileControl1Item2: TdxTileControlItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    Acoes: TFDMemTable;
    DSAcoes: TDataSource;
    MemUsuarios: TFDMemTable;
    DSMemUsuarios: TDataSource;
    fcFiltroGrid: TcxFilterControl;
    lifcFiltroGrid: TdxLayoutItem;
    pnlAdicionarAcao: TPanel;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutItem12: TdxLayoutItem;
    cbAcoes: TcxComboBox;
    dxLayoutItem18: TdxLayoutItem;
    tcAcoes: TdxTileControl;
    dxTileControlGroup1: TdxTileControlGroup;
    tiAdicionarAcao: TdxTileControlItem;
    tiRemoverAcao: TdxTileControlItem;
    dxLayoutItem13: TdxLayoutItem;
    dxTileControl1: TdxTileControl;
    dxTileControlGroup2: TdxTileControlGroup;
    dxTileControlItem1: TdxTileControlItem;
    dxTileControlItem2: TdxTileControlItem;
    GridUsuariosNotificadosDBTableView1: TcxGridDBTableView;
    GridUsuariosNotificadosLevel1: TcxGridLevel;
    GridUsuariosNotificados: TcxGrid;
    liGridUsuariosNotificados: TdxLayoutItem;
    GridUsuariosNotificadosDBTableView1Ativo: TcxGridDBColumn;
    GridUsuariosNotificadosDBTableView1Usurio: TcxGridDBColumn;
    GridUsuariosNotificadosDBTableView1CodUsuario: TcxGridDBColumn;
    GridUsuariosNotificadosDBTableView1CodFuncionario: TcxGridDBColumn;
    cxGridDBTableView1Acao: TcxGridDBColumn;
    cxGridDBTableView1Quantidade: TcxGridDBColumn;
    edtEmailsAdicionais: TcxTextEdit;
    dxLayoutItem14: TdxLayoutItem;
    chkCliente: TCheckBox;
    dxLayoutItem19: TdxLayoutItem;
    GrupoDestinatario: TdxLayoutGroup;
    GrupoNotificacao: TdxLayoutGroup;
    dxLayoutItem20: TdxLayoutItem;
    edtModeloEmailÎEMAIL_MODELO: TcxButtonEdit;
    dxLayoutItem21: TdxLayoutItem;
    edtModeloEmailÎEMAIL_MODELOÎDESCRICAO: TcxLabel;
    GrupoModelo: TdxLayoutGroup;
    dxLayoutItem22: TdxLayoutItem;
    cbxEnviarPDF: TCheckBox;
    GrupoEmail: TdxLayoutGroup;
    GrupoEmailPDF: TdxLayoutGroup;
    edtDescricao: TcxTextEdit;
    dxLayoutItem23: TdxLayoutItem;
    procedure dxTileControl1Item2Click(Sender: TdxTileControlItem);
    procedure dxTileControl1Item1Click(Sender: TdxTileControlItem);
    procedure tiAdicionarAcaoClick(Sender: TdxTileControlItem);
    procedure dxTileControlItem2Click(Sender: TdxTileControlItem);
    procedure FormCreate(Sender: TObject);
    procedure cxGrid3DBTableView1AtivoPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cbAcoesPropertiesChange(Sender: TObject);
    procedure dxTileControlItem1Click(Sender: TdxTileControlItem);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure pnlAdicionarAcaoEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FAcaoSelecionada: string;
    FControleWR: TControleWR;
    procedure AlimentarComboBoxComUsuarios;
    procedure CarregarConfiguracoesEmail;
    procedure AdicionarEmailsNoObjeto;
    procedure TrataString(var AString: string);
  public
    FAcao: TWR_Acao;
    FEditando: Boolean;
    FIndice: integer;
    FTag: integer;
    procedure VincularDataSetNoFiltro(AGrid: TcxCustomGridTableView);
    procedure Carregar;
    procedure SalvarBlocoGrafico(AGrid: TcxGridDBTableView);
    procedure SalvarBlocoSimples(AGrid: TcxGridDBTableView);
  end;

var
  FrmFrame_Acao_Configuracao: TFrmFrame_Acao_Configuracao;

implementation

uses UnitFuncoes, Frame_Con, Tag.Form;

{$R *.dfm}

procedure TFrmFrame_Acao_Configuracao.Carregar;
var
  ATemCliente: boolean;
  I: integer;
begin
  Acoes.Close;
  Acoes.Open;

  if Assigned(FAcao.Execucoes.Email) then
  begin
    Acoes.Insert;
    Acoes.FieldByName('Acao').AsString := 'Enviar E-mail';

    ATemCliente := False;
    for I := 0 to FAcao.Execucoes.Email.Count - 1 do
    begin
      if FAcao.Execucoes.Email[I].Cliente then ATemCliente := True;
    end;

    if ATemCliente then
      Acoes.FieldByName('Quantidade').AsString := VarToStr(FAcao.Execucoes.Email.Count - 1) + ' e-mails + envio automático para cliente'
    else
      Acoes.FieldByName('Quantidade').AsString := VarToStr(FAcao.Execucoes.Email.Count) + ' e-mails';

    Acoes.Post;
  end;

  if Assigned(FAcao.Execucoes.Notificacoes) then
  begin
    Acoes.Insert;
    Acoes.FieldByName('Quantidade').AsString := VarToStr(FAcao.Execucoes.Notificacoes.Count) + ' usuários';
    Acoes.FieldByName('Acao').AsString := 'Notificação';
    Acoes.Post;
  end;

//  if Assigned(FAcao.Condicoes) then
//  begin
//    TcxGridTableView(fcFiltroGrid.LinkComponent).DataController.Filter.BeginUpdate;
//    TcxGridTableView(fcFiltroGrid.LinkComponent).DataController.Filter.Root.Clear;
//    for I := 0 to FAcao.Condicoes.Count -1 do
//    begin
//
//      TcxGridTableView(fcFiltroGrid.LinkComponent).DataController.Filter.Root.AddItem( TcxGridDBTableView(fcFiltroGrid.LinkComponent).GetColumnByFieldName(FAcao.Condicoes[I].Campo_Base),
//                                             Acao_StringToFieldOperator(FAcao.Condicoes[I].Comparador),
//                                             FAcao.Condicoes[I].Valor_Comparado,
//                                             FAcao.Condicoes[I].Valor_Comparado);
//
//    end;
//    TcxGridTableView(fcFiltroGrid.LinkComponent).DataController.Filter.Active := True;
//    TcxGridTableView(fcFiltroGrid.LinkComponent).DataController.Filter.EndUpdate;
//  end;

//  FAcao.Filtro := TMemoryStream.Create;
//  TcxGridLayoutView(fcFiltroGrid.LinkComponent).DataController.Filter
  TcxGridTableView(fcFiltroGrid.LinkComponent).DataController.Filter.BeginUpdate;
  TcxGridTableView(fcFiltroGrid.LinkComponent).DataController.Filter.Root.Clear;
  FAcao.Filtro.Position := 0;
  fcFiltroGrid.LoadFromStream(FAcao.Filtro);
  TcxGridTableView(fcFiltroGrid.LinkComponent).DataController.Filter.Active := True;
  TcxGridTableView(fcFiltroGrid.LinkComponent).DataController.Filter.EndUpdate;
  Acoes.Refresh;

  edtDescricao.Text := FAcao.Descricao;
end;

procedure TFrmFrame_Acao_Configuracao.cbAcoesPropertiesChange(Sender: TObject);
begin
  inherited;
  case cbAcoes.SelectedItem of
    0: FAcaoSelecionada := 'Notificação';
    1: FAcaoSelecionada := 'Enviar E-mail';
    2: FAcaoSelecionada := 'Proibir';
    3: FAcaoSelecionada := 'Limitar';
  end;

  GrupoNotificacao.Visible  := FAcaoSelecionada = 'Notificação';
  GrupoEmail.Visible        := FAcaoSelecionada = 'Enviar E-mail';

  if FAcaoSelecionada = 'Notificação' then // Notifica
    AlimentarComboBoxComUsuarios;

  if FAcaoSelecionada = 'Enviar E-mail' then
    CarregarConfiguracoesEmail;
end;

procedure TFrmFrame_Acao_Configuracao.CarregarConfiguracoesEmail;
var
  I: integer;
  AListaEmails: TStringList;
begin
  inherited;
  AListaEmails := TStringList.Create;
  AListaEmails.StrictDelimiter := True;
  AListaEmails.Delimiter := ';';

  if Assigned(FAcao.Execucoes.Email) then
  begin
    for I := 0 to FAcao.Execucoes.Email.Count -1 do
    begin
      if FAcao.Execucoes.Email.Items[I].Cliente then
      begin
        chkCliente.Checked := True;
        Continue;
      end;

      if FAcao.Execucoes.Email.Items[I].EnviarPDF then
        cbxEnviarPDF.Checked := True;

      if FAcao.Execucoes.Email.Items[I].CodModelo <> 0 then
        edtModeloEmailÎEMAIL_MODELO.EditValue := FAcao.Execucoes.Email.Items[I].CodModelo;

      AListaEmails.Add(FAcao.Execucoes.Email.Items[I].Email);
    end;

    edtEmailsAdicionais.Text := AListaEmails.DelimitedText;
  end;
end;

procedure TFrmFrame_Acao_Configuracao.cxGrid3DBTableView1AtivoPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
var
  AItem: TWR_Notificacao;
  I: integer;
  ARemover: boolean;
begin
  inherited;
  if not Assigned(FAcao.Execucoes.Notificacoes) then
    FAcao.Execucoes.Notificacoes := TList<TWR_Notificacao>.Create;

  ARemover := False;
  for I := 0 to FAcao.Execucoes.Notificacoes.Count - 1 do
  begin
    if FAcao.Execucoes.Notificacoes[I].CodUsuario_Seguidor = MemUsuarios.FieldByName('CodUsuario').AsInteger then
    begin
      ARemover := True;
      break;
    end;
  end;

  if ARemover then
  begin
    FAcao.Execucoes.Notificacoes.Remove(FAcao.Execucoes.Notificacoes[I]);
  end
  else
  begin
    AItem := TWR_Notificacao.Create;
    AItem.CodUsuario_Seguidor := MemUsuarios.FieldByName('CodUsuario').AsInteger;
    AItem.CodPessoa_Seguidor := MemUsuarios.FieldByName('CodFuncionario').AsString;
    AItem.Mensagem := 'Mensagem';
    FAcao.Execucoes.Notificacoes.Add(AItem);
  end;
end;

procedure TFrmFrame_Acao_Configuracao.cxGridDBTableView1DblClick(
  Sender: TObject);
begin
  inherited;
  FAcaoSelecionada := Acoes.FieldByName('Acao').AsString;
  ShowPanelForm(pnlAdicionarAcao, bsSingle);
end;

procedure TFrmFrame_Acao_Configuracao.AlimentarComboBoxComUsuarios;
var
  QuerX: TFDQuery;
  AItem: TcxCheckComboBoxItem;
  I: integer;
begin
  QuerX := GeraFDQuery;

  try
    QuerX.SQL.Text := 'SELECT U.CODIGO, U.USUARIO, U.CODFUNCIONARIO FROM USUARIO U WHERE INATIVO = 0';
    QuerX.Open;

    QuerX.First;

    MemUsuarios.Close;
    MemUsuarios.Open;
    while not QuerX.eof do
    begin
      MemUsuarios.Insert;

      MemUsuarios.FieldByName('Usuario').AsString         := QuerX.FieldByName('USUARIO').AsString;
      MemUsuarios.FieldByName('CodFuncionario').AsString  := QuerX.FieldByName('CODFUNCIONARIO').AsString;
      MemUsuarios.FieldByName('CodUsuario').AsInteger     := QuerX.FieldByName('CODIGO').AsInteger;

      if Assigned(FAcao.Execucoes.Notificacoes) and (FAcao.Execucoes.Notificacoes.Count > 0) then
      begin
        for I := 0 to FAcao.Execucoes.Notificacoes.Count - 1 do
        begin
          if FAcao.Execucoes.Notificacoes[I].CodUsuario_Seguidor = MemUsuarios.FieldByName('CodUsuario').AsInteger then
            MemUsuarios.FieldByName('Ativo').AsBoolean := True;
        end;
      end;

      MemUsuarios.Post;

      QuerX.Next;
    end;
  finally
    QuerX.Free;
  end;
end;

procedure TFrmFrame_Acao_Configuracao.dxTileControl1Item1Click(
  Sender: TdxTileControlItem);
var
  I: Integer;
  ARowCount: Integer;
  ACondicao: TWR_Condicao;
  AListaCondicoes: TStringList;
  AListaCampos: TStringList;
  AStringFinal: string;
  AListaValores: TStringList;
  AStringCampos: string;
  AData: TDateTime;
  AFrameCon: TConsu_Frame;
  AGrid: TcxGridDBTableView;
begin
  inherited;  {
  fcFiltroGrid.ApplyFilter;
  AListaCondicoes := TStringList.Create;
  AListaCampos := TStringList.Create;
  FAcao.Condicoes := TList<TWR_Condicao>.Create;

  AStringFinal := fcFiltroGrid.FilterCaption;
  AStringCampos := fcFiltroGrid.FilterText;

  TrataString(AStringFinal);
  TrataString(AStringCampos);

  AListaCondicoes.StrictDelimiter := True;
  AListaCondicoes.Delimiter := '|';
  AListaCondicoes.DelimitedText := AStringFinal;

  AListaCampos.StrictDelimiter := True;
  AListaCampos.Delimiter := '|';
  AListaCampos.DelimitedText := AStringCampos;

  AListaValores := TStringList.Create;
  AListaValores.StrictDelimiter := True;
  AListaValores.Delimiter := 'ø';

  for I := 0 to AListaCondicoes.Count - 1 do
  begin
    ACondicao := TWR_Condicao.Create;

    AListaValores.Clear;
    AListaValores.DelimitedText := AListaCampos[I];
    ACondicao.Campo_Base := AListaValores[0];

    AListaValores.Clear;
    AListaValores.DelimitedText := AListaCondicoes[I];
    ACondicao.Comparador := AListaValores[1];

    if TryStrToDateTime(AListaValores[2], AData) then
      ACondicao.Valor_Comparado := AData
    else
      ACondicao.Valor_Comparado := AListaValores[2];

    if AListaValores[2] = '-' then
      ACondicao.Tipo_Valor := 'DATA ATUAL'
    else
      ACondicao.Tipo_Valor := 'VALOR FIXO';

    FAcao.Condicoes.Add(ACondicao);
  end;

  if not Assigned(Acoes_Sistema) then
    Acoes_Sistema := TList<TWR_Acao>.Create;

  AFrameCon := TConsu_Frame(fcFiltroGrid.LinkComponent.Owner);
  AGrid     := AFrameCon.GridconsultaDBTableView1;

  FAcao.Descricao := edtDescricao.Text;
  FAcao.SQL       := AFrameCon.Consulta.SQL.Text;
//  TcxGridTableView(fcFiltroGrid.LinkComponent).DataController.Filter.FilterText;

  if AGrid.GroupedColumnCount > 0 then
    FAcao.Agrupamento := TcxGridDBColumn(AGrid.GroupedColumns[0]).DataBinding.FieldName;

  if AGrid.GroupedColumnCount > 1 then
    FAcao.Campo_Categoria := TcxGridDBColumn(AGrid.GroupedColumns[1]).DataBinding.FieldName;

  if AGrid.DataController.Filter.FilterText <> '' then
  begin
    FAcao.Filtro          := TMemoryStream.Create;
    FAcao.Filtro.Position := 0;
    fcFiltroGrid.SaveToStream(FAcao.Filtro);
    fcFiltroGrid.SaveToFile('D:\Programas\WR Comercial\backup\'+FAcao.Descricao+'.txt');
    FAcao.FilterText      := fcFiltroGrid.FilterText;
  end;

//  if AFrameCon.edtRapidoData.Text <> '-Filtro Datas-' then
//  begin
//    FAcao.Tem_Periodo     := True;
//    FAcao.Campo_Periodo   :=  AFrameCon.CbCamposData.Text;
//    FAcao.Grafico_Periodo := 'dgp1Mes';
//  end else
    FAcao.Tem_Periodo     := False;

  if AGrid.GroupedColumnCount > 0 then
    SalvarBlocoGrafico(AGrid)
  else
    SalvarBlocoSimples(AGrid);

  FAcao.Ativo        := 'S';
  FAcao.Tag_Tela     := TFrmBase(AFrameCon.Owner).tcBase.Tag;

//  FAcao.SQLWhere    := TConsu_Frame(fcFiltroGrid.LinkComponent.Owner).SQLWhere;

//  FAcao.SQLSubGrid  := AFrameCon.SubGrid.SQL;
//  FAcao.SubGridSelecionado := AFrameCon.SubGrid.FieldByName('DESCRICAO').AsString;


//  fcFiltroGrid.FilterText;

  if FEditando then
    Acoes_Sistema[FIndice] := FAcao
  else
  begin
    Acoes_Sistema.Add(FAcao);
    Acao_SalvarNoBanco(FAcao);
  end;     }

  Self.Close;
end;

procedure TFrmFrame_Acao_Configuracao.SalvarBlocoGrafico(AGrid: TcxGridDBTableView);
begin
  FAcao.Grafico_Tipo         := 'dgtColunasVerticais';
  FAcao.Formato              := 'ddfQuantidade';
  FAcao.Tem_Quant_Registros  := False;
  FAcao.Quant_Registros      := 0;
  FAcao.Width                := 400;
  FAcao.Height               := 300;
  FAcao.Bloco                := 'GRÁFICO';
end;

procedure TFrmFrame_Acao_Configuracao.SalvarBlocoSimples(AGrid: TcxGridDBTableView);
begin
  FAcao.Grafico_Tipo         := 'dgtColunasVerticais';
  FAcao.Formato              := 'ddfQuantidade';
  FAcao.Tem_Quant_Registros  := False;
  FAcao.Quant_Registros      := 0;
  FAcao.Width                := 175;
  FAcao.Height               := 90;
  FAcao.Bloco                := 'SIMPLES';
end;

procedure TFrmFrame_Acao_Configuracao.TrataString(var AString: string);
begin
  AString := StringReplace(AString, '(', '', [rfReplaceAll]);
  AString := StringReplace(AString, ')', '', [rfReplaceAll]);
  AString := StringReplace(AString, '''', '', [rfReplaceAll]);
  AString := StringReplace(AString, ' e ', '|', [rfReplaceAll]);
  AString := StringReplace(AString, ' AND ', '|', [rfReplaceAll]);
  AString := StringReplace(AString, ' hoje', 'øhojeø-', [rfReplaceAll]);
  AString := StringReplace(AString, ' ontem', 'øontemø-', [rfReplaceAll]);
  AString := StringReplace(AString, ' Amanhã', 'øamanhãø-', [rfReplaceAll]);
  AString := StringReplace(AString, ' 7 dias', 'ø7 diasø-', [rfReplaceAll]);
  AString := StringReplace(AString, ' 14 dias', 'ø14 diasø-', [rfReplaceAll]);
  AString := StringReplace(AString, ' 30 dias', 'ø30 diasø-', [rfReplaceAll]);
  AString := StringReplace(AString, ' há uma semana', 'øhá uma semanaø-', [rfReplaceAll]);
  AString := StringReplace(AString, ' duas semanas atrás', 'øduas semanas atrásø-', [rfReplaceAll]);
  AString := StringReplace(AString, ' há um mês', 'øhá um mêsø-', [rfReplaceAll]);
  AString := StringReplace(AString, ' há um ano', 'øhá um anoø-', [rfReplaceAll]);
  AString := StringReplace(AString, ' há um ano', 'øhá um anoø-', [rfReplaceAll]);

  AString := StringReplace(AString, ' <> ', 'ødiferenteø', [rfReplaceAll]);
  AString := StringReplace(AString, ' NOT LIKE ', 'ødiferenteø', [rfReplaceAll]);
  AString := StringReplace(AString, ' >= ', 'ømaior ou igual àø', [rfReplaceAll]);
  AString := StringReplace(AString, ' <= ', 'ømenor ou igual àø', [rfReplaceAll]);
  AString := StringReplace(AString, ' >= ', 'ømenor ou igual àø', [rfReplaceAll]);

  AString := StringReplace(AString, ' = NULL', 'øesta vazioø', [rfReplaceAll]);
  AString := StringReplace(AString, ' = '' ', 'øesta vazioø', [rfReplaceAll]);
  AString := StringReplace(AString, ' IS NOT NULL', 'ønão está vazioø', [rfReplaceAll]);
  AString := StringReplace(AString, ' <> ''', 'ønão está vazioø', [rfReplaceAll]);

  AString := StringReplace(AString, ' > ', 'ømaior queø', [rfReplaceAll]);
  AString := StringReplace(AString, ' < ', 'ømenor queø', [rfReplaceAll]);
  AString := StringReplace(AString, ' = ', 'øigualø', [rfReplaceAll]);

end;

procedure TFrmFrame_Acao_Configuracao.dxTileControl1Item2Click(
  Sender: TdxTileControlItem);
begin
  inherited;
  Self.Close;
end;

procedure TFrmFrame_Acao_Configuracao.dxTileControlItem1Click(
  Sender: TdxTileControlItem);
var
  I: integer;
begin
  inherited;
//  Acoes.Close;
//  Acoes.Open;

  if Acoes.Locate('Acao', FAcaoSelecionada, []) then
    Acoes.Edit
  else
    Acoes.Insert;

  if FAcaoSelecionada = 'Notificação' then
  begin
    Acoes.FieldByName('Acao').AsString := 'Notificação';

    if Assigned(FAcao.Execucoes.Notificacoes) then
      Acoes.FieldByName('Quantidade').AsString := VarToStr(FAcao.Execucoes.Notificacoes.Count) + ' usuários'
    else
      Acoes.FieldByName('Quantidade').AsString := '0 usuários'
  end;

  if FAcaoSelecionada = 'Enviar E-mail' then
  begin
    AdicionarEmailsNoObjeto;
    Acoes.FieldByName('Acao').AsString := 'Enviar E-mail';

    if Assigned(FAcao.Execucoes.Email) then
    begin
      if chkCliente.Checked then
        Acoes.FieldByName('Quantidade').AsString := VarToStr(FAcao.Execucoes.Email.Count - 1) + ' e-mails + envio automático para cliente'
      else
        Acoes.FieldByName('Quantidade').AsString := VarToStr(FAcao.Execucoes.Email.Count) + ' e-mails';
    end
    else
      Acoes.FieldByName('Quantidade').AsString := '0 usuários'
  end;

  Acoes.Post;

  Acoes.Refresh;
  FechaPanelForm(pnlAdicionarAcao);
end;

procedure TFrmFrame_Acao_Configuracao.AdicionarEmailsNoObjeto;
var
  AItem: TWR_Email;
  AListaEmails: TStringList;
  I: integer;
begin
  inherited;
  if not Assigned(FAcao.Execucoes.Email) then
    FAcao.Execucoes.Email := TList<TWR_Email>.Create
  else
    FAcao.Execucoes.Email.Clear;

  AListaEmails := TStringList.Create;
  AListaEmails.StrictDelimiter := True;
  AListaEmails.Delimiter := ';';
  AListaEmails.DelimitedText := edtEmailsAdicionais.Text;

  if AListaEmails.Count > 0 then
  begin
    for I := 0 to AListaEmails.Count - 1 do
    begin
      AItem := TWR_Email.Create;
      if edtModeloEmailÎEMAIL_MODELO.Text <> '' then
        AItem.CodModelo := edtModeloEmailÎEMAIL_MODELO.EditValue;

      AItem.Email     := AListaEmails[I];
      AItem.EnviarPDF := cbxEnviarPDF.Checked;
      AItem.Cliente   := False;

      FAcao.Execucoes.Email.Add(AItem);
    end;
  end;

  if chkCliente.Checked then
  begin
    AItem := TWR_Email.Create;
    AItem.CodModelo := edtModeloEmailÎEMAIL_MODELO.EditValue;
    AItem.Email     := 'cliente@cliente.com';
    AItem.EnviarPDF := cbxEnviarPDF.Checked;
    AItem.Cliente   := True;

    FAcao.Execucoes.Email.Add(AItem);
  end;
end;

procedure TFrmFrame_Acao_Configuracao.dxTileControlItem2Click(
  Sender: TdxTileControlItem);
begin
  inherited;
  FechaPanelForm(pnlAdicionarAcao);
end;

procedure TFrmFrame_Acao_Configuracao.FormCreate(Sender: TObject);
begin
  inherited;
  FAcao := TWR_Acao.Create;
  FAcao.Execucoes := TWR_Execucoes.Create;
  if Assigned(Acoes_Sistema) then
    FAcao.Descricao := 'Ação Personalizada ' + VarToStr(Acoes_Sistema.Count + 1)
  else
   FAcao.Descricao := 'Ação Personalizada 1';

  edtDescricao.Text := FAcao.Descricao;
  FControleWR := TControleWR.Create;
  FControleWR.Inicializar(Self);
end;

procedure TFrmFrame_Acao_Configuracao.FormShow(Sender: TObject);
begin
  inherited;
  lifcFiltroGrid.Visible := Assigned(fcFiltroGrid.LinkComponent);
end;

procedure TFrmFrame_Acao_Configuracao.pnlAdicionarAcaoEnter(Sender: TObject);
begin
  inherited;
  cbAcoes.EditValue := FAcaoSelecionada;
  cbAcoesPropertiesChange(cbAcoes);
end;

procedure TFrmFrame_Acao_Configuracao.tiAdicionarAcaoClick(
  Sender: TdxTileControlItem);
begin
  inherited;
  ShowPanelForm(pnlAdicionarAcao, bsSingle);
end;

procedure TFrmFrame_Acao_Configuracao.VincularDataSetNoFiltro(AGrid: TcxCustomGridTableView);
begin
  fcFiltroGrid.LinkComponent := AGrid;
end;

initialization
  RegisterBase_Normal(Tag_Acoes_Configuracao, TFrmFrame_Acao_Configuracao);

end.
