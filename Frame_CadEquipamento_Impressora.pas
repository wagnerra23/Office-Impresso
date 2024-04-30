unit Frame_CadEquipamento_Impressora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Frame_Cad, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  uWRFormataCamposDataSet, frxClass, frxDBSet, UCHistDataset,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet,
  System.Generics.Collections, WREventos, UCBase, cxClasses,
  dxLayoutLookAndFeels, System.ImageList, Vcl.ImgList, Vcl.ExtCtrls,
  dxCustomTileControl, dxTileControl, dxStatusBar, dxLayoutContainer,
  cxMaskEdit, cxDropDownEdit, cxDBEdit, Vcl.StdCtrls, cxButtons, cxTextEdit,
  dxLayoutControl, cxCurrencyEdit, cxButtonEdit, cxMemo, dxUIAdorners, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TFrame_Equipamento_Impressora = class(TFrmCad_Frame)
    Equipamento_Impressora: TFDQuery;
    DSEquipamento_Impressora: TDataSource;
    dxLayoutItem1: TdxLayoutItem;
    edtValor: TcxDBCurrencyEdit;
    dxLayoutItem2: TdxLayoutItem;
    edtTempoPagto: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    edtQuantCores: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    edtModelo: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    edtMarca: TcxDBTextEdit;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem6: TdxLayoutItem;
    EdtClienteÎPessoas: TcxDBButtonEdit;
    dxLayoutItem7: TdxLayoutItem;
    EdtClienteÎPessoasÎRAZAOSOCIAL: TLabel;
    dxLayoutItem8: TdxLayoutItem;
    MemoObservacao: TcxDBMemo;
    dxLayoutGroup2: TdxLayoutGroup;
    UCHist_Equipamento_Impresso: TUCHist_DataSet;
    procedure WREventosCadastroConfiguracao_Acoes(Sender: TObject);
    procedure Equipamento_ImpressoraBeforeEdit(DataSet: TDataSet);
    procedure CadastroBeforePost(DataSet: TDataSet);
    procedure CadastroBeforeClose(DataSet: TDataSet);
    procedure CadastroAfterOpen(DataSet: TDataSet);
    procedure CadastroAfterInsert(DataSet: TDataSet);
    procedure CadastroAfterEdit(DataSet: TDataSet);
    procedure CadastroAfterCancel(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frame_Equipamento_Impressora: TFrame_Equipamento_Impressora;

implementation

{$R *.dfm}

uses
  UnitFuncoes, Base, Tag.Form;

procedure TFrame_Equipamento_Impressora.CadastroAfterCancel(DataSet: TDataSet);
begin
  inherited;
  Equipamento_Impressora.Cancel;
end;

procedure TFrame_Equipamento_Impressora.CadastroAfterEdit(DataSet: TDataSet);
begin
  inherited;
  Equipamento_Impressora.Edit;
end;

procedure TFrame_Equipamento_Impressora.CadastroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  Equipamento_Impressora.Insert;
  Equipamento_Impressora.FieldByName('Codigo').AsInteger := Cadastro.FieldByName('Codigo').AsInteger;
end;

procedure TFrame_Equipamento_Impressora.CadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  Equipamento_Impressora.Open;
end;

procedure TFrame_Equipamento_Impressora.CadastroBeforeClose(DataSet: TDataSet);
begin
  inherited;
  Equipamento_Impressora.Close;
end;

procedure TFrame_Equipamento_Impressora.CadastroBeforePost(DataSet: TDataSet);
begin
  inherited;
  Equipamento_Impressora.Post;
end;

procedure TFrame_Equipamento_Impressora.Equipamento_ImpressoraBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;
  VerificaSePodeAlteraDataSet;
  VerificaControleEdicao;
end;

procedure TFrame_Equipamento_Impressora.WREventosCadastroConfiguracao_Acoes(
  Sender: TObject);
begin
  inherited;
  with WREventosCadastro do
  begin
    with AddForm(Owner) do
    begin
      AddValorInicial('EQUIPAMENTO', 'TIPO', nil,  'IMPRESSORA');
    end;
  end;
end;

initialization
  RegisterClass(TFrame_Equipamento_Impressora);
  RegisterFrameCad(Tag_Equipamento_Impressora, TFrame_Equipamento_Impressora);


end.
