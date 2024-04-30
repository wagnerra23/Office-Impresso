unit CadTipo_Impressao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, CadM, Menus, DB, ImgList,
  IBX.IBCustomDataSet, ExtCtrls, cxGridDBTableView, StdCtrls, IBX.IBQuery, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsdxStatusBarPainter, dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxContainer, dxLayoutControlAdapters, dxLayoutContainer,
  dxLayoutcxEditAdapters, cxGridCustomTableView, cxGridTableView, UCBase, dxLayoutLookAndFeels, IBX.IBStoredProc,
  IBX.IBDatabase, cxTextEdit, cxDBEdit, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxDBNavigator, cxButtons,
  dxLayoutControl, dxStatusBar, System.ImageList, cxDataControllerConditionalFormattingRulesManagerDialog, WREventos,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  frxClass, frxDBSet, UCHistDataset, cxMaskEdit, cxDropDownEdit,
  System.Generics.Collections, cxLabel, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxUIAdorners, WRButtonsEditAdd, dxDateRanges, dxScrollbarAnnotations, cxCurrencyEdit, cxCalendar, cxCheckBox, cxButtonEdit;

type
  TFrmTipo_Impressao = class(TFrmCadM)
    CadastroCODIGO: TIntegerField;
    CadastroDESCRICAO: TStringField;
    CadastroDT_ALTERACAO: TSQLTimeStampField;
    CadastroATIVO: TStringField;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    edtRecursoÎPessoas: TcxButtonEdit;
    dxLayoutItem3: TdxLayoutItem;
    btnAdicionarRecurso: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    btnRemoverRecurso: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    GridRecursos: TcxGrid;
    GridRecursosView: TcxGridDBTableView;
    GridRecursosViewRAZAOSOCIAL: TcxGridDBColumn;
    GridRecursosLevel1: TcxGridLevel;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutItem8: TdxLayoutItem;
    cxDBButtonEdit1: TcxDBButtonEdit;
    dxLayoutItem9: TdxLayoutItem;
    cxLabel1: TcxLabel;
    dxLayoutItem10: TdxLayoutItem;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutGroup3: TdxLayoutGroup;
    cxButton1: TcxButton;
    dxLayoutItem11: TdxLayoutItem;
    cxTextEdit1: TcxTextEdit;
    dxLayoutItem12: TdxLayoutItem;
    cxCurrencyEdit1: TcxCurrencyEdit;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    cxComboBox1: TcxComboBox;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutItem16: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    dxLayoutItem17: TdxLayoutItem;
    cxDBTextEdit5: TcxDBTextEdit;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem18: TdxLayoutItem;
    cxDBButtonEdit2: TcxDBButtonEdit;
    dxLayoutItem19: TdxLayoutItem;
    cxLabel2: TcxLabel;
    dxLayoutGroup5: TdxLayoutGroup;
    procedure GrupoLogAlteracoesTabChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses frFrameHistorico;

procedure TFrmTipo_Impressao.GrupoLogAlteracoesTabChanged(Sender: TObject);
begin
  inherited;
  if GrupoLogAlteracoes.ActuallyVisible then
    TFrameHistorico.CarregaFrame(FFrameHistorico, PnlFrameHistorico, UCHist_Cadastro, nil );
end;

initialization
  RegisterClass(TFrmTipo_Impressao);
end.
