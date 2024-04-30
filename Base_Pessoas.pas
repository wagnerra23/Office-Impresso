unit Base_Pessoas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Base, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxCustomTileControl, cxClasses, dxTileControl,
  dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  cxContainer, cxEdit, dxGDIPlusClasses, cxImage;

type
  TFrmPessoas = class(TFrmBase)
    tiOImpresso: TdxTileControlItem;
    tiFuncionario: TdxTileControlItem;
    tcBaseItem3: TdxTileControlItem;
    tiFornecedores: TdxTileControlItem;
    tiRepresentante: TdxTileControlItem;
    tiAssociado: TdxTileControlItem;
    procedure FormHide(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPessoas: TFrmPessoas;

implementation

{$R *.dfm}

Uses UnitFuncoes, wrFuncoes, Frame_Cad, Frame_Con, Principal, Tag.APP, Tag.Form;

procedure TFrmPessoas.FormCreate(Sender: TObject);
begin
  inherited;
//  tiBasePadrao.Visible  :=AAPP[TagAPP_Financeiro].Ativo;               // Sempre Visivel
//  tiFornecedores.Visible  :=AAPP[TagAPP_Integracao_OImpresso].Ativo;   // Sempre Visivel
//  tiRepresentante.Visible :=AAPP[TagAPP_Integracao_OImpresso].Ativo;   // Sempre Visivel

  tiAssociado.Visible     :=AWR_APP[TagAPP_Associacao].Ativo;
  tiFuncionario.Visible   :=AWR_APP[TagAPP_RH_Funcionarios].Ativo;
  tiOImpresso.Visible     :=AWR_APP[TagAPP_Integracao_OImpresso].Ativo;
end;

procedure TFrmPessoas.FormHide(Sender: TObject);
begin
  inherited;
 { if Assigned(FrameCadastro) and (FrameCadastro is TFrmCad_Frame) then
  begin
    with FrameCadastro do
    begin
      Codigo := PessoaCodigoMontaPadrao(Cadastro);
    end;
  end;
  if Assigned(FrameConsulta) and (FrameConsulta is TConsu_Frame) then
  begin
    with FrameConsulta do
    begin
      Codigo := PessoaCodigoMontaPadrao(Consulta);
    end;
  end;  }
end;

initialization
  RegisterClass(TFrmPessoas);
  RegisterBase_MidChild(Tag_Pessoas, TFrmPessoas);

end.
