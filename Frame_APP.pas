unit Frame_APP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FrFrameMestre, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxLayoutControlAdapters,
  uWRFormataCamposDataSet, uWRFrameEventos, Data.DB, cxClasses, dxLayoutLookAndFeels, UCBase, System.ImageList, Vcl.ImgList, dxLayoutContainer, Vcl.StdCtrls,
  cxButtons, dxLayoutControl, dxLayoutcxEditAdapters, cxContainer, cxEdit, cxImage, cxLabel, dxCustomTileControl, dxTileControl,
  Frame_Painel, Vcl.OleCtrls, SHDocVw, MSHTML, ActiveX, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White;

type
  TFrameApp = class(TPainel_Frame)
    dxLayoutControl1: TdxLayoutControl;
    btnMenuConfig: TcxButton;
    lblNomeApp: TcxLabel;
    lblsubtituloApp: TcxLabel;
    lblDescricaoApp: TcxLabel;
    tcInstalarDesinstalar: TdxTileControl;
    tcInstalarDesinstalarGroup1: TdxTileControlGroup;
    tcInstalarModulo: TdxTileControlItem;
    tcDesinstalarModulo: TdxTileControlItem;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    liTitulo: TdxLayoutItem;
    liSubTitulo: TdxLayoutItem;
    liDescricaoGeral: TdxLayoutItem;
    liTcControlIntalar: TdxLayoutItem;
    ImgListMenuConfig: TImageList;
    MenuConfig: TPopupMenu;
    Layout1: TMenuItem;
    EditarLayout1: TMenuItem;
    SalvarLayoutAtual1: TMenuItem;
    Padro1: TMenuItem;
    N1: TMenuItem;
    Personalisados1: TMenuItem;
    NovoPerfil1: TMenuItem;
    SalvarComoCpia1: TMenuItem;
    ExcluirLayout1: TMenuItem;
    N2: TMenuItem;
    UCControls1: TUCControls;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    DS: TDataSource;
    wrFrameEventos: TwrFrameEventos;
    WRFormataCamposDataSets: TWRFormataCamposDataSets;
    dxTileControl1: TdxTileControl;
    dxLayoutItem8: TdxLayoutItem;
    dxTileControl1Group2: TdxTileControlGroup;
    tiModuloInstalar: TdxTileControlItem;
    GrupoTopo_Descricao: TdxLayoutGroup;
    GrupoTopo: TdxLayoutGroup;
    WebBrowser1: TWebBrowser;
    procedure tcInstalarModuloClick(Sender: TdxTileControlItem);
    procedure tcDesinstalarModuloClick(Sender: TdxTileControlItem);
    procedure FrameEnter(Sender: TObject);
    procedure WebBrowser1DocumentComplete(ASender: TObject; const pDisp: IDispatch; const URL: OleVariant);
  private




    { Private declarations }
  public
    ATag :Integer;
    { Public declarations }
  end;

var
  FrameApp: TFrameApp;


implementation

{$R *.dfm}

uses Principal, wrFuncoes, unitFuncoes, wrPreencheLookup, StrUtils, DateUtils, wrForms, wrFuncoes_Office,
  wrConstantes, Math, cadMeta, Base, Classes.APP, Tag.APP, Tag.Form;


procedure TFrameApp.FrameEnter(Sender: TObject);
begin
  inherited;
  tiModuloInstalar.Style.BorderColor       := tcInstalarDesinstalar.Style.BorderColor;
  tiModuloInstalar.Style.GradientBeginColor:= tcInstalarDesinstalar.Style.GradientBeginColor;
  tiModuloInstalar.Style.GradientEndColor  := tcInstalarDesinstalar.Style.GradientEndColor;

  tiModuloInstalar.Tag                       := Self.Tag;
  tcInstalarModulo.Visible                   := Not AWR_APP[Self.Tag].Ativo;
  tcDesinstalarModulo.Visible                := AWR_APP[Self.Tag].Ativo;
  lblNomeApp.Caption                         := AWR_APP[Self.Tag].Nome;
  lblDescricaoApp.Caption                    := AWR_APP[Self.Tag].Resumo;
  tiModuloInstalar.Glyph.ImageIndex          := AWR_APP[Self.Tag].ImageIndex;
  WebBrowser1.Navigate(AWR_APP[Self.Tag].link);
end;

procedure TFrameApp.tcDesinstalarModuloClick(
  Sender: TdxTileControlItem);
begin
  inherited;
  TModuloGerenciador.DesinstalaModulo(tiModuloInstalar.Tag, Empresa.FieldByName('CNPJCPF').AsString);
  ShowMessage('Módulo Desinstalado, reinicie o sistema para que a modificação entre em vigor');
  AWR_APP[Self.Tag].Ativo         := Not AWR_APP[Self.Tag].Ativo;
  tcInstalarModulo.Visible     := Not AWR_APP[Self.Tag].Ativo;
  tcDesinstalarModulo.Visible  := AWR_APP[Self.Tag].Ativo;
end;

procedure TFrameApp.tcInstalarModuloClick(Sender: TdxTileControlItem);
begin
  inherited;
  TModuloGerenciador.InstalaModulo(tiModuloInstalar.Tag, Empresa.FieldByName('CNPJCPF').AsString);
  ShowMessage('Módulo Instalado, reinicie o sistema para poder utilizar');
  AWR_APP[Self.Tag].Ativo         := Not AWR_APP[Self.Tag].Ativo;
  tcInstalarModulo.Visible     := Not AWR_APP[Self.Tag].Ativo;
  tcDesinstalarModulo.Visible  := AWR_APP[Self.Tag].Ativo;
end;

procedure TFrameApp.WebBrowser1DocumentComplete(ASender: TObject; const pDisp: IDispatch; const URL: OleVariant);
var
  ElementCollection: IHTMLElementCollection;
  Element: IHTMLElement;
  i:Integer;
begin
  if URL = '' then exit;

  if pDisp = TWebBrowser(ASender).ControlInterface then
  begin

    ElementCollection := (WebBrowser1.Document as IHTMLDocument3).getElementsByTagName('nav');
    if Assigned(ElementCollection) then
    begin
      for i := 0 to ElementCollection.length -1 do
      begin
        Element:=  ElementCollection.item(i,0) as IHTMLElement;
        if Assigned(Element) then
          Element.innerText:='';
      end;
    end;
    ElementCollection := (WebBrowser1.Document as IHTMLDocument3).getElementsByTagName('footer');
    if Assigned(ElementCollection) then
    begin
      for i := 0 to ElementCollection.length -1 do
      begin
        Element:=  ElementCollection.item(i,0) as IHTMLElement;
        if Assigned(Element) then
          Element.innerText:='';
      end;
    end;
  end;
end;

initialization
  RegisterClass(TFrameApp);
  RegisterFramePainel(Tag_APP, TFrameApp);

end.
