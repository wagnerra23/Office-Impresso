unit frFrameSelecionarVariacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, cxMaskEdit, cxDropDownEdit, cxDBEdit, dxLayoutContainer, cxTextEdit,
  cxCurrencyEdit, cxClasses, dxLayoutControl, Data.DB, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  dxLayoutLookAndFeels, cxLabel, uWRCalculaConfiguracoes, math, wrFuncoes,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  dxDateRanges, dxScrollbarAnnotations, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, FireDAC.Comp.Client;

type
  TFrame_Selecionar_Variacao = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    DS: TDataSource;
    cxButton1: TcxButton;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    dxLayoutSkinLookAndFeelBranco: TdxLayoutSkinLookAndFeel;
    dxLayoutSkinLookAndFeelBranco2: TdxLayoutSkinLookAndFeel;
    Label8: TLabel;
    lblVSaldoSemMateriais: TLabel;
    lblPCustoMateriais: TLabel;
    dxLayoutItem15: TdxLayoutItem;
    cxButton2: TcxButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    cxGrid1DBTableView1VALOR: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
    class function Abrir(ASender: TWinControl; AProdutoPreco: TFDQuery): Boolean;
  end;

var
  Frame_Selecionar_Variacao: TFrame_Selecionar_Variacao;
  ABaseCalculoValor: Double;
  AAbriu: Boolean;

implementation

Uses wrFuncoes_Office, UnitFuncoes, Frame_CadSalario;

{$R *.dfm}

class function TFrame_Selecionar_Variacao.Abrir(ASender: TWinControl; AProdutoPreco: TFDQuery): Boolean;
var
  AForm: TFrame_Selecionar_Variacao;
  APodeAlterar: Boolean;
begin
  AAbriu := False;
  AForm:= TFrame_Selecionar_Variacao.Create(ASender.Owner);
  try
    AForm.PopupMode := pmAuto;
    AForm.DS.DataSet := AProdutoPreco;
    PosicionarControleAbaixoDe(AForm, ASender);

    AForm.ShowModal;
    Result := AForm.ModalResult = mrOk;
  finally
    AForm.Free;
  end;
end;

end.
