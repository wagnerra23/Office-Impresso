unit CadConfiguracao_Acoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CadM, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, Vcl.Menus, cxContainer, cxEdit, dxLayoutControlAdapters, dxLayoutcxEditAdapters, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, dxUIAdorners, cxClasses, frxClass, frxDBSet, UCHistDataset, FireDAC.Comp.Client,
  Data.DB, FireDAC.Comp.DataSet, WREventos, UCBase, dxLayoutLookAndFeels, System.ImageList, Vcl.ImgList, Vcl.ExtCtrls,
  dxStatusBar, dxLayoutContainer, cxButtonEdit, cxDBEdit, cxMaskEdit, cxDropDownEdit, cxTextEdit, Vcl.StdCtrls,
  cxButtons, dxLayoutControl, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxLabel,
  Principal, cxCheckBox, fs_iinterpreter, System.Generics.Collections,
  dxScrollbarAnnotations, WRButtonsEditAdd;

type
  TFrmConfiguracao_Acoes = class(TFrmCadM)
    Configuracao_Acao_Componente: TFDQuery;
    DSRegra_Guia_Campo: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem1: TdxLayoutItem;
    EdtRegraÎConfiguracao_Regra: TcxButtonEdit;
    dxLayoutItem2: TdxLayoutItem;
    LblRegraÎConfiguracao_RegraÎDESCRICAO: TcxLabel;
    dxLayoutItem3: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    cxButton2: TcxButton;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    dxLayoutItem6: TdxLayoutItem;
    MemComponentes: TFDMemTable;
    DSMemComponentes: TDataSource;
    MemComponentesCOMPONENTE: TStringField;
    cxGrid2DBTableView1COMPONENTE: TcxGridDBColumn;
    cxButton3: TcxButton;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    MemComponentesCAPTION: TStringField;
    cxGrid2DBTableView1CAPTION: TcxGridDBColumn;
    cxGrid1DBTableView1OBRIGATORIO: TcxGridDBColumn;
    cxGrid1DBTableView1CAPTION: TcxGridDBColumn;
    cxGrid1DBTableView1EXPRESSAO: TcxGridDBColumn;
    dxLayoutItem9: TdxLayoutItem;
    LblRegraÎConfiguracao_RegraÎREGRA: TcxLabel;
    dxLayoutGroup1: TdxLayoutGroup;
    cxGrid1DBTableView1ENABLE: TcxGridDBColumn;
    cxGrid1DBTableView1VISIBLE: TcxGridDBColumn;
    cxGrid1DBTableView1VALOR_INICIAL: TcxGridDBColumn;
    cxGrid1DBTableView1COMPONENTE: TcxGridDBColumn;
    liEdtComponenteÎConfiguracao_Componente: TdxLayoutItem;
    EdtComponenteÎConfiguracao_Componente: TcxButtonEdit;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutItem10: TdxLayoutItem;
    EdtComponenteÎConfiguracao_ComponenteÎCOMPONENTE: TcxLabel;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1CODCONFIGURACAO_ACAO: TcxGridDBColumn;
    cxGrid1DBTableView1CODCONFIGURACAO_REGRA: TcxGridDBColumn;
    cxGrid1DBTableView1ENABLE_CONDICAO: TcxGridDBColumn;
    cxGrid1DBTableView1VISIBLE_CONDICAO: TcxGridDBColumn;
    cxGrid1DBTableView1OBRIGATORIO_CONDICAO: TcxGridDBColumn;
    cxGrid1DBTableView1VALOR_INICIAL_CONDICAO: TcxGridDBColumn;
    cxGrid1DBTableView1CODCONFIGURACAO_COMPONENTE: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGO_1: TcxGridDBColumn;
    cxGrid1DBTableView1FORM: TcxGridDBColumn;
    cxGrid1DBTableView1TABELA: TcxGridDBColumn;
    cxGrid1DBTableView1CAMPO: TcxGridDBColumn;
    cxGrid1DBTableView1FORMATACAO: TcxGridDBColumn;
    cxGrid1DBTableView1HINT: TcxGridDBColumn;
    cxGrid1DBTableView1PADRAO: TcxGridDBColumn;
    cxGrid1DBTableView1ATIVO: TcxGridDBColumn;
    cxGrid1DBTableView1DT_ALTERACAO: TcxGridDBColumn;
    cxGrid1DBTableView1OBSERVACAO: TcxGridDBColumn;
    cxGrid1DBTableView1TAB: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGO_2: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1REGRA: TcxGridDBColumn;
    cxGrid1DBTableView1ESTILO: TcxGridDBColumn;
    cxGrid1DBTableView1DT_ALTERACAO_1: TcxGridDBColumn;
    cxGrid1DBTableView1ATIVO_1: TcxGridDBColumn;
    cxGrid1DBTableView1FORM_1: TcxGridDBColumn;
    cxGrid1DBTableView1GRID: TcxGridDBColumn;
    procedure CadastroAfterOpen(DataSet: TDataSet);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxGrid1DBTableView1CODREGRA_EXPRESSAOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxButton2Click(Sender: TObject);
  private
    procedure CarregaComponentes;
  public
  end;

var
  FormOrigemBadge: TComponent;

implementation

{$R *.dfm}

uses
  UnitFuncoes, wrFuncoes;

procedure TFrmConfiguracao_Acoes.CadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  Configuracao_Acao_Componente.Open;
end;

procedure TFrmConfiguracao_Acoes.CarregaComponentes;
var
  I: Integer;
  AComponent: TComponent;
begin
  MemComponentes.Open;
  MemComponentes.EmptyDataSet;

  for I := 0 to FormOrigemBadge.ComponentCount - 1 do
  begin
    AComponent := FormOrigemBadge.Components[i];

   { //Se o componente for um TFrame, entra nele e varre os componentes internos recursivamente
    if AComponent is TFrame then
    begin
      CarregaCampos(AComponent);
      Continue;
    end;}

    if not (AComponent is TcxCustomEdit) or (AComponent is TcxCustomLabel) then
      Continue;

    MemComponentes.Append;
    MemComponentes.FieldByName('COMPONENTE').AsString := AComponent.Name;
    MemComponentes.FieldByName('CAPTION').AsString    := GetDevCaption(AComponent);
    MemComponentes.Post;
  end;
end;

procedure TFrmConfiguracao_Acoes.cxButton1Click(Sender: TObject);
begin
  inherited;
  VerificaSePodeAlteraDataSet;
  IF (EdtRegraÎConfiguracao_Regra.Text<>'')AND(LblRegraÎConfiguracao_RegraÎDESCRICAO.Caption='')then
  begin
    ShowMessage('Preencha a regra!');
    EdtRegraÎConfiguracao_Regra.SetFocus;
    Exit;
  end;
  IF (EdtComponenteÎConfiguracao_Componente.Text<>'')AND(EdtComponenteÎConfiguracao_ComponenteÎCOMPONENTE.Caption='')then
  begin
    ShowMessage('Preencha a Componente!');
    EdtRegraÎConfiguracao_Regra.SetFocus;
    Exit;
  end;

  Configuracao_Acao_Componente.Insert;
  Configuracao_Acao_Componente.FieldByName('CODIGO').AsInteger                    := Trunc(GetProximoCodigoGen('CR_REGRA_GUIA_CAMPO', TransaFD));
  Configuracao_Acao_Componente.FieldByName('CODCONFIGURACAO_ACAO').AsInteger      := Cadastro.FieldByName('CODIGO').AsInteger;
  Configuracao_Acao_Componente.FieldByName('CODCONFIGURACAO_REGRA').AsInteger     := StrToIntDef(EdtRegraÎConfiguracao_Regra.Text,0);
  Configuracao_Acao_Componente.FieldByName('CODCONFIGURACAO_COMPONENTE').AsInteger:= StrToIntDef(EdtComponenteÎConfiguracao_Componente.Text,0);
  Configuracao_Acao_Componente.Post;
  Configuracao_Acao_Componente.Refresh;
end;

procedure TFrmConfiguracao_Acoes.cxButton2Click(Sender: TObject);
begin
  inherited;
  VerificaSePodeAlteraDataSet;
  if not Configuracao_Acao_Componente.IsEmpty then
    Configuracao_Acao_Componente.Delete;
end;

procedure TFrmConfiguracao_Acoes.cxButton3Click(Sender: TObject);
begin
  inherited;
  MemComponentes.DisableControls;
  try
    CarregaComponentes;
  finally
    MemComponentes.EnableControls;
  end;
end;

procedure TFrmConfiguracao_Acoes.cxGrid1DBTableView1CODREGRA_EXPRESSAOPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  VerificaSePodeAlteraDataSet;
  VerificaSePodeAlteraDataSet(Configuracao_Acao_Componente);
//  Regra_Guia_Campo.FieldByName('CODREGRA_EXPRESSAO').AsString := ControleFormsAbrirConsulta(TConsuRegra_Expressao);
end;

initialization
  RegisterClass(TFrmConfiguracao_Acoes);

end.

