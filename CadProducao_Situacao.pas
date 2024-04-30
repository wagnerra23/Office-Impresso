unit CadProducao_Situacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CadM, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, Vcl.Menus, cxContainer, cxEdit, dxLayoutControlAdapters, dxLayoutcxEditAdapters, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, fs_iinterpreter, dxUIAdorners, cxClasses, frxClass, frxDBSet, UCHistDataset,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, WREventos, UCBase, dxLayoutLookAndFeels, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls, dxStatusBar, dxLayoutContainer, cxMaskEdit, cxDropDownEdit, cxDBEdit, cxTextEdit,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, cxImageComboBox, cxColorComboBox, cxDBColorComboBox, dxCore, dxColorEdit,
  dxDBColorEdit, cxCheckBox, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  System.Generics.Collections, cxLabel, cxImageList, WRButtonsEditAdd,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TFrmProducao_Situacao = class(TFrmCadM)
    cxDBImageComboBox1: TcxDBImageComboBox;
    dxLayoutItem1: TdxLayoutItem;
    dxDBColorEdit1: TdxDBColorEdit;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem4: TdxLayoutItem;
    chkTem_Finalizar: TcxDBCheckBox;
    cbxProducaoAcao: TcxDBLookupComboBox;
    dxLayoutItem6: TdxLayoutItem;
    cxSelecionaEstilo: TcxDBComboBox;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    edtEvento: TcxDBTextEdit;
    cxImageListTreeList: TcxImageList;
    procedure btnConfirmarClick(Sender: TObject);
    procedure dxLayoutGroup1TabChanged(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private

  public
    { Public declarations }
  end;

var
  FrmProducao_Situacao: TFrmProducao_Situacao;

implementation

{$R *.dfm}

uses
  wrfuncoes, frFrameHistorico;

procedure TFrmProducao_Situacao.btnConfirmarClick(Sender: TObject);
begin
//  SalvaCCS('PRODUCAO', 'SITUACAO', Cadstro.FieldByName('Codigo').AsSinteger, Cadstro.FieldByName('DESCRICAO').AsSString, Cadstro.FieldByName('COR').AsSinteger );
  inherited;
end;

procedure TFrmProducao_Situacao.dxLayoutGroup1TabChanged(Sender: TObject);
begin
  inherited;
  if GrupoLogAlteracoes.ActuallyVisible then
    TFrameHistorico.CarregaFrame(FFrameHistorico, PnlFrameHistorico, UCHist_Cadastro, nil );
end;

procedure TFrmProducao_Situacao.FormActivate(Sender: TObject);
begin
  inherited;
  PreencheLookupAcoesProducao(cbxProducaoAcao.Properties);

end;

initialization
  RegisterClass(TFrmProducao_Situacao);

end.
