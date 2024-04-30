unit Frame_CadEquipamento_Veiculo;

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
  dxLayoutControl, cxButtonEdit, cxMemo, dxUIAdorners, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White;

type
  TFrame_Equipamento_Veiculo = class(TFrmCad_Frame)
    Equipamento_Veiculo: TFDQuery;
    DSEquipamento_Veiculo: TDataSource;
    dxLayoutItem1: TdxLayoutItem;
    EdtClienteÎPessoas: TcxDBButtonEdit;
    dxLayoutItem2: TdxLayoutItem;
    EdtClienteÎPessoasÎRAZAOSOCIAL: TLabel;
    dxLayoutItem3: TdxLayoutItem;
    edtChassi: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    edtHP: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    edtCilindrada: TcxDBTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    edtCombustivel: TcxDBTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    edtMotor: TcxDBTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    edtRenavam: TcxDBTextEdit;
    dxLayoutItem9: TdxLayoutItem;
    edtAnoMod: TcxDBTextEdit;
    dxLayoutItem10: TdxLayoutItem;
    edtAnoFab: TcxDBTextEdit;
    dxLayoutItem11: TdxLayoutItem;
    edtKilometragem: TcxDBTextEdit;
    dxLayoutItem12: TdxLayoutItem;
    edtNrPassageiros: TcxDBTextEdit;
    dxLayoutItem13: TdxLayoutItem;
    edtPlaca: TcxDBTextEdit;
    dxLayoutItem14: TdxLayoutItem;
    edtPesoLiquido: TcxDBTextEdit;
    dxLayoutItem15: TdxLayoutItem;
    edtPesoBruto: TcxDBTextEdit;
    dxLayoutItem16: TdxLayoutItem;
    edtNrSerie: TcxDBTextEdit;
    dxLayoutItem17: TdxLayoutItem;
    edtCMOD: TcxDBTextEdit;
    dxLayoutItem18: TdxLayoutItem;
    edtTipo: TcxDBTextEdit;
    dxLayoutItem19: TdxLayoutItem;
    edtEspecie: TcxDBTextEdit;
    dxLayoutItem20: TdxLayoutItem;
    edtDIST: TcxDBTextEdit;
    dxLayoutItem21: TdxLayoutItem;
    edtCondicao: TcxDBTextEdit;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    MemoObservacao: TcxDBMemo;
    dxLayoutItem22: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    UCHist_Equipamento_Veiculo: TUCHist_DataSet;
    procedure CadastroAfterOpen(DataSet: TDataSet);
    procedure CadastroBeforeClose(DataSet: TDataSet);
    procedure WREventosCadastroConfiguracao_Acoes(Sender: TObject);
    procedure CadastroAfterInsert(DataSet: TDataSet);
    procedure CadastroAfterCancel(DataSet: TDataSet);
    procedure CadastroAfterEdit(DataSet: TDataSet);
    procedure CadastroBeforePost(DataSet: TDataSet);
    procedure Equipamento_VeiculoBeforeEdit(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frame_Equipamento_Veiculo: TFrame_Equipamento_Veiculo;

implementation

{$R *.dfm}
uses
  UnitFuncoes, Base, Tag.Form;

procedure TFrame_Equipamento_Veiculo.CadastroAfterCancel(DataSet: TDataSet);
begin
  inherited;
  Equipamento_Veiculo.Cancel;
end;

procedure TFrame_Equipamento_Veiculo.CadastroAfterEdit(DataSet: TDataSet);
begin
  inherited;
  Equipamento_Veiculo.Edit;
end;

procedure TFrame_Equipamento_Veiculo.CadastroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  Equipamento_Veiculo.Insert;
  Equipamento_Veiculo.FieldByName('Codigo').AsInteger := Cadastro.FieldByName('Codigo').AsInteger;
end;

procedure TFrame_Equipamento_Veiculo.CadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  Equipamento_Veiculo.Open;
end;

procedure TFrame_Equipamento_Veiculo.CadastroBeforeClose(DataSet: TDataSet);
begin
  inherited;
  Equipamento_Veiculo.Close;
end;

procedure TFrame_Equipamento_Veiculo.CadastroBeforePost(DataSet: TDataSet);
begin
  inherited;
  Equipamento_Veiculo.Post;
end;

procedure TFrame_Equipamento_Veiculo.Equipamento_VeiculoBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;
  VerificaSePodeAlteraDataSet;
  VerificaControleEdicao;
end;

procedure TFrame_Equipamento_Veiculo.WREventosCadastroConfiguracao_Acoes(
  Sender: TObject);
begin
  inherited;
  with WREventosCadastro do
  begin
    with AddForm(Owner) do
    begin
      AddValorInicial('EQUIPAMENTO', 'TIPO', nil,  'VEÍCULO');
    end;
  end;
end;

initialization
  RegisterClass(TFrame_Equipamento_Veiculo);
  RegisterFrameCad(Tag_Equipamento_Veiculo, TFrame_Equipamento_Veiculo);

end.
