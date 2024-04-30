unit FrFrameVendedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, dxLayoutContainer, dxLayoutControl,
  dxLayoutLookAndFeels, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxTextEdit,
  cxCurrencyEdit, cxDBEdit, Data.DB, uWRCalculaConfiguracoes,
  dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons;

type
  TFrmFrameVendedor = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    dxLayoutSkinLookAndFeelBranco: TdxLayoutSkinLookAndFeel;
    dxLayoutSkinLookAndFeelBranco2: TdxLayoutSkinLookAndFeel;
    dxLayoutItem1: TdxLayoutItem;
    edtCusto_Representante: TcxDBCurrencyEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxDBCurrencyEdit13: TcxDBCurrencyEdit;
    dxLayoutItem3: TdxLayoutItem;
    edtComissaoFuncionario: TcxDBCurrencyEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxDBCurrencyEdit14: TcxDBCurrencyEdit;
    dxLayoutItem5: TdxLayoutItem;
    edtComissao_Agencia: TcxDBCurrencyEdit;
    dxLayoutItem6: TdxLayoutItem;
    cxDBCurrencyEdit15: TcxDBCurrencyEdit;
    dxLayoutItem7: TdxLayoutItem;
    edtNF_VFrete: TcxDBCurrencyEdit;
    dxLayoutItem8: TdxLayoutItem;
    edtPDesc: TcxDBCurrencyEdit;
    dxLayoutItem9: TdxLayoutItem;
    edtVDesc: TcxDBCurrencyEdit;
    dxLayoutItem10: TdxLayoutItem;
    edtPOutro: TcxDBCurrencyEdit;
    dxLayoutItem11: TdxLayoutItem;
    edtVOutro: TcxDBCurrencyEdit;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup;
    DS: TDataSource;
    WRCalc: TWRCalculaConfiguracoes;
    libtnFechar: TdxLayoutItem;
    btnFechar: TcxButton;
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    class procedure Abrir(ASender: TWinControl; AWRCalc: TWRCalculaConfiguracoes);
  end;

var
  FrmFrameVendedor: TFrmFrameVendedor;

implementation

Uses wrFuncoes_Office, UnitFuncoes;

{$R *.dfm}

class procedure TFrmFrameVendedor.Abrir(ASender: TWinControl; AWRCalc: TWRCalculaConfiguracoes);
var
  AFrmFrameVendedor: TFrmFrameVendedor;
begin
  AFrmFrameVendedor:= TFrmFrameVendedor.Create(ASender.Owner);
  try
    AFrmFrameVendedor.PopupMode := pmAuto;
    AFrmFrameVendedor.WRCalc    := AWRCalc;
    AFrmFrameVendedor.DS.DataSet:= AFrmFrameVendedor.WRCalc.DBVendaOuCompra;
    AFrmFrameVendedor.DS.AutoEdit:= AFrmFrameVendedor.WRCalc.DSVendaOuCompra.AutoEdit;
    PosicionarControleAbaixoDe(AFrmFrameVendedor, ASender);
    AFrmFrameVendedor.ShowModal;
  finally
    AFrmFrameVendedor.Free;
  end;
end;

procedure TFrmFrameVendedor.btnFecharClick(Sender: TObject);
begin
  Close;
end;

end.
