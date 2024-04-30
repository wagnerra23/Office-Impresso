unit Relatorios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, ComCtrls,
  Consulta, IBX.IBQuery, uDMRelatorios, ImgList, cxTextEdit, cxButtonEdit,  cxPC, DB, ExtCtrls, Menus,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinscxPCPainter, dxBarBuiltInMenu,
  cxContainer, cxEdit, cxMaskEdit, cxCheckBox, dxCore, cxDateUtils, cxDropDownEdit, cxCalendar, System.ImageList,
  cxButtons, cxDateProfileButton, uControleWR, cxCheckListBox, cxLabel, cxCustomListBox, WREventos,
  System.Generics.Collections, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White;

type
  TFrmRelatorios = class(TForm)
    ImageList1: TImageList;
    cxPageControl1: TcxPageControl;
    TabImpressao: TcxTabSheet;
    PgRelatorios: TPageControl;
    TabFiltro1: TTabSheet;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    EdtDescricao: TEdit;
    CbGrupo: TComboBox;
    CbTipo: TComboBox;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label8: TLabel;
    DtInicio: TDateTimePicker;
    DtFim: TDateTimePicker;
    CbTipoFiltro: TComboBox;
    CkExibirMovimentacao: TCheckBox;
    EdtFornecedorÎPessoas: TcxButtonEdit;
    EdtFornecedorÎPessoasÎRAZAOSOCIAL: TcxTextEdit;
    TabSheet1: TTabSheet;
    Label7: TLabel;
    GroupBox3: TGroupBox;
    Label6: TLabel;
    CbMes: TComboBox;
    CbAno: TComboBox;
    EdtFuncionarioÎPessoasÎRAZAOSOCIAL: TcxTextEdit;
    EdtFuncionarioÎPessoas: TcxButtonEdit;
    GroupBox2: TGroupBox;
    ListaRelatorios: TListBox;
    BtnGerar: TBitBtn;
    BtnFechar: TBitBtn;
    EdtInicio: TcxDateEdit;
    EdtFim: TcxDateEdit;
    cbTodosFuncionarios: TcxCheckBox;
    cxDateProfileButton1: TcxDateProfileButton;
    TabSheet2: TTabSheet;
    Filtrodevedores: TTabSheet;
    cxLabel1: TcxLabel;
    BtnMarcarTodos: TcxButton;
    ListaTipoPessoa: TcxCheckListBox;
    EdtDevedorÎPessoas: TcxButtonEdit;
    EdtDevedorÎPessoasÎRAZAOSOCIAL: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    GroupBox4: TGroupBox;
    DtInicioDevedores: TcxDateEdit;
    DtFimDevedores: TcxDateEdit;
    cxDateProfileButton2: TcxDateProfileButton;
    cxLabel2: TcxLabel;
    cxLabel5: TcxLabel;
    WREventosCadastro1: TWREventosCadastro;
    procedure BtnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure WMMove(var Message: TMessage) ; message WM_MOVE;
    procedure BtnGerarClick(Sender: TObject);
    procedure ListaRelatoriosClick(Sender: TObject);
    procedure EdtFuncionarioChange(Sender: TObject);
    procedure EdtFuncionarioÎPessoasÎRAZAOSOCIALKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure JvCustomValidator1Validate(Sender: TObject; ValueToValidate: Variant; var Valid: Boolean);
    procedure EdtFornecedorÎPessoasÎRAZAOSOCIALChange(Sender: TObject);
    procedure EdtCodFornecedorPropertiesChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure EdtCodFuncionarioPropertiesChange(Sender: TObject);
    procedure AlteraComponenteFiltroPonto;
    procedure cbTodosFuncionariosClick(Sender: TObject);
    procedure BtnMarcarTodosClick(Sender: TObject);
    procedure WREventosCadastro1PreencheVariaveisImpressaoPersonalizada(Sender: TObject);
  private
    { Private declarations }
    FPontoPorPeriodo : Boolean;
    FControleWR : TControleWR;
    procedure ConsultaKeyDown(Key: Word);
    procedure EditChange(EditTexto, EditCodigo: TCustomEdit; SQL, Filtro: String);
  public
    { Public declarations }
  end;

var
  FrmRelatorios: TFrmRelatorios;

implementation

uses
  DateUtils, UnitFuncoes, StrUtils, DataModuleImpressao, Classes.WR, Base;

{$R *.dfm}

procedure TFrmRelatorios.BtnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmRelatorios.BtnGerarClick(Sender: TObject);
var
  Dados: TDadosRelatorio;
  Data: TDateTime;
begin
  if ListaRelatorios.Items[ListaRelatorios.ItemIndex] = 'Produto - Entradas e Saídas' then
  begin
    Dados.DtInicio     := DtInicio.DateTime;
    Dados.DtFim        := DtFim.DateTime;
    Dados.Codigo       := FControleWR.GetCodigoPessoa(EdtFornecedorÎPessoas);
    Dados.ProdutoGrupo := CbGrupo.Text;
    Dados.ProdutoTipo  := CbTipo.Text;
    Dados.Descricao    := EdtDescricao.Text;
    Dados.Tipo         := trProdutoEntradasSaidas;
    SetLength(Dados.Flags, 1);
    Dados.Flags[0]     := CkExibirMovimentacao.Checked;
    ExecutaRelatorio(Dados, Self);
  end
  else if ListaRelatorios.Items[ListaRelatorios.ItemIndex] = 'Produto - Grade de Corte' then
  begin
    Dados.DtInicio     := DtInicio.DateTime;
    Dados.DtFim        := DtFim.DateTime;
    Dados.Codigo       := FControleWR.GetCodigoPessoa(EdtFornecedorÎPessoas);
    Dados.ProdutoGrupo := CbGrupo.Text;
    Dados.ProdutoTipo  := CbTipo.Text;
    Dados.Descricao    := EdtDescricao.Text;
    Dados.Tipo         := trProdutoGradeCorte;
    Dados.TipoFiltro   := CbTipoFiltro.ItemIndex;
    ExecutaRelatorio(Dados, Self);
  end
  else if ListaRelatorios.Items[ListaRelatorios.ItemIndex] = 'Funcionário - Controle de Ponto' then
  begin
    if FPontoPorPeriodo or cbTodosFuncionarios.Checked then
    begin
      Dados.DtInicio     := EdtInicio.Date;
      Dados.DtFim        := EdtFim.Date;
    end else
    begin
      Data := StrToDate('01/' + FormatFloat('00', CbMes.ItemIndex + 1) + '/' + CbAno.Text);
      Dados.DtInicio     := StartOfTheMonth(Data);
      Dados.DtFim        := EndOfTheMonth(Data);
    end;
    Dados.Codigo            := FControleWR.GetCodigoPessoa(EdtFuncionarioÎPessoas);
    Dados.Tipo              := trFuncionarioControleDePonto;
    Dados.PorPeriodo        := FPontoPorPeriodo;
    Dados.TodosFuncionarios := cbTodosFuncionarios.Checked;
    ExecutaRelatorio(Dados, Self);
  end
  else if ListaRelatorios.Items[ListaRelatorios.ItemIndex] = 'Financeiro - Devedores' then
    DMImpressaoImprimirPorNome(Self, RelatorioListaImpressoesPadroes('FR0018'))
  else
    DMImpressaoImprimirPorNome(Self, ListaRelatorios.Items.Strings[ListaRelatorios.ItemIndex]+'.fr3');
end;

procedure TFrmRelatorios.BtnMarcarTodosClick(Sender: TObject);
var
  i : Integer;
begin
  for I := 0 to ListaTipoPessoa.Count - 1 do
    ListaTipoPessoa.Items[i].Checked := BtnMarcarTodos.Tag = 0;

  If BtnMarcarTodos.Tag = 0 Then
    BtnMarcarTodos.Tag := 1
  else
    BtnMarcarTodos.Tag :=0;
  If BtnMarcarTodos.Tag = 0 Then
    BtnMarcarTodos.OptionsImage.ImageIndex :=16
  else
    BtnMarcarTodos.OptionsImage.ImageIndex :=17;
  If BtnMarcarTodos.Tag = 0 Then
    BtnMarcarTodos.Hint := 'Marcar Todos'
  else
    BtnMarcarTodos.Hint := 'Desmarcar Todos' ;
end;

procedure TFrmRelatorios.cbTodosFuncionariosClick(Sender: TObject);
begin
  EdtFuncionarioÎPessoas.Enabled := not cbTodosFuncionarios.Checked;
  EdtFuncionarioÎPessoasÎRAZAOSOCIAL.Enabled := not cbTodosFuncionarios.Checked;
  AlteraComponenteFiltroPonto;
end;

procedure TFrmRelatorios.AlteraComponenteFiltroPonto;
var
  AVisible : Boolean;
begin
  AVisible := FPontoPorPeriodo or cbTodosFuncionarios.Checked;
  CbMes.Visible                := not AVisible;
  CbAno.Visible                := not AVisible;
  EdtInicio.Visible            := AVisible;
  EdtFim.Visible               := AVisible;
 // cbTodosFuncionarios.Visible  := FPontoPorPeriodo;
  cxDateProfileButton1.Visible := AVisible;
  GroupBox3.Caption            := IfThen(AVisible, 'Referente ao período de', 'Referente ao mês de');
end;

procedure TFrmRelatorios.ConsultaKeyDown(Key: Word);
begin
  if Assigned(FrmConsulta) then
  begin
    if Key = VK_RETURN then
    begin
      if not FrmConsulta.CdsConsulta.IsEmpty then
      begin
        FrmConsulta.cxGrid1DBTableView1DblClick(FrmConsulta);
        Key := 0;
      end;
    end
    else if Key = VK_UP then
    begin
      FrmConsulta.CdsConsulta.Prior;
      Key := 0;
    end
    else if Key = VK_DOWN then
    begin
      FrmConsulta.CdsConsulta.Next;
      Key := 0;
    end;
  end;
end;

procedure TFrmRelatorios.EdtFuncionarioChange(Sender: TObject);
var
  FSQL, FFiltro: String;
begin
//  JvErrorIndicator1.ClearErrors;
 { if EdtFuncionarioÎPessoasÎRAZAOSOCIAL.Focused then
  begin
    EdtFuncionarioÎPessoas.Text := '';
    FSQL := 'SELECT * FROM PESSOAS';
    FFiltro := '(UPPER(RAZAOSOCIAL) LIKE ' + QuotedStr('%' + AnsiUpperCase(EdtFuncionarioÎPessoasÎRAZAOSOCIAL.Text) + '%') + ')';
    EditChange(EdtFuncionarioÎPessoasÎRAZAOSOCIAL, EdtFuncionarioÎPessoas, FSQL, FFiltro);
  end; }
end;

procedure TFrmRelatorios.EdtFuncionarioÎPessoasÎRAZAOSOCIALKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
//  ConsultaKeyDown(Key);
end;

procedure TFrmRelatorios.EditChange(EditTexto, EditCodigo: TCustomEdit; SQL, Filtro: String);
begin
  if EditTexto.Focused then
  begin
    if EditTexto.Text <> '' then
    begin
      if not Assigned(FrmConsulta) then
      begin
        FrmConsulta := TFrmConsulta.Create(Self);
        FrmConsulta.CompEdit := EditTexto;
        FrmConsulta.CompCodEdit := EditCodigo;
        FrmConsulta.Show;
        FrmConsulta.Posicionar(EditTexto);
        SetWindowPos(FrmConsulta.Handle, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);
        EditTexto.SetFocus;
      end;
      FrmConsulta.Pesquisar(SQL, Filtro);
    end else
    begin
      if Assigned(FrmConsulta) then
      begin
        FrmConsulta.Destroy;
        FrmConsulta := nil;
      end;
    end;
  end;
end;

procedure TFrmRelatorios.EdtCodFornecedorPropertiesChange(Sender: TObject);
begin
  if EdtFornecedorÎPessoas.Focused then
  begin
    if not DMRelatorios.CdsFornecedor.Active then DMRelatorios.CdsFornecedor.Open;
    DMRelatorios.CdsFornecedor.Filtered := False;
    DMRelatorios.CdsFornecedor.Filter := '(CODIGO = ' + QuotedStr(FControleWR.GetCodigoPessoa(EdtFornecedorÎPessoas)) + ')';
    DMRelatorios.CdsFornecedor.Filtered := True;
    if not DMRelatorios.CdsFornecedor.IsEmpty then
      EdtFornecedorÎPessoasÎRAZAOSOCIAL.Text := DMRelatorios.CdsFornecedor.FieldByName('RAZAOSOCIAL').AsString
    else
      EdtFornecedorÎPessoasÎRAZAOSOCIAL.Text := '';
  end;
end;

procedure TFrmRelatorios.EdtCodFuncionarioPropertiesChange(Sender: TObject);
begin
  if EdtFuncionarioÎPessoas.Focused then
  begin
    if not DMRelatorios.CdsFuncionario.Active then DMRelatorios.CdsFuncionario.Open;
    DMRelatorios.CdsFuncionario.Filtered := False;
    DMRelatorios.CdsFuncionario.Filter := '(CODIGO = ' + QuotedStr(FControleWR.GetCodigoPessoa(EdtFuncionarioÎPessoas)) + ')';
    DMRelatorios.CdsFuncionario.Filtered := True;
    if not DMRelatorios.CdsFuncionario.IsEmpty then
      EdtFuncionarioÎPessoasÎRAZAOSOCIAL.Text := DMRelatorios.CdsFuncionario.FieldByName('RAZAOSOCIAL').AsString
    else
      EdtFuncionarioÎPessoasÎRAZAOSOCIAL.Text := '';
  end;
end;

procedure TFrmRelatorios.EdtFornecedorÎPessoasÎRAZAOSOCIALChange(Sender: TObject);
//var
//  FSQL, FFiltro: String;
begin
 { if EdtFornecedor.Focused then
  begin
    EdtFornecedorÎPessoas.Text := '';
    FSQL := 'select * from PESSOAS';
    FFiltro := '(upper(FANTASIA) like ' + QuotedStr('%' + AnsiUpperCase(EdtFornecedor.Text) + '%') + ') or (upper(RAZAOSOCIAL) like ' + QuotedStr('%' + AnsiUpperCase(EdtFornecedor.Text) + '%') + ')';
    EditChange(EdtFornecedor, EdtFornecedorÎPessoas, FSQL, FFiltro);
  end;     }
end;

procedure TFrmRelatorios.FormCreate(Sender: TObject);
var
  i: Integer;
  AData: TDateTime;
begin
  FControleWR := TControleWR.Create;
  FControleWR.Inicializar(Self);

  DMRelatorios := TDMRelatorios.Create(Self);

  AData := DataHoraSys;
  DtInicio.Date := AData;
  DtFim.Date    := AData;
  AData := IncMonth(AData, -1);
  CbMes.ItemIndex := MonthOf(AData) - 1;
  CbAno.Text      := IntToStr(YearOf(AData));
  for i := 0 to PgRelatorios.PageCount - 1 do
    PgRelatorios.Pages[i].TabVisible := False;
  PgRelatorios.ActivePageIndex := 0;
  ListaRelatorios.ItemIndex    := 0;

  cxPageControl1.ActivePageIndex := 0;
  cxPageControl1.Properties.HideTabs := True;

  FPontoPorPeriodo := TConfig.ReadBoolean('FILTRO_PONTO');

  DMImpressao.PreencheStrings(ListaRelatorios.Items, Self);
end;

procedure TFrmRelatorios.FormDestroy(Sender: TObject);
begin
  FControleWR.Free;
  FreeAndNil(DMRelatorios);
end;

procedure TFrmRelatorios.FormShow(Sender: TObject);
var
  QuerX : TIBQuery;
begin
  QuerX := GeraQuery;
  try
    QuerX.SQL.Text := 'select DESCRICAO from PRODUTO_GRUPO';
    QuerX.Open;
    while not QuerX.Eof do
    begin
      CbGrupo.AddItem(QuerX.Fields[0].AsString, nil);
      QuerX.Next;
    end;
    QuerX.Close;
    QuerX.SQL.Text := 'select DESCRICAO from PRODUTO_TIPO';
    QuerX.Open;
    while not QuerX.Eof do
    begin
      CbTipo.AddItem(QuerX.Fields[0].AsString, nil);
      QuerX.Next;
    end;
  finally
    QuerX.Free;
  end;
  ListaRelatoriosClick(Self);
end;

procedure TFrmRelatorios.JvCustomValidator1Validate(Sender: TObject; ValueToValidate: Variant; var Valid: Boolean);
begin
  Valid := (Trim(EdtFuncionarioÎPessoas.Text) <> '') and (Trim(EdtFuncionarioÎPessoasÎRAZAOSOCIAL.Text) <> '');
end;

procedure TFrmRelatorios.ListaRelatoriosClick(Sender: TObject);
Var
  QuerX : TIBQuery;
begin
  if ListaRelatorios.Items[ListaRelatorios.ItemIndex] = 'Funcionário - Controle de Ponto' then
  begin
    PgRelatorios.ActivePageIndex := 1;
    AlteraComponenteFiltroPonto;
  end else
    if (ListaRelatorios.Items[ListaRelatorios.ItemIndex] = 'Produto - Entradas e Saídas') or
       (ListaRelatorios.Items[ListaRelatorios.ItemIndex] = 'Produto - Grade de Corte')  then
    begin
      PgRelatorios.ActivePageIndex := 0;
      CkExibirMovimentacao.Visible := (ListaRelatorios.Items[ListaRelatorios.ItemIndex] = 'Produto - Entradas e Saídas');
    end else
    if ListaRelatorios.Items[ListaRelatorios.ItemIndex] =  'Financeiro - Devedores' then
    begin
      ListaTipoPessoa.Items.Clear;
      QuerX := GeraQuery;
      try
        QuerX.SQL.Text := 'select PT.CODIGO, PT.DESCRICAO from PESSOAS_TIPO PT';
        QuerX.Open;
        while not QuerX.Eof do
        begin
          ListaTipoPessoa.AddItem(QuerX.FieldByName('CODIGO').AsString + ' | ' + QuerX.FieldByName('DESCRICAO').AsString);
          QuerX.Next;
        end;
      finally
        QuerX.Free;
      end;
      BtnMarcarTodosClick(nil);
      PgRelatorios.ActivePageIndex := 3;
    end else
      PgRelatorios.ActivePageIndex := 2;
end;

procedure TFrmRelatorios.WMMove(var Message: TMessage);
begin
  if Assigned(FrmConsulta) then
    FrmConsulta.Posicionar(FrmConsulta.CompEdit);
end;

procedure TFrmRelatorios.WREventosCadastro1PreencheVariaveisImpressaoPersonalizada(Sender: TObject);
var
  AListaTipoPessoa: TStringList;
  I: Integer;
begin
  AListaTipoPessoa := TStringList.Create;
  try
    AListaTipoPessoa.Clear;
    for I := 0 to ListaTipoPessoa.Count - 1 do
    begin
      if ListaTipoPessoa.Items[i].Checked then
        AListaTipoPessoa.Add(SplitString(ListaTipoPessoa.Items[i].Text, '|')[0].Trim);
    end;
    WREventosCadastro1.Impressao.Report.Variables['ListaTipoPessoas'] := Fr3String(AListaTipoPessoa.Text);
  finally
    AListaTipoPessoa.Free;
  end;
  WREventosCadastro1.Impressao.Report.Variables['DtInicio']   := Fr3Data(DtInicioDevedores.Date);
  WREventosCadastro1.Impressao.Report.Variables['DtFim']      := Fr3Data(DtFimDevedores.Date);
  WREventosCadastro1.Impressao.Report.Variables['CodDevedor'] := Fr3String(EdtDevedorÎPessoas.Text);
end;

initialization
  RegisterClass(TFrmRelatorios);

end.

