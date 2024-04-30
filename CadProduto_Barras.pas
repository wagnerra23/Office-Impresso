unit CadProduto_Barras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, CadMestre, DB,
  IBX.IBCustomDataSet, Buttons, DBGrids, IBX.IBQuery, IBX.IBDatabase, ExtCtrls, ComCtrls, StdCtrls, DBCtrls,
  cxCurrencyEdit, cxButtonEdit, Menus, ACBrETQ, ExtDlgs, RLReport, Spin, Grids, Mask, UCHist_WRGeral,
  cxGraphics, cxControls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, cxContainer, cxEdit, ACBrBase, cxMaskEdit, cxTextEdit, IBX.IBStoredProc, cxLabel,
  cxNavigator, cxDBNavigator, Gradient, cxCheckBox, uControleWR, WREventos, frxClass, frxDBSet,
  System.Generics.Collections, ACBrETQClass, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TFrmProduto_Barras = class(TFrmCadMestre)
    Produto_Barras: TIBDataSet;
    Produto_BarrasDESCRICAO: TIBStringField;
    Produto_BarrasREFERENCIA: TIBStringField;
    Produto_BarrasTAMANHO: TIBStringField;
    EdtProdutoDescricao: TEdit;
    DBGrid1: TDBGrid;
    BitBtn9: TBitBtn;
    BitBtn14: TBitBtn;
    Label6: TLabel;
    Produto_BarrasQUANT: TIntegerField;
    Produto_BarrasCODIGO: TIntegerField;
    Label1: TLabel;
    Produto_BarrasVALOR: TFloatField;
    EdtProdutoÎProduto: TcxButtonEdit;
    EdtQuant: TcxCurrencyEdit;
    EdtProdutoÎProdutoÎVALOR: TcxCurrencyEdit;
    Label3: TLabel;
    Produto_BarrasCODPRODUTO: TIBStringField;
    PopUpMenuImp: TPopUpMenu;
    AksJeansEtiqAntiga1: TMenuItem;
    OutrosEtiqNova1: TMenuItem;
    Argox4050: TMenuItem;
    Outros1: TMenuItem;
    ImprimirPimacoFormatoA43Etiquetas1: TMenuItem;
    Argox5045: TMenuItem;
    Argox6040: TMenuItem;
    N75x96cm2etiq1: TMenuItem;
    Agox3etiquetas1: TMenuItem;
    Panel3: TPanel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Image1: TImage;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    cbModelo: TComboBox;
    cbPorta: TComboBox;
    eCopias: TEdit;
    eAvanco: TEdit;
    bEtqSimples: TButton;
    bEtqCarreiras: TButton;
    Edit1: TEdit;
    bCarregarImg: TButton;
    bImprimirImagem: TButton;
    ckMemoria: TCheckBox;
    rbStream: TRadioButton;
    rbArquivo: TRadioButton;
    cbDPI: TComboBox;
    eAvanco1: TEdit;
    ACBrETQ: TACBrETQ;
    OpenPictureDialog1: TOpenPictureDialog;
    BitBtn8: TBitBtn;
    Argox4025: TMenuItem;
    ColcheseCia1: TMenuItem;
    N2EtiquetasArgox74x51: TMenuItem;
    Button1: TButton;
    PimacoA44Etiquetas1: TMenuItem;
    SpinEdit1: TSpinEdit;
    Label13: TLabel;
    N1: TMenuItem;
    Personalizado1: TMenuItem;
    UCHistWRGeral1: TUCHistWRGeral;
    Produto_BarrasFAMILIA: TIntegerField;
    AdicionaTodosProdutos: TPopupMenu;
    Adicionartodosprodutos1: TMenuItem;
    Removeratuais: TMenuItem;
    FDBarrasImprimir: TFDMemTable;
    FDBarrasImprimirCODPRODUTO: TStringField;
    FDBarrasImprimirDESCRICAO: TStringField;
    FDBarrasImprimirTAMANHO: TStringField;
    FDBarrasImprimirQUANT: TIntegerField;
    FDBarrasImprimirREFERENCIA: TStringField;
    FDBarrasImprimirVALOR: TFloatField;
    FDBarrasImprimirFAMILIA: TIntegerField;
    Produto_BarrasCODBARRAS: TIBStringField;
    EdtCodBarras: TcxTextEdit;
    FDBarrasImprimirCODBARRAS: TStringField;
    CkUtilizaCodFabrica: TcxCheckBox;
    WREventosCadastro: TWREventosCadastro;
    Fr3Cadastro: TfrxDBDataset;
    PimacoA45Etiquetas1: TMenuItem;
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure CEdit1PropertiesChange(Sender: TObject);
    procedure AksJeansEtiqAntiga1Click(Sender: TObject);
    procedure OutrosEtiqNova1Click(Sender: TObject);
    procedure Argox4050Click(Sender: TObject);
    procedure Outros1Click(Sender: TObject);
    procedure ImprimirPimacoFormatoA43Etiquetas1Click(Sender: TObject);
    procedure Argox5045Click(Sender: TObject);
    procedure Argox6040Click(Sender: TObject);
    procedure N75x96cm2etiq1Click(Sender: TObject);
    procedure Agox3etiquetas1Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure Panel3Exit(Sender: TObject);
    procedure Argox2540Click(Sender: TObject);
    procedure ColcheseCia1Click(Sender: TObject);
    procedure N2EtiquetasArgox74x51Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PimacoA44Etiquetas1Click(Sender: TObject);
    procedure Personalizado1Click(Sender: TObject);
    procedure Adicionartodosprodutos1Click(Sender: TObject);
    procedure RemoveratuaisClick(Sender: TObject);
    procedure FDBarrasImprimirAfterOpen(DataSet: TDataSet);
    procedure EdtProdutoÎProdutoPropertiesChange(Sender: TObject);
    procedure PimacoA45Etiquetas1Click(Sender: TObject);
  private
    { Private declarations }
    FControleWR: TControleWR;
    FNomeFantasia: string;
    FLogo: string;
    procedure AtivarACBrETQ;
    procedure CommitLocate;
    procedure CarregaLogo(ComponenteImagem: TRLImage);
  public
  end;

  procedure CodigoBarrasGerar(const ADataSetProduto: TDataSet);

var
  FrmProduto_Barras: TFrmProduto_Barras;

implementation

uses
  UnitFuncoes, RptCodigoBarras, Base_Produto, ACBrDevice, DataModuleImpressao, Aguarde, wrFuncoes, Classes.WR,
  StrUtils, System.Math, Base, Tag.Report;

{$R *.dfm}

procedure CodigoBarrasGerar(const ADataSetProduto: TDataSet);
var
  QuerX: TIBQuery;
  ACampo: string;
begin
  if ShowMessageWR('Deseja criar essa lista de códigos de barras? Essa operação irá apagar a lista antiga.', MB_ICONQUESTION) <> mrYes then
    Exit;

  if ShowMessageWR('Deseja utilizar Código de Fábrica para o formar o código de barras? Clique em Não para ' +
    'utilizar o Código EAN.', MB_ICONQUESTION) = mrYes then
    ACampo := 'CODFABRICA'
  else
    ACampo := 'CODIGOEAN';

  ADataSetProduto.First;
  while not ADataSetProduto.Eof do
  begin
    if (Trim(ADataSetProduto.FieldByName(ACampo).AsString) = '') and
       not (ShowMessageWR('Há Produtos cadastrados sem o código de fábrica, portanto não irá criar o código ' +
                          'de barras. ' + sLineBreak + 'Deseja continuar?', MB_ICONQUESTION) = mrYes) then
      Exit;
    ADataSetProduto.Next;
  end;

  FrmProduto_Barras := TFrmProduto_Barras.Create(nil);
  with FrmProduto_Barras do
  try
    LockWindowUpdate(Handle);
    if 800 <> Screen.Width then
    begin
      nEscala   := (Screen.Width - 800) / 800;
      nPorcento := Round((nEscala * 100) + 100);
      Width     := Round(Width * (nEscala + 1));
      ScaleBy(nPorcento, 100);
    end;
    QuerX := GeraQuery(Transa);
    try
      QuerX.SQL.Text := 'delete from PRODUTO_BARRAS';
      QuerX.ExecSQL;
    finally
      QuerX.Free;
    end;
    Transa.Commit;
    Produto_Barras.Open;
    ADataSetProduto.First;
    while not ADataSetProduto.Eof do
    begin
      if Trim(ADataSetProduto.FieldByName(ACampo).AsString) <> '' then
      begin
        try
          Produto_Barras.Insert;
          Produto_Barras.FieldByName('Codigo').AsInteger    := ProximoCodigoTrans(Transa, 'PRODUTO_BARRAS');
          Produto_Barras.FieldByName('CodProduto').AsString := ADataSetProduto.FieldByName('CODPRODUTO').AsString;
          Produto_Barras.FieldByName('CodBarras').AsString  := ADataSetProduto.FieldByName(ACampo).AsString;
          Produto_Barras.FieldByName('Descricao').AsString  := ADataSetProduto.FieldByName('DESCRICAO').AsString;
          Produto_Barras.FieldByName('Quant').AsInteger     := Ceil(ADataSetProduto.FieldByName('QTDADEPECA').AsFloat);
          Produto_Barras.FieldByName('VALOR').AsFloat       := ADataSetProduto.FieldByName('VALOR').AsFloat;
          Produto_Barras.Post;
        except
          Produto_Barras.Cancel;
        end;
      end;
      ADataSetProduto.Next;
    end;
    Transa.Commit;
    Produto_Barras.Open;
    Show;
    LockWindowUpdate(0);
    AguardaFormFechar(FrmProduto_Barras);
  finally
    Destroy;
  end;
end;

procedure TFrmProduto_Barras.AtivarACBrETQ;
begin
  with ACBrETQ do
  begin
    DPI     := TACBrETQDPI(cbDPI.ItemIndex);
    Modelo  := TACBrETQModelo(cbModelo.ItemIndex);
    Porta   := cbPorta.Text;
//     LimparMemoria := ckMemoria.Checked ;
    Ativar;
  end;
end;

procedure TFrmProduto_Barras.BitBtn9Click(Sender: TObject);
var
  Quant: Integer;
begin
  inherited;
  //if ComboEdit1.Text = '' then
  if EdtCodBarras.Text = '' then
  begin
    ShowMessageWR('Selecione um produto que possua código de barras.');
    EdtProdutoÎProduto.SetFocusWR;
    Exit;
  end;
  if not Produto_Barras.Locate('CODPRODUTO', EdtProdutoÎProduto.Text, [loCaseInsensitive]) then
  begin
    if not(DS.State in [dsInsert,dsEdit]) then
      Produto_Barras.Insert;
    Produto_BarrasCODIGO.AsFloat      := ProximoCodigoTrans(Transa,'PRODUTO_BARRAS');
    Produto_BarrasCODPRODUTO.AsString := EdtProdutoÎProduto.Text;
    Produto_BarrasCODBARRAS.AsString  := EdtCodBarras.Text;
    Produto_BarrasDESCRICAO.AsString  := EdtProdutoDESCRICAO.Text;
    Produto_BarrasQUANT.AsString      := EdtQuant.Text;
    Produto_BarrasVALOR.AsFloat       := EdtProdutoÎProdutoÎVALOR.Value;
    Produto_BarrasFAMILIA.AsInteger   := StrToIntDef(Procura('CODFAMILIA', 'PRODUTO', EdtProdutoÎProduto.Text), 0);
    Produto_BarrasTAMANHO.AsString    := Procura('TAMANHO', 'PRODUTO', EdtProdutoÎProduto.Text);
  end else
  begin
    Quant := Produto_Barras.FieldByName('QUANT').AsInteger;

    if not(DS.State in [dsInsert,dsEdit]) then
      Produto_Barras.Edit;
    Produto_BarrasQUANT.AsInteger     := Quant + StrToInt(EdtQuant.Text);
    //Produto_Barras.FieldByName('CODIGO').AsFloat      := ProximoCodigoTrans(Transa,'PRODUTO_BARRAS');
    //Produto_Barras.FieldByName('CODPRODUTO').AsString := ComboEdit1.Text;
    //Produto_Barras.FieldByName('CODBARRAS').AsString  := CEdit1.Text;
    //Produto_Barras.FieldByName('DESCRICAO').AsString  := Descricao_Edt.Text;
    //Produto_Barras.FieldByName('VALOR').AsFloat       := CurrencyEdit1.Value;
    //Produto_Barras.FieldByName('FAMILIA').AsInteger   := StrToIntDef(Procura('FAMILIA', 'PRODUTO', ComboEdit1.Text), 0);
  end;

  Produto_Barras.Post;

  CommitLocate;

  EdtProdutoÎProduto.Text := '';
  EdtCodBarras.Text        := '';
  EdtQuant.Value       := 1;
  EdtProdutoÎProduto.SetFocusWR;
end;

procedure TFrmProduto_Barras.Argox4050Click(Sender: TObject);
begin
  inherited;
  //Ok
  if not Produto_Barras.IsEmpty then
  begin
    CommitLocate;
    Application.CreateForm(TRpt_Barras, Rpt_Barras);
    try
      CarregaLogo(Rpt_Barras.RLImage1);
      Rpt_Barras.RLLabel10.Caption := FNomeFantasia;
      Rpt_Barras.RLReport4.PreviewModal;
    finally
      FreeAndNil(Rpt_Barras);
    end;
  end;
end;

procedure TFrmProduto_Barras.Button1Click(Sender: TObject);
begin
  inherited;
  Ocultar(Panel3);
end;

procedure TFrmProduto_Barras.Adicionartodosprodutos1Click(Sender: TObject);
var
  QueryProduto: TIBQuery;
begin
  inherited;
  BitBtn4Click(nil);

  QueryProduto := GeraQuery;
  try
    QueryProduto.SQL.Text := 'select CODIGO from PRODUTO where ATIVO = ''S'' and '+
                                   'CODIGO not in (select CODPRODUTO '+
                                                  'from PRODUTO_BARRAS)';
    QueryProduto.Open;
    QueryProduto.Last;
    QueryProduto.First;

    FrmAguarde := TFrmAguarde.Create(Self);
    FrmAguarde.Mensagem := 'Aguarde trazendo todos produtos...';
    FrmAguarde.Show;
    try
      Application.ProcessMessages;

      while not QueryProduto.Eof do
      begin
        EdtProdutoÎProduto.Text := QueryProduto.FieldByName('CODIGO').AsString;
        BitBtn9Click(nil);

        QueryProduto.Next;
      end;
    finally
      FrmAguarde.Destroy;
    end;
  finally
    QueryProduto.Free;
  end;
end;

procedure TFrmProduto_Barras.Agox3etiquetas1Click(Sender: TObject);
begin
  inherited;
  FDBarrasImprimir.Open;
  try
    AtivarACBrETQ;
  except
    ShowMessageWR('Não foi possível encontrar a impressora. Verifique as conexões e a instalação e tente novamente.');
    FDBarrasImprimir.Close;
    Exit;
  end;
  with ACBrETQ do
  begin
    FDBarrasImprimir.First;
    while not FDBarrasImprimir.Eof do
    begin
      if Modelo = etqPpla then
      begin
        ImprimirTexto(orNormal, 2, 1, 2, 160, 36, FDBarrasImprimir.FieldByName('DESCRICAO').AsString);
        ImprimirTexto(orNormal, 2, 1, 1, 115, 36, FDBarrasImprimir.FieldByName('CODPRODUTO').AsString);
        ImprimirBarras(orNormal, 'F', '2', '2', 20, 48, FDBarrasImprimir.FieldByName('CODBARRAS').AsString, 70);
        FDBarrasImprimir.Next;
        ImprimirTexto(orNormal, 2, 1, 2, 160, 397, FDBarrasImprimir.FieldByName('DESCRICAO').AsString);
        ImprimirTexto(orNormal, 2, 1, 1, 115, 397, FDBarrasImprimir.FieldByName('CODPRODUTO').AsString);
        ImprimirBarras(orNormal, 'F', '2', '2', 20, 410, FDBarrasImprimir.FieldByName('CODBARRAS').AsString, 70);
        FDBarrasImprimir.Next;
        ImprimirTexto(orNormal, 2, 1, 2, 160, 760, FDBarrasImprimir.FieldByName('DESCRICAO').AsString);
        ImprimirTexto(orNormal, 2, 1, 1, 115, 760, FDBarrasImprimir.FieldByName('CODPRODUTO').AsString);
        ImprimirBarras(orNormal, 'F', '2', '2', 20, 770, FDBarrasImprimir.FieldByName('CODBARRAS').AsString, 70);
        FDBarrasImprimir.Next;
      end else
      begin
        ImprimirTexto(orNormal, 2, 1, 3, 15, 55, FDBarrasImprimir.FieldByName('DESCRICAO').AsString);
        ImprimirTexto(orNormal, 2, 1, 1, 80, 55, FDBarrasImprimir.FieldByName('CODPRODUTO').AsString);
        ImprimirBarras(orNormal, 'E30', '2', '2', 120, 55, FDBarrasImprimir.FieldByName('CODBARRAS').AsString, 080, becSIM);
        FDBarrasImprimir.Next;
        ImprimirTexto(orNormal, 2, 1, 3, 15, 365, FDBarrasImprimir.FieldByName('DESCRICAO').AsString);
        ImprimirTexto(orNormal, 2, 1, 1, 80, 365, FDBarrasImprimir.FieldByName('CODPRODUTO').AsString);
        ImprimirBarras(orNormal, 'E30', '2', '2', 120, 365, FDBarrasImprimir.FieldByName('CODBARRAS').AsString, 080, becSIM);
        FDBarrasImprimir.Next;
        ImprimirTexto(orNormal, 2, 1, 3, 15, 670, FDBarrasImprimir.FieldByName('DESCRICAO').AsString);
        ImprimirTexto(orNormal, 2, 1, 1, 80, 670, FDBarrasImprimir.FieldByName('CODPRODUTO').AsString);
        ImprimirBarras(orNormal, 'E30', '2', '2', 120, 670, FDBarrasImprimir.FieldByName('CODBARRAS').AsString, 080, becSIM);
        FDBarrasImprimir.Next;
      end;
      Imprimir(StrToInt(eCopias.Text), StrToInt(eAvanco.Text));
    end;
    Desativar;
  end;
  FDBarrasImprimir.Close;
end;

procedure TFrmProduto_Barras.AksJeansEtiqAntiga1Click(Sender: TObject);
begin
  inherited;
  //Desativado
  if not Produto_Barras.IsEmpty then
  begin
    CommitLocate;
    Application.CreateForm(TRpt_Barras, Rpt_Barras);
    try
      Rpt_Barras.RLLabel3.Caption := FNomeFantasia;
      Rpt_Barras.RlReport2.PreviewModal;
    finally
      FreeAndNil(Rpt_Barras);
    end;
  end;
end;

procedure TFrmProduto_Barras.Argox6040Click(Sender: TObject);
begin
  inherited;
  //Ok
  if not Produto_Barras.IsEmpty then
  begin
    CommitLocate;
    Application.CreateForm(TRpt_Barras, Rpt_Barras);
    try
      CarregaLogo(Rpt_Barras.RLImage3);
      Rpt_Barras.RlReport5.PreviewModal;
    finally
      FreeAndNil(Rpt_Barras);
    end;
  end;
end;

procedure TFrmProduto_Barras.BitBtn14Click(Sender: TObject);
begin
  inherited;
  if not Produto_Barras.IsEmpty then
    Produto_Barras.Delete;
  CommitLocate;
end;

procedure TFrmProduto_Barras.BitBtn6Click(Sender: TObject);
begin
  inherited;
  DMImpressao.CarregaMenuFrame(Personalizado1, Self);
  PopUpMenuImp.Popup(Panel1.Width, BitBtn6.Top + 25);
end;

procedure TFrmProduto_Barras.BitBtn8Click(Sender: TObject);
begin
  Mostrar(Panel3); //Não é possível usar o ShowPanelForm devido ao ReScale do form.
end;

procedure TFrmProduto_Barras.BitBtn2Click(Sender: TObject);
begin
  try
    ds.DataSet.post;
  except
    ds.DataSet.FieldByName('Codigo').AsFloat := ProximoCodigoTrans(Transa, ds.DataSet.Name);
    ds.DataSet.post;
  end;
  CommitLocate;
  BitBtn1.SetFocusWR;
end;

procedure TFrmProduto_Barras.CarregaLogo(ComponenteImagem: TRLImage);
begin
  if FileExists(FLogo) then
    ComponenteImagem.Picture.LoadFromFile(FLogo);
end;

procedure TFrmProduto_Barras.CEdit1PropertiesChange(Sender: TObject);
begin
  inherited;
//  ComboEdit1.Text:= ProcuraCODIGOBARRA('CODIGO','PRODUTO',CEdit1.Text);
end;

procedure TFrmProduto_Barras.ColcheseCia1Click(Sender: TObject);
begin
  inherited;
  //Ok
  if not Produto_Barras.IsEmpty then
  begin
    CommitLocate;
    Application.CreateForm(TRpt_Barras,Rpt_Barras);
    try
      Rpt_Barras.RLReport8.PreviewModal;
    finally
      FreeAndNil(Rpt_Barras);
    end;
  end;
end;

procedure TFrmProduto_Barras.CommitLocate;
begin
  Codigo := Produto_Barras.FieldByName('CODIGO').AsString;
  Transa.Commit;
  Transa.StartTransaction;
  Produto_Barras.Open;
  Produto_Barras.Locate('CODIGO', Codigo, []);
end;

procedure TFrmProduto_Barras.EdtProdutoÎProdutoPropertiesChange(Sender: TObject);
var
  QuerX: TFDQuery;
begin
  inherited;
  QuerX := GeraFDQuery;
  try
    QuerX.SQL.Text := 'select CODFABRICA, CODIGOEAN, DESCRICAO ' +
                      'from PRODUTO ' +
                      'where (CODIGO = :Cod)';
    QuerX.Params[0].AsString := EdtProdutoÎProduto.Text;
    QuerX.Open;
    EdtProdutoDESCRICAO.Text := QuerX.FieldByName('DESCRICAO').AsString;
    EdtCodBarras.Text        := QuerX.FieldByName('CODFABRICA').AsString;
    if CkUtilizaCodFabrica.Checked then
      EdtCodBarras.Text      := QuerX.FieldByName('CODIGOEAN').AsString;
    EdtQuant.Value           := 1;
  finally
    QuerX.Free;
  end;
end;

procedure TFrmProduto_Barras.FDBarrasImprimirAfterOpen(DataSet: TDataSet);
var
  QuerX : TIBQuery;
  I: Integer;
begin
  FDBarrasImprimir.Open;
  QuerX := GeraQuery;
  try
    for I := 1 to SpinEdit1.Value - 1 do
    begin
      FDBarrasImprimir.Insert;
      FDBarrasImprimir.Post;
    end;

    QuerX.SQL.Text := 'SELECT * FROM PRODUTO_BARRAS';
    QuerX.Open;
    while not QuerX.Eof do
    begin
      for I := 1 to QuerX.FieldByName('QUANT').AsInteger do
      begin
        FDBarrasImprimir.Append;
        FDBarrasImprimirCODPRODUTO.AsString := QuerX.FieldByName('CODPRODUTO').AsString;
        FDBarrasImprimirCODBARRAS.AsString  := QuerX.FieldByName('CODBARRAS').AsString;
        FDBarrasImprimirDESCRICAO.AsString  := QuerX.FieldByName('DESCRICAO').AsString;
        FDBarrasImprimirTAMANHO.AsString    := QuerX.FieldByName('TAMANHO').AsString;
        FDBarrasImprimirQUANT.AsInteger     := QuerX.FieldByName('QUANT').AsInteger;
        FDBarrasImprimirREFERENCIA.AsString := QuerX.FieldByName('REFERENCIA').AsString;
        FDBarrasImprimirVALOR.AsFloat       := QuerX.FieldByName('VALOR').AsFloat;
        FDBarrasImprimirFAMILIA.AsInteger   := QuerX.FieldByName('FAMILIA').AsInteger;
        FDBarrasImprimir.Post;
      end;
      QuerX.Next;
    end;
  finally
    QuerX.Free;
  end;
end;

procedure TFrmProduto_Barras.FormCreate(Sender: TObject);
var
  QuerX : TIBQuery;
begin
  inherited;
  FControleWR := TControleWR.Create;
  FControleWR.Inicializar(Self);
  FLogo         := TConfig.ReadString('CODBARRAS_LOGO');
  FNomeFantasia := TConfig.ReadString('CODBARRAS_FANTASIA');
  EdtProdutoÎProdutoÎVALOR.Properties.DisplayFormat:=DecimalFinanceiro;
  FrmProduto_Barras := self;
end;

procedure TFrmProduto_Barras.ImprimirPimacoFormatoA43Etiquetas1Click(Sender: TObject);
begin
  inherited;
  //Ok
  if not Produto_Barras.IsEmpty then
  begin
    CommitLocate;
    Application.CreateForm(TRpt_Barras, Rpt_Barras);
    try
      Rpt_Barras.RLReport1.PreviewModal;
    finally
      FreeAndNil(Rpt_Barras);
    end;
  end;
end;

procedure TFrmProduto_Barras.Argox5045Click(Sender: TObject);
begin
  inherited;
  //Ok
  if not Produto_Barras.IsEmpty then
  begin
    CommitLocate;
    Application.CreateForm(TRpt_Barras, Rpt_Barras);
    try
      Rpt_Barras.RLLabel5.Caption := FNomeFantasia;
      CarregaLogo(Rpt_Barras.RLImage2);
      Rpt_Barras.RlReport3.PreviewModal;
    finally
      FreeAndNil(Rpt_Barras);
    end;
  end;
end;

procedure TFrmProduto_Barras.N2EtiquetasArgox74x51Click(Sender: TObject);
begin
  inherited;
  //Ok
  if not Produto_Barras.IsEmpty then
  begin
    CommitLocate;
    Application.CreateForm(TRpt_Barras, Rpt_Barras);
    try
      CarregaLogo(Rpt_Barras.RLImage5);
      Rpt_Barras.RLReport9.PreviewModal;
    finally
      FreeAndNil(Rpt_Barras);
    end;
  end;
end;

procedure TFrmProduto_Barras.N75x96cm2etiq1Click(Sender: TObject);
begin
  inherited;
  //Ok
  if not Produto_Barras.IsEmpty then
  begin
    CommitLocate;
    Application.CreateForm(TRpt_Barras, Rpt_Barras);
    try
      CarregaLogo(Rpt_Barras.RLImage4);
      Rpt_Barras.RlReport6.PreviewModal;
    finally
      FreeAndNil(Rpt_Barras);
    end;
  end;
end;

procedure TFrmProduto_Barras.Outros1Click(Sender: TObject);
begin
  inherited;
  //Desativado
  if not Produto_Barras.IsEmpty then
  begin
    CommitLocate;
    Application.CreateForm(TRpt_Barras, Rpt_Barras);
    try
      Rpt_Barras.RlLabel10.Caption := FNomeFantasia;
      Rpt_Barras.RLReport4.PreviewModal;
    finally
      FreeAndNil(Rpt_Barras);
    end;
  end;
end;

procedure TFrmProduto_Barras.OutrosEtiqNova1Click(Sender: TObject);
begin
  inherited;
  //Desativado
  if not Produto_Barras.IsEmpty then
  begin
    CommitLocate;
    Application.CreateForm(TRpt_Barras, Rpt_Barras);
    try
      Rpt_Barras.RlLabel3.Caption := FNomeFantasia;
      Rpt_Barras.RlReport2.PreviewModal;
    finally
      FreeAndNil(Rpt_Barras);
    end;
  end;
end;

procedure TFrmProduto_Barras.Panel3Exit(Sender: TObject);
begin
  inherited;
  Ocultar(Panel3);
end;

procedure TFrmProduto_Barras.Personalizado1Click(Sender: TObject);
begin
//  DMImpressaoImprimirPorNome(Self, RelatorioListaImpressoesPadroes('FR0003'));  //TDMImpressao.ImprimirPorID(Rpt_Barras, 'FR0003');
  DMImpressao.ImprimirTag(Self, Tag_Report_Cod_Barras);
end;

procedure TFrmProduto_Barras.PimacoA44Etiquetas1Click(Sender: TObject);
begin
  //Ok
  if not Produto_Barras.IsEmpty then
  begin
    CommitLocate;
    Application.CreateForm(TRpt_Barras, Rpt_Barras);
    try
      Rpt_Barras.RLPimaco2.PreviewModal;
    finally
      FreeAndNil(Rpt_Barras);
    end;
  end;
end;

procedure TFrmProduto_Barras.PimacoA45Etiquetas1Click(Sender: TObject);
begin
  inherited;
  DMImpressao.ImprimirTag(Self, Tag_Report_Cod_Barras_Pimaco_5_Etq);
end;

procedure TFrmProduto_Barras.RemoveratuaisClick(Sender: TObject);
begin
  inherited;
  Produto_Barras.Last;
  Produto_Barras.First;

  FrmAguarde := TFrmAguarde.Create(Self);
  try
    FrmAguarde.Mensagem := 'Aguarde deletando atuais...';
    FrmAguarde.Show;
    Application.ProcessMessages;

    while Produto_Barras.RecordCount > 0 do
      BitBtn14Click(nil);
  finally
    FrmAguarde.Destroy;
  end;
end;

procedure TFrmProduto_Barras.Argox2540Click(Sender: TObject);
begin
  inherited;
  //Ok
  if not Produto_Barras.IsEmpty then
  begin
    CommitLocate;
    Application.CreateForm(TRpt_Barras, Rpt_Barras);
    try
      Rpt_Barras.RLLabel12.Caption := FNomeFantasia;
      Rpt_Barras.RLReport7.PreviewModal;
    finally
      FreeAndNil(Rpt_Barras);
    end;
  end;
end;

procedure TFrmProduto_Barras.BitBtn1Click(Sender: TObject);
begin
  inherited;
  EdtProdutoÎProduto.SetFocusWR;
end;

procedure TFrmProduto_Barras.BitBtn3Click(Sender: TObject);
begin
  inherited;
  EdtProdutoÎProduto.SetFocusWR;
end;

initialization
  RegisterClass(TFrmProduto_Barras);

end.

