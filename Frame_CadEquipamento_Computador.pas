unit Frame_CadEquipamento_Computador;

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
  dxLayoutControl, cxMemo, cxCalendar, cxButtonEdit, dxUIAdorners, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TFrame_Equipamento_Computador = class(TFrmCad_Frame)
    dxLayoutItem1: TdxLayoutItem;
    edtSenha: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    edtUsuario: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    edtVelocidade: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    edtConexao: TcxDBTextEdit;
    dxLayoutGroup1: TdxLayoutGroup;
    DSEquipamento_Computador: TDataSource;
    Equipamento_Computador: TFDQuery;
    dxLayoutItem6: TdxLayoutItem;
    edtVersaoEXE: TcxDBTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    edtDtInstalacao: TcxDBDateEdit;
    dxLayoutItem9: TdxLayoutItem;
    edtBanco: TcxDBTextEdit;
    dxLayoutItem10: TdxLayoutItem;
    edtPastaInstalacao: TcxDBTextEdit;
    dxLayoutItem11: TdxLayoutItem;
    edtSistemaOperacional: TcxDBTextEdit;
    dxLayoutItem12: TdxLayoutItem;
    edtProcessador: TcxDBTextEdit;
    dxLayoutItem13: TdxLayoutItem;
    edtIpInterno: TcxDBTextEdit;
    dxLayoutItem14: TdxLayoutItem;
    edtHd: TcxDBTextEdit;
    dxLayoutItem15: TdxLayoutItem;
    edtAntiVirus: TcxDBTextEdit;
    dxLayoutItem17: TdxLayoutItem;
    edtImpressoraFiscal: TcxDBTextEdit;
    dxLayoutItem19: TdxLayoutItem;
    edtDtUltimaAssistencia: TcxDBDateEdit;
    dxLayoutItem20: TdxLayoutItem;
    edtLeitorBarras: TcxDBTextEdit;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    cbTipoAcesso: TcxDBComboBox;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    cbPAF: TcxDBComboBox;
    dxLayoutItem16: TdxLayoutItem;
    cbBackup: TcxDBComboBox;
    dxLayoutItem18: TdxLayoutItem;
    MemoObservacao: TcxDBMemo;
    dxLayoutGroup6: TdxLayoutGroup;
    UCHist_Equipamento_Computador: TUCHist_DataSet;
    dxLayoutItem21: TdxLayoutItem;
    EdtClienteÎPessoas: TcxDBButtonEdit;
    dxLayoutItem22: TdxLayoutItem;
    EdtClienteÎPessoasÎRAZAOSOCIAL: TLabel;
    procedure WREventosCadastroConfiguracao_Acoes(Sender: TObject);
    procedure Equipamento_ComputadorBeforeEdit(DataSet: TDataSet);
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
  Frame_Equipamento_Computador: TFrame_Equipamento_Computador;

implementation

{$R *.dfm}

uses
  UnitFuncoes, Base, Tag.Form;

procedure TFrame_Equipamento_Computador.CadastroAfterCancel(DataSet: TDataSet);
begin
  inherited;
  Equipamento_Computador.Cancel;
end;

procedure TFrame_Equipamento_Computador.CadastroAfterEdit(DataSet: TDataSet);
begin
  inherited;
  Equipamento_Computador.Edit;
end;

procedure TFrame_Equipamento_Computador.CadastroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  Equipamento_Computador.Insert;
  Equipamento_Computador.FieldByName('Codigo').AsInteger := Cadastro.FieldByName('Codigo').AsInteger;
end;

procedure TFrame_Equipamento_Computador.CadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  Equipamento_Computador.Open;
end;

procedure TFrame_Equipamento_Computador.CadastroBeforeClose(DataSet: TDataSet);
begin
  inherited;
  Equipamento_Computador.Close;
end;

procedure TFrame_Equipamento_Computador.CadastroBeforePost(DataSet: TDataSet);
begin
  inherited;
  Equipamento_Computador.Post;
end;

procedure TFrame_Equipamento_Computador.Equipamento_ComputadorBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;
  VerificaSePodeAlteraDataSet;
  VerificaControleEdicao;
end;

procedure TFrame_Equipamento_Computador.WREventosCadastroConfiguracao_Acoes(
  Sender: TObject);
begin
  inherited;
  with WREventosCadastro do
  begin
    with AddForm(Owner) do
    begin
      AddValorInicial('EQUIPAMENTO', 'TIPO', nil,  'COMPUTADOR');
    end;
  end;
end;

initialization
  RegisterClass(TFrame_Equipamento_Computador);
  RegisterFrameCad(Tag_Equipamento_Computador, TFrame_Equipamento_Computador);

end.
