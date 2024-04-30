unit Frame_CadEquipamento_Eletrodomestico;

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
  dxLayoutControl, cxCalendar, cxMemo, cxButtonEdit, dxUIAdorners, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TFrame_Equipamento_Eletrodomestico = class(TFrmCad_Frame)
    Equipamento_Eletrodomestico: TFDQuery;
    DSEquipamento_Computador: TDataSource;
    dxLayoutItem1: TdxLayoutItem;
    edtNumSerie: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    edtNumNF: TcxDBTextEdit;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    edtModelo: TcxDBTextEdit;
    edtDtCompra: TcxDBDateEdit;
    dxLayoutItem4: TdxLayoutItem;
    UCHist_Equipamento_Eletrodomestico: TUCHist_DataSet;
    dxLayoutItem5: TdxLayoutItem;
    MemoObservacao: TcxDBMemo;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem6: TdxLayoutItem;
    EdtClienteÎPessoas: TcxDBButtonEdit;
    dxLayoutItem7: TdxLayoutItem;
    EdtClienteÎPessoasÎRAZAOSOCIAL: TLabel;
    procedure WREventosCadastroConfiguracao_Acoes(Sender: TObject);
    procedure Equipamento_EletrodomesticoBeforeEdit(DataSet: TDataSet);
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
  Frame_Equipamento_Eletrodomestico: TFrame_Equipamento_Eletrodomestico;

implementation

{$R *.dfm}

uses
  UnitFuncoes, Base, Tag.Form;

procedure TFrame_Equipamento_Eletrodomestico.CadastroAfterCancel(
  DataSet: TDataSet);
begin
  inherited;
  Equipamento_Eletrodomestico.Cancel;
end;

procedure TFrame_Equipamento_Eletrodomestico.CadastroAfterEdit(
  DataSet: TDataSet);
begin
  inherited;
  Equipamento_Eletrodomestico.Edit;
end;

procedure TFrame_Equipamento_Eletrodomestico.CadastroAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  Equipamento_Eletrodomestico.Insert;
  Equipamento_Eletrodomestico.FieldByName('Codigo').AsInteger := Cadastro.FieldByName('Codigo').AsInteger;
end;

procedure TFrame_Equipamento_Eletrodomestico.CadastroAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  Equipamento_Eletrodomestico.Open;
end;

procedure TFrame_Equipamento_Eletrodomestico.CadastroBeforeClose(
  DataSet: TDataSet);
begin
  inherited;
  Equipamento_Eletrodomestico.Close;
end;

procedure TFrame_Equipamento_Eletrodomestico.CadastroBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  Equipamento_Eletrodomestico.Post;
end;

procedure TFrame_Equipamento_Eletrodomestico.Equipamento_EletrodomesticoBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;
  VerificaSePodeAlteraDataSet;
  VerificaControleEdicao;
end;

procedure TFrame_Equipamento_Eletrodomestico.WREventosCadastroConfiguracao_Acoes(
  Sender: TObject);
begin
  inherited;
  with WREventosCadastro do
  begin
    with AddForm(Owner) do
    begin
      AddValorInicial('EQUIPAMENTO', 'TIPO', nil,  'ELETRODOMESTICO');
    end;
  end;
end;

initialization
  RegisterClass(TFrame_Equipamento_Eletrodomestico);
  RegisterFrameCad(Tag_Equipamento_Eletrodomestico, TFrame_Equipamento_Eletrodomestico);

end.
