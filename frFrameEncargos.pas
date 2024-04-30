unit frFrameEncargos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, cxMaskEdit, cxDropDownEdit, cxDBEdit, dxLayoutContainer, cxTextEdit,
  cxCurrencyEdit, cxClasses, dxLayoutControl, Data.DB, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  dxLayoutLookAndFeels, cxLabel, uWRCalculaConfiguracoes, math, wrFuncoes;

type
  TFrame_Encargos = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    DS: TDataSource;
    cxButton1: TcxButton;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    dxLayoutSkinLookAndFeelBranco: TdxLayoutSkinLookAndFeel;
    dxLayoutSkinLookAndFeelBranco2: TdxLayoutSkinLookAndFeel;
    cxLabel1: TcxLabel;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    Label8: TLabel;
    lblVSaldoSemMateriais: TLabel;
    lblPCustoMateriais: TLabel;
    dxLayoutItem3: TdxLayoutItem;
    cxLabel2: TcxLabel;
    dxLayoutItem4: TdxLayoutItem;
    cxLabel3: TcxLabel;
    edtDecimoTerceiroAnual: TcxDBCurrencyEdit;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    edtFeriasAnual: TcxDBCurrencyEdit;
    dxLayoutItem7: TdxLayoutItem;
    edtBeneficiosAnual: TcxDBCurrencyEdit;
    dxLayoutItem8: TdxLayoutItem;
    edtOutrosEncargosAnual: TcxDBCurrencyEdit;
    dxLayoutItem9: TdxLayoutItem;
    edtDecimoTerceiroMensal: TcxDBCurrencyEdit;
    dxLayoutItem10: TdxLayoutItem;
    edtFeriasMensal: TcxDBCurrencyEdit;
    dxLayoutItem11: TdxLayoutItem;
    edtBeneficiosMensal: TcxDBCurrencyEdit;
    dxLayoutItem12: TdxLayoutItem;
    edtOutrosEncargosMensal: TcxDBCurrencyEdit;
    dxLayoutItem13: TdxLayoutItem;
    cxLabel4: TcxLabel;
    dxLayoutItem14: TdxLayoutItem;
    edtTotalEncargos: TcxDBCurrencyEdit;
    dxLayoutItem15: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    procedure cxButton1Click(Sender: TObject);
    procedure edtValoresValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    class procedure Abrir(ASender: TWinControl; ADSPessoa: TDataSource);
  end;

var
  Frame_Encargos: TFrame_Encargos;
  ABaseCalculoValor: Double;
  AAbriu: Boolean;

implementation

Uses wrFuncoes_Office, UnitFuncoes, Frame_CadSalario;

{$R *.dfm}

{ TForm1 }

class procedure TFrame_Encargos.Abrir(ASender: TWinControl; ADSPessoa: TDataSource);
var
  AFormMarkup: TFrame_Encargos;
  APodeAlterar: Boolean;
begin
  AAbriu := False;
  AFormMarkup:= TFrame_Encargos.Create(ASender.Owner);
  try
    AFormMarkup.PopupMode := pmAuto;
    AFormMarkup.DS.DataSet := ADSPessoa.DataSet;
    PosicionarControleAbaixoDe(AFormMarkup, ASender);

    AFormMarkup.ShowModal;
  finally
    AFormMarkup.Free;
  end;
end;

procedure TFrame_Encargos.cxButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TFrame_Encargos.edtValoresValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  DS.DataSet.FieldByName(TcxDBCurrencyEdit(Sender).DataBinding.DataField).AsFloat := DisplayValue;
  if (Sender = edtDecimoTerceiroAnual) or 
     (Sender = edtFeriasAnual) or 
     (Sender = edtBeneficiosAnual) or 
     (Sender = edtOutrosEncargosAnual) then
  begin
    CalculaValores(DS.DataSet, 'ano');
  end
  else
    CalculaValores(DS.DataSet, 'mês'); 

  Perform(WM_NEXTDLGCTL, 0, 0);
end;

end.
