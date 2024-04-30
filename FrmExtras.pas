unit FrmExtras;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, cxMaskEdit, cxDropDownEdit, cxDBEdit, dxLayoutContainer, cxTextEdit,
  cxCurrencyEdit, cxClasses, dxLayoutControl, Data.DB, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  dxLayoutLookAndFeels, cxLabel, uWRCalculaConfiguracoes;

type
  TFormExtras = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    LiedtNf_vICMSST: TdxLayoutItem;
    edtNf_vICMSST: TcxDBCurrencyEdit;
    LiedtCalc_VCompra_Extra: TdxLayoutItem;
    edtCalc_VCompra_Extra: TcxDBCurrencyEdit;
    DS: TDataSource;
    cxButton1: TcxButton;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    dxLayoutSkinLookAndFeelBranco: TdxLayoutSkinLookAndFeel;
    dxLayoutSkinLookAndFeelBranco2: TdxLayoutSkinLookAndFeel;
    cxLabel1: TcxLabel;
    dxLayoutItem2: TdxLayoutItem;
    WRCalc: TWRCalculaConfiguracoes;
    LiedtNF_IPI_VIPI: TdxLayoutItem;
    edtNF_IPI_VIPI: TcxDBCurrencyEdit;
    LiedtNF_VFrete: TdxLayoutItem;
    edtNF_VFrete: TcxDBCurrencyEdit;
    LiedtVOutro: TdxLayoutItem;
    edtVOutro: TcxDBCurrencyEdit;
    LiedtVDesc: TdxLayoutItem;
    edtVDesc: TcxDBCurrencyEdit;
    LiedtVDesc_Manual: TdxLayoutItem;
    edtVDesc_Manual: TcxDBCurrencyEdit;
    LiedtVOutro_Manual: TdxLayoutItem;
    edtVOutro_Manual: TcxDBCurrencyEdit;
    dxLayoutItem3: TdxLayoutItem;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    DataSource1: TDataSource;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxLabel2: TcxLabel;
    LiLblTextoExclusivoCompra: TdxLayoutItem;
    Rateados: TdxLayoutGroup;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    cxLabel3: TcxLabel;
    dxLayoutItem5: TdxLayoutItem;
    cxLabel4: TcxLabel;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    cxLabel5: TcxLabel;
    dxLayoutItem8: TdxLayoutItem;
    cxLabel6: TcxLabel;
    LiedtVFreteCTe: TdxLayoutItem;
    edtVFreteCTe: TcxDBCurrencyEdit;
    LiedtPDifal: TdxLayoutItem;
    edtPDifal: TcxDBCurrencyEdit;
    dxLayoutItem9: TdxLayoutItem;
    cxLabel7: TcxLabel;
    LiedtVDifal: TdxLayoutItem;
    edtVDifal: TcxDBCurrencyEdit;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    procedure cxButton1Click(Sender: TObject);
    procedure edtNF_IPI_VIPIPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure edtVDescPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure edtVOutroPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure edtNF_VFretePropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure edtNf_vICMSSTPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure edtVDesc_ManualPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure edtVOutro_ManualPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure edtVDifalPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure edtVFreteCTePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure edtPDifalPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    Class procedure Abrir(ASender: TWinControl; AWRCalc: TWRCalculaConfiguracoes; ADataSet : TDataSet);
  end;

var
  FormExtras: TFormExtras;

implementation

Uses wrFuncoes_Office, UnitFuncoes;

{$R *.dfm}

{ TForm1 }

class procedure TFormExtras.Abrir(ASender: TWinControl; AWRCalc: TWRCalculaConfiguracoes; ADataSet : TDataSet);
var
  AFormExtras: TFormExtras;
begin
  AFormExtras:= TFormExtras.Create(ASender.Owner);
  try
    AFormExtras.PopupMode := pmAuto;
    AFormExtras.WRCalc    := AWRCalc;
    AFormExtras.DS.DataSet:= ADataSet;
    AFormExtras.DS.AutoEdit:= AFormExtras.WRCalc.DSProduto.AutoEdit;

    // Estes que estão fora do IF sempre vão ser disabled - Não pode alterar o que é rateado.
    AFormExtras.LiedtNF_VFrete.Enabled            := False;
    AFormExtras.LiedtVOutro.Enabled               := False;
    AFormExtras.LiedtVDesc.Enabled                := False;

    if (AFormExtras.WRCalc.TipoCalculo <> tcCompra) then
    begin
      AFormExtras.LiedtNf_vICMSST.Enabled           := False;
      AFormExtras.dxLayoutItem3.Enabled             := False;
      AFormExtras.LiedtNF_IPI_VIPI.Enabled          := False;
      AFormExtras.dxLayoutItem4.Enabled             := False;
      AFormExtras.LiedtVDesc_Manual.Enabled         := False;
      AFormExtras.LiedtVOutro_Manual.Enabled        := False;
      AFormExtras.LiedtVOutro_Manual.Enabled        := False;
      AFormExtras.LiedtCalc_VCompra_Extra.Enabled   := False;
      AFormExtras.LiedtVFreteCTe.Enabled            := False;
      AFormExtras.LiedtVDifal.Enabled               := False;
      AFormExtras.LiedtPDifal.Enabled               := False;
      AFormExtras.LiLblTextoExclusivoCompra.Visible := True;
    end;

    PosicionarControleAbaixoDe(AFormExtras, ASender);
    AFormExtras.ShowModal;
  finally
    AFormExtras.Free;
  end;
end;

procedure TFormExtras.cxButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormExtras.cxButton2Click(Sender: TObject);
begin
  DataSource1.DataSet:= WRCalc.DBProdutoMemoria;
  WRCalc.DBProdutoMemoria.Locate('Codigo', Ds.DataSet.fieldByName('codigo').AsString, []);
end;

procedure TFormExtras.cxButton3Click(Sender: TObject);
begin
  DataSource1.DataSet:= WRCalc.DBProdutoMemoria;
  WRCalc.DBProdutoMemoria.Refresh;
end;

procedure TFormExtras.edtNF_IPI_VIPIPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  WRCalc.ValidaCampoMedidas('NF_IPI_VIPI', DisplayValue);
end;

procedure TFormExtras.edtNF_VFretePropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  WRCalc.ValidaCampoMedidas('NF_VFRETE',DisplayValue);
end;

procedure TFormExtras.edtNf_vICMSSTPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  WRCalc.ValidaCampoMedidas('NF_VICMSST',DisplayValue);
end;

procedure TFormExtras.edtPDifalPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  WRCalc.ValidaCampoMedidas('CALC_PDIFAL',DisplayValue);
end;

procedure TFormExtras.edtVDescPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  WRCalc.ValidaCampoMedidas('VDESC',DisplayValue);
end;

procedure TFormExtras.edtVDesc_ManualPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  WRCalc.ValidaCampoMedidas('CALC_VDESC_MANUAL',DisplayValue);
end;

procedure TFormExtras.edtVDifalPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  WRCalc.ValidaCampoMedidas('CALC_PDIFAL',100*DisplayValue/WRCalc.DBProdutoMemoria.FieldByName('TOTAL_COMPRA').AsFloat);
end;

procedure TFormExtras.edtVFreteCTePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  WRCalc.ValidaCampoMedidas('CALC_VFRETE_CTE',DisplayValue);
end;

procedure TFormExtras.edtVOutroPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  WRCalc.ValidaCampoMedidas('VOUTRO',DisplayValue);
end;

procedure TFormExtras.edtVOutro_ManualPropertiesValidate(Sender: TObject; var DisplayValue: Variant;
  var ErrorText: TCaption; var Error: Boolean);
begin
  WRCalc.ValidaCampoMedidas('CALC_VOUTRO_MANUAL',DisplayValue);
end;

end.
