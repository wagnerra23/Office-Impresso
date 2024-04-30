unit FrFrame_Rateio_Custo_Vinculo_Equipe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxClasses, dxLayoutLookAndFeels,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxLayoutContainer, dxLayoutControl, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, dxLayoutcxEditAdapters, cxContainer, cxTextEdit,
  cxMaskEdit, cxButtonEdit, cxLabel, cxCurrencyEdit, dxLayoutControlAdapters,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, IBX.IBCustomDataSet, uControleWR, dxScrollbarAnnotations,
  dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinsDefaultPainters,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxDBEdit, Vcl.ExtCtrls;

type
  TFrame_Rateio_Custo_Vinculo_Equipe = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    dxLayoutSkinLookAndFeelBranco: TdxLayoutSkinLookAndFeel;
    dxLayoutSkinLookAndFeelBranco2: TdxLayoutSkinLookAndFeel;
    DS: TDataSource;
    RateioFuncionarioSalario: TFDQuery;
    DSExterno: TDataSource;
    TransaFD: TFDTransaction;
    edtEquipe: TcxLabel;
    edtValorHora: TcxCurrencyEdit;
    edtHoras: TcxCurrencyEdit;
    edtTotalMensal: TcxCurrencyEdit;
    btnAtualizarPreco: TcxButton;
    edtCodProdutoÎPRODUTO: TcxDBButtonEdit;
    edtCodProdutoÎPRODUTOÎDESCRICAO: TcxTextEdit;
    edtValorAtualizado: TcxDBCurrencyEdit;
    edtValorAnterior: TcxDBCurrencyEdit;
    btnNovoServico: TcxButton;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutItem5: TdxLayoutItem;
    liedtHoras: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    liAtualizarValor: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    liedtFuncionarioÎPessoasÎRAZAOSOCIAL: TdxLayoutItem;
    cxLabel1: TcxLabel;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem13: TdxLayoutItem;
    cxLabel4: TcxLabel;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    dxLayoutSeparatorItem3: TdxLayoutSeparatorItem;
    dxLayoutSeparatorItem4: TdxLayoutSeparatorItem;
    dxLayoutItem14: TdxLayoutItem;
    btnFechar: TcxButton;
    dxLayoutItem1: TdxLayoutItem;
    cxLabel2: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
    I: integer;
  protected
    FControleWR: TControleWR;
  public
    { Public declarations }
    class procedure Abrir(ASender: TWinControl; ADataSetExterno: TDataSet; ATotalMensal, ATotalHoras, AMedia: String);

  end;

var
  Frame_Rateio_Custo_Vinculo_Equipe: TFrame_Rateio_Custo_Vinculo_Equipe;

implementation

{$R *.dfm}

uses
  wrFuncoes_Office, UnitFuncoes, Aguarde, wrFuncoes, Frame_CadSalario;

class procedure TFrame_Rateio_Custo_Vinculo_Equipe.Abrir(ASender: TWinControl; ADataSetExterno: TDataSet; ATotalMensal, ATotalHoras, AMedia: String);
var
  AFrmFrameCentroCusto: TFrame_Rateio_Custo_Vinculo_Equipe;
begin
  AFrmFrameCentroCusto:= TFrame_Rateio_Custo_Vinculo_Equipe.Create(ASender.Owner);
  try
    AFrmFrameCentroCusto.PopupMode   := pmAuto;
    AFrmFrameCentroCusto.DSExterno.DataSet  := ADataSetExterno;
    TFDQuery(AFrmFrameCentroCusto.DS.DataSet).Transaction := TFDQuery(AFrmFrameCentroCusto.DSExterno.DataSet).Transaction;
    AFrmFrameCentroCusto.edtEquipe.Caption := TFDQuery(AFrmFrameCentroCusto.DSExterno.DataSet).FieldByName('DESCRICAO').AsString;
    AFrmFrameCentroCusto.edtTotalMensal.Text := ATotalMensal;
    AFrmFrameCentroCusto.edtHoras.Text := ATotalHoras;
    AFrmFrameCentroCusto.edtValorHora.Text := AMedia;
    PosicionarControleAbaixoDe(AFrmFrameCentroCusto, ASender);
    AFrmFrameCentroCusto.ShowModal;
  finally
    AFrmFrameCentroCusto.Free;
  end;
end;

procedure TFrame_Rateio_Custo_Vinculo_Equipe.btnFecharClick(Sender: TObject);
begin
  // Atualizar todas as pessoas
//  if DSExterno.State = dsEdit then
//  begin
//    DSPessoaSelecionada.DataSet.First;
//    while not DSPessoaSelecionada.DataSet.eof do
//    begin
//      DSPessoaSelecionada.DataSet.Edit;
//      DSCopiarCamposIguais(DSExterno.DataSet, DSPessoaSelecionada.DataSet, ['CODIGO', 'TIPO_RATEIO', 'QTD_HORAS_RATEADAS', 'PERC_RATEIO', 'CODEQUIPE']);
//      CalculaValores(DSPessoaSelecionada.DataSet, 'ano');
//      DSPessoaSelecionada.DataSet.Post;
//      DSPessoaSelecionada.DataSet.Next;
//    end;
//  end;
  Close;
end;

procedure TFrame_Rateio_Custo_Vinculo_Equipe.FormCreate(Sender: TObject);
begin
  FControleWR := TControleWR.Create;
  FControleWR.Inicializar(Self);
end;

end.
