unit CadProducao_Acao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CadM, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, Vcl.Menus, cxContainer, cxEdit, dxLayoutControlAdapters, dxLayoutcxEditAdapters, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, fs_iinterpreter, dxUIAdorners, cxClasses, frxClass, frxDBSet, UCHistDataset,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, WREventos, UCBase, dxLayoutLookAndFeels, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls, dxStatusBar, dxLayoutContainer, cxMaskEdit, cxDropDownEdit, cxDBEdit, cxTextEdit,
  Vcl.StdCtrls, cxButtons, dxLayoutControl, System.Generics.Collections, cxLabel,
  cxCheckBox, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White;

type
  TFrmProducao_Acao = class(TFrmCadM)
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    chkTem_Trabalhando: TcxDBCheckBox;
    dxLayoutItem2: TdxLayoutItem;
    chkTem_Finalizar: TcxDBCheckBox;
    dxLayoutItem3: TdxLayoutItem;
    chkTem_Arquivar: TcxDBCheckBox;
    dxLayoutItem4: TdxLayoutItem;
    chkTem_Observacao: TcxDBCheckBox;
    dxLayoutItem5: TdxLayoutItem;
    cxbUsuario: TcxDBLookupComboBox;
    dxLayoutItem7: TdxLayoutItem;
    cxDBCheckBox2: TcxDBCheckBox;
    dxLayoutItem8: TdxLayoutItem;
    cxDBCheckBox3: TcxDBCheckBox;
    procedure dxLayoutGroup1TabChanged(Sender: TObject);
    procedure WREventosCadastroConfiguracao_Acoes(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProducao_Acao: TFrmProducao_Acao;

implementation

{$R *.dfm}

uses
  wrfuncoes, frFrameHistorico;
procedure TFrmProducao_Acao.dxLayoutGroup1TabChanged(Sender: TObject);
begin
  inherited;
  if GrupoLogAlteracoes.ActuallyVisible then
    TFrameHistorico.CarregaFrame(FFrameHistorico, PnlFrameHistorico, UCHist_Cadastro, nil );
end;

procedure TFrmProducao_Acao.FormCreate(Sender: TObject);
begin
  inherited;
  PreencheLookupUsuarios(cxbUsuario.Properties);
end;

procedure TFrmProducao_Acao.WREventosCadastroConfiguracao_Acoes(
  Sender: TObject);
begin
  inherited;
  with WREventosCadastro do
  begin
    with AddForm(Self) do
    begin
      AddValorInicial(FNomeTabela , 'TEM_ARQUIVADO', chkTem_Arquivar, 'N');
      AddValorInicial(FNomeTabela , 'TEM_TRABALHANDO', chkTem_Trabalhando, 'N');
    end;
  end;
end;

initialization
  RegisterClass(TFrmProducao_Acao);

end.
