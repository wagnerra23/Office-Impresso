unit RelAuditoriaSINTEGRA_e_SPED;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, ACBrSintegra,
  ACBrSpedFiscal, DB, IBX.IBQuery, ACBrECF, ACBrAAC, ComCtrls, cxTextEdit, cxCalendar, Menus, cxButtons,
  dxLayoutContainer, dxLayoutControl, dxLayoutLookAndFeels, cxDateProfileButton, cxRadioGroup, cxCheckBox, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinscxPCPainter, cxContainer, cxEdit, dxCore,
  cxDateUtils, dxLayoutControlAdapters, dxLayoutcxEditAdapters, cxClasses, ACBrBase, IBX.IBCustomDataSet, cxGroupBox,
  cxMaskEdit, cxDropDownEdit, Aguarde, ACBrDFe, ACBrNFe, pcnNFe, FireDAC.Stan.Intf, FireDAC.Comp.Client,
  FireDAC.Stan.Param, Generics.Collections, cxButtonEdit, IniFiles, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White;

type
  TSintegraEmpresa = class
    CODIGO : Integer;
    CNPJCPF : string;
    INSCIDENT : string;
    RAZAOSOCIAL : string;
    FANTASIA : string;
    CONTATO : string;
    ENDERECO : string;
    CIDADE : string;
    BAIRRO : string;
    CEP : string;
    UF : string;
    FONE1 : string;
    FONE2 : string;
    FAX : string;
    EMAIL : string;
    TIPO : string;
    PAGINA : string;
    ATIVO : string;
    MODULO : string;
    CODCIDADE : integer;
    NUMERO : string;
    IM : string;
    IEST : string;
    CNAE : string;
    ISSQN : Double;
    CRT : string;
    CODIGO_MUNICIPIO : string;
    SUFRAMA : string;
    CPF_PROPRIETARIO : string;
    COMPLEMENTO : string;
    TIPO_OS : string;
    PAIS : string;
    CODPAIS : Integer;
    EMITE_NFE : string;
    CONTADOR_NOME : string;
    CONTADOR_CPF : string;
    CONTADOR_CRC : string;
    CONTADOR_CNPJ : string;
    CONTADOR_CEP : string;
    CONTADOR_ENDERECO : string;
    CONTADOR_NUMERO : string;
    CONTADOR_COMPLEMENTO : string;
    CONTADOR_BAIRRO : string;
    CONTADOR_FONE : string;
    CONTADOR_FAX : string;
    CONTADOR_EMAIL : string;
    CONTADOR_CODIGO_MUNICIPIO : string;
    CONTADOR_UF : string;
  end;

  TWRGeradorSintegra = class
  private
    FTransa: TFDTransaction;
    FConnectionPAF: TFDConnection;
    FCodSintegra: Integer;
    FDtFim: TDateTime;
    FDtInicio: TDateTime;
    FEmpresa: TSintegraEmpresa;
    FCodEmpresa: Integer;
    FInventario: Boolean;
    FDtInventario: TDateTime;
    FGerarRegistros60: Boolean;
    FCaminhoBancoPAF: string;

    //Métodos Principais
    procedure InternalGerarSintegra;
    function GerarRegistroMestre: Integer;
    procedure GerarRegistrosDeVendas;
    procedure GerarRegistrosDeCompras;
    procedure GerarRegistrosDeCuponsFiscais;
    procedure GerarInventario;
    procedure GerarNotasCanceladas;
    procedure GerarTransporte;
    procedure AjustaRegistros75;

    //Registros do Sintegra
    procedure GerarRegistro10;
    procedure GerarRegistro11;
    procedure GerarRegistro50(AACBrNFe: TACBrNFe; ADataSet: TDataSet);
    procedure GerarRegistro51(AACBrNFe: TACBrNFe; nItem: Variant; ACodVendaProduto: Integer);
    procedure GerarRegistro53(AACBrNFe: TACBrNFe; ACodProduto: string; ACodProdutoVenda: Integer);
    procedure GerarRegistro54(AACBrNFe: TACBrNFe; ADataSet: TDataSet; ASeq: Integer);
    procedure GerarRegistro61;
    procedure GerarRegistro75(const ADataSet: TDataSet);

    //Sets
    procedure SetDtFim(const Value: TDateTime);
    procedure SetDtInicio(const Value: TDateTime);

    //Métodos
    procedure InternalSalvarArquivo(ACodSintegra: Integer);
    procedure AtualizaDadosEmpresa;
    function GetNItem(AACBrNFe: TACBrNFe; nItem: Variant; ACodVendaProduto: Integer): TDetCollectionItem;
    function GetInscricaoEstadual(const AQuery: TDataSet): string;
    function GeraComponenteSintegra: TACBrSintegra;
    function GetCodigo(const ARegistro: string): Integer;
    function CarregaXMLNotaFiscal(AACBrNFe: TACBrNFe; ACodVenda, ANotaFiscal: string): Boolean;
    procedure ExcluirRegistros(ACodSintegra: Integer);
    procedure InicializaConexaoPAF;
  public
    property CodEmpresa: Integer read FCodEmpresa write FCodEmpresa;
    property DtInicio: TDateTime read FDtInicio write SetDtInicio;
    property DtFim: TDateTime read FDtFim write SetDtFim;
    property DtInventario: TDateTime read FDtInventario write FDtInventario;
    property Inventario: Boolean read FInventario write FInventario;
    property GerarRegistros60: Boolean read FGerarRegistros60 write FGerarRegistros60;
    property CaminhoBancoPAF: string read FCaminhoBancoPAF write FCaminhoBancoPAF;

    class procedure GerarSintegra(ACodEmpresa: Integer; ADtReferencia: TDate; AGerarInventario, AGerarRegistros60: Boolean;
      const ACaminhoBancoPAF: string; ADtInventario: TDateTime);
    class procedure SalvarArquivo(ACodSintegra: Integer);

    constructor Create;
    destructor Destroy; override;
  end;

  TFrmAuditoriaSINTEGRA_e_SPED = class(TForm)
    ACBrSPEDFiscal1: TACBrSPEDFiscal;
    ACBrSintegra1: TACBrSintegra;
    Clientes: TIBQuery;
    Clientes_Historico: TIBQuery;
    Produtos: TIBQuery;
    ACBrAAC1: TACBrAAC;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    BtnSINTEGRA: TcxButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    GroupSintegra: TdxLayoutGroup;
    BtnFechar: TcxButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    cxDateProfileButton1: TcxDateProfileButton;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    GroupSped: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    GupoEscolha: TdxLayoutGroup;
    cxButton1: TcxButton;
    dxLayoutControl1Item7: TdxLayoutItem;
    rgEscolha: TcxRadioGroup;
    lirgEscolha: TdxLayoutItem;
    edBufLinhas: TcxTextEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    edNotas: TcxTextEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutAutoCreatedGroup;
    edBufNotas: TcxTextEdit;
    dxLayoutControl1Item11: TdxLayoutItem;
    cbConcomitante: TcxCheckBox;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutAutoCreatedGroup;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    cbGerarInventario: TcxCheckBox;
    dxLayoutControl1Item6: TdxLayoutItem;
    ACBrECF1: TACBrECF;
    EdtDataInventario: TcxDateEdit;
    LayoutItemDataInventario: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutAutoCreatedGroup;
    cbEmpresa: TcxComboBox;
    dxLayoutControl1Item13: TdxLayoutItem;
    ACBrNFe1: TACBrNFe;
    CbMes: TcxComboBox;
    dxLayoutItem1: TdxLayoutItem;
    CbAno: TcxComboBox;
    dxLayoutItem2: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    CkGerarRegistros60: TcxCheckBox;
    LiCkGerarRegistros60: TdxLayoutItem;
    EdtCaminhoBancoPAF: TcxButtonEdit;
    LiEdtCaminhoBancoPAF: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    cbxPerfilSped: TcxComboBox;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutItem5: TdxLayoutItem;
    cxButton3: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure ProdutosBeforeOpen(DataSet: TDataSet);
    procedure BtnFecharClick(Sender: TObject);
    procedure BtnSINTEGRAClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rgEscolhaPropertiesChange(Sender: TObject);
    procedure cbGerarInventarioPropertiesChange(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure CkGerarRegistros60Click(Sender: TObject);
    procedure EdtCaminhoBancoPAFPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cbxPerfilSpedPropertiesEditValueChanged(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
  private
    function GetEmpresa: TSintegraEmpresa;
    function GetDtInicio: TDateTime;
    function GetDtFim: TDateTime;

    procedure GerarSPED;
    procedure GerarSPED_Bloco0;
    procedure GerarSPED_BlocoC;
    procedure GerarSPED_BlocoD;
    procedure GerarSPED_BlocoE;
    procedure GerarSPED_BlocoG;
    procedure GerarSPED_BlocoH;
    procedure GerarSPED_BlocoK;
    procedure GerarSPED_Bloco1;
    Procedure GerarSPED_Bloco9;
    procedure GerarSPED_TXT;

    procedure LayoutChanged;
  public
    { Public declarations }
  var
    DtInicio, DtFim, DataAtual : TDateTime;
    ICMS : Double;

  end;

var
  FrmAuditoriaSINTEGRA_e_SPED: TFrmAuditoriaSINTEGRA_e_SPED;

implementation

uses
  UnitFuncoes, wrFuncoes, DateUtils, ACBrEFDBlocos, ACBrUtil, StrUtils, Math, NFe, pcnConversao, pcnConversaoNFe,
  ConSintegra, Principal, wrConstantes, wrForms, Classes.WR, ConSped, CadSped, wrConversao;

{$R *.dfm}

function TFrmAuditoriaSINTEGRA_e_SPED.GetDtFim: TDateTime;
var
  AAno, AMes: Integer;
begin
  AAno := StrToIntDef(CbAno.Text, 0);
  AMes := CbMes.ItemIndex + 1;
  if not InRange(AAno, 1950, YearOf(Now)) then
  begin
    ShowMessageWR('Ano Inválido');
    CbAno.SetFocusWR;
    Abort;
  end;

  Result := EndOfTheMonth(EncodeDate(AAno, AMes, 1));
end;

function TFrmAuditoriaSINTEGRA_e_SPED.GetDtInicio: TDateTime;
var
  AAno, AMes: Integer;
begin
  AAno := StrToIntDef(CbAno.Text, 0);
  AMes := CbMes.ItemIndex + 1;
  if not InRange(AAno, 1950, YearOf(Now)) then
  begin
    ShowMessageWR('Ano Inválido');
    CbAno.SetFocusWR;
    Abort;
  end;

  Result := StartOfTheMonth(EncodeDate(AAno, AMes, 1));
end;

function TFrmAuditoriaSINTEGRA_e_SPED.GetEmpresa: TSintegraEmpresa;
var
  QuerX : TIBQuery;
  QuerY : TIBQuery;
begin
  QuerX := GeraQuery;
  QuerY := GeraQuery;
  try
    QuerX.SQL.Text := 'select * from EMPRESA where (CODIGO = :Cod)';
    QuerX.Params[0].AsInteger := Integer(cbEmpresa.ItemObject);
    QuerX.Open;

    QuerY.SQL.Text := 'select * from pessoas p where (p.codigo = :cod)';
    QuerY.Params[0].AsString := QuerX.FieldByName('PESSOA_CONTADOR_CODIGO').AsString;
    QuerY.Open;
    Result := TSintegraEmpresa.Create;
    with Result do
    begin
      CNPJCPF          := OnlyNumber(QuerX.FieldByName('CNPJCPF').AsString);
      INSCIDENT        := OnlyNumber(QuerX.FieldByName('INSCIDENT').AsString);
      RAZAOSOCIAL      := QuerX.FieldByName('RAZAOSOCIAL').AsString;
      CIDADE           := QuerX.FieldByName('CIDADE').AsString;
      UF               := QuerX.FieldByName('UF').AsString;
      FONE1            := OnlyNumber(QuerX.FieldByName('FONE1').AsString);
      ENDERECO         := QuerX.FieldByName('ENDERECO').AsString;
      NUMERO           := QuerX.FieldByName('NUMERO').AsString;
      BAIRRO           := QuerX.FieldByName('BAIRRO').AsString;
      CEP              := OnlyNumber(QuerX.FieldByName('CEP').AsString);
      CONTATO          := QuerX.FieldByName('CONTATO').AsString;
      CODIGO           := QuerX.FieldByName('CODIGO').AsInteger;
      FANTASIA         := QuerX.FieldByName('FANTASIA').AsString;
      FONE2            := OnlyNumber(QuerX.FieldByName('FONE2').AsString);
      FAX              := OnlyNumber(QuerX.FieldByName('FAX').AsString);
      EMAIL            := QuerX.FieldByName('EMAIL').AsString;
      TIPO             := QuerX.FieldByName('TIPO').AsString;
      PAGINA           := QuerX.FieldByName('PAGINA').AsString;
      ATIVO            := QuerX.FieldByName('ATIVO').AsString;
      MODULO           := QuerX.FieldByName('MODULO').AsString;
      CODCIDADE        := QuerX.FieldByName('CODCIDADE').AsInteger;
      NUMERO           := QuerX.FieldByName('NUMERO').AsString;
      IM               := OnlyNumber(QuerX.FieldByName('IM').AsString);
      IEST             := QuerX.FieldByName('IEST').AsString;
      CNAE             := QuerX.FieldByName('CNAE').AsString;
      ISSQN            := QuerX.FieldByName('ISSQN').AsFloat;
      CRT              := QuerX.FieldByName('CRT').AsString;
      CODIGO_MUNICIPIO := QuerX.FieldByName('CODCIDADE').AsString;
      SUFRAMA          := QuerX.FieldByName('SUFRAMA').AsString;
      CPF_PROPRIETARIO := QuerX.FieldByName('CPF_PROPRIETARIO').AsString;
      COMPLEMENTO      := QuerX.FieldByName('COMPLEMENTO').AsString;
      TIPO_OS          := QuerX.FieldByName('TIPO_OS').AsString;
      PAIS             := QuerX.FieldByName('PAIS').AsString;
      CODPAIS          := QuerX.FieldByName('CODPAIS').AsInteger;
      EMITE_NFE        := QuerX.FieldByName('EMITE_NFE').AsString;
      CONTADOR_NOME    := QuerY.FieldByName('RAZAOSOCIAL').AsString;
      CONTADOR_CPF     := OnlyNumber(QuerY.FieldByName('CNPJCPF').AsString);
      CONTADOR_CRC     := QuerY.FieldByName('CRT').AsString;
      CONTADOR_CNPJ    := OnlyNumber(QuerY.FieldByName('CNPJCPF').AsString);
      CONTADOR_CEP     := OnlyNumber(QuerY.FieldByName('CEP').AsString);
      CONTADOR_ENDERECO:= QuerY.FieldByName('ENDERECO').AsString;
      CONTADOR_NUMERO  := QuerY.FieldByName('NUMERO').AsString;
      CONTADOR_BAIRRO  := QuerY.FieldByName('BAIRRO').AsString;
      CONTADOR_FONE    := QuerY.FieldByName('FONE1').AsString;
      CONTADOR_FAX     := QuerY.FieldByName('FAX').AsString;
      CONTADOR_EMAIL   := QuerY.FieldByName('EMAIL').AsString;
      CONTADOR_UF      := QuerY.FieldByName('UF').AsString;
      CONTADOR_CODIGO_MUNICIPIO := QuerY.FieldByName('CODCIDADE').AsString;
      CONTADOR_COMPLEMENTO      := QuerY.FieldByName('COMPLEMENTO').AsString;
    end;
  finally
    QuerX.Free;
    QuerY.Free;
  end;
end;

procedure TFrmAuditoriaSINTEGRA_e_SPED.LayoutChanged;
begin
  EdtCaminhoBancoPAF.Enabled := CkGerarRegistros60.Checked;
  GroupSintegra.Visible := rgEscolha.ItemIndex = 0;
  GroupSped.Visible     := not GroupSintegra.Visible;
  Self.ClientHeight     := dxLayoutControl1.OccupiedClientHeight;
end;

procedure TFrmAuditoriaSINTEGRA_e_SPED.BtnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmAuditoriaSINTEGRA_e_SPED.BtnSINTEGRAClick(Sender: TObject);
var
  AOldCaption: string;
  ADataRef: TDate;
  AAno, AMes: Integer;
begin
  AAno := StrToIntDef(CbAno.Text, 0);
  AMes := CbMes.ItemIndex + 1;
  if not InRange(AAno, 1950, YearOf(Now)) then
  begin
    ShowMessageWR('Ano Inválido');
    CbAno.SetFocusWR;
    Exit;
  end;

  BtnSINTEGRA.Enabled := False;
  try
    AOldCaption := BtnSINTEGRA.Caption;
    BtnSINTEGRA.Caption := 'Aguarde...';

    ADataRef := EncodeDate(AAno, AMes, 1);
    TWRGeradorSintegra.GerarSintegra(Integer(cbEmpresa.ItemObject), ADataRef, cbGerarInventario.Checked,
      CkGerarRegistros60.Checked, EdtCaminhoBancoPAF.Text, EdtDataInventario.Date);
  finally
    BtnSINTEGRA.Caption := AOldCaption;
    BtnSINTEGRA.Enabled := True;
  end;
end;

procedure TFrmAuditoriaSINTEGRA_e_SPED.cbGerarInventarioPropertiesChange(Sender: TObject);
begin
  LayoutItemDataInventario.Enabled := cbGerarInventario.Checked;
  rgEscolhaPropertiesChange(nil);
end;

procedure TFrmAuditoriaSINTEGRA_e_SPED.cbxPerfilSpedPropertiesEditValueChanged(Sender: TObject);
begin
  TConfig.SaveString('SPED_PERFIL', cbxPerfilSped.EditValue);
end;

procedure TFrmAuditoriaSINTEGRA_e_SPED.CkGerarRegistros60Click(Sender: TObject);
var
  AIni: TIniFile;
begin
  LayoutChanged;
  if CkGerarRegistros60.Checked and (Trim(EdtCaminhoBancoPAF.Text) = '') and FileExists(GetDirSistema + 'Office_PAF.ini') then
  begin
    AIni := TIniFile.Create(GetDirSistema + 'Office_PAF.ini');
    try
      EdtCaminhoBancoPAF.Text := AIni.ReadString('Banco', 'Banco_Local', '');
    finally
      AIni.Free;
    end;
  end;
end;

procedure TFrmAuditoriaSINTEGRA_e_SPED.cxButton1Click(Sender: TObject);
var
  ADataRef: TDate;
  AAno, AMes: Integer;
begin
  AAno := StrToIntDef(CbAno.Text, 0);
  AMes := CbMes.ItemIndex + 1;
  if not InRange(AAno, 1950, YearOf(Now)) then
  begin
    ShowMessageWR('Ano Inválido');
    CbAno.SetFocusWR;
    Exit;
  end;

  ADataRef := EncodeDate(AAno, AMes, 1);
//  if ck_Bloco_0.Checked then GerarSPED_Bloco0;
//  if ck_Bloco_C.Checked then GerarSPED_BlocoC;
//  if ck_Bloco_D.Checked then GerarSPED_BlocoD;
//  if ck_Bloco_E.Checked then GerarSPED_BlocoE;
//  if ck_Bloco_G.Checked then GerarSPED_BlocoG;
//  if ck_Bloco_H.Checked then GerarSPED_BlocoH;
//  if ck_Bloco_1.Checked then GerarSPED_Bloco1;

  DtInicio := StartOfTheDay(ADataRef);
  DtFim    := EndOfTheDay(ADataRef);
  DataAtual := DataHoraSys;
  ICMS := 0.00;


  //Os blocos “0”, “E” e “9”, são obrigatórios e deverão ser informados.


  GerarSPED_Bloco0;
  GerarSPED_BlocoC;
  GerarSPED_BlocoE;
  GerarSPED_Bloco1;
  GerarSPED_Bloco9;
  GerarSPED_BlocoH;
  GerarSPED_BlocoK;
  GerarSPED_TXT;
end;

procedure TFrmAuditoriaSINTEGRA_e_SPED.cxButton2Click(Sender: TObject);
var
  ACodigo: Integer;
begin
  ACodigo := StrToIntDef(ConsultaModalFiltro(TConsuSintegra,''), 0);
  if ACodigo <> 0 then
    TWRGeradorSintegra.SalvarArquivo(ACodigo);
end;

procedure TFrmAuditoriaSINTEGRA_e_SPED.cxButton3Click(Sender: TObject);
begin
  ConsultaModalFiltro(TConsSped, '');
end;

procedure TFrmAuditoriaSINTEGRA_e_SPED.EdtCaminhoBancoPAFPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  AOpenDialog: TOpenDialog;
begin
  AOpenDialog := TOpenDialog.Create(nil);
  try
    AOpenDialog.Filter := 'Banco de Dados|*.fdb;*.gdb';
    if AOpenDialog.Execute then
      EdtCaminhoBancoPAF.Text := AOpenDialog.FileName;
  finally
    AOpenDialog.Free;
  end;
end;

procedure TFrmAuditoriaSINTEGRA_e_SPED.FormCreate(Sender: TObject);
var
  QuerX : TIBQuery;
  I: Integer;
  AData: TDate;
begin
  GupoEscolha.Visible := False;
  AData := IncMonth(Now, -1);
  CbMes.Properties.BeginUpdate;
  try
    CbMes.Properties.Items.Clear;
    for I := 1 to 12 do
      CbMes.Properties.Items.Add(MESES_NOMES[I]);
    CbMes.ItemIndex := MonthOf(AData) - 1;
  finally
    CbMes.Properties.EndUpdate(False);
  end;

  CbAno.Properties.BeginUpdate;
  try
    CbAno.Properties.Items.Clear;
    for I := YearOf(Now) downto YearOf(Now) - 5 do
      CbAno.Properties.Items.Add(I.ToString);
    CbAno.Text := YearOf(AData).ToString;
  finally
    CbAno.Properties.EndUpdate(False);
  end;

  QuerX := GeraQuery;
  try
    QuerX.SQL.Text := 'select E.CODIGO, E.RAZAOSOCIAL        ' +
                      'from EMPRESA E                        ' +
                      'where coalesce(E.ATIVO, ''S'') = ''S''';
    QuerX.Open;
    QuerX.FetchAll;
    while not QuerX.Eof do
    begin
      cbEmpresa.Properties.Items.AddObject(QuerX.FieldByName('RAZAOSOCIAL').AsString, TObject(QuerX.FieldByName('CODIGO').AsInteger));
      QuerX.Next;
    end;
    cbEmpresa.ItemIndex := cbEmpresa.Properties.Items.IndexOfObject(TObject(EmpresaAtiva.ToInteger));
  finally
    QuerX.Free;
  end;
end;

procedure TFrmAuditoriaSINTEGRA_e_SPED.FormShow(Sender: TObject);
begin
  LayoutItemDataInventario.Enabled := cbGerarInventario.Checked;
  rgEscolhaPropertiesChange(nil);
  LayoutChanged;
  cbxPerfilSped.EditValue := TConfig.ReadString('SPED_PERFIL');
end;

procedure TFrmAuditoriaSINTEGRA_e_SPED.GerarSPED;
//var
//  ATotal : Double;
//  QuerX : TIBQuery;
//  AEmpresa : TEmpresa;
//  ADtInicio, ADtFim, ADataAtual : TDateTime;
begin
//  AEmpresa := GetEmpresa;
//  QuerX := GeraQuery;
  try
//    ADtInicio := StartOfTheDay(EdtDtInicio.Date);
//    ADtFim    := EndOfTheDay(EdtDtFim.Date);
//    ADataAtual := DataHoraSys;


  finally
//    QuerX.Free;
//    AEmpresa.Free;
  end;
end;
//Dados Empresa
procedure TFrmAuditoriaSINTEGRA_e_SPED.GerarSPED_Bloco0;
var
  ATotal : Double;
  QuerX, QuerY : TIBQuery;
  AEmpresa : TSintegraEmpresa;
  ADtInicio, ADtFim, ADataAtual : TDateTime;
begin
  AEmpresa := GetEmpresa;
  QuerX := GeraQuery;
  QuerY := GeraQuery;
  try
{$REGION 'BLOCO 0'}
    cbConcomitante.Enabled := False;

    ACBrSPEDFiscal1.DT_INI := GetDtInicio;
    ACBrSPEDFiscal1.DT_FIN := GetDtFim;

    //Bloco 0
    ACBrSPEDFiscal1.Bloco_0.DT_INI := DtInicio;
    ACBrSPEDFiscal1.Bloco_0.DT_FIN := DtFim;
    if cbConcomitante.Checked then
    begin
    with ACBrSPEDFiscal1 do
    begin
//      DT_INI := DtInicio;
//      DT_FIN := DtFim;
      LinhasBuffer := StrToIntDef(edBufLinhas.Text, 0);

      IniciaGeracao;
    end;
  end;
    with ACBrSPEDFiscal1.Bloco_0 do// Dados da Empresa
    begin
    {$REGION '0000 - Dados da Empresa'}
      with Registro0000New do
      begin
        COD_VER    := vlVersao116;// vlVersao114;
        COD_FIN    := raOriginal;
        NOME       := Trim(AnsiUpperCase(AEmpresa.RazaoSocial));
        CNPJ       := OnlyNumber(AEmpresa.CNPJCPF);
//      CPF        := ''; // Deve ser uma informação valida
        UF         := Trim(AnsiUpperCase(AEmpresa.UF));
        IE         := Trim(AEmpresa.INSCIDENT);
        COD_MUN    := StrToIntDef(AEmpresa.CODIGO_MUNICIPIO, 0);
        IM         := Trim(AEmpresa.IM);
        SUFRAMA    := Trim(AEmpresa.SUFRAMA);

        if cbxPerfilSped.Text = 'A' then
          IND_PERFIL := pfPerfilA;
        if cbxPerfilSped.Text = 'B' then
          IND_PERFIL := pfPerfilB;
        if cbxPerfilSped.Text = 'C' then
          IND_PERFIL := pfPerfilC;
        if cbxPerfilSped.Text = '' then
        begin
          ShowMessage('Defina o Perfil Sped para A, B ou C');
          abort;
        end;

        IND_ATIV   := atOutros;
      end;
    {$ENDREGION}
    {$REGION '0005 - Filho - Dados Complementares da Empresa'}
      with Registro0001New do// FILHO - Dados complementares da Empresa ERA SEM DADOS
      begin
        IND_MOV := imComDados;
        with Registro0005New do
        begin
          FANTASIA := Trim(UpperCase(AEmpresa.FANTASIA));
          CEP      := Trim(AEmpresa.CEP);
          ENDERECO := Trim(UpperCase(AEmpresa.ENDERECO));
          NUM      := Trim(Copy(AEmpresa.NUMERO,0,5));
          COMPL    := Trim(UpperCase(AEmpresa.COMPLEMENTO));
          BAIRRO   := Trim(UpperCase(AEmpresa.BAIRRO));
          FONE     := Trim(AEmpresa.FONE1);
          FAX      := Trim(AEmpresa.FAX);
          EMAIL    := Trim(UpperCase(AEmpresa.EMAIL));
        end;
    {$ENDREGION}
    {$REGION '0100 - Dados do Contador'}
        // FILHO - Dados do contador.
        with Registro0100New do
        begin
          NOME     := Trim(AnsiUpperCase(AEmpresa.CONTADOR_NOME));
          CPF      := Trim(AEmpresa.CONTADOR_CPF); // Deve ser uma informação valida
          CRC      := Trim(AEmpresa.CONTADOR_CRC);
          CNPJ     := OnlyNumber(AEmpresa.CONTADOR_CNPJ);
          CEP      := Trim(AEmpresa.CONTADOR_CEP);
          ENDERECO := Trim(AnsiUpperCase(AEmpresa.CONTADOR_ENDERECO));
          NUM      := Trim(AEmpresa.CONTADOR_NUMERO);
          COMPL    := Trim(AnsiUpperCase(AEmpresa.CONTADOR_COMPLEMENTO));
          BAIRRO   := Trim(AnsiUpperCase(AEmpresa.CONTADOR_BAIRRO));
          //FONE     := Trim(AEmpresa.CONTADOR_FONE);
          FAX      := Trim(AEmpresa.CONTADOR_FAX);
          EMAIL    := Trim(AnsiUpperCase(AEmpresa.CONTADOR_EMAIL));
          COD_MUN  := StrToIntDef(AEmpresa.CONTADOR_CODIGO_MUNICIPIO, 0);
        end;
      {$ENDREGION}
    {$REGION '0150 - Dados dos Clientes'}
    ///////////////////////////////////////CLIENTES\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
        QuerX.Close;
        QuerX.SQL.Text := 'select * ' +
                          'from PESSOAS P ' +
                          'where exists(select first 1 1 ' +
                          '             from VENDA V ' +
                          '             where (V.NF_DT_EMISSAO between :INICIO and :FIM)' +
                          '                   and (V.PESSOA_RESPONSAVEL_CODIGO = P.CODIGO)' +
                          '                   and (V.DT_FATURAMENTO is not null)' +
                          '                   and (V.NOTAFISCAL is not null))';
        QuerX.ParamByName('INICIO').AsDateTime := GetDtInicio;
        QuerX.ParamByName('FIM').AsDateTime := GetDtFim;
        QuerX.Open;
        while not QuerX.Eof do
        begin
          with Registro0150New do
          begin
            COD_PART := Trim(QuerX.FieldByName('CODIGO').AsString);
            NOME     := Trim(AnsiUpperCase(QuerX.FieldByName('RAZAOSOCIAL').AsString));
            COD_PAIS := '1058';
            if QuerX.FieldByName('TIPO').AsString = 'J'then
              CNPJ := OnlyNumber(QuerX.FieldByName('CNPJCPF').AsString)
            else
              CPF  := OnlyNumber(QuerX.FieldByName('CNPJCPF').AsString);
              if QuerX.FieldByName('CNPJCPF').AsString = '' then
                IE       := OnlyNumber(QuerX.FieldByName('INSCIDENT').AsString);
            COD_MUN  := QuerX.FieldByName('CODCIDADE').AsInteger;
//              SUFRAMA  := Clientes.FieldByName('SUFRAMA').AsString;
            ENDERECO := Trim(AnsiUpperCase(QuerX.FieldByName('ENDERECO').AsString));
            NUM      := Trim(QuerX.FieldByName('NUMERO').AsString);
            COMPL    := '';//Trim(UpperCase(QuerX.FieldByName('COMPLEMENTO').AsString));
            BAIRRO   := Trim(AnsiUpperCase(QuerX.FieldByName('BAIRRO').AsString));
          end;
          QuerX.Next;
        end;
        ///////////////////////////////////FORNECEDORES\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
        QuerX.Close;
        QuerX.SQL.Text := 'select * ' +
                          'from PESSOAS P ' +
                          'where exists(select first 1 1 ' +
                          '             from NF_ENTRADA V ' +
                          '             where (V.dt_nota between :INICIO and :FIM)' +
                          '                   and (V.PESSOA_RESPONSAVEL_CODIGO = P.CODIGO)' +
                          '                   and (V.DT_FATURAMENTO is not null)' +
                          '                   and (V.nun_nf is not null))';
        QuerX.ParamByName('INICIO').AsDateTime := GetDtInicio;
        QuerX.ParamByName('FIM').AsDateTime := GetDtFim;
        QuerX.Open;
        while not QuerX.Eof do
        begin
          with Registro0150New do
          begin
            COD_PART := Trim(QuerX.FieldByName('CODIGO').AsString);
            NOME     := Trim(AnsiUpperCase(QuerX.FieldByName('RAZAOSOCIAL').AsString));
            COD_PAIS := '1058';
            if QuerX.FieldByName('TIPO').AsString = 'J'then
              CNPJ := OnlyNumber(QuerX.FieldByName('CNPJCPF').AsString)
            else
              CPF  := OnlyNumber(QuerX.FieldByName('CNPJCPF').AsString);
              if QuerX.FieldByName('CNPJCPF').AsString = '' then
                IE       := OnlyNumber(QuerX.FieldByName('INSCIDENT').AsString);
            COD_MUN  := QuerX.FieldByName('CODCIDADE').AsInteger;
//              SUFRAMA  := Clientes.FieldByName('SUFRAMA').AsString;
            ENDERECO := Trim(AnsiUpperCase(QuerX.FieldByName('ENDERECO').AsString));
            NUM      := Trim(QuerX.FieldByName('NUMERO').AsString);
            COMPL    := '';//Trim(UpperCase(QuerX.FieldByName('COMPLEMENTO').AsString));
            BAIRRO   := Trim(AnsiUpperCase(QuerX.FieldByName('BAIRRO').AsString));
          end;
          QuerX.Next;
        end;
        ///////////////////////////////////BANCOS/CONTAS para o registro 1601\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
        QuerX.Close;
        QuerX.SQL.Text := 'select * from contas where ativo = ''S''';
        Querx.Open;
        Querx.First;
        while not Querx.Eof do
        begin
          with Registro0150New do
          begin
            COD_PART := QuerX.FieldByName('CNPJCPF').AsString;
            NOME     := QuerX.FieldByName('DESCRICAO').AsString;
            ENDERECO := QuerX.FieldByName('ENDERECO').AsString;
          end;
          Querx.Next;
        end;
      end;
    {$ENDREGION}
    {$REGION '0190 - Unidades de Medidas'}

    ////////////APENAS PERFIL A, B///////////////////////////////////
      ////////////////////////UNIDADES VENDA\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
      if not(cbxPerfilSped.Text = 'C') then  //PERFIL C TEM QUE SER APENAS SINTETICO, ENTÂO AO NÂO ENVIAR OS PRODUTOS, TBM NAO ENVIAMOS
      begin                                  //A UNIDADE
        QuerX.Close;
        QuerX.SQL.Text := 'select VP.UNIDADE' + #13#10 +
                          'from VENDA_PRODUTO VP' + #13#10 +
                          'left join VENDA V on V.CODIGO = VP.CODVENDA' + #13#10 +
                          'where V.NF_DT_EMISSAO between :INICIO and :FIM' + #13#10 +
                                'and V.NOTAFISCAL is not null' + #13#10 +
                                'and V.DT_FATURAMENTO is not null' + #13#10 +
                          'union' + #13#10 +
                          'select VP.UNIDADE' + #13#10 +
                          'from NF_ENTRADA_PRODUTOS VP' + #13#10 +
                          'left join NF_ENTRADA V on V.CODIGO = VP.CODNF_ENTRADA' + #13#10 +
                          'where V.DT_NOTA between :INICIO and :FIM' + #13#10 +
                                'and V.NUN_NF is not null' + #13#10 +
                                'and V.DT_FATURAMENTO is not null    ' + #13#10 +
                          'union ' + #13#10 +
                          'select P.UNIDADE' + #13#10 +
                          'from PRODUTO P' + #13#10 +
                          'where not(p.unidade = '''')';

        QuerX.ParamByName('INICIO').AsDateTime := GetDtInicio;
        QuerX.ParamByName('FIM').AsDateTime := GetDtFim;
        QuerX.Open;
        while not QuerX.Eof do
        begin
          with Registro0190New do
          begin
             UNID  := AnsiUpperCase(QuerX.FieldByName('UNIDADE').AsString);
             DESCR := AnsiUpperCase(QuerX.FieldByName('UNIDADE').AsString);
           end;
          QuerX.Next;
        end;
       { //COMPRA
        QuerX.Close;
//        QuerX.SQL.Text := 'select *' + #13#10 +
//                          'from UNIDADE U' + #13#10 +
//                          'where exists(select first 1 1' + #13#10 +
//                                       'from NF_ENTRADA_PRODUTOS VP, NF_ENTRADA V' + #13#10 +
//                                       'where (V.data between :INICIO and :FIM)' + #13#10 +
//                                             'and VP.unidade = U.UNIDADE' + #13#10 +
//                                             'and VP.codnf_entrada = V.CODIGO' + #13#10 +
//                                             'and V.dt_faturamento is not null' + #13#10 +
//                                             'and (V.nun_nf is not null))';
        //////////////////////////////////UNIDADES COMPRA\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
        QuerX.SQL.Text := 'select nf.unidade, nf.unidade as DESCRICAO from NF_ENTRADA_PRODUTOs nf' + #13#10 +
                          'left join nf_entrada nfe on nfe.codigo = nf.codnf_entrada' + #13#10 +
                          'where nfe.Dt_nota between :INICIO and :FIM' + #13#10 +
                          'group by 1';
        QuerX.ParamByName('INICIO').AsDateTime := GetDtInicio;
        QuerX.ParamByName('FIM').AsDateTime := GetDtFim;
        QuerX.Open;                                              //Aqui tem um problema, na compra existem varias unidades
        while not QuerX.Eof do                                   //malucas, e o Sped pede, porque no registro C170 ele vai
        begin                                                    //enviar esses produtos com essas medidas.
          with Registro0190New do                                //Mas elas podem duplicar com as da venda, ai tem que editar no programa EFD ICMS/IPI
          begin                                                  //http://sped.rfb.gov.br/projeto/show/274
             UNID  := AnsiUpperCase(QuerX.FieldByName('UNIDADE').AsString);
             DESCR := AnsiUpperCase(QuerX.FieldByName('DESCRICAO').AsString);
           end;
          QuerX.Next;
        end;
        //////////////////////////////UNIDADE PRODUTO\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
        QuerX.SQL.Text := 'select P.unidade, P.unidade as DESCRICAO from PRODUTO P group by 1';
        QuerX.Open;
        while not QuerX.Eof do
        begin
          with Registro0190New do
          begin
             UNID  := AnsiUpperCase(QuerX.FieldByName('UNIDADE').AsString);
             DESCR := AnsiUpperCase(QuerX.FieldByName('DESCRICAO').AsString);
           end;
          QuerX.Next;
        end;  }
    {$ENDREGION}
    {$REGION '0200 - Produtos'}
      ////////////////////////PRODUTOS VENDA\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
//        QuerX.SQL.Text := 'select P.*, PT.CLASSIFICACAO ' +
//                          'from PRODUTO P ' +
//                          'left join PRODUTO_TIPO PT on PT.CODIGO = P.CODPRODUTO_TIPO ' +
//                          'where exists(select first 1 1 ' +
//                          '             from VENDA_PRODUTO VP, VENDA V ' +
//                          '             where (v.NF_DT_EMISSAO between :INICIO and :FIM) ' +
//                          '                   and VP.CODPRODUTO = P.CODIGO ' +
//                          '                   and VP.CODVENDA = V.CODIGO ' +
//                          '                   and V.dt_faturamento is not null' +
//                          '                   and (V.NOTAFISCAL is not null))';
//        QuerX.ParamByName('INICIO').AsDateTime := GetDtInicio;
//        QuerX.ParamByName('FIM').AsDateTime := GetDtFim;               //Aqui Vamos Registrar os Produtos da Venda e da Compra
//        QuerX.Open;                                                    //Esse registro é necessario, pois o SPED precisa dos produtos no arquivo
//        QuerX.first;
//        while not QuerX.Eof do                                         //antes de ele aparecer nas vendas ou nas compras
//        begin                                                          //Se um produto está aqui e não está nas compras ou nas vendas da erro pelo validador
//          with Registro0200New do                                      //Se um produto que a compra ou a venda usar e não estiver aqui da erro pelo validador
//          begin                                                        //por isso é importante os SQLs desse registro 0200 e do registro C170 estejam ok
//            COD_ITEM     := Trim(QuerX.FieldByName('CODIGO').AsString);
//            DESCR_ITEM   := Trim(AnsiUpperCase(QuerX.FieldByName('DESCRICAO').AsString));
//            COD_BARRA    := Trim(QuerX.FieldByName('CODFABRICA').AsString);
//  //            COD_ANT_ITEM := '';
//            UNID_INV     := AnsiUpperCase(QuerX.FieldByName('UNIDADE').AsString);
//            TIPO_ITEM    := ACBrEFDBlocos.TACBrTipoItem(ACBrTipoItemDescricaoToEnum(QuerX.FieldByName('CLASSIFICACAO').AsString));   //tiMercadoriaRevenda
//            COD_NCM      := OnlyNumber(Trim(QuerX.FieldByName('CODNF_NCM').AsString));
//            EX_IPI       := Trim(QuerX.FieldByName('NF_EXTIPI').AsString);
//            COD_GEN      := '';
//  //            COD_LST      := '';
//            ALIQ_ICMS    := 17;//Produtos.FieldByName('NF_PICMS').AsString;  //17
//          end;
//          QuerX.Next;
//        end;
        ////////////////////////PRODUTOS COMPRA\\\\\\\\\\\\\\\\\\\\\\\
        QuerY.SQL.Text := 'select VP.CODFABRICA, VP.CODPRODUTO, VP.DESCRICAO, VP.UNIDADE, VP.CODNF_NCM, NF_EXTIPI, PT.CLASSIFICACAO' + #13#10 +
                          'from NF_ENTRADA_PRODUTOS VP' + #13#10 +
                          'left join NF_ENTRADA V on V.CODIGO = VP.CODNF_ENTRADA' + #13#10 +
                          'left join PRODUTO_TIPO PT on PT.CODIGO = VP.CODPRODUTO_TIPO' + #13#10 +
                          'where (V.dt_nota between :INICIO and :FIM)' + #13#10 +
                                'and V.DT_FATURAMENTO is not null' + #13#10 +
                                'and (V.NUN_NF is not null)' + #13#10 +
                          'group by 1, 2, 3, 4, 5, 6, 7';
        QuerY.ParamByName('INICIO').AsDateTime := GetDtInicio;
        QuerY.ParamByName('FIM').AsDateTime := GetDtFim;
        QuerY.Open;
        QuerY.first;
        while not QuerY.Eof do
        begin
          with Registro0200New do
          begin
//            if QuerX.FieldByName('CODPRODUTO').AsString = '' then
              COD_ITEM     := Trim(QuerY.FieldByName('CODFABRICA').AsString);
//            else
//              COD_ITEM     := Trim(QuerX.FieldByName('CODPRODUTO').AsString);

            DESCR_ITEM   := Trim(AnsiUpperCase(QuerY.FieldByName('DESCRICAO').AsString));
            COD_BARRA    := Trim(QuerY.FieldByName('CODFABRICA').AsString);
  //            COD_ANT_ITEM := '';
            UNID_INV     := AnsiUpperCase(QuerY.FieldByName('UNIDADE').AsString);
            TIPO_ITEM    := ACBrEFDBlocos.TACBrTipoItem(ACBrTipoItemDescricaoToEnum(QuerY.FieldByName('CLASSIFICACAO').AsString)); //tiMercadoriaRevenda;
            COD_NCM      := OnlyNumber(Trim(QuerY.FieldByName('CODNF_NCM').AsString));
            EX_IPI       := Trim(QuerY.FieldByName('NF_EXTIPI').AsString);
            COD_GEN      := '';
  //            COD_LST      := '';
            ALIQ_ICMS    := 17;//Produtos.FieldByName('PICMS').AsString;  //17
          end;
          QuerY.Next;
        end;
        //////////////////////PRODUTOS PARA INVENTARIO BLOCO H\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
        Produtos.Open;
        Produtos.first;
        while not Produtos.Eof do
        begin
          {$REGION 'H010 - Estoque'}
          with Registro0200New do
          begin
            COD_ITEM     := Trim(Produtos.FieldByName('CODIGO').AsString);
            DESCR_ITEM   := Trim(AnsiUpperCase(Produtos.FieldByName('DESCRICAO').AsString));
            COD_BARRA    := Trim(Produtos.FieldByName('CODFABRICA').AsString);
  //            COD_ANT_ITEM := '';
            UNID_INV     := AnsiUpperCase(Produtos.FieldByName('UNIDADE').AsString);
            TIPO_ITEM    := ACBrEFDBlocos.TACBrTipoItem(ACBrTipoItemDescricaoToEnum(Produtos.FieldByName('CLASSIFICACAO').AsString)); //tiMercadoriaRevenda;
            COD_NCM      := OnlyNumber(Trim(Produtos.FieldByName('CODNF_NCM').AsString));
            EX_IPI       := Trim(Produtos.FieldByName('NF_EXTIPI').AsString);
            COD_GEN      := '';
  //            COD_LST      := '';
            ALIQ_ICMS    := 17;//Produtos.FieldByName('PICMS').AsString;  //17
          end;
          Produtos.Next;
        end;
        Produtos.Close;
      end;
      /////////////////////////// Termina Aqui //////////////////////////////////
    {$ENDREGION}
     end;
  {$ENDREGION'}
  finally
    QuerX.Free;
    QuerY.Free;
    AEmpresa.Free;
  end;
end;


//Outras Informações
/////////////////////////AQUI È Só Negação ou SONEGACAO \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
procedure TFrmAuditoriaSINTEGRA_e_SPED.GerarSPED_Bloco1;
var
  QuerX : TIBQuery;
begin
  {$REGION '1001 - Registros Gerais'}
  with ACBrSPEDFiscal1.Bloco_1 do
  begin
    with Registro1001New do
    begin
      IND_MOV := imComDados;
      with Registro1010New do
      begin
        IND_EXP   := 'N'; // Reg. 1100 - Ocorreu averbação (conclusão) de exportação no período:
        IND_CCRF  := 'N'; // Reg. 1200 – Existem informações acerca de créditos de ICMS a serem controlados, definidos pela Sefaz:
        IND_COMB  := 'N'; // Reg. 1300 – É comercio varejista de combustíveis:
        IND_USINA := 'N'; // Reg. 1390 – Usinas de açúcar e/álcool – O estabelecimento é produtor de açúcar e/ou álcool carburante:
        IND_VA    := 'N'; // Reg. 1400 – Existem informações a serem prestadas neste registro e o registro é obrigatório em sua Unidade da Federação:
        IND_EE    := 'N'; // Reg. 1500 - A empresa é distribuidora de energia e ocorreu fornecimento de energia elétrica para consumidores de outra UF:
        IND_CART  := 'N'; // Reg. 1600 - Realizou vendas com Cartão de Crédito ou de débito:
        IND_FORM  := 'N'; // Reg. 1700 - É obrigatório em sua unidade da federação o controle de utilização de documentos  fiscais em papel:
        IND_AER   := 'N'; // Reg. 1800 – A empresa prestou serviços de transporte aéreo de cargas e de passageiros:
        IND_GIAF1 := 'N'; // Reg. 1960 - Possui informações GIAF1?
        IND_GIAF3 := 'N'; // Reg. 1970 - Possui informações GIAF3?
        IND_GIAF4 := 'N'; // Reg. 1980 - Possui informações GIAF4?
        IND_REST_RESSARC_COMPL_ICMS := 'N'; // Reg. 1250 – Possui informações consolidadas de saldos de restituição, ressarcimento e complementação do ICMS?
      end;
    end;

    QuerX := GeraQuery;

    try

      QuerX.Close;
      QuerX.SQL.Text := 'select c.cnpjcpf, SUM(F.VALOR - coalesce(F.DESCONTO, 0) + coalesce(F.JUROS, 0)) as TOTAL from financeiro f' + #13#10 +
                        'left join contas c on c.codigo = f.codconta' + #13#10 +
                        'where (c.tipo = ''BANCO'')  and ' + #13#10 +
                        '(f.tipo = ''RECEBIDA'') and' + #13#10 +
                        '(f.status like ''ATIVO%'') and' + #13#10 +
                        '(f.datapagto between :D1 and :D2) and' + #13#10 +
                        '((f.tipopagto like ''%PIX%'') or (f.tipopagto like ''%BOLETO%''))' + #13#10 +
                        'group by 1';
      QuerX.Open;
      QuerX.First;
      while not QuerX.Eof do
      begin
        with Registro1601New do
        begin
          COD_PART_IP  := QuerX.FieldByName('CNPJCPF').AsString;
          COD_PART_IT  := '';
          TOT_VS       := QuerX.FieldByName('TOTAL').AsFloat;
          TOT_ISS      := QuerX.FieldByName('TOTAL').AsFloat;
          TOT_OUTROS   := 0;
        end;
        QuerX.next;
      end;
    finally
      QuerX.free;
    end;
  end;
  {$ENDREGION}
end;
//Documentos Fiscais I – Mercadorias (ICMS/IPI)
//////////////////////////////////BLOCO C\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
procedure TFrmAuditoriaSINTEGRA_e_SPED.GerarSPED_BlocoC;
var
  ATotal : Double;
  QuerX, QuerY, QuerPagamento, QuerNF : TIBQuery;
  AEmpresa : TSintegraEmpresa;
  ADtInicio, ADtFim, ADataAtual : TDateTime;
  INotas: integer;
  IItens: integer;
  NNotas: integer;
  BNotas: integer;
  ASequencia : integer;
  A_VL_OPR, A_VL_BC_ICMS, A_VL_BC_ICMS170, A_VL_ICMS : double;
begin
  AEmpresa := GetEmpresa;
  QuerX := GeraQuery;
  QuerY := GeraQuery;
  QuerNF := GeraQuery;
  try
    NNotas := StrToInt64Def(edNotas.Text, 1);
    BNotas := StrToInt64Def(edBufNotas.Text, 1);
    with ACBrSPEDFiscal1.Bloco_C do
    begin
      {$REGION 'C001'}
      with RegistroC001New do
      begin
        IND_MOV := imComDados;
        QuerX.Close;
        QuerX.SQL.Text := 'select * ' +
                          'from VENDA V ' +
                          'where (V.NF_DT_EMISSAO between :DtInicio and :DtFim) ' +
                          '      and (V.DT_FATURAMENTO is not null) ' +
                          '      and (V.NOTAFISCAL is not null)';
        QuerX.ParamByName('DtInicio').AsDateTime := GetDtInicio;
        QuerX.ParamByName('DtFim').AsDateTime    := GetDtFim;
        QuerX.Open;
//        if QuerX.IsEmpty then
//          IND_MOV := imSemDados;

        A_VL_BC_ICMS := 0;
        A_VL_ICMS := 0;

        QuerX.First;
        while not QuerX.Eof do
        begin
        //////////////////////////C100 VENDA(APENAS VENDAS)\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
        {$REGION 'C100 Venda' Venda}
          with RegistroC100New do
          begin
            {$REGION 'C170'} ////////////C170 REGISTRO QUE ADICIONA OS PRODUTOS DA VENDA\\\\\\\\\\\\\\\\\\\\\\\\
            //////////////////// APENAS PERFL A - B ////////////////////////////
            if not(cbxPerfilSped.Text = 'C') then
            begin
              QuerY := GeraQuery;
              try
                QuerY.SQL.Text :=  'Select * from Venda_Produto where CODVENDA = :Codigo and PARENT = NULL';
                QuerY.ParamByName('Codigo').AsString :=  QuerX.FieldByName('CODIGO').AsString;
                QuerY.Open;
                ASequencia := 1;
                while not QuerY.Eof do
                begin
//                  A_VL_BC_ICMS170 := A_VL_BC_ICMS170 + QuerY.FieldByName('VALOR').AsFloat;
 {                 with RegistroC170New do // Inicio Adicionar os Itens:
                  begin
                    NUM_ITEM := inttostr(ASequencia);//Trim(QuerY.FieldByName('CODIGO').AsString);
                    COD_ITEM := Trim(QuerY.FieldByName('CODPRODUTO').AsString);
                    DESCR_COMPL := '';//Trim(QuerY.FieldByName('PRODUTO').AsString);
                    QTD := QuerY.FieldByName('QUANT').AsFloat;
                    UNID := QuerY.FieldByName('UNIDADE').AsString;
                    VL_ITEM := QuerY.FieldByName('VALOR').AsFloat;
                    VL_DESC := 0;
                    IND_MOV := mfNao;
                    CST_ICMS := Trim(QuerY.FieldByName('CODNF_CST').AsString);//'0';//IntToStr(Trunc(QuerY.FieldByName('PICMSST').AsInteger));
                    CFOP := Trim(QuerY.FieldByName('CODNF_CFOP').AsString);
                    COD_NAT := ''; //'64';
                    VL_BC_ICMS := QuerY.FieldByName('NF_VBC').AsFloat;
                    A_VL_BC_ICMS := A_VL_BC_ICMS + QuerY.FieldByName('VALOR').AsFloat;
                    ALIQ_ICMS := Trunc(QuerY.FieldByName('NF_PICMS').AsInteger);//0;
                    VL_ICMS := QuerY.FieldByName('NF_VICMS').AsFloat;
                    A_VL_ICMS  := A_VL_ICMS + QuerY.FieldByName('VALOR').AsFloat*(Trunc(QuerY.FieldByName('NF_PICMS').AsInteger)/100);
                    VL_BC_ICMS_ST := 0;
                    ALIQ_ST := 0;
                    VL_ICMS_ST := 0;
                    IND_APUR := iaMensal;
                    CST_IPI := '99'; //ipiEntradaIsenta;
                    COD_ENQ := '';
                    VL_BC_IPI := 0;
                    ALIQ_IPI := 0;
                    VL_IPI := 0;
  //                  CST_PIS := pisOutrasOperacoes;
                    VL_BC_PIS := 0;
                    ALIQ_PIS_PERC := 0;
                    QUANT_BC_PIS := 0;
                    ALIQ_PIS_R := 0;
                    VL_PIS := 0;
  //                  CST_COFINS := cofinsOutrasOperacoes;
                    VL_BC_COFINS := 0;
                    ALIQ_COFINS_PERC := 0;
                    QUANT_BC_COFINS := 0;
                    ALIQ_COFINS_R := 0;
                    VL_COFINS := 0;//QuerY.FieldByName('COFINS_VCOFINS').AsFloat;
                    COD_CTA := '000';
                  end; // Fim dos Itens; }
                  ASequencia := ASequencia +1;
                  QuerY.Next;
                end;
              finally
                QuerY.Free;
              end;
            end;
            ////////////////////////TERMINA AQUI C170 VENDA_PRODUTO/////////////////////////////
            {$ENDREGION}
            {$REGION 'C190'}
            //OBRIGATORIO PARA O PERFIL C QUANDO EXISTIR O C100(Vendas ou compras)
            // REGISTRO C190: REGISTRO ANALÍTICO DO DOCUMENTO (CÓDIGO 01, 1B, 04 E 55).
            QuerY := GeraQuery;
            try
              QuerY.SQL.Text := 'select VP.NF_PICMS,sum(VP.NF_VBC) as NF_VBC, VP.CODNF_CST, ' +
                                '       sum(coalesce(VP.VALOR * VP.QUANT, 0)) as VALOR_TOTAL,' +
                                '       VP.CODNF_CFOP, sum(VP.NF_ICMS_MODBCST) as ICMS_MODBCST,' +
                                '       sum(VP.NF_IPI_VIPI) as NF_IPI_VIPI,        ' +
                                '       sum(VP.NF_VICMS) as NF_VICMS            ' +
                                'from VENDA_PRODUTO VP                             ' +
                                'where (VP.CODVENDA = :CODIGO) and (VP.PARENT IS NULL) ' +
                                'group by VP.CODNF_CFOP, VP.NF_PICMS, VP.CODNF_CST';
              QuerY.ParamByName('Codigo').AsString :=  QuerX.FieldByName('CODIGO').AsString;
              QuerY.Open;
              with RegistroC190New do
              begin
                CST_ICMS := Trim(QuerY.FieldByName('CODNF_CST').AsString);
                CFOP := Trim(QuerY.FieldByName('CODNF_CFOP').AsString);
                ALIQ_ICMS := QuerY.FieldByName('NF_PICMS').AsCurrency;
                VL_OPR := QuerY.FieldByName('VALOR_TOTAL').AsFloat;
                A_VL_OPR := QuerY.FieldByName('VALOR_TOTAL').AsFloat;
//                VL_BC_ICMS := QuerY.FieldByName('NF_VBC').AsCurrency; //
               //AQUI VAI SOMANDO A BASE DE CALCULO PARA GARANTIR NO SPED O RESULTADO LOGO ABAIXO
                A_VL_BC_ICMS := QuerY.FieldByName('NF_VBC').AsCurrency;
                VL_BC_ICMS := A_VL_BC_ICMS;
                VL_ICMS := QuerY.FieldByName('NF_VICMS').AsCurrency;//
                VL_BC_ICMS_ST := 0.00;/////QuerX.FieldByName('NF_VALOR_ICMS_ST').AsFloat;
                VL_ICMS_ST := 0;
                VL_RED_BC := 0;
                VL_IPI := QuerY.FieldByName('NF_IPI_VIPI').AsCurrency;
                ICMS := QuerY.FieldByName('NF_VICMS').AsCurrency;
  //              COD_OBS := '000';
              end; // Fim dos Itens;
            finally
              QuerY.Free;
            end;
            {$ENDREGION}
            /////////////////CONTINUACAO DO C100 DA VENDA\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

            QuerNF.Close;    //BUSCA CHAVE DA NF DA VENDA
            QuerNF.SQL.Text := 'select nf.nf_chave, nf.serie, nf.tipo from nota_fiscal nf where nf.codvenda = :CODIGO and nf.NF_SITUACAO = ''Autorizada'' and nf.NF_AMBIENTE = 1';
            QuerNF.ParamByName('CODIGO').Value := QuerX.FieldByName('CODIGO').AsString;
            QuerNF.Open;

            IND_OPER := tpSaidaPrestacao;//tpEntradaAquisicao;
            if QuerNF.FieldByName('TIPO').AsString = 'NFe' then  //regra do sped nfce nao informa codigo do cliente
              COD_PART := Trim(QuerX.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString);
            SER := QuerNF.FieldByName('SERIE').AsString;

            if QuerNF.FieldByName('TIPO').AsString = 'NFe' then
              COD_MOD := '55';
            if QuerNF.FieldByName('TIPO').AsString = 'NFCe' then
              COD_MOD := '65';

//            COD_MOD := '01';
            //          COD_SIT := sdRegular;
  //          SER := '';
            NUM_DOC := Trim(QuerX.FieldByName('NOTAFISCAL').AsString);
//            if QuerNF.FieldByName('SERIE').AsInteger = 55 then
              CHV_NFE := QuerNF.FieldByName('NF_CHAVE').AsString;    //Fiz um query para buscar as chaves da NF, nao quis alterar as que já estão lá para nao ter divergencias.
            DT_DOC := QuerX.FieldByName('NF_DT_EMISSAO').AsCurrency;
            DT_E_S := QuerX.FieldByName('NF_DT_EMISSAO').AsCurrency;
            VL_DOC := A_VL_OPR;//QuerX.FieldByName('TOTAL').AsFloat;//

            QuerPagamento := GeraQuery;
            try
              QuerPagamento.SQL.Text := 'select * from VENDA_FINANCEIRO VF where VF.CODVENDA = :CODVENDAFIN';
              QuerPagamento.Params[0].AsString := QuerX.FieldByName('CODIGO').AsString;
              QuerPagamento.Open;
              if (QuerPagamento.RecordCount > 1) or (QuerPagamento.FieldByName('VENCTO').AsDateTime > QuerPagamento.FieldByName('EMISSAO').AsDateTime) then
                IND_PGTO := tpPrazo
              else if QuerPagamento.FieldByName('CODCONDICAOPAGTO').AsString = '1' then
                IND_PGTO := tpVista
              else if QuerPagamento.IsEmpty then
                IND_PGTO := tpNenhum
              else
      //          IND_PGTO := tpOutros;
            finally
              QuerPagamento.Free;
            end;


            //IND_PGTO := tpSemPagamento;
            VL_DESC := QuerX.FieldByName('VDESC').AsFloat;
            VL_ABAT_NT := 0;
            VL_MERC := QuerX.FieldByName('TOTAL').AsFloat;
            IND_FRT := tfSemCobrancaFrete;
            VL_SEG := 0;
            VL_OUT_DA := 0;
            //RESULTADO DA BASE DE CALCULO AQUI
            VL_BC_ICMS := A_VL_BC_ICMS;//QuerX.FieldByName('NF_VBC').AsCurrency;
            VL_ICMS := QuerX.FieldByName('NF_VICMS').AsFloat;
            VL_BC_ICMS_ST := 0;
            VL_ICMS_ST := QuerX.FieldByName('NF_VICMSST').AsFloat;
            VL_IPI := QuerX.FieldByName('NF_IPI_VIPI').AsFloat;
            VL_PIS := QuerX.FieldByName('NF_PIS_VPIS').AsFloat;
            VL_COFINS := QuerX.FieldByName('NF_COFINSST_VCOFINS').AsFloat;
            VL_PIS_ST := 0;
            VL_COFINS_ST := 0;
            ////////////////////TERMINA O C100 VENDA AQUI\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
            {$ENDREGION}
          end;
          A_VL_OPR := 0;
          QuerX.Next;
        end;
        {$REGION 'C100 Entrada' Entrada}
        ////////////////////////C100 da ENTRADA DE MERCADORIA\\\\\\\\\\\\\\\\\\\\\\\\\
        QuerX.Close;
        QuerX.SQL.Text := 'select * ' +
                          'from NF_ENTRADA NF ' +
                          'where (NF.dt_nota between :DtInicio and :DtFim) ' +
                          '      and (NF.DT_FATURAMENTO is not null) ' +
                          '      and (NF.nun_nf is not null)';
        QuerX.ParamByName('DtInicio').AsDateTime := GetDtInicio;
        QuerX.ParamByName('DtFim').AsDateTime    := GetDtFim;
        QuerX.Open;
        QuerX.First;
        while not QuerX.Eof do
        begin

          with RegistroC100New do
          begin
            {$REGION 'C170'}
            ////////////////NAO È OBRIGATORIO PARA O PERFIL C\\\\\\\\\\\\\\\\\\\\
            /////////////////REGISTRO C170 que adiciona os produtos da entrada de mercadoria\\\\\\\\\\\\\\\\\\\\\\\\
            if not(cbxPerfilSped.Text = 'C')  then
            begin
              QuerY := GeraQuery;
              try
                QuerY.SQL.Text :=  'Select * from NF_ENTRADA_PRODUTOS where CODNF_ENTRADA = :Codigo';
                QuerY.ParamByName('Codigo').AsString :=  QuerX.FieldByName('CODIGO').AsString;
                QuerY.Open;
                ASequencia := 1;
                while not QuerY.Eof do
                begin
                  with RegistroC170New do // Inicio Adicionar os Itens:
                  begin
                    NUM_ITEM := inttostr(ASequencia);//Trim(QuerY.FieldByName('CODIGO').AsString);
//                    if QuerY.FieldByName('CODPRODUTO').AsString = ''  then
                      COD_ITEM := Trim(QuerY.FieldByName('CODFABRICA').AsString);
//                    else
//                      COD_ITEM := Trim(QuerY.FieldByName('CODPRODUTO').AsString);

                    DESCR_COMPL := Trim(QuerY.FieldByName('DESCRICAO').AsString);
                    QTD := QuerY.FieldByName('QUANT').AsFloat;
                    UNID := QuerY.FieldByName('UNIDADE').AsString;
                    VL_ITEM := QuerY.FieldByName('VALOR_COMPRA').AsFloat;
                    VL_DESC := vartointdef(QuerY.FieldByName('VDESC').Value,0);
                    IND_MOV := mfNao;
                    CST_ICMS := Trim(QuerY.FieldByName('CODNF_CST').AsString);//'0';//IntToStr(Trunc(QuerY.FieldByName('PICMSST').AsInteger));
                    CFOP := QuerY.FieldByName('CFOP_COMPRA').AsString;
                    COD_NAT := ''; //'64';
                    VL_BC_ICMS := QuerY.FieldByName('NF_VBC').AsFloat;
                    A_VL_BC_ICMS := A_VL_BC_ICMS + QuerY.FieldByName('VALOR_COMPRA').AsFloat;
                    ALIQ_ICMS := QuerY.FieldByName('NF_PICMS').AsInteger;
                    VL_ICMS := QuerY.FieldByName('NF_VICMS').AsFloat;
                    A_VL_ICMS  := A_VL_ICMS + QuerY.FieldByName('VALOR_COMPRA').AsFloat*(Trunc(QuerY.FieldByName('NF_PICMS').AsInteger)/100);
                    VL_BC_ICMS_ST := QuerY.FieldByName('NF_VBCST').AsFloat;
                    ALIQ_ST := QuerY.FieldByName('NF_PICMSST').AsFloat;
                    VL_ICMS_ST := QuerY.FieldByName('NF_VICMSST').AsFloat;
                    IND_APUR := iaMensal;
                    CST_IPI := '02';
                    COD_ENQ := '';
                    VL_BC_IPI := QuerY.FieldByName('NF_IPI_VBC').AsFloat;
                    ALIQ_IPI := QuerY.FieldByName('NF_IPI_PIPI').AsFloat;
                    VL_IPI := QuerY.FieldByName('NF_IPI_VIPI').AsFloat;
                    CST_PIS := vartoStrdef(QuerY.FieldByName('NF_PIS_CST').Value,'');
                    VL_BC_PIS := QuerY.FieldByName('NF_PIS_VBC').AsFloat;
                    ALIQ_PIS_PERC := QuerY.FieldByName('NF_PISST_QBCPROD').AsFloat;
                    QUANT_BC_PIS := QuerY.FieldByName('NF_PISST_QBCPROD').AsFloat;
                    ALIQ_PIS_R := 0;
                    VL_PIS := QuerY.FieldByName('NF_PIS_VPIS').AsFloat;
                    CST_COFINS := vartoStrdef(QuerY.FieldByName('NF_COFINS_CST').Value,'');
                    VL_BC_COFINS := QuerY.FieldByName('NF_COFINS_VBC').AsFloat;
                    ALIQ_COFINS_PERC := 0;
                    QUANT_BC_COFINS := QuerY.FieldByName('NF_COFINS_VBCPROD').AsFloat;
                    ALIQ_COFINS_R := QuerY.FieldByName('NF_COFINS_PCOFINS').AsFloat;
                    VL_COFINS := QuerY.FieldByName('NF_COFINS_VCOFINS').AsFloat;//QuerY.FieldByName('COFINS_VCOFINS').AsFloat;
                    COD_CTA := '000';
                  end; // Fim dos Itens; }
                  ASequencia := ASequencia +1;
                  QuerY.Next;
                end;
              finally
                QuerY.Free;
              end;
            end;
            {$ENDREGION}
            ///////////////TERMINA AQUI O REGISTRO C170 DA ENTRADA DE MERCADORIA\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
            {$REGION 'C190'}
            //OBRIGATORIO PARA O PERFIL C quando existe VENDA ou COMRPA
            // REGISTRO C190: REGISTRO ANALÍTICO DO DOCUMENTO (CÓDIGO 01, 1B, 04 E 55).
            QuerY := GeraQuery;
            try
              QuerY.SQL.Text := 'select NF.NF_PICMS,sum(coalesce(NF.NF_VBC,0)) as NF_VBC, NF.CODNF_CST,' + #13#10 +
                                       'sum(coalesce(NF.VALOR, 0)) as VALOR_TOTAL, sum(coalesce(TOTAL_COMPRA, 0)) as TOTAL,' + #13#10 +
                                       'NF.CFOP_COMPRA, sum(coalesce(NF.NF_ICMS_MODBCST, 0)) as ICMS_MODBCST,' + #13#10 +
                                       'sum(coalesce(NF.NF_IPI_VIPI, 0)) as NF_IPI_VIPI,' + #13#10 +
                                       'sum(coalesce(NF.NF_VICMS, 0)) as NF_VICMS, sum(coalesce(NF.NF_VICMSST,0)) as NF_VICMSST,   sum(coalesce(NF.NF_VBCST,0)) as NF_VBCST, sum(coalesce(NF.NF_VBCSTRET,0)) as NF_VBCSTRET'  + #13#10 +
                                'from NF_ENTRADA_PRODUTOS NF' + #13#10 +
                                'where (NF.CODNF_ENTRADA = :CODIGO)' + #13#10 +
                                'group by NF.CFOP_COMPRA, NF.NF_PICMS, NF.CODNF_CST';
              QuerY.ParamByName('Codigo').AsString :=  QuerX.FieldByName('CODIGO').AsString;
              QuerY.Open;
              QuerY.First;
              while NOT QuerY.Eof do
              begin
                with RegistroC190New do
                begin
                  CST_ICMS := Trim(QuerY.FieldByName('CODNF_CST').AsString);
                  CFOP := QuerY.FieldByName('CFOP_COMPRA').AsString;//Trim(QuerY.FieldByName('CODNF_CFOP').AsString);
                  ALIQ_ICMS := QuerY.FieldByName('NF_PICMS').AsCurrency;
                  VL_OPR := QuerY.FieldByName('TOTAL').AsFloat;
                  A_VL_OPR := QuerY.FieldByName('TOTAL').AsFloat;
                  /////AQUI FOI DECTADO QUE ALGUMAS NOTAS DE COMPRA NAO ESTAVAM COM OS PRODUTOS COM BASE DE CALCULO, então foi pego o total feito na QUERX que é o TOTAL já somado da nota
                  VL_BC_ICMS := QuerY.FieldByName('NF_VBC').AsCurrency;//QuerY.FieldByName('NF_VBC').AsCurrency; //
                  VL_ICMS := QuerY.FieldByName('NF_VICMS').AsCurrency;//QuerY.FieldByName('NF_VICMS').AsCurrency;//

                  VL_BC_ICMS_ST := QuerY.FieldByName('NF_VBCST').AsFloat;
                  VL_ICMS_ST := QuerY.FieldByName('NF_VICMSST').AsFloat;
                  VL_RED_BC := Query.FieldByName('NF_VBCSTRET').AsFloat;
                  VL_IPI := QuerY.FieldByName('NF_IPI_VIPI').AsFloat;//QuerY.FieldByName('IPI_VIPI').AsCurrency;
                  ICMS := QuerY.FieldByName('NF_VICMS').AsCurrency;
    //              COD_OBS := '000';
                end; // Fim dos Itens;
                QuerY.Next;
              end;
            finally
              QuerY.Free;
            end;
            {$ENDREGION}
            IND_EMIT := edTerceiros;
            IND_OPER := tpEntradaAquisicao;
            COD_PART := Trim(QuerX.FieldByName('PESSOA_RESPONSAVEL_CODIGO').AsString);
            COD_MOD := '55';
            //          COD_SIT := sdRegular;
            SER := QuerX.FieldByName('SERIE').AsString;
            NUM_DOC := Trim(QuerX.FieldByName('NUN_NF').AsString);
            CHV_NFE := QuerX.FieldByName('NF_CHAVE').AsString;    // o sistema nao guardava a chave da nota de entrada, apartir de  12-02-2021 ele vai começar a guardar
            DT_DOC := QuerX.FieldByName('DT_NOTA').AsCurrency;
            DT_E_S := QuerX.FieldByName('DT_NOTA').AsCurrency;
            VL_DOC := A_VL_OPR;//QuerX.FieldByName('TOTAL').AsFloat;//

            QuerPagamento := GeraQuery;
            try
              QuerPagamento.SQL.Text := 'select * from NF_ENTRADA_PARCELAS NF where NF.CODNF_ENTRADA = :CODNFFIN';
              QuerPagamento.Params[0].AsString := QuerX.FieldByName('CODIGO').AsString;
              QuerPagamento.Open;
              if (QuerPagamento.RecordCount > 1) or (QuerPagamento.FieldByName('VENCTO').AsDateTime > QuerPagamento.FieldByName('EMISSAO').AsDateTime) then
                IND_PGTO := tpPrazo
              else if not(QuerPagamento.FieldByName('DATAPAGTO').IsNull) then
                IND_PGTO := tpVista
              else if QuerPagamento.IsEmpty then
                IND_PGTO := tpNenhum
              else
      //          IND_PGTO := tpOutros;
            finally
              QuerPagamento.Free;
            end;


            //IND_PGTO := tpSemPagamento;
            VL_DESC := QuerX.FieldByName('VDESC').AsFloat;
            VL_ABAT_NT := 0;
            VL_MERC := QuerX.FieldByName('TOTAL').AsFloat;
            IND_FRT := tfSemCobrancaFrete;
            VL_SEG := 0;
            VL_OUT_DA := 0;
            VL_BC_ICMS := QuerX.FieldByName('NF_VBC').AsCurrency;
            VL_ICMS := QuerX.FieldByName('NF_VICMS').AsFloat;
            VL_BC_ICMS_ST := 0;
            VL_ICMS_ST := QuerX.FieldByName('NF_VICMSST').AsFloat;
            VL_IPI := QuerX.FieldByName('NF_IPI_VIPI').AsFloat;
            VL_PIS := QuerX.FieldByName('NF_PIS_VPIS').AsFloat;
            VL_COFINS := QuerX.FieldByName('NF_COFINSST_VCOFINS').AsFloat;
            VL_PIS_ST := 0;
            VL_COFINS_ST := 0;
            {$ENDREGION}
          end;
          A_VL_OPR := 0;
          QuerX.Next;

        end;

      end;
      {$ENDREGION}
    end;
  finally
    QuerX.Free;
    AEmpresa.Free;
  end;
end;


//CTe
procedure TFrmAuditoriaSINTEGRA_e_SPED.GerarSPED_BlocoD;
begin

end;
//Apuração do ICMS e do IPI
procedure TFrmAuditoriaSINTEGRA_e_SPED.GerarSPED_BlocoE;
const
  ESTADOS: array [0 .. 1] of String = ('RS', 'SC');
var
  I: Integer;
  QuerX, QuerY : TIBQuery;
  ADtInicio, ADtFim, ADataAtual : TDateTime;
begin
  QuerX := GeraQuery;
  QuerY := GeraQuery;
  try
    QuerX.Close;
    ADtInicio := GetDtInicio;
    ADtFim    := GetDtFim;
    QuerX.SQL.Text := 'select sum(coalesce(V.NF_VICMS, 0)) as NF_VICMS ' +
                      'from VENDA V ' +
                      'where (V.DT_EMISSAO between :INICIO and :FIM) ' +
                      '      and V.DT_FATURAMENTO is not null ' +
                      '      and V.NOTAFISCAL is not null';
    QuerX.ParamByName('INICIO').AsDateTime := GetDtInicio;
    QuerX.ParamByName('FIM').AsDateTime := GetDtFim;
    QuerX.Open;
    ///////////////////////ENTRADA\\\\\\\\\\\\\\\\\\\\\\
    QuerY.Close;
    QuerY.SQL.Text := 'select sum(coalesce(v.NF_VICMS,0)) as NF_VICMS' + #13#10 +
                                'from NF_ENTRADA_PRODUTOS v' + #13#10 +
                                'left join nf_entrada nf on nf.codigo = v.codnf_entrada' + #13#10 +
                                'where' + #13#10 +
                                '(nf.dt_nota between :INICIO and :FIM)' + #13#10 +
                                'and nf.DT_FATURAMENTO is not null' + #13#10 +
                                'and (nf.NUN_NF is not null)';
    {'select sum(coalesce(V.NF_VICMS, 0)) as NF_VICMS ' +
                      'from NF_ENTRADA V ' +
                      'where (V.DT_NOTA between :INICIO and :FIM) ' +
                      '      and V.DT_FATURAMENTO is not null ' +
                      '      and V.NUN_NF is not null';}
    QuerY.ParamByName('INICIO').AsDateTime := GetDtInicio;
    QuerY.ParamByName('FIM').AsDateTime := GetDtFim;
    QuerY.Open;


    with ACBrSPEDFiscal1.Bloco_E do
    begin
      with RegistroE001New do
      begin
        IND_MOV := imComDados;
        with RegistroE100New do
        begin
          DT_INI := GetDtInicio;
          DT_FIN := GetDtFim;

          with RegistroE110New do
          begin
            VL_TOT_DEBITOS :=QuerX.FieldByName('NF_VICMS').AsCurrency;
            VL_AJ_DEBITOS := 0;
            VL_TOT_AJ_DEBITOS := 0;
            VL_ESTORNOS_CRED := 0;
            VL_TOT_CREDITOS := QuerY.FieldByName('NF_VICMS').AsCurrency;
            VL_AJ_CREDITOS := 0;
            VL_TOT_AJ_CREDITOS := 0;
            VL_ESTORNOS_DEB := 0;
            VL_SLD_CREDOR_ANT := 0;
            VL_SLD_APURADO := 0;//QuerY.FieldByName('NF_VICMS').AsCurrency;
            VL_TOT_DED := 0;
            VL_ICMS_RECOLHER := 0;// QuerX.FieldByName('NF_VICMS').AsCurrency;//ICMS;
            VL_SLD_CREDOR_TRANSPORTAR := QuerY.FieldByName('NF_VICMS').AsCurrency;
            DEB_ESP := 0;

  //          with RegistroE116New do
  //          begin
  //            COD_OR := '000';
  //            VL_OR := 0;
  //            DT_VCTO := Now;
  //            COD_REC := '123';
  //            NUM_PROC := '10';
  //            IND_PROC := opSefaz;
  //            PROC := 'DESCRIÇÃO DO PROCESSO';
  //            TXT_COMPL := '';
  //            MES_REF := '112011';
          end;
        end;
      end;

        { Gera um registro E200 e filhos para cada estado onde o contribuinte possui inscrição estadual }
      for I := Low(ESTADOS) to High(ESTADOS) do
      begin
  //        with RegistroE200New do
  //        begin
  //          DT_INI := StrToDate('01/11/2011');
  //          DT_FIN := StrToDate('30/11/2011');
  //          UF := ESTADOS[I];
  //
  //          with RegistroE210New do
  //          begin
  //            IND_MOV_ST := mstSemOperacaoST;
  //            VL_SLD_CRED_ANT_ST := 0;
  //            VL_DEVOL_ST := 0;
  //            VL_RESSARC_ST := 0;
  //            VL_OUT_CRED_ST := 0;
  //            VL_AJ_CREDITOS_ST := 0;
  //            VL_SLD_DEV_ANT_ST := 0.00;
  //            VL_DEDUCOES_ST := 0;
  //            VL_ICMS_RECOL_ST := 0.00;
  //            VL_SLD_CRED_ST_TRANSPORTAR := 0;
  //            VL_OUT_DEB_ST := 0.00;
  //            DEB_ESP_ST := 0;

              // with RegistroE220New do begin
              // COD_AJ_APUR    := 'RS109999';
              // DESCR_COMPL_AJ := '';
              // VL_AJ_APUR     := 0.00;
              //
              // with RegistroE230New do begin
              // NUM_DA    := '123';
              // NUM_PROC  := '123';
              // IND_PROC  := opOutros;
              // PROC      := 'DESCRIÇÃO RESUMIDA';
              // TXT_COMPL := 'COMPLEMENTO';
              // end;
              //
              // with RegistroE240New do begin
              // COD_PART   := '000001';
              // COD_MOD    := '01';
              // SER        := 'SERI';
              // SUB        := '';
              // NUM_DOC    := '123456789';
              // DT_DOC     := Now;
              // COD_ITEM   := '000001';
              // VL_AJ_ITEM := 0;
              // end;
              // end;

  //            with RegistroE250New do
  //            begin
  //              COD_OR := '000';
  //              VL_OR := 0;
  //              DT_VCTO := Now;
  //              COD_REC := '123';
  //              NUM_PROC := '1020304050';
  //              IND_PROC := opOutros;
  //              PROC := 'DESCRIÇÃO RESUMIDA';
  //              TXT_COMPL := '';
  //              MES_REF := '112011';
  //            end;
  //          end;
  //        end;
  //      end;
  //
  //      with RegistroE500New do
  //      begin
  //        IND_APUR := iaMensal;
  //        DT_INI := StrToDate('01/11/2011');
  //        DT_FIN := StrToDate('30/11/2011');
  //
  //        with RegistroE510New do
  //        begin
  //          CFOP := '5120';
  //          CST_IPI := '50';
  //          VL_CONT_IPI := 0;
  //          VL_BC_IPI := 0;
  //          VL_IPI := 0;
  //        end;
  //
  //        with RegistroE520New do
  //        begin
  //          VL_SD_ANT_IPI := 0;
  //          VL_DEB_IPI := 0;
  //          VL_CRED_IPI := 0;
  //          VL_OD_IPI := 10.00;
  //          VL_OC_IPI := 0;
  //          VL_SC_IPI := 0;
  //          VL_SD_IPI := 10.00;
  //
  //          with RegistroE530New do
  //          begin
  //            IND_AJ := ajDebito;
  //            VL_AJ := 10;
  //            COD_AJ := '001';
  //            IND_DOC := odOutros;
  //            NUM_DOC := '123';
  //            DESCR_AJ := 'DESCRIÇÃO DETALHADA';
  //          end;
      end;
          { fim registro E500 }
    end;
  finally
    QuerX.Free;
  end;
end;
//Controle do Crédito de ICMS do Ativo Permanente – CIAP
procedure TFrmAuditoriaSINTEGRA_e_SPED.GerarSPED_BlocoG;
begin

end;
//Inventário Físico
procedure TFrmAuditoriaSINTEGRA_e_SPED.GerarSPED_BlocoH;
var
  ATotal : Double;

begin
  {$REGION 'Bloco H'}
  with ACBrSpedFiscal1.Bloco_H do
  begin
    {$REGION 'H001'}
    with RegistroH001New do
    begin
      IND_MOV := imComDados;
      {$REGION 'H005'}
      with RegistroH005New do
      begin
        ATotal := 0;
        DT_INV := DtFim;
        Produtos.Open;
        while not Produtos.Eof do
        begin
          {$REGION 'H010 - Estoque'}
          with RegistroH010New do
          begin
            COD_ITEM  := Trim(Produtos.FieldByName('CODIGO').AsString);
            UNID      := Trim(UpperCase(Produtos.FieldByName('UNIDADE').AsString));
            QTD       := Max(Produtos.FieldByName('QUANT_ESTOQUE').AsCurrency, 0);
            VL_UNIT   := Produtos.FieldByName('VALOR').AsCurrency;
            VL_ITEM   := Produtos.FieldByName('VALOR').AsCurrency;
            IND_PROP  := piInformante;
            COD_PART  := '';//Iventario.FieldByName('CODIGO').AsString;
            TXT_COMPL := Trim(Produtos.FieldByName('DESCRICAO').AsString);
            COD_CTA   := '1';//Iventario.FieldByName('CODIGO').AsString;
            ATotal    := ATotal + Produtos.FieldByName('VALOR').AsFloat;;
          end;
          {$ENDREGION}
          {$REGION 'H020 - ~Tributação por ítem estoque'}
          {with RegistroH020New do
          begin
            CST_ICMS :=
            BC_ICMS :=
            VL_ICMS :=
          end;}
          {$ENDREGION}
          Produtos.Next;
        end;
        VL_INV := ATotal;
      end;
      {$ENDREGION}
    end;
    {$ENDREGION}
  end;
  {$ENDREGION}
end;

procedure TFrmAuditoriaSINTEGRA_e_SPED.GerarSPED_BlocoK;
begin
  with ACBrSpedFiscal1.Bloco_K do
  begin
    with RegistroK001New do
    begin
      IND_MOV := imSemDados;
      with RegistroK100New do
      begin
        DT_INI := GetDtInicio;
        DT_FIN := GetDtFim;
        with RegistroK200New do
        begin
          DT_EST := 0;
          COD_ITEM := '';
          QTD := 0;
//          IND_EST := '';
          COD_PART := '';
        end;
        with RegistroK210New do
        begin
          DT_INI_OS := 0;
          DT_FIN_OS := 0;
          COD_DOC_OS := '';
          COD_ITEM_ORI := '';
          QTD_ORI := 0;
        end;
        with RegistroK215New do
        begin
          COD_ITEM_DES := '';
          QTD_DES := 0;
        end;
        with RegistroK220New do
        begin
          DT_MOV := 0;
          COD_ITEM_ORI := '';
          COD_ITEM_DEST := '';
          QTD := 0;
          QTD_DEST := 0;
        end;
        with RegistroK230New do
        begin
          DT_INI_OP := 0;
          DT_FIN_OP := 0;
          COD_DOC_OP := '';
          COD_ITEM := '';
          QTD_ENC := 0;
        end;
        with RegistroK235New do
        begin
          DT_SAIDA := 0;
          COD_ITEM := '';
          QTD := 0;
          COD_INS_SUBST := '';
        end;
        with RegistroK250New do
        begin
          DT_PROD := 0;
          COD_ITEM := '';
          QTD := 0;
        end;
        with RegistroK255New do
        begin
          DT_CONS := 0;
          COD_ITEM := '';
          QTD := 0;
          COD_INS_SUBST := '';
        end;
        with RegistroK260New do
        begin
          COD_OP_OS := '';
          COD_ITEM := '';
          DT_SAIDA := 0;
          QTD_SAIDA := 0;
          DT_RET := 0;
          QTD_RET := 0;
        end;
        with RegistroK265New do
        begin
          COD_ITEM := '';
          QTD_CONS := 0;
          QTD_RET := 0;
        end;
        with RegistroK270New do
        begin
          DT_INI_AP := 0;
          DT_FIN_AP := 0;
          COD_OP_OS := '';
          COD_ITEM := '';
          QTD_COR_POS := 0;
          QTD_COR_NEG := 0;
          ORIGEM := '';
        end;
        with RegistroK275New do
        begin
          COD_ITEM := '';
          QTD_COR_POS := 0;
          QTD_COR_NEG := 0;
          COD_INS_SUBST := '';
        end;
        with RegistroK280New do
        begin
//          DT_EST := '';
          COD_ITEM := '';
          QTD_COR_POS := 0;
          QTD_COR_NEG  := 0;
//          IND_EST := '';
//          IND_MOV := '';
        end;
        with RegistroK290New do
        begin
          DT_INI_OP := 0;
          DT_FIN_OP := 0;
          COD_DOC_OP := '';
        end;
        with RegistroK291New do
        begin
          COD_ITEM := '';
//          QTD
        end;
        with RegistroK292New do
        begin
          COD_ITEM := '';
          QTD := 0
        end;
      end;
    end;
  end;
end;


//Controle e Encerramento do Arquivo Digital
Procedure TFrmAuditoriaSINTEGRA_e_SPED.GerarSPED_Bloco9;
begin
//  ACBrSPEDFiscal1.WriteBloco_9;
end;

procedure TFrmAuditoriaSINTEGRA_e_SPED.GerarSPED_TXT;
var
  ADataAtual : TDateTime;
  ACaminho : string;
begin
  ADataAtual := DataHoraSys;
  if not DirectoryExists(GetDirAuditorias) then
    ForceDirectories(GetDirAuditorias);

  ACBrSPEDFiscal1.Arquivo := GetDirAuditorias + 'SPED ' + FormatDateTime('DD-MM-YYYY', ADataAtual) + FormatDateTime('_HH-MM-SS', Time()) + '.txt';
  ACaminho := GetDirAuditorias + 'SPED ' + FormatDateTime('DD-MM-YYYY', ADataAtual) + FormatDateTime('_HH-MM-SS', Time()) + '.txt';;
  ACBrSPEDFiscal1.SaveFileTXT;
  if FileExists(ACBrSPEDFiscal1.Arquivo) then
    ACBrECF1.AssinaArquivoComEAD(ACBrSPEDFiscal1.Arquivo);
  ShowMessageWR('Arquivo SPED gerado com sucesso'  + #13#13 + 'Caminho do arquivo: ' + #13  + ACaminho);
end;

procedure TFrmAuditoriaSINTEGRA_e_SPED.ProdutosBeforeOpen(DataSet: TDataSet);
begin
  Produtos.ParamByName('Emp').AsString := EmpresaAtiva;
end;

procedure TFrmAuditoriaSINTEGRA_e_SPED.rgEscolhaPropertiesChange(Sender: TObject);
begin
  LayoutChanged;
end;

{ TWRGeradorSintegra }

function TWRGeradorSintegra.CarregaXMLNotaFiscal(AACBrNFe: TACBrNFe; ACodVenda, ANotaFiscal: string): Boolean;
var
  QuerX: TFDQuery;
  AStreamNFe: TStringStream;
begin
  Result := False;
  AACBrNFe.NotasFiscais.Clear;
  QuerX := GeraFDQuery;
  try
    QuerX.SQL.Text := 'select NF.ARQUIVO_XML ' +
                      'from NOTA_FISCAL NF ' +
                      'where (NF.NF_AMBIENTE = 1) ' +
                      '      and not(NF.NF_SITUACAO = ''Não Autorizada'') ' +
                      '      and not(NF.NF_SITUACAO = ''Desconhecida'') ' +
                      '      and (NF.CODEMPRESA = ' + QuotedStr(EmpresaAtiva) + ') ' +
                      '      and (NF.CODVENDA = ' + QuotedStr(ACodVenda) + ') ' +
                      '      and (NF.TIPO not in (''CCe'', ''NFeCancel'', ''NFSeCancel'')) ' +
                      '      and (NF.NF_NUMERO = ' + ANotaFiscal + ') ' +
                      '      and ((not NF.STATUS like ''INATIVO%'') ' +
                      '           or (NF.STATUS is null)) ' +
                      'order by NF.NF_NUMERO desc, NF.NF_DT_EMISSAO desc';
    QuerX.Open;
    if not QuerX.IsEmpty  then
    begin
      AStreamNFe := TStringStream.Create(QuerX.FieldByName('ARQUIVO_XML').AsString);
      try
        AACBrNFe.NotasFiscais.LoadFromStream(AStreamNFe);
        Result := AACBrNFe.NotasFiscais.Count > 0;
      finally
        AStreamNFe.Free;
      end;
    end;
  finally
    QuerX.Free;
  end;
end;

constructor TWRGeradorSintegra.Create;
begin
  FTransa := GeraFDTransacao;
  FConnectionPAF := TFDConnection.Create(nil);
  FConnectionPAF.Params.Text := TDefinicoesBancoFD.BancoServidor.Params.Text;
  FConnectionPAF.LoginPrompt := False;
end;

destructor TWRGeradorSintegra.Destroy;
begin
  FTransa.Free;
  inherited;
end;

procedure TWRGeradorSintegra.ExcluirRegistros(ACodSintegra: Integer);
const
  REGISTROS_SINTEGRA: TArray<string> = ['10', '11', '50', '51', '53', '54', '60M', '60A', '61', '70', '74', '75'];

var
  QuerX: TFDQuery;
  AReg: string;
begin
  QuerX := GeraFDQuery(FTransa);
  try
    for AReg in REGISTROS_SINTEGRA do
    begin
      QuerX.SQL.Text := 'delete from SINTEGRA_R' + AReg +
                        ' where (CODSINTEGRA = :Cod)';
      QuerX.Params[0].AsInteger := ACodSintegra;
      QuerX.ExecSQL;
    end;
    QuerX.SQL.Text := 'delete from SINTEGRA ' +
                      'where (CODIGO = :Cod)';
    QuerX.Params[0].AsInteger := ACodSintegra;
    QuerX.ExecSQL;
  finally
    QuerX.Free;
  end;
end;

function TWRGeradorSintegra.GeraComponenteSintegra: TACBrSintegra;
begin
  Result := TACBrSintegra.Create(nil);
  with Result do
  begin
    VersaoValidador := vv524;
    Informa88SME    := False;
    Informa88SMS    := False;
    Informa88EAN    := False;
    Informa88C      := False;
    InformaSapiMG   := False;
  end;
end;

procedure TWRGeradorSintegra.GerarInventario;
var
  Quer74, Quer75, QuerProduto, QuerX: TFDQuery;
  AFrmAguarde: TFrmAguarde;
begin
  QuerX  := GeraFDQuery;
  Quer74 := GeraFDQuery(FTransa);
  Quer75 := GeraFDQuery(FTransa);
  AFrmAguarde := TFrmAguarde.Create(nil);
  try
    AFrmAguarde.Mensagem := 'Gerando Inventário..';
    AFrmAguarde.Show;

    Quer74.SQL.Text := 'select CODIGO, CODSINTEGRA, DT_INVENTARIO, CODPRODUTO, QUANTIDADE, ' +
                       '       VALOR_PRODUTO, CODIGO_POSSE, CNPJ_POSSUIDOR, IE_POSSUIDOR, UF_POSSUIDOR ' +
                       'from SINTEGRA_R74 ' +
                       'where (CODIGO is null)';
    Quer74.Open;

    Quer75.SQL.Text := 'select CODIGO, CODSINTEGRA, DT_INICIO, DT_FIM, CODPRODUTO, NCM, DESCRICAO, ' +
                       '       UNIDADE, IPI_ALIQUOTA, ICMS_ALIQUOTA, ICMS_REDUCAO_BC, ICMS_BC_ST ' +
                       'from SINTEGRA_R75 ' +
                       'where (CODSINTEGRA = :CodSintegra) ' +
                       '      and (CODPRODUTO = :CodProduto)';

//    QuerX.SQL.Text := 'select * ' +
//                      'from (select P.CODIGO, P.CUSTO, round(sum(iif(PM.TIPO_MOVIMENTO = ''E'', PM.QUANT, 0)), 3) ' +
//                      '                              - round(sum(iif(PM.TIPO_MOVIMENTO = ''S'', PM.QUANT, 0)), 3) as SALDO ' +
//                      '      from PRODUTO P ' +
//                      '      left join PRODUTO_MOVIMENTO PM on (P.CODIGO = PM.CODPRODUTO) ' +
//                      '                                        and (PM.CODEMPRESA = :CodEmpresa) ' +
//                      '                                        and (PM.STATUS is distinct from ''CANCELADO'') ' +
//                      '                                        and (PM.DATA <= :Data) ' +
////                      '      left join PRODUTO_TIPO PT on (PT.CODIGO = P.CODPRODUTO_TIPO) ' +
//                      '      where (P.ATIVO = ''S'') ' +
//                      '            and (P.PODE_ALTERAR_ESTOQUE = ''S'') ' +
//                      '      group by 1, 2) T ' +
//                      'where (T.SALDO > 0) ' +
//                      '      and (T.CUSTO > 0)';
//    QuerX.ParamByName('CodEmpresa').AsString := FCodEmpresa.ToString;
//    QuerX.ParamByName('Data').AsDateTime     := EndOfTheDay(FDtInventario);
//    QuerX.Open;
//    QuerX.FetchAll;


    QuerX.SQL.Text := 'select P.CODIGO, P.CUSTO, PE.ESTOQUE ' +
                      '      from PRODUTO P ' +
                      '      left join PRODUTO_ESTOQUE PE on (P.CODIGO = PE.CODPRODUTO) and (PE.CODEMPRESA = :CodEmpresa) ' +
                      '      where (P.ATIVO = ''S'')and ' +
                      '            (P.PODE_ALTERAR_ESTOQUE = ''S'') AND ' +
                      '            (PE.ESTOQUE > 0) and ' +
                      '            (P.CUSTO > 0)';
    QuerX.ParamByName('CodEmpresa').AsString := FCodEmpresa.ToString;
    QuerX.Open;
    QuerX.FetchAll;

    AFrmAguarde.ProgressoMaximo := QuerX.RecordCount;

    while not QuerX.Eof do
    begin
      {$REGION 'Registro 74'}
      Quer74.Insert;
      Quer74.FieldByName('CODIGO').AsInteger         := GetCodigo('74');
      Quer74.FieldByName('CODSINTEGRA').AsInteger    := FCodSintegra;
      Quer74.FieldByName('DT_INVENTARIO').AsDateTime := FDtInventario;

      {Código do produto do informante.
       Informar a própria codificação utilizada no sistema de controle de estoque/emissão de nota fiscal do contribuinte.
       Quando o informante não empregar codificação própria, utilizar o sistema de codificação
       da Nomenclatura Comum do Mercosul.
       Tamanho máximo: 14 caracteres}
      Quer74.FieldByName('CODPRODUTO').AsString      := RightStr(QuerX.FieldByName('CODIGO').AsString, 14);

      //Quantidade comercializada do produto, com 3 casas decimais.
      //O arredondamento foi feito direto no SQL senão pode trazer sujeira (ex: 0.000000034 -> 0.000)
      Quer74.FieldByName('QUANTIDADE').AsFloat       := QuerX.FieldByName('ESTOQUE').AsFloat;

      //Valor bruto do produto (valor unitário multiplicado por quantidade), com 2 casas decimais.
      Quer74.FieldByName('VALOR_PRODUTO').AsFloat    := RoundTo(QuerX.FieldByName('CUSTO').AsFloat * QuerX.FieldByName('ESTOQUE').AsFloat, -2);

      {Código de Posse das Mercadorias Inventariadas, conforme abaixo:
       1 - Mercadorias de propriedade do Informante e em seu poder.
       2 - Mercadorias de propriedade do Informante e em poder de terceiros.
       3 - Mercadorias de propriedade de terceiros em poder do Informante.}
      Quer74.FieldByName('CODIGO_POSSE').AsString    := '1';

      {Os dados do possuidor devem ser preenchidos apenas se o Código de Posse for diferente de "1".
       Se o campo Código de Posse for igual a 1, preencher com brancos (zeros no caso do CNPJ),
       se Código de Posse igual a 2, preencher com os dados da empresa que detém a posse da mercadoria de propriedade do informante,
       se o campo for igual a 3, preencher com os dados da proprietária da mercadoria em poder do informante.}
      Quer74.FieldByName('CNPJ_POSSUIDOR').AsString  := '0';
      Quer74.FieldByName('IE_POSSUIDOR').AsString    := ' ';
      Quer74.FieldByName('UF_POSSUIDOR').AsString    := ' ';
      Quer74.Post;
      {$ENDREGION}

      {$REGION 'Registro 75'}
      Quer75.Close;
      Quer75.ParamByName('CodSintegra').AsInteger := FCodSintegra;
      Quer75.ParamByName('CodProduto').AsString   := RightStr(QuerX.FieldByName('CODIGO').AsString, 14);
      Quer75.Open;
      if Quer75.IsEmpty then
      begin
        QuerProduto := GeraFDQuery;
        try
          QuerProduto.SQL.Text := 'select P.CODIGO, PG.PICMS, P.DESCRICAO, P.UNIDADE, P.CODNF_NCM, PG.IPI_PIPI ' +
                                  'from PRODUTO P ' +
                                  'left join PRODUTO_GRUPO PG on (PG.CODIGO = P.CODPRODUTO_GRUPO) ' +
                                  'where (P.CODIGO = :Cod)';
          QuerProduto.Params[0].Value := QuerX.FieldByName('CODIGO').Value;
          QuerProduto.Open;
          Quer75.Insert;
          Quer75.FieldByName('CODIGO').Value        := GetCodigo('75');
          Quer75.FieldByName('CODSINTEGRA').Value   := FCodSintegra;
          Quer75.FieldByName('DT_INICIO').Value     := FDtInicio;
          Quer75.FieldByName('DT_FIM').Value        := FDtFim;
          Quer75.FieldByName('CODPRODUTO').Value    := RightStr(QuerProduto.FieldByName('CODIGO').AsString, 14);
          Quer75.FieldByName('NCM').Value           := QuerProduto.FieldByName('CODNF_NCM').AsString;
          Quer75.FieldByName('DESCRICAO').AsString  := QuerProduto.FieldByName('DESCRICAO').AsString;
          Quer75.FieldByName('UNIDADE').Value       := IfThen(QuerProduto.FieldByName('UNIDADE').AsString.Trim = '', 'UN', QuerProduto.FieldByName('UNIDADE').AsString.Trim);
          Quer75.FieldByName('IPI_ALIQUOTA').Value  := RdT(QuerProduto.FieldByName('IPI_PIPI').AsFloat, -2);
          Quer75.FieldByName('ICMS_ALIQUOTA').Value := RdT(QuerProduto.FieldByName('PICMS').AsFloat, -2);
          Quer75.FieldByName('ICMS_REDUCAO_BC').Value := 0;
          Quer75.FieldByName('ICMS_BC_ST').Value      := 0;
          Quer75.Post;
        finally
          QuerProduto.Free;
        end;
      end;
      {$ENDREGION}

      AFrmAguarde.AvancarProgresso;
      QuerX.Next;
    end;
  finally
    QuerX.Free;
    AFrmAguarde.Free;
    Quer74.Free;
    Quer75.Free;
  end;
end;

procedure TWRGeradorSintegra.GerarNotasCanceladas;
var
  AFrmNFe: TFrmNFe;
  QuerX, Quer50: TFDQuery;
  AStreamNFe: TStringStream;
begin
  AFrmNFe := TFrmNFe.Create(nil);
  QuerX := GeraFDQuery;
  Quer50 := GeraFDQuery(FTransa);
  try
    Quer50.SQL.Text := 'select CODIGO, CODSINTEGRA, CNPJCPF, INSCRICAO_ESTADUAL, DT_EMISSAO, UF, MODELO, ' +
                       '       SERIE, NUMERO, CFOP, EMITENTE, VALOR_TOTAL, ICMS_BC, ICMS_VALOR, ISENTAS, ' +
                       '       OUTRAS, ICMS_ALIQUOTA, SITUACAO ' +
                       'from SINTEGRA_R50 ' +
                       'where (CODIGO is null)';
    Quer50.Open;

    QuerX.SQL.Text := 'select * from NOTA_FISCAL N ' +
                      'where N.NF_SITUACAO = ''Cancelada'' ' +
                      '      and N.NF_DT_EMISSAO between :DTINICIO and :DTFIM ' +
                      '      and N.CODEMPRESA = :CODEMPRESA';
    QuerX.ParamByName('DTINICIO').AsDateTime  := FDtInicio;
    QuerX.ParamByName('DTFIM').AsDateTime     := FDtFim;
    QuerX.ParamByName('CODEMPRESA').AsInteger := FCodEmpresa;
    QuerX.Open;
    QuerX.First;
    while not QuerX.Eof do
    begin
      with AFrmNFe do
      begin
        AStreamNFe := TStringStream.Create(QuerX.FieldByName('ARQUIVO_XML').AsString);
        try
          ACBrNFe1.NotasFiscais.Clear;
          //TStringStream(QuerX.FieldByName('ARQUIVO_XML').AsString).SaveToStream(AStreamNFe);
          ACBrNFe1.NotasFiscais.LoadFromStream(AStreamNFe);
        finally
          AStreamNFe.Free;
        end;

        Quer50.Insert;
        Quer50.FieldByName('CODIGO').Value             := GetCodigo('50');
        Quer50.FieldByName('CODSINTEGRA').Value        := FCodSintegra;
        Quer50.FieldByName('CNPJCPF').Value            := OnlyNumber(ACBrNFe1.NotasFiscais[0].NFe.Dest.CNPJCPF);
        Quer50.FieldByName('INSCRICAO_ESTADUAL').Value := IfThen(ACBrNFe1.NotasFiscais[0].NFe.Dest.IE = '', 'ISENTO', ACBrNFe1.NotasFiscais[0].NFe.Dest.IE);
        Quer50.FieldByName('DT_EMISSAO').Value         := ACBrNFe1.NotasFiscais[0].NFe.Ide.dEmi;
        Quer50.FieldByName('UF').Value                 := ACBrNFe1.NotasFiscais[0].NFe.Dest.EnderDest.UF;
        Quer50.FieldByName('MODELO').Value             := ACBrNFe1.NotasFiscais[0].NFe.Ide.modelo.ToString;
        Quer50.FieldByName('SERIE').Value              := ACBrNFe1.NotasFiscais[0].NFe.Ide.serie.ToString;
        Quer50.FieldByName('NUMERO').Value             := ACBrNFe1.NotasFiscais[0].NFe.Ide.nNF.ToString;
        Quer50.FieldByName('CFOP').Value               := ACBrNFe1.NotasFiscais[0].NFe.Det.Items[0].Prod.CFOP;
        Quer50.FieldByName('EMITENTE').Value           := 'P';
        Quer50.FieldByName('VALOR_TOTAL').Value        := 0;
        Quer50.FieldByName('ICMS_BC').Value            := 0;
        Quer50.FieldByName('ICMS_VALOR').Value         := 0;
        Quer50.FieldByName('ISENTAS').Value            := 0;
        Quer50.FieldByName('OUTRAS').Value             := 0;
        Quer50.FieldByName('ICMS_ALIQUOTA').Value      := 0;
        Quer50.FieldByName('SITUACAO').Value           := 'S';
        Quer50.Post;
      end;
      QuerX.Next;
    end;
  finally
    AFrmNFe.Free;
    QuerX.Free;
    Quer50.Free;
  end;
end;

procedure TWRGeradorSintegra.GerarRegistro10;
var
  QuerX: TFDQuery;
begin
  QuerX := GeraFDQuery(FTransa);
  try
    QuerX.SQL.Text := 'select CODIGO, CODSINTEGRA, CNPJCPF, INSCRICAO_ESTADUAL, RAZAO_SOCIAL, CIDADE, ' +
                      '       UF, FONE, DT_INICIO, DT_FIM, CONVENIO, NATUREZA_INFORMACOES, ' +
                      '       FINALIDADE_ARQUIVO ' +
                      'from SINTEGRA_R10 ' +
                      'where (CODIGO is null)';
    QuerX.Open;
    QuerX.Insert;
    QuerX.FieldByName('CODIGO').Value               := GetCodigo('10');
    QuerX.FieldByName('CODSINTEGRA').Value          := FCodSintegra;
    QuerX.FieldByName('CNPJCPF').Value              := OnlyNumber(FEmpresa.CNPJCPF);
    QuerX.FieldByName('INSCRICAO_ESTADUAL').Value   := FEmpresa.INSCIDENT;
    QuerX.FieldByName('RAZAO_SOCIAL').Value         := RemoveString('''',FEmpresa.RAZAOSOCIAL);
    QuerX.FieldByName('CIDADE').Value               := FEmpresa.CIDADE;
    QuerX.FieldByName('UF').Value                   := FEmpresa.UF;
    QuerX.FieldByName('FONE').Value                 := FEmpresa.FONE1;
    QuerX.FieldByName('DT_INICIO').Value            := FDtInicio;
    QuerX.FieldByName('DT_FIM').Value               := FDtFim;
    QuerX.FieldByName('CONVENIO').Value             := '3';
    QuerX.FieldByName('NATUREZA_INFORMACOES').Value := '3';
    QuerX.FieldByName('FINALIDADE_ARQUIVO').Value   := '1';
    QuerX.Post;
  finally
    QuerX.Free;
  end;
end;

procedure TWRGeradorSintegra.GerarRegistro11;
var
  QuerX: TFDQuery;
begin
  QuerX := GeraFDQuery(FTransa);
  try
    QuerX.SQL.Text := 'select CODIGO, CODSINTEGRA, ENDERECO, NUMERO, COMPLEMENTO, BAIRRO, CEP, RESPONSAVEL, TELEFONE ' +
                      'from SINTEGRA_R11 ' +
                      'where (CODIGO is null)';
    QuerX.Open;
    QuerX.Insert;
    QuerX.FieldByName('CODIGO').Value      := GetCodigo('11');
    QuerX.FieldByName('CODSINTEGRA').Value := FCodSintegra;
    QuerX.FieldByName('ENDERECO').Value    := FEmpresa.ENDERECO;
    QuerX.FieldByName('NUMERO').Value      := FEmpresa.NUMERO;
    QuerX.FieldByName('COMPLEMENTO').Value := FEmpresa.COMPLEMENTO;
    QuerX.FieldByName('BAIRRO').Value      := FEmpresa.BAIRRO;
    QuerX.FieldByName('CEP').Value         := FEmpresa.CEP;
    QuerX.FieldByName('RESPONSAVEL').Value := FEmpresa.CONTATO;
    QuerX.FieldByName('TELEFONE').Value    := FEmpresa.FONE1;
    QuerX.Post;
  finally
    QuerX.Free;
  end;
end;

procedure TWRGeradorSintegra.GerarRegistro50(AACBrNFe: TACBrNFe; ADataSet: TDataSet);
var
  I: Integer;
  QuerX: TFDQuery;
begin
  QuerX := GeraFDQuery(FTransa);
  try
    QuerX.SQL.Text := 'select CODIGO, CODSINTEGRA, CNPJCPF, INSCRICAO_ESTADUAL, DT_EMISSAO, UF, MODELO, ' +
                      '       SERIE, NUMERO, CFOP, EMITENTE, VALOR_TOTAL, ICMS_BC, ICMS_VALOR, ISENTAS, ' +
                      '       OUTRAS, ICMS_ALIQUOTA, SITUACAO ' +
                      'from SINTEGRA_R50 ' +
                      'where (CODIGO is null)';
    QuerX.Open;
    for I := 0 to AACBrNFe.NotasFiscais.Count - 1 do
    begin
      QuerX.Insert;
      QuerX.FieldByName('CODIGO').Value             := GetCodigo('50');
      QuerX.FieldByName('CODSINTEGRA').Value        := FCodSintegra;
      QuerX.FieldByName('CNPJCPF').Value            := OnlyNumber(ADataSet.FieldByName('CNPJCPF').AsString);
      QuerX.FieldByName('INSCRICAO_ESTADUAL').Value := GetInscricaoEstadual(ADataSet);
      QuerX.FieldByName('DT_EMISSAO').Value         := ADataSet.FieldByName('NF_DT_EMISSAO').Value;
      QuerX.FieldByName('UF').Value                 := ADataSet.FieldByName('UF').Value;
      QuerX.FieldByName('MODELO').Value             := AACBrNFe.NotasFiscais.Items[i].NFe.Ide.modelo.ToString;
      QuerX.FieldByName('SERIE').Value              := AACBrNFe.NotasFiscais.Items[i].NFe.Ide.serie.ToString;
      QuerX.FieldByName('NUMERO').Value             := ADataSet.FieldByName('NOTAFISCAL').Value;
      QuerX.FieldByName('CFOP').Value               := ADataSet.FieldByName('CODNF_CFOP').AsString;
      QuerX.FieldByName('EMITENTE').Value           := 'P';
      QuerX.FieldByName('VALOR_TOTAL').Value        := RdT(ADataSet.FieldByName('TOTAL').AsFloat +
                                                           ADataSet.FieldByName('NF_VFRETE').AsFloat +
                                                           ADataSet.FieldByName('VOUTRO').AsFloat, -2);
      QuerX.FieldByName('ICMS_BC').Value            := RdT(ADataSet.FieldByName('NF_VALOR_ICMS_BC').AsFloat, -2);
      QuerX.FieldByName('ICMS_VALOR').Value         := RdT(ADataSet.FieldByName('NF_VALOR_ICMS').AsFloat, -2);
      QuerX.FieldByName('ISENTAS').Value            := 0;
      QuerX.FieldByName('OUTRAS').Value             := QuerX.FieldByName('VALOR_TOTAL').Value;
       {if (ACBrNFe1.NotasFiscais.Items[i].NFe.Emit.CRT <> crtRegimeNormal) and
         not ContainsText(ACBrNFe1.NotasFiscais.Items[i].NFe.Ide.natOp, 'DEVOLU') then
        Aliquota := 0
      else}
      QuerX.FieldByName('ICMS_ALIQUOTA').Value      := RdT(ADataSet.FieldByName('NF_PICMS').AsFloat, -2);
      QuerX.FieldByName('SITUACAO').Value           := 'N';
      QuerX.Post;
    end;
  finally
    QuerX.Free;
  end;
end;

procedure TWRGeradorSintegra.GerarRegistro51(AACBrNFe: TACBrNFe; nItem: Variant; ACodVendaProduto: Integer);
var
  QuerX: TFDQuery;
  i: Integer;
  AItem: TDetCollectionItem;
  ANFe: pcnNFe.TNFe;
begin
  QuerX := GeraFDQuery(FTransa);
  try
    QuerX.SQL.Text := 'select CODIGO, CODSINTEGRA, CNPJCPF, INSCRICAO_ESTADUAL, DT_EMISSAO, UF, SERIE, ' +
                      '       NUMERO, CFOP, VALOR_TOTAL, IPI_VALOR, VALOR_ISENTAS, VALOR_OUTRAS, SITUACAO ' +
                      'from SINTEGRA_R51 ' +
                      'where (CODIGO is null)';
    QuerX.Open;
    AItem := GetNItem(AACBrNFe, nItem, ACodVendaProduto);
    for I := 0 to AACBrNFe.NotasFiscais.Count - 1 do
    begin
      ANFe := AACBrNFe.NotasFiscais.Items[i].NFe;
      QuerX.Insert;
      QuerX.FieldByName('CODIGO').Value             := GetCodigo('51');
      QuerX.FieldByName('CODSINTEGRA').Value        := FCodSintegra;
      QuerX.FieldByName('CNPJCPF').Value            := OnlyNumber(ANFe.Dest.CNPJCPF);
      QuerX.FieldByName('INSCRICAO_ESTADUAL').Value := ANFe.Dest.IE;
      QuerX.FieldByName('DT_EMISSAO').Value         := ANFe.Ide.dEmi;
      QuerX.FieldByName('UF').Value                 := ANFe.Dest.EnderDest.UF;
      QuerX.FieldByName('SERIE').Value              := ANFe.Ide.serie.ToString;
      QuerX.FieldByName('NUMERO').Value             := ANFe.Ide.nNF.ToString;
      QuerX.FieldByName('CFOP').Value               := AItem.Prod.CFOP;
      QuerX.FieldByName('VALOR_TOTAL').Value        := RdT(ANFe.Total.ICMSTot.vNF, -2);
      QuerX.FieldByName('IPI_VALOR').Value          := RdT(AItem.Imposto.IPI.vIPI, -2);
      QuerX.FieldByName('VALOR_ISENTAS').Value      := 0;
      QuerX.FieldByName('VALOR_OUTRAS').Value       := IfThen(MatchStr(ANFe.Ide.modelo.ToString, ['01', '55']), QuerX.FieldByName('VALOR_TOTAL').Value, 0);
      QuerX.FieldByName('SITUACAO').Value           := 'N';
      QuerX.Post;
    end;
  finally
    QuerX.Free;
  end;
end;

procedure TWRGeradorSintegra.GerarRegistro53(AACBrNFe: TACBrNFe; ACodProduto: string; ACodProdutoVenda: Integer);
var
  QuerX: TFDQuery;
  i, j: Integer;
  ANFe: pcnNFe.TNFe;
  AItem: TDetCollectionItem;
begin
  QuerX := GeraFDQuery(FTransa);
  try
    QuerX.SQL.Text := 'select CODIGO, CODSINTEGRA, CNPJCPF, INSCRICAO_ESTADUAL, DT_EMISSAO, UF, MODELO, ' +
                      '       SERIE, NUMERO, CFOP, EMITENTE, ICMS_BC, ICMS_RETIDO, DESPESAS_ACESSORIAS, ' +
                      '       SITUACAO, CODIGO_ANTECIPACAO ' +
                      'from SINTEGRA_R53 ' +
                      'where (CODIGO is null)';
    QuerX.Open;
    for I := 0 to AACBrNFe.NotasFiscais.Count - 1 do
    begin
      ANFe := AACBrNFe.NotasFiscais.Items[i].NFe;
      for J := 0 to ANFe.Det.Count - 1 do
      begin
        AItem := ANFe.Det[j];
        // Pega os dados somente dos produtos que estão no select da tabela
        if (ACodProduto = AItem.Prod.cProd) and (ACodProdutoVenda = AItem.Prod.nItem) then
        begin
          QuerX.Insert;
          QuerX.FieldByName('CODIGO').Value             := GetCodigo('53');
          QuerX.FieldByName('CODSINTEGRA').Value        := FCodSintegra;
          QuerX.FieldByName('CNPJCPF').Value            := OnlyNumber(ANFe.Dest.CNPJCPF);
          QuerX.FieldByName('INSCRICAO_ESTADUAL').Value := ANFe.Dest.IE;
          QuerX.FieldByName('DT_EMISSAO').Value         := ANFe.Ide.dEmi;
          QuerX.FieldByName('UF').Value                 := ANFe.Dest.EnderDest.UF;
          QuerX.FieldByName('MODELO').Value             := ANFe.Ide.modelo.ToString;
          QuerX.FieldByName('SERIE').Value              := ANFe.Ide.serie.ToString;
          QuerX.FieldByName('NUMERO').Value             := ANFe.Ide.nNF.ToString;
          QuerX.FieldByName('CFOP').Value               := AItem.Prod.CFOP;
          QuerX.FieldByName('EMITENTE').Value           := 'P';
          QuerX.FieldByName('ICMS_BC').Value            := RdT(AItem.Imposto.ICMS.vBCST, -2);
          QuerX.FieldByName('ICMS_RETIDO').Value        := RdT(AItem.Imposto.ICMS.vICMSST, -2);
          QuerX.FieldByName('DESPESAS_ACESSORIAS').Value := Rdt(AItem.Prod.vOutro + AItem.Prod.vSeg + AItem.Prod.vFrete, -2);
          QuerX.FieldByName('SITUACAO').Value := 'N';
          //QuerX.FieldByName('CODIGO_ANTECIPACAO').Value := ;
          QuerX.Post;
        end;
      end;
    end;
  finally
    QuerX.Free;
  end;
end;

procedure TWRGeradorSintegra.GerarRegistro54(AACBrNFe: TACBrNFe; ADataSet: TDataSet; ASeq: Integer);   // REVISAR O DESCONTO
var
  QuerX: TFDQuery;
  i: Integer;
  ANFe: pcnNFe.TNFe;
begin
  QuerX := GeraFDQuery(FTransa);
  try
    QuerX.SQL.Text := 'select CODIGO, CODSINTEGRA, CNPJCPF, MODELO, SERIE, NUMERO, CFOP, CST, NUM_ITEM, ' +
                      '       CODPRODUTO, QUANTIDADE, VALOR_PRODUTO, DESCONTO_DESPESA, ICMS_BC, ' +
                      '       ICMS_BC_ST, IPI_VALOR, ICMS_ALIQUOTA ' +
                      'from SINTEGRA_R54 ' +
                      'where (CODIGO is null)';
    QuerX.Open;

    for I := 0 to AACBrNFe.NotasFiscais.Count - 1 do
    begin
      ANFe  := AACBrNFe.NotasFiscais.Items[i].NFe;

      QuerX.Insert;
      QuerX.FieldByName('CODIGO').Value           := GetCodigo('54');
      QuerX.FieldByName('CODSINTEGRA').Value      := FCodSintegra;
      QuerX.FieldByName('CNPJCPF').Value          := OnlyNumber(ANFe.Dest.CNPJCPF);
      QuerX.FieldByName('MODELO').Value           := ANFe.Ide.modelo.ToString;
      QuerX.FieldByName('SERIE').Value            := ANFe.Ide.serie.ToString;
      QuerX.FieldByName('NUMERO').AsString        := RightStr(ANFe.Ide.nNF.ToString, 6);
      QuerX.FieldByName('CFOP').Value             := ADataSet.FieldByName('CODNF_CFOP').Value;
      QuerX.FieldByName('CST').Value              := ADataSet.FieldByName('CODNF_CST').Value;
      QuerX.FieldByName('NUM_ITEM').Value         := ASeq;
      QuerX.FieldByName('CODPRODUTO').Value       := ADataSet.FieldByName('CODPRODUTO').Value;
      QuerX.FieldByName('QUANTIDADE').Value       := RdT(ADataSet.FieldByName('QUANT').AsFloat, -3);
      QuerX.FieldByName('VALOR_PRODUTO').Value    := RdT((ADataSet.FieldByName('VALOR').AsFloat * ADataSet.FieldByName('QUANT').AsFloat) + ADataSet.FieldByName('NF_VFRETE').AsFloat, -2);
      QuerX.FieldByName('DESCONTO_DESPESA').Value := RdT(ADataSet.FieldByName('VDESC').AsFloat, -2);
      QuerX.FieldByName('ICMS_BC').Value          := RdT(ADataSet.FieldByName('NF_VBC').AsFloat, -2);
      QuerX.FieldByName('ICMS_BC_ST').Value       := RdT(ADataSet.FieldByName('NF_VBCST').AsFloat, -2);
      QuerX.FieldByName('IPI_VALOR').Value        := RdT(ADataSet.FieldByName('NF_IPI_VIPI').AsFloat, -2);
      QuerX.FieldByName('ICMS_ALIQUOTA').Value    := RdT(ADataSet.FieldByName('NF_PICMS').AsFloat, -2);
      QuerX.Post;
    end;
  finally
    QuerX.Free;
  end;
end;

procedure TWRGeradorSintegra.GerarRegistro61;
var
  QuerX, Quer61: TFDQuery;
begin
  QuerX := GeraFDQuery;
  Quer61 := GeraFDQuery(FTransa);
  try
    Quer61.SQL.Text :='select CODIGO, CODSINTEGRA, DT_EMISSAO, VALOR, NF_VICMS, OUTRAS, NF_VBC, ' +
                      '       ISENTAS, NF_NUM_ORDEM_INICIAL, NF_NUM_ORDEM_FINAL, MODELO, ' +
                      '       SERIE, SUBSERIE, ALIQUOTA ' +
                      'from SINTEGRA_R61 ' +
                      'where (CODIGO is null)';
    Quer61.Open;

    QuerX.SQL.Text := 'select nf.nf_dt_emissao as DT_EMISSAO, v.total as VALOR  ' +
                      ', v.nf_vicms as NF_VICMS, 0 as OUTRAS  ' +
                      ', v.nf_vbc as NF_VBC, 0 as ISENTAS  ' +
                      ', nf.nf_numero as NF_NUM_ORDEM_INICIAL, nf.nf_numero as NF_NUM_ORDEM_FINAL  ' +
                      ', ''65'' as MODELO, '''' as SUBSERIE, ''001'' as SERIE  ' +
                      ', 0 as ALIQUOTA from nota_fiscal nf ' +
                      'left join venda v on v.codigo = nf.codvenda ' +
                      'where v.notafiscal = nf.nf_numero and nf.nf_situacao = ''Autorizada'' ' +
                      'and nf.nf_dt_emissao between :DtInicio and :DtFim  ' +
                      'and nf.codempresa = :CodEmpresa  ' +
                      'order by nf.nf_numero ';
    QuerX.ParamByName('DtInicio').AsDateTime := FDtInicio;
    QuerX.ParamByName('DtFim').AsDateTime    := FDtFim;
    QuerX.ParamByName('CodEmpresa').AsString := FCodEmpresa.ToString;
    QuerX.Open;
    QuerX.FetchAll;
    QuerX.First;

    while not QuerX.Eof do
    begin
      Quer61.Insert;
      Quer61.FieldByName('CODIGO').Value                := GetCodigo('61');
      Quer61.FieldByName('CODSINTEGRA').Value           := FCodSintegra;
      Quer61.FieldByName('VALOR').Value                 := QuerX.FieldByName('VALOR').Value;
      Quer61.FieldByName('DT_EMISSAO').Value            := QuerX.FieldByName('DT_EMISSAO').Value;
      Quer61.FieldByName('NF_VICMS').Value              := QuerX.FieldByName('NF_VICMS').Value;
      Quer61.FieldByName('OUTRAS').Value                := QuerX.FieldByName('OUTRAS').Value;
      Quer61.FieldByName('NF_VBC').Value                := QuerX.FieldByName('NF_VBC').Value;
      Quer61.FieldByName('ISENTAS').Value               := QuerX.FieldByName('ISENTAS').Value;
      Quer61.FieldByName('NF_NUM_ORDEM_INICIAL').Value  := QuerX.FieldByName('NF_NUM_ORDEM_INICIAL').Value;
      Quer61.FieldByName('NF_NUM_ORDEM_FINAL').Value    := QuerX.FieldByName('NF_NUM_ORDEM_FINAL').Value;
      Quer61.FieldByName('MODELO').Value                := QuerX.FieldByName('MODELO').Value;
      Quer61.FieldByName('SUBSERIE').Value              := QuerX.FieldByName('SUBSERIE').Value;
      Quer61.FieldByName('SERIE').Value                 := QuerX.FieldByName('SERIE').Value;
      Quer61.FieldByName('ALIQUOTA').Value              := QuerX.FieldByName('ALIQUOTA').Value;
      Quer61.Post;
      QuerX.Next;
    end;

  finally
  Quer61.Free;
  QuerX.Free;

  end;
end;

procedure TWRGeradorSintegra.GerarRegistro75(const ADataSet: TDataSet);
var
  QuerX: TFDQuery;
begin
  QuerX := GeraFDQuery(FTransa);
  try
    QuerX.SQL.Text := 'select CODIGO, CODSINTEGRA, DT_INICIO, DT_FIM, CODPRODUTO, NCM, DESCRICAO, ' +
                      '       UNIDADE, IPI_ALIQUOTA, ICMS_ALIQUOTA, ICMS_REDUCAO_BC, ICMS_BC_ST ' +
                      'from SINTEGRA_R75 ' +
                      'where (CODIGO is null)';
    QuerX.Open;
    QuerX.Insert;
    QuerX.FieldByName('CODIGO').Value          := GetCodigo('75');
    QuerX.FieldByName('CODSINTEGRA').Value     := FCodSintegra;
    QuerX.FieldByName('DT_INICIO').Value       := FDtInicio;
    QuerX.FieldByName('DT_FIM').Value          := FDtFim;
    QuerX.FieldByName('CODPRODUTO').Value      := ADataSet.FieldByName('CODPRODUTO').Value;
    QuerX.FieldByName('NCM').Value             := ADataSet.FieldByName('CODNF_NCM').Value;
    QuerX.FieldByName('DESCRICAO').AsString    := ADataSet.FieldByName('DESCRICAO').AsString;
    QuerX.FieldByName('UNIDADE').Value         := ADataSet.FieldByName('UNIDADE').Value;
    QuerX.FieldByName('IPI_ALIQUOTA').Value    := RdT(ADataSet.FieldByName('NF_IPI_PIPI').AsFloat, -2);
    QuerX.FieldByName('ICMS_ALIQUOTA').Value   := RdT(ADataSet.FieldByName('NF_PICMS').AsFloat, -2);
    QuerX.FieldByName('ICMS_REDUCAO_BC').Value := RdT(ADataSet.FieldByName('NF_PREDBC').AsFloat, -2);
    QuerX.FieldByName('ICMS_BC_ST').Value      := RdT(ADataSet.FieldByName('NF_VBCST').AsFloat, -2);
    QuerX.Post;
  finally
    QuerX.Free;
  end;
end;

function TWRGeradorSintegra.GerarRegistroMestre: Integer;
var
  QuerX: TFDQuery;
begin
  QuerX := GeraFDQuery(FTransa);
  try
    QuerX.SQL.Text := 'select CODIGO, DT_INICIO, DT_FIM, CODEMPRESA, DT_GERADO ' +
                      'from SINTEGRA ' +
                      'where (CODIGO is null)';
    QuerX.Open;
    FCodSintegra := GetProximoCodigo('SINTEGRA', FTransa);
    QuerX.Insert;
    QuerX.FieldByName('CODIGO').AsInteger     := FCodSintegra;
    QuerX.FieldByName('DT_INICIO').AsDateTime := FDtInicio;
    QuerX.FieldByName('DT_FIM').AsDateTime    := FDtFim;
    QuerX.FieldByName('CODEMPRESA').AsInteger := FCodEmpresa;
    QuerX.FieldByName('DT_GERADO').AsDateTime := DataHoraSys;
    QuerX.Post;
  finally
    QuerX.Free;
  end;
  Result := FCodSintegra;
end;

procedure TWRGeradorSintegra.GerarRegistrosDeCompras;
var
  ASql: string;
  QuerX, Quer50, Quer51, Quer53, Quer54, Quer75, QuerProduto: TFDQuery;
  ASeqProdCompra, I: Integer;
  ACodigosNota: TStringList;
begin
  QuerX := GeraFDQuery;
  Quer50 := GeraFDQuery(FTransa);
  Quer51 := GeraFDQuery(FTransa);
  Quer53 := GeraFDQuery(FTransa);
  Quer54 := GeraFDQuery(FTransa);
  Quer75 := GeraFDQuery(FTransa);
  ACodigosNota := TStringList.Create;
  try
    {$REGION 'Inicialização de SQLs do SINTEGRA'}
    Quer50.SQL.Text := 'select CODIGO, CODSINTEGRA, CNPJCPF, INSCRICAO_ESTADUAL, DT_EMISSAO, UF, MODELO, ' +
                       '       SERIE, NUMERO, CFOP, EMITENTE, VALOR_TOTAL, ICMS_BC, ICMS_VALOR, ISENTAS, ' +
                       '       OUTRAS, ICMS_ALIQUOTA, SITUACAO ' +
                       'from SINTEGRA_R50 ' +
                       'where (CODIGO is null)';
    Quer50.Open;

    Quer51.SQL.Text := 'select CODIGO, CODSINTEGRA, CNPJCPF, INSCRICAO_ESTADUAL, DT_EMISSAO, UF, SERIE, ' +
                       '       NUMERO, CFOP, VALOR_TOTAL, IPI_VALOR, VALOR_ISENTAS, VALOR_OUTRAS, SITUACAO ' +
                       'from SINTEGRA_R51 ' +
                       'where (CODIGO is null)';
    Quer51.Open;

    Quer53.SQL.Text := 'select CODIGO, CODSINTEGRA, CNPJCPF, INSCRICAO_ESTADUAL, DT_EMISSAO, UF, MODELO, ' +
                       '       SERIE, NUMERO, CFOP, EMITENTE, ICMS_BC, ICMS_RETIDO, DESPESAS_ACESSORIAS, ' +
                       '       SITUACAO, CODIGO_ANTECIPACAO ' +
                       'from SINTEGRA_R53 ' +
                       'where (CODIGO is null)';
    Quer53.Open;

    Quer54.SQL.Text := 'select CODIGO, CODSINTEGRA, CNPJCPF, MODELO, SERIE, NUMERO, CFOP, CST, NUM_ITEM, ' +
                       '       CODPRODUTO, QUANTIDADE, VALOR_PRODUTO, DESCONTO_DESPESA, ICMS_BC, ' +
                       '       ICMS_BC_ST, IPI_VALOR, ICMS_ALIQUOTA ' +
                       'from SINTEGRA_R54 ' +
                       'where (CODIGO is null)';
    Quer54.Open;

    Quer75.SQL.Text := 'select CODIGO, CODSINTEGRA, DT_INICIO, DT_FIM, CODPRODUTO, NCM, DESCRICAO, ' +
                       '       UNIDADE, IPI_ALIQUOTA, ICMS_ALIQUOTA, ICMS_REDUCAO_BC, ICMS_BC_ST ' +
                       'from SINTEGRA_R75 ' +
                       'where (CODIGO is null)';
    Quer75.Open;
    {$ENDREGION}

    {$REGION 'Registro 50 - Nota Fiscal Eletrônica (Modelos 1 ou 1-A, 04, 06, 21, 22 e 55)'}
    QuerX.SQL.Text := 'select sum(coalesce(NP.QUANT_COMPRA, 0) * coalesce(NP.VALOR_COMPRA, 0)) + sum(coalesce(NP.NF_IPI_VIPI, 0)) ' +
                      ' + sum(coalesce(NP.NF_VICMSST, 0)) - sum(coalesce(NP.VDESC, 0)) + sum(coalesce(NP.NF_VFRETE, 0)) + ' +
                      '                   sum(coalesce(NP.VOUTRO, 0)) as TOTAL, ' +
                      '                                                    sum(coalesce(NP.NF_IPI_VIPI, 0)) as NF_IPI_VIPI, ' +
                      '       iif(NP.NF_PICMS > 0, sum((coalesce(NP.QUANT_COMPRA, 0) * coalesce(NP.VALOR_COMPRA, 0)) - ' +
                      '                                               coalesce(NP.VDESC, 0)), 0) as NF_VALOR_ICMS_BC, ' +
                      '       iif(NP.NF_PICMS > 0, sum((coalesce(NP.QUANT_COMPRA, 0) * coalesce(NP.VALOR_COMPRA, 0)) * ' +
                      '                                          (coalesce(NP.NF_PICMS, 0) / 100)), 0) as NF_VALOR_ICMS, ' +
                      '       P.CNPJCPF, P.INSCIDENT, N.DT_NOTA, P.UF, NP.CFOP_COMPRA, NP.NF_PICMS, N.NUN_NF, N.CODIGO, P.TIPO, ' +
                      '       N.MODELO_DOCTO_FISCAL, N.SERIE ' +
                      'from NF_ENTRADA N ' +
                      'left join NF_ENTRADA_PRODUTOS NP on (NP.CODNF_ENTRADA = N.CODIGO) ' +
                      'left join PESSOAS P on (P.CODIGO = N.PESSOA_RESPONSAVEL_CODIGO) ' +
                      'where (N.DT_NOTA between :DtInicio and :DtFim) ' +
                      '      and (N.NUN_NF > 0) ' +
                      '      and (N.TIPO = ''NOTA FISCAL'') ' + //<-- Verificar!!!
                      '      and (N.ATUALIZA_ESTOQUE = ''S'')';
    if MultiEmpresa then
    begin
      ASql := 'and ((N.CODIGO like ''%-'' || :CODEMPRESA)';
      if EmpresaAtiva = '1' then
        ASql := ASql + ' or not (N.CODIGO like ''%-%'')';
      ASql := ASql + ')';
      QuerX.SQL.Add(ASql);
    end;
    QuerX.SQL.Add('group by NP.CFOP_COMPRA, NP.NF_PICMS, P.CNPJCPF, P.INSCIDENT, N.DT_NOTA, P.UF, N.NUN_NF, N.CODIGO,       ' +
                  '         P.TIPO, N.MODELO_DOCTO_FISCAL, N.SERIE                                                ' +
                  'order by mod(N.NUN_NF, 1000000), 10'); //<-- a ordenação é feita apenas nos últimos 6 dígitos
    if MultiEmpresa then
      QuerX.ParamByName('CODEMPRESA').AsInteger := FEmpresa.CODIGO;
    QuerX.ParamByName('DtInicio').AsDateTime := FDtInicio;
    QuerX.ParamByName('DtFim').AsDateTime    := FDtFim;
    QuerX.Open;
    while not QuerX.Eof do
    begin
      ACodigosNota.AddIfNotExists(QuerX.FieldByName('CODIGO').AsString);

      Quer50.Insert;
      Quer50.FieldByName('CODIGO').Value             := GetCodigo('50');
      Quer50.FieldByName('CODSINTEGRA').Value        := FCodSintegra;
      Quer50.FieldByName('CNPJCPF').Value            := OnlyNumber(QuerX.FieldByName('CNPJCPF').AsString);
      Quer50.FieldByName('INSCRICAO_ESTADUAL').Value := GetInscricaoEstadual(QuerX);
      Quer50.FieldByName('DT_EMISSAO').Value         := QuerX.FieldByName('DT_NOTA').AsDateTime;
      Quer50.FieldByName('UF').Value                 := QuerX.FieldByName('UF').AsString;
      Quer50.FieldByName('MODELO').Value             := IfThen(QuerX.FieldByName('MODELO_DOCTO_FISCAL').AsString = '', 'XX', QuerX.FieldByName('MODELO_DOCTO_FISCAL').AsString);
      Quer50.FieldByName('SERIE').Value              := QuerX.FieldByName('SERIE').AsString;
      Quer50.FieldByName('NUMERO').Value             := RightStr(QuerX.FieldByName('NUN_NF').AsString, 6);

      if QuerX.FieldByName('CFOP_COMPRA').AsString.Trim = '1405' then
        Quer50.FieldByName('CFOP').Value               := '1403'
      else
      if MatchStr(QuerX.FieldByName('CFOP_COMPRA').AsString.Trim, ['1929', '1656']) then
        Quer50.FieldByName('CFOP').Value               := '1653'
      else
        Quer50.FieldByName('CFOP').Value               := QuerX.FieldByName('CFOP_COMPRA').AsString.Trim;

      Quer50.FieldByName('EMITENTE').Value           := 'T';
      Quer50.FieldByName('VALOR_TOTAL').Value        := RdT(QuerX.FieldByName('TOTAL').AsFloat, -2);
      if MatchStr(Quer50.FieldByName('CFOP').AsString, ['1128', '2128', '1407', '1556', '1653', '2949']) then
      begin
        Quer50.FieldByName('ICMS_BC').Value    := 0;
        Quer50.FieldByName('ICMS_VALOR').Value := 0;
        Quer50.FieldByName('OUTRAS').Value     := RdT(Quer50.FieldByName('VALOR_TOTAL').Value - QuerX.FieldByName('NF_IPI_VIPI').AsFloat, -2);
      end else
      begin
        Quer50.FieldByName('ICMS_BC').Value    := RdT(QuerX.FieldByName('NF_VALOR_ICMS_BC').AsFloat, -2);
        Quer50.FieldByName('ICMS_VALOR').Value := RdT(QuerX.FieldByName('NF_VALOR_ICMS').AsFloat, -2);
        Quer50.FieldByName('OUTRAS').Value     := RdT(Quer50.FieldByName('VALOR_TOTAL').Value - QuerX.FieldByName('NF_IPI_VIPI').AsFloat, -2);
      end;
      //if MatchStr(Modelo, ['06', '21', '22']) then
      //  Outras := ValorContabil;
      Quer50.FieldByName('ISENTAS').Value       := 0;
      Quer50.FieldByName('ICMS_ALIQUOTA').Value := RdT(QuerX.FieldByName('NF_PICMS').AsFloat, -2);
      Quer50.FieldByName('SITUACAO').Value      := 'N';
      Quer50.Post;

      QuerX.Next;
    end;
    {$ENDREGION}

    for I := 0 to ACodigosNota.Count - 1 do
    begin
      {$REGION 'Registro 51 - Total de nota fiscal quanto ao IPI'}
      QuerX.Close;
      QuerX.SQL.Text := 'select sum(coalesce(NP.QUANT_COMPRA, 0) * coalesce(NP.CUSTO_FABR, 0)) + sum(coalesce(NP.NF_IPI_VIPI, 0)) ' +
                        '  + sum(coalesce(NP.NF_VICMSST, 0)) - sum(coalesce(NP.VDESC, 0)) + sum(coalesce(NP.NF_VFRETE, 0)) + ' +
                        '  sum(coalesce(NP.VOUTRO, 0)) as TOTAL, sum(NP.NF_IPI_VIPI) as NF_IPI_VIPI, ' +
                        '  P.CNPJCPF, P.INSCIDENT, N.DT_NOTA, P.UF, NP.CFOP_COMPRA, N.NUN_NF, N.CODIGO, N.MODELO_DOCTO_FISCAL, ' +
                        '  N.SERIE, P.TIPO ' +
                        'from NF_ENTRADA N ' +
                        'left join NF_ENTRADA_PRODUTOS NP on (NP.CODNF_ENTRADA = N.CODIGO) ' +
                        'left join PESSOAS P on (P.CODIGO = N.PESSOA_RESPONSAVEL_CODIGO) ' +
                        'where (N.CODIGO = :Codigo) ' +
                        '      and (NP.NF_IPI_VIPI > 0) ' +
                        'group by P.CNPJCPF, P.INSCIDENT, N.DT_NOTA, P.UF, NP.CFOP_COMPRA, N.NUN_NF, N.CODIGO, ' +
                        '         N.MODELO_DOCTO_FISCAL, N.SERIE, P.TIPO';
      QuerX.ParamByName('Codigo').AsString := ACodigosNota[i];
      QuerX.Open;
      while not QuerX.Eof do
      begin
        Quer51.Insert;
        Quer51.FieldByName('CODIGO').Value      := GetCodigo('51');
        Quer51.FieldByName('CODSINTEGRA').Value := FCodSintegra;
        Quer51.FieldByName('CNPJCPF').Value     := OnlyNumber(QuerX.FieldByName('CNPJCPF').AsString);
        Quer51.FieldByName('INSCRICAO_ESTADUAL').Value := GetInscricaoEstadual(QuerX);
        Quer51.FieldByName('DT_EMISSAO').Value    := QuerX.FieldByName('DT_NOTA').AsDateTime;
        Quer51.FieldByName('UF').Value            := QuerX.FieldByName('UF').AsString;
        Quer51.FieldByName('SERIE').Value         := QuerX.FieldByName('SERIE').AsString;
        Quer51.FieldByName('NUMERO').Value        := RightStr(QuerX.FieldByName('NUN_NF').AsString, 6);

        if QuerX.FieldByName('CFOP_COMPRA').AsString.Trim = '1405' then
          Quer51.FieldByName('CFOP').Value               := '1403'
        else
        if MatchStr(QuerX.FieldByName('CFOP_COMPRA').AsString.Trim, ['1929', '1656']) then
          Quer51.FieldByName('CFOP').Value               := '1653'
        else
          Quer51.FieldByName('CFOP').Value               := QuerX.FieldByName('CFOP_COMPRA').AsString.Trim;

        Quer51.FieldByName('VALOR_TOTAL').Value   := RdT(QuerX.FieldByName('TOTAL').AsFloat, -2);
        Quer51.FieldByName('IPI_VALOR').Value     := 0;
        Quer51.FieldByName('VALOR_ISENTAS').Value := 0;
        Quer51.FieldByName('SITUACAO').Value      := 'N';

        if MatchStr(QuerX.FieldByName('MODELO_DOCTO_FISCAL').AsString, ['01', '55']) then
          Quer51.FieldByName('VALOR_OUTRAS').Value := Quer51.FieldByName('VALOR_TOTAL').Value
        else
          Quer51.FieldByName('VALOR_OUTRAS').Value := 0;

        Quer51.Post;
        QuerX.Next;
      end;
      {$ENDREGION}

      {$REGION 'Registro 53 - Substituição Tributária'}
      QuerX.Close;
      QuerX.SQL.Text := 'select P.CNPJCPF, P.INSCIDENT, N.DT_NOTA, P.UF, NP.CODNF_CFOP, NP.CUSTO_FABR, NP.VDESC, ' +
                        '       N.NUN_NF, N.CODIGO, N.MODELO_DOCTO_FISCAL, N.SERIE, P.TIPO, NP.NF_PMVA, ' +
                        '       NP.QUANT_COMPRA, NP.NF_VICMSST, sum(NP.VOUTRO) as ACRESCIMO, ' +
                        '       sum((N.NF_VFRETE / N.QUANTIDADE) * NP.QUANT_COMPRA) as NF_VFRETE ' +
                        'from NF_ENTRADA N ' +
                        'left join NF_ENTRADA_PRODUTOS NP on (NP.CODNF_ENTRADA = N.CODIGO) ' +
                        'left join PESSOAS P on (P.CODIGO = N.PESSOA_RESPONSAVEL_CODIGO) ' +
                        'where (N.CODIGO = :CODIGO) ' +
                        '      and (NP.NF_PMVA > 0) ' +
                        '      and (NP.NF_VICMSST > 0) ' +
                        'group by P.CNPJCPF, P.INSCIDENT, N.DT_NOTA, P.UF, NP.CODNF_CFOP, NP.CUSTO_FABR, NP.VDESC, N.NUN_NF, N.CODIGO, N.MODELO_DOCTO_FISCAL, N.SERIE, P.TIPO, NP.NF_PMVA, NP.QUANT_COMPRA, NP.NF_VICMSST';
      QuerX.ParamByName('Codigo').AsString := ACodigosNota[i];
      QuerX.Open;
      while not QuerX.Eof do
      begin
        Quer53.Insert;
        Quer53.FieldByName('CODIGO').Value             := GetCodigo('53');
        Quer53.FieldByName('CODSINTEGRA').Value        := FCodSintegra;
        Quer53.FieldByName('CNPJCPF').Value            := OnlyNumber(QuerX.FieldByName('CNPJCPF').AsString);
        Quer53.FieldByName('INSCRICAO_ESTADUAL').Value := GetInscricaoEstadual(QuerX);
        Quer53.FieldByName('DT_EMISSAO').Value := QuerX.FieldByName('DT_NOTA').AsDateTime;
        Quer53.FieldByName('UF').Value         := QuerX.FieldByName('UF').AsString;
        Quer53.FieldByName('MODELO').Value     := IfThen(QuerX.FieldByName('MODELO_DOCTO_FISCAL').AsString = '', 'XX', QuerX.FieldByName('MODELO_DOCTO_FISCAL').AsString);
        Quer53.FieldByName('SERIE').Value      := QuerX.FieldByName('SERIE').AsString;
        Quer53.FieldByName('NUMERO').Value     := RightStr(QuerX.FieldByName('NUN_NF').AsString, 6);
        Quer53.FieldByName('CFOP').Value       := QuerX.FieldByName('CODNF_CFOP').AsString;
        Quer53.FieldByName('EMITENTE').Value   := 'T';
        Quer53.FieldByName('ICMS_BC').Value    := IfThen(QuerX.FieldByName('NF_PMVA').AsFloat > 0,
                                                         RdT(PercAdd((QuerX.FieldByName('CUSTO_FABR').AsFloat * QuerX.FieldByName('QUANT_COMPRA').AsFloat)
                                                           - QuerX.FieldByName('VDESC').AsFloat + QuerX.FieldByName('ACRESCIMO').AsFloat, QuerX.FieldByName('NF_PMVA').AsFloat), -2) , 0);
        Quer53.FieldByName('ICMS_RETIDO').Value := RdT(QuerX.FieldByName('NF_VICMSST').AsFloat, -2);
        Quer53.FieldByName('DESPESAS_ACESSORIAS').Value := RdT(QuerX.FieldByName('ACRESCIMO').AsFloat + QuerX.FieldByName('NF_VFRETE').AsFloat, -2);
        Quer53.FieldByName('SITUACAO').Value := 'N';
        //Quer53.FieldByName('CODIGO_ANTECIPACAO').Value := ;
        Quer53.Post;
        QuerX.Next;
      end;
      {$ENDREGION}

      {$REGION 'Registro 54 - Produto (Itens da Nota Fiscal)'}
      {Um registro para cada produto ou serviço constante da nota fiscal e/ou romaneio
       Revisado em 11/12/2019 de acordo com o manual de orientações quanto a como o registro deve ser gerado. Não foram
       revisados os cálculos}

      QuerX.Close;
      QuerX.SQL.Text := 'select P.CNPJCPF, P.INSCIDENT, N.DT_NOTA, P.UF, NP.CFOP_COMPRA, NP.NF_PICMS, N.NUN_NF, N.CODIGO, ' +
                        '       P.TIPO, N.MODELO_DOCTO_FISCAL, N.SERIE, NP.CODPRODUTO, NP.CODNF_CST, NP.DESCRICAO, ' +
                        '       NP.CUSTO_FABR, NP.VDESC, NP.NF_PMVA, NP.NF_IPI_VIPI, NP.QUANT_COMPRA, NP.NF_UNIDADE, ' +
                        '       NP.VOUTRO, NP.UNIDADE, NP.CODNF_NCM, NP.NF_IPI_PIPI ' +
                        'from NF_ENTRADA N ' +
                        'left join NF_ENTRADA_PRODUTOS NP on (NP.CODNF_ENTRADA = N.CODIGO) ' +
                        'left join PESSOAS P on (P.CODIGO = N.PESSOA_RESPONSAVEL_CODIGO) ' +
                        'where (N.CODIGO = :Codigo)' +
                        'order by NP.CODIGO asc';
      QuerX.ParamByName('Codigo').AsString := ACodigosNota[i];
      QuerX.Open;
      ASeqProdCompra := 1;
      while not QuerX.Eof do
      begin
        Quer54.Insert;
        Quer54.FieldByName('CODIGO').Value      := GetCodigo('54');
        Quer54.FieldByName('CODSINTEGRA').Value := FCodSintegra;
        Quer54.FieldByName('CNPJCPF').Value     := OnlyNumber(QuerX.FieldByName('CNPJCPF').AsString);
        Quer54.FieldByName('MODELO').Value      := IfThen(QuerX.FieldByName('MODELO_DOCTO_FISCAL').AsString = '', 'XX', QuerX.FieldByName('MODELO_DOCTO_FISCAL').AsString);
        Quer54.FieldByName('SERIE').Value       := QuerX.FieldByName('SERIE').AsString;
        Quer54.FieldByName('NUMERO').Value      := RightStr(QuerX.FieldByName('NUN_NF').AsString, 6);

        if QuerX.FieldByName('CFOP_COMPRA').AsString.Trim = '1405' then
          Quer54.FieldByName('CFOP').Value               := '1403'
        else
        if MatchStr(QuerX.FieldByName('CFOP_COMPRA').AsString.Trim, ['1929', '1656']) then
          Quer54.FieldByName('CFOP').Value               := '1653'
        else
          Quer54.FieldByName('CFOP').Value               := QuerX.FieldByName('CFOP_COMPRA').AsString.Trim;

        if QuerX.FieldByName('CODNF_CST').AsString = ''  then
        begin
          if Copy(Quer54.FieldByName('CFOP').AsString, 2, 3) = '101' then
            Quer54.FieldByName('CST').AsString         := '101'
          else
          if Copy(Quer54.FieldByName('CFOP').AsString, 2, 3) = '102' then
            Quer54.FieldByName('CST').AsString         := '102'
          else
          if Copy(Quer54.FieldByName('CFOP').AsString, 2, 3) = '403' then
            Quer54.FieldByName('CST').AsString         := '500';
        end
        else
          Quer54.FieldByName('CST').AsString         := QuerX.FieldByName('CODNF_CST').AsString;

        Quer54.FieldByName('CODPRODUTO').Value  := QuerX.FieldByName('CODPRODUTO').AsString;
        Quer54.FieldByName('QUANTIDADE').Value  := RdT(QuerX.FieldByName('QUANT_COMPRA').AsFloat, -3);
        Quer54.FieldByName('NUM_ITEM').Value         := ASeqProdCompra;
        Inc(ASeqProdCompra);
        Quer54.FieldByName('VALOR_PRODUTO').Value    := RdT((QuerX.FieldByName('CUSTO_FABR').AsFloat * QuerX.FieldByName('QUANT_COMPRA').AsFloat), -2);
        Quer54.FieldByName('DESCONTO_DESPESA').Value := RdT(QuerX.FieldByName('VDESC').AsFloat, -2);
        Quer54.FieldByName('ICMS_BC').Value       := IfThen(QuerX.FieldByName('NF_PICMS').AsFloat > 0, Quer54.FieldByName('VALOR_PRODUTO').AsFloat , 0);
        Quer54.FieldByName('ICMS_BC_ST').Value    := IfThen(QuerX.FieldByName('NF_PMVA').AsFloat > 0,
                                                            RdT(PercAdd(Quer54.FieldByName('VALOR_PRODUTO').AsFloat + QuerX.FieldByName('VOUTRO').AsFloat, QuerX.FieldByName('NF_PMVA').AsFloat), -2) , 0);
        Quer54.FieldByName('IPI_VALOR').Value     := RdT(QuerX.FieldByName('NF_IPI_VIPI').AsFloat, -2);
        Quer54.FieldByName('ICMS_ALIQUOTA').Value := RdT(QuerX.FieldByName('NF_PICMS').AsFloat, -2);
        Quer54.Post;

        {$REGION 'Registro 75 - Código de produto ou serviço'}
        {Pendente de verificação.
         O manual de orientação não informa quais os valores que devem ser informados nas alíquotas de IPI e ICMS, já que
         podem haver alíquotas diferentes em vendas diferentes e esta lista comporta apenas 1 registro por produto

         Aqui está sendo inserido na tabela um registro para cada produto da nota, mas ao gerar o arquivo apenas 1
         produto por código é listado.
         !!! Não está correto!!!!!}

        //Registros de Produtos que saíram em notas de entrada. Deve haver 1 registro único para cada produto
        //que tenha saído em alguma nota de entrada no período informado. Não deve conter os demais produtos cadastrados
        //no sistema. O produto da nota deve estar obrigatoriamente no cadastro de produtos!!! Caso dê erro de registro
        //75 faltando que saiu no 54, instruir o cliente a cadastrar o produto, pois o mesmo consta na nota mas não no cadastro.
        Quer75.Insert;
        Quer75.FieldByName('CODIGO').Value          := GetCodigo('75');
        Quer75.FieldByName('CODSINTEGRA').Value     := FCodSintegra;
        Quer75.FieldByName('DT_INICIO').Value       := FDtInicio;
        Quer75.FieldByName('DT_FIM').Value          := FDtFim;
        Quer75.FieldByName('CODPRODUTO').Value      := QuerX.FieldByName('CODPRODUTO').AsString.Trim;
        Quer75.FieldByName('NCM').Value             := QuerX.FieldByName('CODNF_NCM').AsString;
        Quer75.FieldByName('DESCRICAO').Value       := QuerX.FieldByName('DESCRICAO').AsString;
        Quer75.FieldByName('UNIDADE').Value         := IfThen(QuerX.FieldByName('NF_UNIDADE').AsString.Trim = '',
                                           QuerX.FieldByName('UNIDADE').AsString.Trim,
                                           QuerX.FieldByName('NF_UNIDADE').AsString.Trim);
        if Quer75.FieldByName('UNIDADE').AsString = '' then
          Quer75.FieldByName('UNIDADE').AsString := Procura('UNIDADE', 'PRODUTO', QuerX.FieldByName('CODPRODUTO').AsString);
        if Quer75.FieldByName('UNIDADE').AsString = '' then
          Quer75.FieldByName('UNIDADE').AsString := 'UN';
        Quer75.FieldByName('IPI_ALIQUOTA').Value    := RdT(QuerX.FieldByName('NF_IPI_PIPI').AsFloat, -2);
        Quer75.FieldByName('ICMS_ALIQUOTA').Value   := RdT(QuerX.FieldByName('NF_PICMS').AsFloat, -2);
        Quer75.FieldByName('ICMS_REDUCAO_BC').Value := 0;
        Quer75.FieldByName('ICMS_BC_ST').Value      := 0;
        Quer75.Post;
        {$ENDREGION}

        QuerX.Next;
      end;
      {$ENDREGION}

      {$REGION 'Registro 54 - Frete e Acréscimo'}
      {De acordo com o link abaixo, o CFOP é o único campo que precisa.
       Deve haver um registro para cada CFOP da nota totalizando o frete/acréscomo daquele CFOP}
      QuerX.Close;
      QuerX.SQL.Text := 'select * ' +
                        'from (select NP.CFOP_COMPRA, P.CNPJCPF, N.MODELO_DOCTO_FISCAL, N.SERIE, N.NUN_NF, ' +
                        '             sum((N.NF_VFRETE / coalesce(nullif(N.QUANTIDADE, 0), 1)) * NP.QUANT_COMPRA) as NF_VFRETE, ' +
                        '      sum(NP.VOUTRO) as ACRESCIMO ' +
                        '      from NF_ENTRADA N ' +
                        '      left join NF_ENTRADA_PRODUTOS NP on N.CODIGO = NP.CODNF_ENTRADA ' +
                        '      left join PESSOAS P on (P.CODIGO = N.PESSOA_RESPONSAVEL_CODIGO) ' +
                        '      where (N.CODIGO = :Codigo) ' +
                        '      group by NP.CFOP_COMPRA, P.CNPJCPF, N.MODELO_DOCTO_FISCAL, N.SERIE, N.NUN_NF) TAB ' +
                        'where (TAB.NF_VFRETE > 0) ' +
                        '      or (TAB.ACRESCIMO > 0)';
      QuerX.ParamByName('Codigo').AsString := ACodigosNota[i];
      QuerX.Open;
      while not QuerX.Eof do
      begin
        if not IsZero(QuerX.FieldByName('NF_VFRETE').AsFloat) then
        begin
          Quer54.Insert;
          Quer54.FieldByName('CODIGO').Value           := GetCodigo('54');
          Quer54.FieldByName('NUM_ITEM').Value         := 991;
          Quer54.FieldByName('CODSINTEGRA').Value      := FCodSintegra;
          Quer54.FieldByName('CNPJCPF').Value          := OnlyNumber(QuerX.FieldByName('CNPJCPF').AsString);
          Quer54.FieldByName('MODELO').Value           := IfThen(QuerX.FieldByName('MODELO_DOCTO_FISCAL').AsString = '', 'XX', QuerX.FieldByName('MODELO_DOCTO_FISCAL').AsString);
          Quer54.FieldByName('SERIE').Value            := QuerX.FieldByName('SERIE').AsString;
          Quer54.FieldByName('NUMERO').Value           := RightStr(QuerX.FieldByName('NUN_NF').AsString, 6);
          Quer54.FieldByName('CFOP').Value             := QuerX.FieldByName('CFOP_COMPRA').AsString;
          Quer54.FieldByName('DESCONTO_DESPESA').Value := RdT(QuerX.FieldByName('NF_VFRETE').AsFloat, -2);
          Quer54.Post;
        end;

        if not IsZero(QuerX.FieldByName('ACRESCIMO').AsFloat) then
        begin
          Quer54.Insert;
          Quer54.FieldByName('CODIGO').Value           := GetCodigo('54');
          Quer54.FieldByName('NUM_ITEM').Value         := 999;
          Quer54.FieldByName('CODSINTEGRA').Value      := FCodSintegra;
          Quer54.FieldByName('CNPJCPF').Value          := OnlyNumber(QuerX.FieldByName('CNPJCPF').AsString);
          Quer54.FieldByName('MODELO').Value           := IfThen(QuerX.FieldByName('MODELO_DOCTO_FISCAL').AsString = '', 'XX', QuerX.FieldByName('MODELO_DOCTO_FISCAL').AsString);
          Quer54.FieldByName('SERIE').Value            := QuerX.FieldByName('SERIE').AsString;
          Quer54.FieldByName('NUMERO').Value           := RightStr(QuerX.FieldByName('NUN_NF').AsString, 6);
          Quer54.FieldByName('CFOP').Value             := QuerX.FieldByName('CFOP_COMPRA').AsString;         //   CFOP
          Quer54.FieldByName('DESCONTO_DESPESA').Value := RdT(QuerX.FieldByName('ACRESCIMO').AsFloat, -2);   //   voutro
          Quer54.Post;
        end;
        QuerX.Next;
      end;
      {$ENDREGION}
    end;
  finally
    QuerX.Free;
    Quer50.Free;
    Quer51.Free;
    Quer53.Free;
    Quer54.Free;
    Quer75.Free;
    ACodigosNota.Free;
  end;  //*)
end;

procedure TWRGeradorSintegra.GerarRegistrosDeCuponsFiscais;
var
  QuerX, Quer60M, Quer60A: TFDQuery;
  ASeq: Integer;
  AWhere: string;
  AListaVendas: TStringList;
begin
  AListaVendas := TStringList.Create;
  QuerX   := GeraFDQuery(FConnectionPAF);
  Quer60M := GeraFDQuery(FTransa);
  Quer60A := GeraFDQuery(FTransa);
  try
    AWhere := '(V.DT_EMISSAO between :DtInicio and :DtFim) ' +
              'and (V.CODIGO > 0) ' +
              'and (V.ECF_TIPO_DOC = ''2D'') ' +
              'and (V.STATUS like ''ATIVO%'') ' +
              'and (V.CODEMPRESA = :CodEmpresa) ';

    //Primeiro carrega todas as vendas que farão parte dos registros 60
    QuerX.SQL.Text := 'select CODIGO ' +
                      'from VENDA V ' +
                      'where ' + AWhere;
    QuerX.ParamByName('DtInicio').AsDateTime  := FDtInicio;
    QuerX.ParamByName('DtFim').AsDateTime     := FDtFim;
    QuerX.ParamByName('CodEmpresa').AsInteger := FCodEmpresa;
    QuerX.Open;
    while not QuerX.Eof do
    begin
      AListaVendas.Add(QuotedStr(QuerX.Fields[0].AsString));
      QuerX.Next;
    end;
    QuerX.Close;

    if AListaVendas.Count = 0 then
      Exit;

    {$REGION 'Registros 60M'}
    Quer60M.SQL.Text := 'select * ' +
                        'from SINTEGRA_R60M ' +
                        'where (CODIGO is null)';
    Quer60M.Open;

    QuerX.SQL.Text := 'select cast(V.DT_EMISSAO as date) as EMISSAO, V.ECF_TIPO_DOC, E.NUM_ECF, E.NUM_SERIE, ' +
                      '       max(V.CODIGO) as COOFINAL, min(V.CODIGO) as COOINICIAL, sum(V.TOTAL) as TOTAL, ' +
                      '       max(V.CRZ) as CRZ, max(V.CRO) as CRO, max(V.GRANDE_TOTAL) as GRANDE_TOTAL ' +
                      'from VENDA V ' +
                      'left join ECF E on (E.NUM_SERIE = V.N_FABRICACAO) ' +
                      'where ' + AWhere +
                      'group by 1, 2, 3, 4';
    QuerX.ParamByName('DtInicio').AsDateTime  := FDtInicio;
    QuerX.ParamByName('DtFim').AsDateTime     := FDtFim;
    QuerX.ParamByName('CodEmpresa').AsInteger := FCodEmpresa;
    QuerX.Open;
    while not QuerX.Eof do
    begin
      Quer60M.Insert;
      Quer60M.FieldByName('CODIGO').AsInteger      := GetCodigo('60M');
      Quer60M.FieldByName('CODSINTEGRA').AsInteger := FCodSintegra;
      Quer60M.FieldByName('DT_EMISSAO').AsDateTime := DateOf(QuerX.FieldByName('EMISSAO').AsDateTime);
      Quer60M.FieldByName('NUM_SERIE').AsString    := QuerX.FieldByName('NUM_SERIE').AsString;
      Quer60M.FieldByName('NUM_ORDEM').AsInteger   := StrToIntDef(QuerX.FieldByName('NUM_ECF').AsString, 1);
      Quer60M.FieldByName('MODELO_DOC').AsString   := QuerX.FieldByName('ECF_TIPO_DOC').AsString;
      Quer60M.FieldByName('COO_INICIAL').AsInteger := QuerX.FieldByName('COOINICIAL').AsInteger;
      Quer60M.FieldByName('COO_FINAL').AsInteger   := QuerX.FieldByName('COOFINAL').AsInteger;
      Quer60M.FieldByName('CRZ').AsInteger         := QuerX.FieldByName('CRZ').AsInteger;
      Quer60M.FieldByName('CRO').AsInteger         := QuerX.FieldByName('CRO').AsInteger;
      Quer60M.FieldByName('TOTAL_BRUTO').AsFloat   := QuerX.FieldByName('TOTAL').AsFloat;
      Quer60M.FieldByName('GRANDE_TOTAL').AsFloat  := QuerX.FieldByName('GRANDE_TOTAL').AsFloat;
      Quer60M.Post;
      QuerX.Next;
    end;
    QuerX.Close;
    {$ENDREGION}

    {$REGION 'Registros 60A'}
    Quer60A.SQL.Text := 'select * ' +
                        'from SINTEGRA_R60A ' +
                        'where (CODIGO is null)';
    Quer60A.Open;

    QuerX.SQL.Text := 'select cast(V.DT_EMISSAO as date) as EMISSAO, V.N_FABRICACAO, VP.SITUACAO_FISCAL, VP.COD_TOTALIZADOR_PARCIAL, ' +
                      '       sum((VP.QUANT * VP.VALOR) + coalesce(VP.VOUTRO, 0) - coalesce(VP.VDESC, 0)) as TOTAL ' +
                      'from VENDA_PRODUTO VP ' +
                      'left join VENDA V on (VP.CODVENDA = V.CODIGO) ' +
                      'where (VP.CODVENDA in (' + AListaVendas.List + ')) ' +
                      'group by 1, 2, 3, 4';
    QuerX.Open;
    while not QuerX.Eof do
    begin
      Quer60A.Insert;
      Quer60A.FieldByName('CODIGO').AsInteger             := GetCodigo('60A');
      Quer60A.FieldByName('CODSINTEGRA').AsInteger        := FCodSintegra;
      Quer60A.FieldByName('DT_EMISSAO').AsDateTime        := DateOf(QuerX.FieldByName('EMISSAO').AsDateTime);
      Quer60A.FieldByName('NUM_SERIE').AsString           := QuerX.FieldByName('N_FABRICACAO').AsString;
      Quer60A.FieldByName('VALOR_ACUMULADO').AsFloat      := QuerX.FieldByName('TOTAL').AsFloat;

      {Quando o campo SITUACAO_FISCAL iniciar com T (T01, T02, etc..) significa que devemos preencher no sintegra o
       valor da alíquota. Neste caso não há um campo que registre este valor no paf, mas no código do totalizador fiscal
       tem essa informação.
       Ex: o campo COD_TOTALIZADOR_PARCIAL tem a seguinte estrutura: T04T1700, então copiamos daqui o valor da alíquota}
      if StartsText('T', QuerX.FieldByName('SITUACAO_FISCAL').AsString) then
        Quer60A.FieldByName('SITUACAO_TRIBUTARIA').AsString := Copy(QuerX.FieldByName('COD_TOTALIZADOR_PARCIAL').AsString, 5, 4)
      else
        Quer60A.FieldByName('SITUACAO_TRIBUTARIA').AsString := QuerX.FieldByName('SITUACAO_FISCAL').AsString;
      Quer60A.Post;
      QuerX.Next;
    end;
    {$ENDREGION}
  finally
    QuerX.Free;
    Quer60M.Free;
    Quer60A.Free;
    AListaVendas.Free;
  end;
end;

procedure TWRGeradorSintegra.GerarRegistrosDeVendas;
var
  QuerX, QuerProduto: TFDQuery;
  AACBrNFe: TACBrNFe;
  ASeq: Integer;
begin
  QuerX := GeraFDQuery;
  try
    QuerX.SQL.Text := 'select V.NOTAFISCAL, P.CNPJCPF, P.INSCIDENT, P.TIPO, V.NF_DT_EMISSAO, P.UF, ' +
                      '       VP.CODNF_CFOP, VP.NF_PICMS, V.CODIGO, ' +
                      '       sum(coalesce(VP.TOTAL, 0)) as TOTAL, ' +
                      '       sum(coalesce(VP.NF_VBC, 0)) as NF_VALOR_ICMS_BC, sum(coalesce(VP.NF_VICMS,0)) as NF_VALOR_ICMS, ' +
                      '       (((sum(coalesce(V.NF_VFRETE, 0) / coalesce(nullif(V.QUANTIDADE, 0), 1))) / count(V.CODIGO)) * sum(VP.QUANT)) as NF_VFRETE, ' +
                      '       (((sum(coalesce(V.VOUTRO, 0) / coalesce(nullif(V.QUANTIDADE, 0), 1))) / count(V.CODIGO)) * sum(VP.QUANT)) as VOUTRO ' +
                      'from VENDA V ' +
                      'left join VENDA_PRODUTO VP on (VP.CODVENDA = V.CODIGO) ' +
                      'left join PESSOAS P on (P.CODIGO = V.PESSOA_RESPONSAVEL_CODIGO) ' +
                      'where (V.NF_DT_EMISSAO between :DtInicio and :DtFim) ' +
                      '      and (V.NOTAFISCAL > 0) ' +
                      '      and (V.NOTAFISCAL not in (select N.NF_NUMERO ' +
                      '                                from NOTA_FISCAL N ' +
                      '                                where ((N.NF_SITUACAO = ''Cancelada'') ' +
                      '                                           or (N.NF_MODELO in (65))) ' +
                      '                                      and (N.CODVENDA = V.CODIGO))) ' +
                      '      and (V.CODIGO like ''%-'' || :CodEmpresa) ' +
                      'group by VP.CODNF_CFOP, VP.NF_PICMS, P.CNPJCPF, P.INSCIDENT, V.NF_DT_EMISSAO, P.UF, V.NOTAFISCAL, V.CODIGO, P.TIPO, V.NF_VFRETE ' +
                      'order by 1 ';  //Ordenar por nota
      QuerX.ParamByName('DtInicio').AsDateTime := FDtInicio;
      QuerX.ParamByName('DtFim').AsDateTime    := FDtFim;
      QuerX.ParamByName('CodEmpresa').AsString := FCodEmpresa.ToString;
      QuerX.Open;
      QuerX.First;
      while not QuerX.Eof do
      begin
        AACBrNFe := TACBrNFe.Create(nil);
        try
          if not CarregaXMLNotaFiscal(AACBrNFe, QuerX.FieldByName('CODIGO').AsString, QuerX.FieldByName('NOTAFISCAL').AsString) then
          begin
            QuerX.Next;
            Continue;
          end;

          GerarRegistro50(AACBrNFe, QuerX);

          QuerProduto := GeraFDQuery;
          try
            {$REGION 'Registros 54 e 75'}
            QuerProduto.SQL.Text := 'select VP.* ' +
                                    'from VENDA_PRODUTO VP  ' +
                                    'where (VP.CODVENDA = :CodVenda) ' +
                                    '      and (cast(coalesce(VP.NF_PICMS, 0) * 100 as integer) = :NF_PICMS) ' +
                                    '      and (VP.CODNF_CFOP = :CodCfop) ' +
                                    'order by VP.CODIGO asc';
            QuerProduto.ParamByName('CodVenda').AsString := QuerX.FieldByName('CODIGO').AsString;
            QuerProduto.ParamByName('NF_PICMS').AsInteger   := Trunc(QuerX.FieldByName('NF_PICMS').AsFloat * 100);
            QuerProduto.ParamByName('CodCfop').AsString  := QuerX.FieldByName('CODNF_CFOP').AsString;
            QuerProduto.Open;
            ASeq := 1;
            while not QuerProduto.Eof do
            begin
              GerarRegistro54(AACBrNFe, QuerProduto, ASeq);
              GerarRegistro75(QuerProduto);
              Inc(ASeq);
              QuerProduto.Next;
            end;
            {$ENDREGION}

            {$REGION 'Registro 51'}
            QuerProduto.Close;

            QuerProduto.SQL.Text := 'select VP.*, ' +
                                    '       (select count(VP2.CODIGO) ' +
                                    '        from VENDA_PRODUTO VP2 ' +
                                    '        where (VP2.CODIGO < VP.CODIGO) ' +
                                    '              and (VP2.CODVENDA = VP.CODVENDA) ' +
                                    '              and (coalesce(VP2.NF_PICMS, 0) = coalesce(VP.NF_PICMS, 0)) ' +
                                    '              and (coalesce(VP2.CODNF_CFOP, '''') = coalesce(VP.CODNF_CFOP, '''')) ' +
                                    '              and (coalesce(VP.NF_IPI_VIPI, 0) > 0)) + 1 as SEQ ' +
                                    'from VENDA_PRODUTO VP  ' +
                                    'where (VP.CODVENDA = :CodVenda) ' +
                                    '      and (cast(VP.NF_PICMS * 100 as integer) = :NF_PICMS) ' +
                                    '      and (VP.CODNF_CFOP = :CodCfop) ' +
                                    '      and (coalesce(VP.NF_IPI_VIPI, 0) > 0)';
            QuerProduto.ParamByName('CodVenda').AsString := QuerX.FieldByName('CODIGO').AsString;
            QuerProduto.ParamByName('NF_PICMS').AsInteger   := Trunc(QuerX.FieldByName('NF_PICMS').AsFloat * 100);
            QuerProduto.ParamByName('CodCfop').AsString  := QuerX.FieldByName('CODNF_CFOP').AsString;
            QuerProduto.Open;
            QuerProduto.FetchAll;
            while not QuerProduto.Eof do
            begin
              GerarRegistro51(AACBrNFe, QuerProduto.FieldByName('NITEM').Value, QuerProduto.FieldByName('CODIGO').AsInteger);
              QuerProduto.Next;
            end;
            {$ENDREGION}

            {$REGION 'Registro 53'}
            QuerProduto.Close;

            QuerProduto.SQL.Text := 'select VP.*, ' +
                                    '       (select count(VP2.CODIGO) ' +
                                    '        from VENDA_PRODUTO VP2 ' +
                                    '        where (VP2.CODIGO < VP.CODIGO) ' +
                                    '              and (VP2.CODVENDA = VP.CODVENDA) ' +
                                    '              and (coalesce(VP2.NF_PICMS, 0) = coalesce(VP.NF_PICMS, 0)) ' +
                                    '              and (coalesce(VP2.CODNF_CFOP, '''') = coalesce(VP.CODNF_CFOP, '''')) ' +
                                    '              and (coalesce(VP.NF_VICMSST, 0) > 0)) + 1 as SEQ ' +
                                    'from VENDA_PRODUTO VP  ' +
                                     'where (VP.CODVENDA = :CodVenda) ' +
                                    '      and (cast(VP.NF_PICMS * 100 as integer) = :NF_PICMS) ' +
                                    '      and (VP.CODNF_CFOP = :CodCfop) ' +
                                    '      and (coalesce(VP.NF_VICMSST, 0) > 0)';
            QuerProduto.ParamByName('CodVenda').AsString := QuerX.FieldByName('CODIGO').AsString;
            QuerProduto.ParamByName('NF_PICMS').AsInteger   := Trunc(QuerX.FieldByName('NF_PICMS').AsFloat * 100);
            QuerProduto.ParamByName('CodCfop').AsString  := QuerX.FieldByName('CODNF_CFOP').AsString;
            QuerProduto.Open;
            QuerProduto.FetchAll;
            while not QuerProduto.Eof do
            begin
              GerarRegistro53(AACBrNFe, QuerProduto.FieldByName('CODPRODUTO').AsString, QuerProduto.FieldByName('SEQ').AsInteger);
              QuerProduto.Next;
            end;
            {$ENDREGION}
          finally
            QuerProduto.Free;
          end;
        finally
          AACBrNFe.Free;
        end;
        QuerX.Next;
      end;
  finally
    QuerX.Free;
  end;
end;

class procedure TWRGeradorSintegra.GerarSintegra(ACodEmpresa: Integer; ADtReferencia: TDate; AGerarInventario,
  AGerarRegistros60: Boolean; const ACaminhoBancoPAF: string; ADtInventario: TDateTime);
var
  AGerador: TWRGeradorSintegra;
begin
  AGerador := TWRGeradorSintegra.Create;
  try
    AGerador.CodEmpresa       := ACodEmpresa;
    AGerador.DtInicio         := StartOfTheMonth(ADtReferencia);
    AGerador.DtFim            := EndOfTheMonth(ADtReferencia);
    AGerador.Inventario       := AGerarInventario;
    AGerador.DtInventario     := ADtInventario;
    AGerador.GerarRegistros60 := AGerarRegistros60;
    AGerador.CaminhoBancoPAF  := ACaminhoBancoPAF;

    {Manual de Orientação:
    https://www.confaz.fazenda.gov.br/legislacao/convenios/1995/CV057_95_manualOrien2}

    AGerador.InternalGerarSintegra;
  finally
    AGerador.Free;
  end;
end;

procedure TWRGeradorSintegra.GerarTransporte;
var
  QuerX, Quer70: TFDQuery;
  AUFEmitente: string;
begin
  QuerX := GeraFDQuery;
  Quer70 := GeraFDQuery(FTransa);
  try
    Quer70.SQL.Text := 'select CODIGO, CODSINTEGRA, CNPJCPF, INSCRICAO_ESTADUAL, DT_EMISSAO, UF, MODELO, ' +
                       '       SERIE, SUBSERIE, NUMERO, CFOP, VALOR_TOTAL, ICMS_BC, ICMS_VALOR, ISENTAS, ' +
                       '       OUTRAS, CIF_FOB_OUTROS, CIF_FOB, SITUACAO ' +
                       'from SINTEGRA_R70 ' +
                       'where (CODIGO is null)';
    Quer70.Open;

    QuerX.SQL.Text := 'select P.CNPJCPF, P.INSCIDENT, N.DT_NOTA, P.UF, N.MODELO_DOCTO_FISCAL, N.SERIE, ' +
                      '       N.SUBSERIE, NP.CODNF_CFOP, N.TOTAL, N.NUN_NF, N.CODIGO, P.TIPO, ' +
                      '       N.NF_VBC, N.NF_VICMS ' +
                      'from NF_ENTRADA N ' +
                      'left join NF_ENTRADA_PRODUTOS NP on (NP.CODNF_ENTRADA = N.CODIGO) ' +
                      'left join PESSOAS P on (P.CODIGO = N.PESSOA_RESPONSAVEL_CODIGO) ' +
                      'where (N.DT_NOTA between :DtInicio and :DtFim) ' +
                      '      and (N.NUN_NF > 0) ' +
                      '      and (N.TIPO like ''%TRANSPORTE'')';
    if MultiEmpresa then
      QuerX.SQL.Add('and (cast(substring(N.CODIGO from (position(''-'', N.CODIGO) + 1) for ' +
                    '     char_length(N.CODIGO)) as integer) = :CodEmpresa)');
    QuerX.ParamByName('DtInicio').AsDateTime := FDtInicio;
    QuerX.ParamByName('DtFim').AsDateTime    := FDtFim;
    if MultiEmpresa then
      QuerX.ParamByName('CodEmpresa').AsInteger := FCodEmpresa;
    QuerX.Open;
    while not QuerX.Eof do
    begin
      Quer70.Insert;
      Quer70.FieldByName('CODIGO').Value             := GetCodigo('70');
      Quer70.FieldByName('CODSINTEGRA').Value        := FCodSintegra;
      Quer70.FieldByName('CNPJCPF').Value            := OnlyNumber(QuerX.FieldByName('CNPJCPF').AsString);
      Quer70.FieldByName('INSCRICAO_ESTADUAL').Value := QuerX.FieldByName('INSCIDENT').AsString;
      Quer70.FieldByName('DT_EMISSAO').Value         := QuerX.FieldByName('DT_NOTA').AsDateTime;
      Quer70.FieldByName('UF').Value                 := QuerX.FieldByName('UF').AsString;

      if QuerX.FieldByName('MODELO_DOCTO_FISCAL').AsString = '' then
        Quer70.FieldByName('MODELO').Value           := '57'
      else
        Quer70.FieldByName('MODELO').Value           := QuerX.FieldByName('MODELO_DOCTO_FISCAL').AsString;

      Quer70.FieldByName('SERIE').Value              := QuerX.FieldByName('SERIE').AsString;
      Quer70.FieldByName('SUBSERIE').Value           := QuerX.FieldByName('SUBSERIE').AsString;
      Quer70.FieldByName('NUMERO').Value             := QuerX.FieldByName('NUN_NF').AsString;
      Quer70.FieldByName('CFOP').Value               := QuerX.FieldByName('CODNF_CFOP').AsString;
      if Quer70.FieldByName('CFOP').AsString = '' then
      begin
        AUFEmitente := Procura('UF', 'PESSOAS', Procura('PESSOA_RESPONSAVEL_CODIGO', 'NF_ENTRADA', QuerX.FieldByName('CODIGO').AsString));
        Quer70.FieldByName('CFOP').AsString := IfThen(AUFEmitente <> FEmpresa.UF, '1353', '2353');
      end;
      Quer70.FieldByName('VALOR_TOTAL').Value    := RoundTo(QuerX.FieldByName('TOTAL').AsFloat, -2);
      Quer70.FieldByName('ICMS_BC').Value        := RoundTo(QuerX.FieldByName('NF_VBC').AsFloat, -2);
      Quer70.FieldByName('ICMS_VALOR').Value     := RoundTo(QuerX.FieldByName('NF_VICMS').AsFloat, -2);
      Quer70.FieldByName('ISENTAS').Value        := 0;
      Quer70.FieldByName('OUTRAS').Value         := RoundTo(QuerX.FieldByName('TOTAL').AsFloat, -2);
      Quer70.FieldByName('CIF_FOB_OUTROS').Value := '0';
      Quer70.FieldByName('SITUACAO').Value       := 'N';
//      Quer70.FieldByName('CIF_FOB').Value := ;
      Quer70.Post;
      QuerX.Next;
    end;
  finally
    QuerX.Free;
    Quer70.Free;
  end;
end;

function TWRGeradorSintegra.GetCodigo(const ARegistro: string): Integer;
begin
  Result := GetProximoCodigo('SINTEGRA_R' + ARegistro, FTransa);
end;

function TWRGeradorSintegra.GetInscricaoEstadual(const AQuery: TDataSet): string;
begin
  if (AQuery.FieldByName('TIPO').AsString = 'J') and (AQuery.FieldByName('INSCIDENT').AsString <> '') then
    Result := Trim(AQuery.FieldByName('INSCIDENT').AsString)
  else
    Result := 'ISENTO';
end;

function TWRGeradorSintegra.GetNItem(AACBrNFe: TACBrNFe; nItem: Variant; ACodVendaProduto: Integer): TDetCollectionItem;
var
  i, j: Integer;
  ADet: TDetCollectionItem;
begin
  Result := nil;
  //EM alguns casos, o nItem vem Null, então é considerado o código do VP, o qual é preenchido no nItem da Nota no ACBr
  if VarIsNull(nItem) then
    nItem := ACodVendaProduto;
  for I := 0 to AACBrNFe.NotasFiscais.Count - 1 do
  begin
    for j := 0 to AACBrNFe.NotasFiscais[i].NFe.Det.Count - 1 do
    begin
      ADet := AACBrNFe.NotasFiscais[i].NFe.Det[j];
      if ADet.Prod.nItem = nItem then
      begin
        Result := AACBrNFe.NotasFiscais[i].NFe.Det[j];
        Exit;
      end;
    end;
  end;
  if Result = nil then
    ShowMessageWR('NItem não encontrado: ' + nItem.ToString);
end;

procedure TWRGeradorSintegra.InicializaConexaoPAF;
begin
  ConfiguraCaminhoBanco(FConnectionPAF, FCaminhoBancoPAF);
  try
    FConnectionPAF.Open;
  except
    on E:Exception do
    begin
      ShowMessageWR('Não foi possível conectar no banco do PAF para gerar os Registros 60. Verifique o caminho do ' +
        'banco e tente novamente.' + sLineBreak +
        'Erro: ' + E.Message);
      Abort;
    end;
  end;
end;

procedure TWRGeradorSintegra.InternalGerarSintegra;
var
  ACodSintegra: Integer;
  QuerX: TFDQuery;
begin
  if FGerarRegistros60 then
    InicializaConexaoPAF;

  if FTransa.Active then
    FTransa.Rollback;
  try
    QuerX := GeraFDQuery(FTransa);
    try
      QuerX.SQL.Text := 'select CODIGO ' +
                        'from SINTEGRA ' +
                        'where (CODEMPRESA = :CodEmpresa) ' +
                        '      and (DT_INICIO = :DtInicio) ' +
                        '      and (DT_FIM = :DtFim)';
      QuerX.ParamByName('CodEmpresa').AsInteger := FCodEmpresa;
      QuerX.ParamByName('DtInicio').AsDate      := FDtInicio;
      QuerX.ParamByName('DtFim').AsDate         := FDtFim;
      QuerX.Open;
      while not QuerX.Eof do
      begin
        ExcluirRegistros(QuerX.Fields[0].AsInteger);
        QuerX.Next;
      end;
    finally
      QuerX.Free;
    end;

    AtualizaDadosEmpresa;
    ACodSintegra := GerarRegistroMestre;
    GerarRegistro10;
    GerarRegistro11;
    GerarRegistrosDeVendas;
    GerarRegistrosDeCompras;
    GerarRegistro61;
    if FGerarRegistros60 then
      GerarRegistrosDeCuponsFiscais;
    if FInventario then
      GerarInventario;
    GerarNotasCanceladas;
    GerarTransporte;
    AjustaRegistros75;

    FTransa.Commit;
  except
    if FTransa.Active then
      FTransa.Rollback;
    raise;
  end;
  InternalSalvarArquivo(ACodSintegra);
end;

procedure TWRGeradorSintegra.InternalSalvarArquivo(ACodSintegra: Integer);
var
  QuerX: TFDQuery;
  ASintegra: TACBrSintegra;
  AReg50: TRegistro50;
  AReg51: TRegistro51;
  AReg53: TRegistro53;
  AReg54: TRegistro54;
  AReg60M: TRegistro60M;
  AReg60A: TRegistro60A;
  AReg61: TRegistro61;
  AReg70: TRegistro70;
  AReg74: TRegistro74;
  AReg75: ACBrSintegra.TRegistro75;
  ADiretorio: string;
begin
  QuerX := GeraFDQuery;
  ASintegra := GeraComponenteSintegra;
  try
    {$REGION 'Registro 10'}
    QuerX.SQL.Text := 'select CODIGO, CODSINTEGRA, CNPJCPF, INSCRICAO_ESTADUAL, RAZAO_SOCIAL, CIDADE, ' +
                      '       UF, FONE, DT_INICIO, DT_FIM, CONVENIO, NATUREZA_INFORMACOES, FINALIDADE_ARQUIVO ' +
                      'from SINTEGRA_R10 ' +
                      'where (CODSINTEGRA = :Cod)';
    QuerX.Params[0].AsInteger := ACodSintegra;
    QuerX.Open;
    ASintegra.Registro10.CNPJ                 := QuerX.FieldByName('CNPJCPF').AsString;
    ASintegra.Registro10.Inscricao            := QuerX.FieldByName('INSCRICAO_ESTADUAL').AsString;
    ASintegra.Registro10.RazaoSocial          := QuerX.FieldByName('RAZAO_SOCIAL').AsString;
    ASintegra.Registro10.Cidade               := QuerX.FieldByName('CIDADE').AsString;
    ASintegra.Registro10.Estado               := QuerX.FieldByName('UF').AsString;
    ASintegra.Registro10.Telefone             := QuerX.FieldByName('FONE').AsString;
    ASintegra.Registro10.DataInicial          := QuerX.FieldByName('DT_INICIO').AsDateTime;
    ASintegra.Registro10.DataFinal            := QuerX.FieldByName('DT_FIM').AsDateTime;
    ASintegra.Registro10.CodigoConvenio       := QuerX.FieldByName('CONVENIO').AsString;
    ASintegra.Registro10.NaturezaInformacoes  := QuerX.FieldByName('NATUREZA_INFORMACOES').AsString;
    ASintegra.Registro10.FinalidadeArquivo    := QuerX.FieldByName('FINALIDADE_ARQUIVO').AsString;
    QuerX.Close;
    {$ENDREGION}

    {$REGION 'Registro 11'}
    QuerX.SQL.Text := 'select CODIGO, CODSINTEGRA, ENDERECO, NUMERO, COMPLEMENTO, BAIRRO, CEP, RESPONSAVEL, TELEFONE ' +
                      'from SINTEGRA_R11 ' +
                      'where (CODSINTEGRA = :COD)';
    QuerX.Params[0].AsInteger := ACodSintegra;
    QuerX.Open;
    ASintegra.Registro11.Endereco    := QuerX.FieldByName('ENDERECO').Value;
    ASintegra.Registro11.Numero      := QuerX.FieldByName('NUMERO').Value;
    ASintegra.Registro11.Complemento := QuerX.FieldByName('COMPLEMENTO').Value;
    ASintegra.Registro11.Bairro      := QuerX.FieldByName('BAIRRO').Value;
    ASintegra.Registro11.Cep         := QuerX.FieldByName('CEP').Value;
    ASintegra.Registro11.Responsavel := QuerX.FieldByName('RESPONSAVEL').Value;
    ASintegra.Registro11.Telefone    := QuerX.FieldByName('TELEFONE').Value;
    QuerX.Close;
    {$ENDREGION}

    {$REGION 'Registros 50'}
    QuerX.SQL.Text := 'select CODIGO, CODSINTEGRA, CNPJCPF, INSCRICAO_ESTADUAL, DT_EMISSAO, UF, MODELO, ' +
                      '       SERIE, NUMERO, CFOP, EMITENTE, VALOR_TOTAL, ICMS_BC, ICMS_VALOR, ISENTAS, ' +
                      '       OUTRAS, ICMS_ALIQUOTA, SITUACAO ' +
                      'from SINTEGRA_R50 ' +
                      'where (CODSINTEGRA = :COD)';
    QuerX.Params[0].AsInteger := ACodSintegra;
    QuerX.Open;
    while not QuerX.Eof do
    begin
      AReg50 := TRegistro50.Create;
      ASintegra.Registros50.Add(AReg50);

      AReg50.CPFCNPJ          := QuerX.FieldByName('CNPJCPF').Value;
      AReg50.Inscricao        := QuerX.FieldByName('INSCRICAO_ESTADUAL').Value;
      AReg50.DataDocumento    := QuerX.FieldByName('DT_EMISSAO').Value;
      AReg50.UF               := QuerX.FieldByName('UF').Value;
      AReg50.Modelo           := QuerX.FieldByName('MODELO').Value;
      AReg50.Serie            := QuerX.FieldByName('SERIE').Value;
      AReg50.Numero           := QuerX.FieldByName('NUMERO').Value;
      AReg50.Cfop             := QuerX.FieldByName('CFOP').Value;
      AReg50.EmissorDocumento := QuerX.FieldByName('EMITENTE').Value;
      AReg50.ValorContabil    := QuerX.FieldByName('VALOR_TOTAL').Value;
      AReg50.BasedeCalculo    := QuerX.FieldByName('ICMS_BC').Value;
      AReg50.Icms             := QuerX.FieldByName('ICMS_VALOR').Value;
      AReg50.Isentas          := QuerX.FieldByName('ISENTAS').Value;
      AReg50.Outras           := QuerX.FieldByName('OUTRAS').Value;
      AReg50.Aliquota         := QuerX.FieldByName('ICMS_ALIQUOTA').Value;
      AReg50.Situacao         := QuerX.FieldByName('SITUACAO').Value;
      QuerX.Next;
    end;
    QuerX.Close;
    {$ENDREGION}

    {$REGION 'Registros 51'}
    QuerX.SQL.Text := 'select CODIGO, CODSINTEGRA, CNPJCPF, INSCRICAO_ESTADUAL, DT_EMISSAO, UF, SERIE, ' +
                      '       NUMERO, CFOP, VALOR_TOTAL, IPI_VALOR, VALOR_ISENTAS, VALOR_OUTRAS, SITUACAO ' +
                      'from SINTEGRA_R51 ' +
                      'where (CODSINTEGRA = :COD)';
    QuerX.Params[0].AsInteger := ACodSintegra;
    QuerX.Open;
    while not QuerX.Eof do
    begin
      AReg51 := TRegistro51.Create;
      ASintegra.Registros51.Add(AReg51);
      AReg51.CPFCNPJ       := QuerX.FieldByName('CNPJCPF').Value;
      AReg51.Inscricao     := QuerX.FieldByName('INSCRICAO_ESTADUAL').Value;
      AReg51.DataDocumento := QuerX.FieldByName('DT_EMISSAO').Value;
      AReg51.Estado        := QuerX.FieldByName('UF').Value;
      AReg51.Serie         := QuerX.FieldByName('SERIE').Value;
      AReg51.Numero        := QuerX.FieldByName('NUMERO').Value;
      AReg51.CFOP          := QuerX.FieldByName('CFOP').Value;
      AReg51.ValorContabil := QuerX.FieldByName('VALOR_TOTAL').Value;
      AReg51.ValorIpi      := QuerX.FieldByName('IPI_VALOR').Value;
      AReg51.ValorIsentas  := QuerX.FieldByName('VALOR_ISENTAS').Value;
      AReg51.ValorOutras   := QuerX.FieldByName('VALOR_OUTRAS').Value;
      AReg51.Situacao      := QuerX.FieldByName('SITUACAO').Value;
      QuerX.Next;
    end;
    QuerX.Close;
    {$ENDREGION}

    {$REGION 'Registros 53'}
    QuerX.SQL.Text := 'select CODIGO, CODSINTEGRA, CNPJCPF, INSCRICAO_ESTADUAL, DT_EMISSAO, UF, MODELO, ' +
                      '       SERIE, NUMERO, CFOP, EMITENTE, ICMS_BC, ICMS_RETIDO, DESPESAS_ACESSORIAS, ' +
                      '       SITUACAO, CODIGO_ANTECIPACAO ' +
                      'from SINTEGRA_R53 ' +
                      'where (CODSINTEGRA = :COD)';
    QuerX.Params[0].AsInteger := ACodSintegra;
    QuerX.Open;
    while not QuerX.Eof do
    begin
      AReg53 := TRegistro53.Create;
      ASintegra.Registros53.Add(AReg53);
      AReg53.CPFCNPJ       := QuerX.FieldByName('CNPJCPF').Value;
      AReg53.Inscricao     := QuerX.FieldByName('INSCRICAO_ESTADUAL').Value;
      AReg53.DataDocumento := QuerX.FieldByName('DT_EMISSAO').Value;
      AReg53.Estado        := QuerX.FieldByName('UF').Value;
      AReg53.Modelo        := QuerX.FieldByName('MODELO').Value;
      AReg53.Serie         := QuerX.FieldByName('SERIE').Value;
      AReg53.Numero        := QuerX.FieldByName('NUMERO').Value;
      AReg53.CFOP          := QuerX.FieldByName('CFOP').Value;
      AReg53.Emitente      := QuerX.FieldByName('EMITENTE').Value;
      AReg53.BaseST        := QuerX.FieldByName('ICMS_BC').Value;
      AReg53.IcmsRetido    := QuerX.FieldByName('ICMS_RETIDO').Value;
      AReg53.Despesas      := QuerX.FieldByName('DESPESAS_ACESSORIAS').Value;
      AReg53.Situacao      := QuerX.FieldByName('SITUACAO').Value;
      QuerX.Next;
    end;
    QuerX.Close;
    {$ENDREGION}

    {$REGION 'Registros 54'}
    QuerX.SQL.Text := 'select CODIGO, CODSINTEGRA, CNPJCPF, MODELO, SERIE, NUMERO, CFOP, CST, NUM_ITEM, ' +
                      '       CODPRODUTO, QUANTIDADE, VALOR_PRODUTO, DESCONTO_DESPESA, ICMS_BC, ' +
                      '       ICMS_BC_ST, IPI_VALOR, ICMS_ALIQUOTA ' +
                      'from SINTEGRA_R54 ' +
                      'where (CODSINTEGRA = :COD) ' +
                      'order by CNPJCPF, MODELO, SERIE, NUMERO, NUM_ITEM';
    QuerX.Params[0].AsInteger := ACodSintegra;
    QuerX.Open;
    while not QuerX.Eof do
    begin
      AReg54 := TRegistro54.Create;
      ASintegra.Registros54.Add(AReg54);

      AReg54.CPFCNPJ    := QuerX.FieldByName('CNPJCPF').AsString;
      AReg54.Modelo     := QuerX.FieldByName('MODELO').AsString;
      AReg54.Serie      := QuerX.FieldByName('SERIE').AsString;
      AReg54.Numero     := QuerX.FieldByName('NUMERO').AsString;
      AReg54.CFOP       := QuerX.FieldByName('CFOP').AsString;
      AReg54.CST        := QuerX.FieldByName('CST').AsString;
      AReg54.NumeroItem := QuerX.FieldByName('NUM_ITEM').AsInteger;
      AReg54.Codigo     := QuerX.FieldByName('CODPRODUTO').AsString;
      AReg54.Quantidade := QuerX.FieldByName('QUANTIDADE').AsFloat;
      AReg54.Valor      := QuerX.FieldByName('VALOR_PRODUTO').AsFloat;
      AReg54.ValorDescontoDespesa := QuerX.FieldByName('DESCONTO_DESPESA').AsFloat;
      AReg54.BasedeCalculo := QuerX.FieldByName('ICMS_BC').AsFloat;
      AReg54.BaseST        := QuerX.FieldByName('ICMS_BC_ST').AsFloat;
      AReg54.ValorIpi      := QuerX.FieldByName('IPI_VALOR').AsFloat;
      AReg54.Aliquota      := QuerX.FieldByName('ICMS_ALIQUOTA').AsFloat;
      QuerX.Next;
    end;
    QuerX.Close;
    {$ENDREGION}

    {$REGION 'Registros 60M'}
    QuerX.SQL.Text := 'select CODIGO, CODSINTEGRA, DT_EMISSAO, NUM_SERIE, NUM_ORDEM, MODELO_DOC, COO_INICIAL, ' +
                      '       COO_FINAL, CRZ, CRO, TOTAL_BRUTO, GRANDE_TOTAL ' +
                      'from SINTEGRA_R60M ' +
                      'where (CODSINTEGRA = :COD)';
    QuerX.Params[0].AsInteger := ACodSintegra;
    QuerX.Open;
    while not QuerX.Eof do
    begin
      AReg60M := TRegistro60M.Create;
      ASintegra.Registros60M.Add(AReg60M);

      AReg60M.Emissao    := QuerX.FieldByName('DT_EMISSAO').AsDateTime;
      AReg60M.NumSerie   := QuerX.FieldByName('NUM_SERIE').AsString;
      AReg60M.NumOrdem   := QuerX.FieldByName('NUM_ORDEM').AsInteger;
      AReg60M.ModeloDoc  := QuerX.FieldByName('MODELO_DOC').AsString;
      AReg60M.CooInicial := QuerX.FieldByName('COO_INICIAL').AsInteger;
      AReg60M.CooFinal   := QuerX.FieldByName('COO_FINAL').AsInteger;
      AReg60M.CRZ        := QuerX.FieldByName('CRZ').AsInteger;
      AReg60M.CRO        := QuerX.FieldByName('CRO').AsInteger;
      AReg60M.VendaBruta := QuerX.FieldByName('TOTAL_BRUTO').AsFloat;
      AReg60M.ValorGT    := QuerX.FieldByName('GRANDE_TOTAL').AsFloat;
      QuerX.Next;
    end;
    QuerX.Close;
    {$ENDREGION}

    {$REGION 'Registros 60A'}
    QuerX.SQL.Text := 'select CODIGO, CODSINTEGRA, DT_EMISSAO, NUM_SERIE, SITUACAO_TRIBUTARIA, VALOR_ACUMULADO ' +
                      'from SINTEGRA_R60A ' +
                      'where (CODSINTEGRA = :COD)';
    QuerX.Params[0].AsInteger := ACodSintegra;
    QuerX.Open;
    while not QuerX.Eof do
    begin
      AReg60A := TRegistro60A.Create;
      ASintegra.Registros60A.Add(AReg60A);

      AReg60A.Emissao    := QuerX.FieldByName('DT_EMISSAO').AsDateTime;
      AReg60A.NumSerie   := QuerX.FieldByName('NUM_SERIE').AsString;
      AReg60A.StAliquota := QuerX.FieldByName('SITUACAO_TRIBUTARIA').AsString;
      AReg60A.Valor      := QuerX.FieldByName('VALOR_ACUMULADO').AsFloat;
      QuerX.Next;
    end;
    QuerX.Close;
    {$ENDREGION}

    {$REGION 'Registros 61'}

    QuerX.SQL.Text := 'select CODIGO, CODSINTEGRA, DT_EMISSAO, VALOR, NF_VICMS, OUTRAS, NF_VBC, ' +
                      '       ISENTAS, NF_NUM_ORDEM_INICIAL, NF_NUM_ORDEM_FINAL, MODELO,' +
                      '       SERIE, SUBSERIE, ALIQUOTA ' +
                      'from SINTEGRA_R61 ' +
                      'where (CODSINTEGRA = :COD)';
    QuerX.Params[0].AsInteger := ACodSintegra;
    QuerX.Open;
    while not QuerX.Eof do
    begin
      AReg61 := TRegistro61.Create;
      ASintegra.Registros61.Add(AReg61);

      AReg61.Valor            := QuerX.FieldByName('VALOR').Value;
      AReg61.Emissao          := QuerX.FieldByName('DT_EMISSAO').Value;
      AReg61.ValorIcms        := QuerX.FieldByName('NF_VICMS').Value;
      AReg61.Outras           := QuerX.FieldByName('OUTRAS').Value;
      AReg61.BaseDeCalculo    := QuerX.FieldByName('NF_VBC').Value;
      AReg61.Isentas          := QuerX.FieldByName('ISENTAS').Value;
      AReg61.NumOrdemInicial  := QuerX.FieldByName('NF_NUM_ORDEM_INICIAL').Value;
      AReg61.NumOrdemFinal    := QuerX.FieldByName('NF_NUM_ORDEM_FINAL').Value;
      AReg61.Modelo           := QuerX.FieldByName('MODELO').Value;
      AReg61.SubSerie         := QuerX.FieldByName('SUBSERIE').Value;
      AReg61.Serie            := QuerX.FieldByName('SERIE').Value;
      AReg61.Aliquota         := QuerX.FieldByName('ALIQUOTA').Value;

      QuerX.Next;
    end;
    QuerX.Close;
  {$ENDREGION}

    {$REGION 'Registros 70'}
    QuerX.SQL.Text := 'select CODIGO, CODSINTEGRA, CNPJCPF, INSCRICAO_ESTADUAL, DT_EMISSAO, UF, MODELO, ' +
                       '       SERIE, SUBSERIE, NUMERO, CFOP, VALOR_TOTAL, ICMS_BC, ICMS_VALOR, ISENTAS, ' +
                       '       OUTRAS, CIF_FOB_OUTROS, CIF_FOB, SITUACAO ' +
                       'from SINTEGRA_R70 ' +
                       'where (CODSINTEGRA = :COD)';
    QuerX.Params[0].AsInteger := ACodSintegra;
    QuerX.Open;
    while not QuerX.Eof do
    begin
      AReg70 := TRegistro70.Create;
      ASintegra.Registros70.Add(AReg70);

      AReg70.CPFCNPJ       := QuerX.FieldByName('CNPJCPF').Value;
      AReg70.Inscricao     := QuerX.FieldByName('INSCRICAO_ESTADUAL').Value;
      AReg70.DataDocumento := QuerX.FieldByName('DT_EMISSAO').Value;
      AReg70.UF            := QuerX.FieldByName('UF').Value;
      AReg70.Modelo        := QuerX.FieldByName('MODELO').Value;
      AReg70.Serie         := QuerX.FieldByName('SERIE').Value;
      AReg70.SubSerie      := QuerX.FieldByName('SUBSERIE').Value;
      AReg70.Numero        := QuerX.FieldByName('NUMERO').Value;
      AReg70.Cfop          := QuerX.FieldByName('CFOP').Value;
      AReg70.ValorContabil := QuerX.FieldByName('VALOR_TOTAL').Value;
      AReg70.BasedeCalculo := QuerX.FieldByName('ICMS_BC').Value;
      AReg70.Icms          := QuerX.FieldByName('ICMS_VALOR').Value;
      AReg70.Isentas       := QuerX.FieldByName('ISENTAS').Value;
      AReg70.Outras        := QuerX.FieldByName('OUTRAS').Value;
      AReg70.CifFobOutros  := QuerX.FieldByName('CIF_FOB_OUTROS').Value;
      //AReg70. := QuerX.FieldByName('CIF_FOB').Value;
      AReg70.Situacao      := QuerX.FieldByName('SITUACAO').Value;
      QuerX.Next;
    end;
    QuerX.Close;
    {$ENDREGION}

    {$REGION 'Registros 74'}
    QuerX.SQL.Text := 'select CODIGO, CODSINTEGRA, DT_INVENTARIO, CODPRODUTO, QUANTIDADE, ' +
                       '       VALOR_PRODUTO, CODIGO_POSSE, CNPJ_POSSUIDOR, IE_POSSUIDOR, UF_POSSUIDOR ' +
                       'from SINTEGRA_R74 ' +
                       'where (CODSINTEGRA = :COD)';
    QuerX.Params[0].AsInteger := ACodSintegra;
    QuerX.Open;
    while not QuerX.Eof do
    begin
      AReg74 := TRegistro74.Create;
      ASintegra.Registros74.Add(AReg74);

      AReg74.Data               := QuerX.FieldByName('DT_INVENTARIO').Value;
      AReg74.Codigo             := QuerX.FieldByName('CODPRODUTO').Value;
      AReg74.Quantidade         := QuerX.FieldByName('QUANTIDADE').Value;
      AReg74.ValorProduto       := QuerX.FieldByName('VALOR_PRODUTO').Value;
      AReg74.CodigoPosse        := QuerX.FieldByName('CODIGO_POSSE').Value;
      AReg74.CNPJPossuidor      := QuerX.FieldByName('CNPJ_POSSUIDOR').Value;
      AReg74.InscricaoPossuidor := QuerX.FieldByName('IE_POSSUIDOR').Value;
      AReg74.UFPossuidor        := QuerX.FieldByName('UF_POSSUIDOR').Value;
      QuerX.Next;
    end;
    QuerX.Close;
    {$ENDREGION}

    {$REGION 'Registros 75'}
    QuerX.SQL.Text := 'select CODIGO, CODSINTEGRA, DT_INICIO, DT_FIM, CODPRODUTO, NCM, DESCRICAO, ' +
                      '       UNIDADE, IPI_ALIQUOTA, ICMS_ALIQUOTA, ICMS_REDUCAO_BC, ICMS_BC_ST ' +
                      'from SINTEGRA_R75 ' +
                      'where (CODSINTEGRA = :COD)';
    QuerX.Params[0].AsInteger := ACodSintegra;
    QuerX.Open;
    while not QuerX.Eof do
    begin
      {Aqui o ACBR já faz a verificação se o Produto já existe na lista, verificando apenas o CÓDIGO!!!
       Ou seja, mesmo existindo alíquotas de impostos, apenas 1 único produto pode ser adicionado na lista 75,
       mesmo se alíquotas diferentes foram usadas em notas}
      if (QuerX.FieldByName('CODPRODUTO').AsString) <>'' then
      begin
        AReg75 := ACBrSintegra.TRegistro75.Create;
        AReg75.DataInicial  := QuerX.FieldByName('DT_INICIO').AsDateTime;
        AReg75.DataFinal    := QuerX.FieldByName('DT_FIM').AsDateTime;
        AReg75.Codigo       := QuerX.FieldByName('CODPRODUTO').AsString;
        AReg75.NCM          := QuerX.FieldByName('NCM').AsString;
        AReg75.Descricao    := QuerX.FieldByName('DESCRICAO').AsString;
        AReg75.Unidade      := QuerX.FieldByName('UNIDADE').AsString;
        AReg75.AliquotaIpi  := QuerX.FieldByName('IPI_ALIQUOTA').AsFloat;
        AReg75.AliquotaICMS := QuerX.FieldByName('ICMS_ALIQUOTA').AsFloat;
        AReg75.Reducao      := QuerX.FieldByName('ICMS_REDUCAO_BC').AsFloat;
        AReg75.BaseST       := QuerX.FieldByName('ICMS_BC_ST').AsFloat;
        ASintegra.Registros75.Add(AReg75);
      end;
      QuerX.Next;
    end;

    {$ENDREGION}

    ADiretorio := GetDirAuditorias;
    ForceDirectories(ADiretorio);
    ASintegra.FileName := ADiretorio + 'Sintegra ' + ASintegra.Registro10.CNPJ + ' de ' +
                          FormatDateTime('DD-MM-YYYY', ASintegra.Registro10.DataInicial) + ' a ' +
                          FormatDateTime('DD-MM-YYYY', ASintegra.Registro10.DataFinal) + '.txt';
    ASintegra.GeraArquivo;
    ShowMessageWR('Sintegra gerado com sucesso em ' + ASintegra.FileName);
  finally
    QuerX.Free;
    ASintegra.Free;
  end;
end;

procedure TWRGeradorSintegra.AjustaRegistros75;
var
  QuerX, QuerDel: TFDQuery;
  ARegistros: TArray<string>;
  i: Integer;
begin
  QuerX := GeraFDQuery(FTransa);
  QuerDel := GeraFDQuery(FTransa);
  try
    QuerDel.SQL.Text := 'delete from SINTEGRA_R75 ' +
                        'where (CODIGO = :Cod)';
    QuerX.SQL.Text := 'select CODPRODUTO, IPI_ALIQUOTA, ICMS_ALIQUOTA, ICMS_REDUCAO_BC, ICMS_BC_ST, list(CODIGO) as REGISTROS ' +
                      'from SINTEGRA_R75 ' +
                      'where (CODSINTEGRA = :COD) ' +
                      'group by 1, 2, 3, 4, 5 ' +
                      'having (count(1) > 1)';
    QuerX.Params[0].AsInteger := FCodSintegra;
    QuerX.Open;
    while not QuerX.Eof do
    begin
      ARegistros := QuerX.FieldByName('REGISTROS').AsString.Split([',']);
      for I := Low(ARegistros) + 1 to High(ARegistros) do
      begin
        QuerDel.Params[0].AsInteger := StrToInt(ARegistros[i]);
        QuerDel.ExecSQL;
      end;
      QuerX.Next;
    end;
  finally
    QuerX.Free;
    QuerDel.Free;
  end;
end;

procedure TWRGeradorSintegra.AtualizaDadosEmpresa;
var
  QuerX: TIBQuery;
begin
  QuerX := GeraQuery;
  try
    QuerX.SQL.Text := 'select * from EMPRESA where (CODIGO = :Cod)';
    QuerX.Params[0].AsInteger := FCodEmpresa;
    QuerX.Open;
    FreeAndNil(FEmpresa);
    FEmpresa := TSintegraEmpresa.Create;
    with FEmpresa do
    begin
      CNPJCPF          := OnlyNumber(QuerX.FieldByName('CNPJCPF').AsString);
      INSCIDENT        := OnlyNumber(QuerX.FieldByName('INSCIDENT').AsString);
      RAZAOSOCIAL      := QuerX.FieldByName('RAZAOSOCIAL').AsString;
      CIDADE           := QuerX.FieldByName('CIDADE').AsString;
      UF               := QuerX.FieldByName('UF').AsString;
      FONE1            := OnlyNumber(QuerX.FieldByName('FONE1').AsString);
      ENDERECO         := QuerX.FieldByName('ENDERECO').AsString;
      NUMERO           := QuerX.FieldByName('NUMERO').AsString;
      BAIRRO           := QuerX.FieldByName('BAIRRO').AsString;
      CEP              := OnlyNumber(QuerX.FieldByName('CEP').AsString);
      CONTATO          := QuerX.FieldByName('CONTATO').AsString;
      CODIGO           := QuerX.FieldByName('CODIGO').AsInteger;
      FANTASIA         := QuerX.FieldByName('FANTASIA').AsString;
      FONE2            := OnlyNumber(QuerX.FieldByName('FONE2').AsString);
      FAX              := OnlyNumber(QuerX.FieldByName('FAX').AsString);
      EMAIL            := QuerX.FieldByName('EMAIL').AsString;
      TIPO             := QuerX.FieldByName('TIPO').AsString;
      PAGINA           := QuerX.FieldByName('PAGINA').AsString;
      ATIVO            := QuerX.FieldByName('ATIVO').AsString;
      MODULO           := QuerX.FieldByName('MODULO').AsString;
      CODCIDADE        := QuerX.FieldByName('CODCIDADE').AsInteger;
      NUMERO           := QuerX.FieldByName('NUMERO').AsString;
      IM               := OnlyNumber(QuerX.FieldByName('IM').AsString);
      IEST             := QuerX.FieldByName('IEST').AsString;
      CNAE             := QuerX.FieldByName('CNAE').AsString;
      ISSQN            := QuerX.FieldByName('ISSQN').AsFloat;
      CRT              := QuerX.FieldByName('CRT').AsString;
      CODIGO_MUNICIPIO := QuerX.FieldByName('CODCIDADE').AsString;
      SUFRAMA          := QuerX.FieldByName('SUFRAMA').AsString;
      CPF_PROPRIETARIO := QuerX.FieldByName('CPF_PROPRIETARIO').AsString;
      COMPLEMENTO      := QuerX.FieldByName('COMPLEMENTO').AsString;
      TIPO_OS          := QuerX.FieldByName('TIPO_OS').AsString;
      PAIS             := QuerX.FieldByName('PAIS').AsString;
      CODPAIS          := QuerX.FieldByName('CODPAIS').AsInteger;
      EMITE_NFE        := QuerX.FieldByName('EMITE_NFE').AsString;
      CONTADOR_NOME    := QuerX.FieldByName('CONTADOR_NOME').AsString;
      CONTADOR_CPF     := OnlyNumber(QuerX.FieldByName('CONTADOR_CPF').AsString);
      CONTADOR_CRC     := QuerX.FieldByName('CONTADOR_CRC').AsString;
      CONTADOR_CNPJ    := OnlyNumber(QuerX.FieldByName('CONTADOR_CNPJ').AsString);
      CONTADOR_CEP     := OnlyNumber(QuerX.FieldByName('CONTADOR_CEP').AsString);
      CONTADOR_ENDERECO:= QuerX.FieldByName('CONTADOR_ENDERECO').AsString;
      CONTADOR_NUMERO  := QuerX.FieldByName('CONTADOR_NUMERO').AsString;
      CONTADOR_BAIRRO  := QuerX.FieldByName('CONTADOR_BAIRRO').AsString;
      CONTADOR_FONE    := QuerX.FieldByName('CONTADOR_FONE').AsString;
      CONTADOR_FAX     := QuerX.FieldByName('CONTADOR_FAX').AsString;
      CONTADOR_EMAIL   := QuerX.FieldByName('CONTADOR_EMAIL').AsString;
      CONTADOR_UF      := QuerX.FieldByName('CONTADOR_UF').AsString;
      CONTADOR_CODIGO_MUNICIPIO := QuerX.FieldByName('CONTADOR_CODIGO_MUNICIPIO').AsString;
      CONTADOR_COMPLEMENTO      := QuerX.FieldByName('CONTADOR_COMPLEMENTO').AsString;
    end;
  finally
    QuerX.Free;
  end;
end;

class procedure TWRGeradorSintegra.SalvarArquivo(ACodSintegra: Integer);
var
  AGerador: TWRGeradorSintegra;
begin
  AGerador := TWRGeradorSintegra.Create;
  try
    AGerador.InternalSalvarArquivo(ACodSintegra);
  finally
    AGerador.Free;
  end;
end;

procedure TWRGeradorSintegra.SetDtFim(const Value: TDateTime);
begin
  FDtFim := EndOfTheDay(Value);
end;

procedure TWRGeradorSintegra.SetDtInicio(const Value: TDateTime);
begin
  FDtInicio := StartOfTheDay(Value);
end;

end.
