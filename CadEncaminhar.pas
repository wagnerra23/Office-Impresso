unit CadEncaminhar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls,
  Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxContainer, cxEdit, dxLayoutContainer, cxClasses, cxTextEdit,
  cxMaskEdit, cxButtonEdit, Vcl.StdCtrls, cxButtons, cxLabel, dxLayoutControl, uControleWR, IBX.IBDatabase,
  Generics.Collections, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB,
  FireDAC.Comp.DataSet, IBX.IBCustomDataSet, IBX.IBQuery, cxMemo,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxLayoutLookAndFeels, UCBase, uWRFormataCamposDataSet, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, cxCheckBox, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxCalendar;

type
  TFrmEncaminhar = class(TForm)
    dxLayoutControl1: TdxLayoutControl;
    BtnConfirmar: TcxButton;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    LiBtnConfirmar: TdxLayoutItem;
    GrupoDestino: TdxLayoutGroup;
    LblProduto: TcxLabel;
    LiLblProduto: TdxLayoutItem;
    LiBtnCancelar: TdxLayoutItem;
    BtnCancelar: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    MemoObservacao: TcxMemo;
    LiMemoObservacao: TdxLayoutItem;
    EdtTempoEstimado: TcxButtonEdit;
    LiEdtTempoEstimado: TdxLayoutItem;
    EdtDescricao: TcxTextEdit;
    LiEdtDescricao: TdxLayoutItem;
    GrupoProduto: TdxLayoutGroup;
    cbxSituacao: TcxLookupComboBox;
    LicbxSituacao: TdxLayoutItem;
    LicxbUsuario: TdxLayoutItem;
    cxbUsuario: TcxLookupComboBox;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    cxLabel1: TcxLabel;
    LiAssunto: TdxLayoutItem;
    LblAssunto: TcxLabel;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    LookBrancoWeb: TdxLayoutWebLookAndFeel;
    dxLayoutSkinLookAndFeelData: TdxLayoutSkinLookAndFeel;
    cxEditStyleController1: TcxEditStyleController;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    LicbxEstagio: TdxLayoutItem;
    cbxEstagio: TcxLookupComboBox;
    LicbxProducao_Motivo: TdxLayoutItem;
    cbxProducao_Motivo: TcxLookupComboBox;
    dxLayoutItem2: TdxLayoutItem;
    cbxFuncionario: TcxLookupComboBox;
    UCControls1: TUCControls;
    lilblEquipePadrao: TdxLayoutItem;
    lblEquipePadrao: TcxLabel;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    lblPermissaoEquipe: TLabel;
    lilblPermissaoEquipe: TdxLayoutItem;
    cbxCodCentro_Trabalho: TcxLookupComboBox;
    licbxCodCentro_Trabalho: TdxLayoutItem;
    WRFormataCamposDataSets1: TWRFormataCamposDataSets;
    chkPrevisao: TcxCheckBox;
    lichkPrevisao: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutItem3: TdxLayoutItem;
    cbxCodCentro_TrabalhoPrevisao: TcxLookupComboBox;
    edtDataEquipe: TcxDateEdit;
    dxLayoutItem4: TdxLayoutItem;
    GrupoPrevisao: TdxLayoutGroup;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure EdtTempoEstimadoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure cbxSituacaoPropertiesEditValueChanged(Sender: TObject);
    procedure cbxCodCentro_TrabalhoPropertiesEditValueChanged(Sender: TObject);
    procedure WRFormataCamposDataSets1CarregaDataSets(Sender: TObject);
    procedure chkPrevisaoPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    FControleWR: TControleWR;
    FInformarDescricao: Boolean;

  protected
  public

//    class function PerguntaCodCentroTrabalho(ADescricaoProduto: string;
//                                          var ACodCentroTrabalho, ATempoEmMinutos: Integer;
//                                              Var AObservacao, ADescricao: string;
//                                              AInformarDescricao: Boolean): Boolean;
  end;

implementation

{$R *.dfm}

uses
  UnitFuncoes, EntradaTempo, System.Math, wrConversao, wrFuncoes, wrPreencheLookup;

//
//class function TFrmEncaminhar.PerguntaCodCentroTrabalho(ADescricaoProduto: string; var ACodCentroTrabalho,
//  ATempoEmMinutos: Integer; Var AObservacao, ADescricao: string; AInformarDescricao: Boolean): Boolean;
//var
//  AForm: TFrmEncaminhar;
//begin
//  Result := False;
//  AForm := TFrmEncaminhar.Create(nil);
//  try
//    AForm.LblAssunto.Caption   := '';
//    AForm.LblProduto.Caption   := ADescricaoProduto;
//    AForm.FInformarDescricao   := AInformarDescricao;
//    AForm.MemoObservacao.Lines.Text := AObservacao;
//
//    if ACodCentroTrabalho <> 0 then
//      AForm.edtCentro_TrabalhoÎCentro_Trabalho.Text := IntToStr(ACodCentroTrabalho);
//    repeat
//      if AForm.ShowModal <> mrOk then
//        Abort;
//      ACodCentroTrabalho := StrToIntDef(AForm.edtCentro_TrabalhoÎCentro_Trabalho.Text, 0);
//      if (ACodCentroTrabalho = 0) or (AForm.lblCentro_TrabalhoÎCentro_TrabalhoÎDESCRICAO.Caption = '') then
//      begin
//        ShowMessageWR('Centro de Trabalho inválido');
//        AForm.edtCentro_TrabalhoÎCentro_Trabalho.SetFocusWR;
//        ACodCentroTrabalho := 0;
//        Continue;
//      end;
////      AForm.EdtTempoEstimado.Text := MinutosToHoras(Max(ATempoEmMinutos, 0) );
//      AObservacao     := AForm.MemoObservacao.Lines.Text;
//      ADescricao      := AForm.EdtDescricao.Text;
////    FTempoEmMinutos        := ;
////    LiEdtDescricao.Visible := FInformarDescricao;  Pela venda eu acho
////    GrupoProduto.Visible   := not FInformarDescricao;
//      Result := True;
//      Break;
//    until False;
//  finally
//    AForm.Free;
//  end;
//end;

procedure TFrmEncaminhar.cbxCodCentro_TrabalhoPropertiesEditValueChanged(
  Sender: TObject);
var
 QuerXCamposAdicionais: TFDQuery;
begin
  if cbxCodCentro_Trabalho.EditingValue <> null then
  begin
    PreencheLookupProducao_Estagio(cbxEstagio.Properties, cbxCodCentro_Trabalho.EditingValue);
    PreencheLookUpFuncionariosEquipe(cbxFuncionario.Properties, cbxCodCentro_Trabalho.EditingValue);
   // PreencheLookUpUsuarioEquipe(cxbUsuario.Properties, cbxCodCentro_Trabalho.EditingValue);
  end
  else
  begin
    PreencheLookupProducao_Estagio(cbxEstagio.Properties);
    PreencheLookUpFuncionariosEquipe(cbxFuncionario.Properties);
   // PreencheLookUpUsuarioEquipe(cxbUsuario.Properties);
  end;


  //ATIVAR QUANDO TROCAR PARA PESSOAS

  //QuerXCamposAdicionais := GeraFDQuery;
  //Try
//    QuerXCamposAdicionais.SQL.Text := ' select U.codigo as CODUSUARIO, c.MENSAGEM_HISTORICO, c.TEM_TRAVA_CANCELAR, c.TEM_TRAVA_FINANCEIRO, c.HORAS_DIARIA '+
//                                      ' FROM centro_trabalho c left join USUARIO U ON u.codfuncionario = c.PESSOA_RESPONSAVEL_CODIGO WHERE (C.CODIGO= :Codigo)';
//    QuerXCamposAdicionais.ParamByName('Codigo').Value := cbxCodCentro_Trabalho.EditingValue;
//    QuerXCamposAdicionais.Open;

//    CODUSUARIO
//    MENSAGEM_HISTORICO
//    TEM_TRAVA_CANCELAR
//    TEM_TRAVA_FINANCEIRO
//    HORAS_DIARIA
  //Finally
  //  QuerXCamposAdicionais.Free;
  //End;
end;

procedure TFrmEncaminhar.cbxSituacaoPropertiesEditValueChanged(Sender: TObject);
//var
// QuerXCamposAdicionais: TFDQuery;
begin
 (* QuerXCamposAdicionais := GeraFDQuery;
  Try
//      QuerXCamposAdicionais.SQL.Text := '  ';  // Aqui deve copiar os campos dependentes, Triger Porraço,
    QuerXCamposAdicionais.SQL.Text := ' select TEM_TRABALHANDO, TEM_ARQUIVADO, CODUSUARIO, TEM_OBSERVACAO, TEM_FINALIZAR, MENSAGEM_HISTORICO '+
                                      ' from PRODUCAO_SITUACAO where Descricao = :Codigo';
    QuerXCamposAdicionais.ParamByName('Codigo').Value := cbxSituacao.EditingValue;
    QuerXCamposAdicionais.Open;
//    CODUSUARIO
//    MENSAGEM_HISTORICO
//    TEM_TRAVA_CANCELAR
//    TEM_TRAVA_FINANCEIRO
//    HORAS_DIARIA
  Finally
    QuerXCamposAdicionais.Free;
  End;       *)
//    if AFieldName = 'SITUACAO' then
end;

procedure TFrmEncaminhar.chkPrevisaoPropertiesEditValueChanged(Sender: TObject);
begin
  GrupoPrevisao.Visible := chkprevisao.checked;
end;

procedure TFrmEncaminhar.EdtTempoEstimadoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  ATempo: Integer;
begin
//  ATempo := EdtTempoEstimado.Text;// FTempoEmMinutos;
  if TFrmEntradaTempo.GetTempo(ATempo) then
    EdtTempoEstimado.Text := MinutosToHoras( ATempo);
end;

procedure TFrmEncaminhar.FormCreate(Sender: TObject);
begin
  FControleWR := TControleWR.Create;
  FControleWR.Inicializar(Self);
  EdtTempoEstimado.Text := '0'; //Inicializa o Edit mostrando o tempo zerado
//  PreencheLookupUsuarios(cxbUsuario.Properties);    //Esta no Change do EQUIPE
  PreencheLookupProducao_Situacao(cbxSituacao.Properties);
//  PreencheLookupProducao_Estagio(cbxEstagio.Properties);  //Esta no Change do EQUIPE
end;

procedure TFrmEncaminhar.FormDestroy(Sender: TObject);
begin
  FControleWR.Free;
end;

procedure TFrmEncaminhar.FormShow(Sender: TObject);
begin
  if FInformarDescricao then
    EdtDescricao.SetFocusWR
  else
  begin
    if cbxCodCentro_Trabalho.EditingValue = 0 then
      cbxCodCentro_Trabalho.SetFocusWR
    else
      MemoObservacao.SetFocusWR;
    UCControls1.ApplyRights;
    if (UCControls1.GetComponentRight(lblPermissaoEquipe).Enabled) then
    begin
      lilblEquipePadrao.Visible := False;
      cbxCodCentro_Trabalho.Enabled := True;
    end
    else
//    if cbxCodCentro_Trabalho.Enabled = False then
    begin
      lilblEquipePadrao.Visible := True;
      cbxCodCentro_Trabalho.Enabled := False;
    end;

  end;
end;

procedure TFrmEncaminhar.WRFormataCamposDataSets1CarregaDataSets(
  Sender: TObject);
begin
  PreencheLookupCentro_Trabalho(cbxCodCentro_Trabalho.Properties);
  PreencheLookupCentro_Trabalho(cbxCodCentro_TrabalhoPrevisao.Properties);
end;

end.
