unit Frame_BI_Permissoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Frame_Painel, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxClasses, dxLayoutContainer,
  dxLayoutControl, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomLayoutView, cxGridLayoutView, cxGridDBLayoutView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, dxLayoutcxEditAdapters, cxContainer, cxLabel, dxLayoutControlAdapters,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.StorageBin, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.ExtCtrls, cxEditRepositoryItems,
  cxCheckBox, UCBase, dxSkinsCore, dxScrollbarAnnotations, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White;

type
  TFrmFrame_BI_Permissoes = class(TPainel_Frame)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutItem1: TdxLayoutItem;
    GridUsuario: TcxGrid;
    GridUsuarios_Permitidos: TcxGridDBTableView;
    GridUsuarios_PermitidosSELECAO: TcxGridDBColumn;
    GridUsuarios_PermitidosMODULO: TcxGridDBColumn;
    GridUsuarios_PermitidosCOMPONENTE: TcxGridDBColumn;
    GridUsuarios_PermitidosDESCRICAO: TcxGridDBColumn;
    GridUsuarios_PermitidosLOGIN: TcxGridDBColumn;
    GridUsuarios_PermitidosCODUSUARIO: TcxGridDBColumn;
    GridUsuarioDBLayoutView1: TcxGridDBLayoutView;
    GridUsuarioDBLayoutView1Group_Root: TdxLayoutGroup;
    GridUsuarioLevel1: TcxGridLevel;
    dxLayoutItem2: TdxLayoutItem;
    LbTitulo: TcxLabel;
    dxLayoutItem3: TdxLayoutItem;
    btnFechar: TcxButton;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    Usuarios_Permitidos: TFDMemTable;
    Usuarios_PermitidosMODULO: TStringField;
    Usuarios_PermitidosDESCRICAO: TStringField;
    Usuarios_PermitidosCODUSUARIO: TIntegerField;
    Usuarios_PermitidosCOMPONENTE: TStringField;
    Usuarios_PermitidosLOGIN: TStringField;
    Usuarios_PermitidosSELECAO: TStringField;
    Usuario_ExtraEX: TFDQuery;
    Usuario_ExtraEXIDUSER: TIntegerField;
    Usuario_ExtraEXOBJNAME: TStringField;
    Usuario_ExtraEXFORMNAME: TStringField;
    DSUsuario_Permitidos: TDataSource;
    TransaFD: TFDTransaction;
    RepositrorioComponentes: TcxEditRepository;
    RepSelecionado: TcxEditRepositoryCheckBoxItem;
    UCControls1: TUCControls;
    dxLayoutItem4: TdxLayoutItem;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBLayoutView1: TcxGridDBLayoutView;
    dxLayoutGroup1: TdxLayoutGroup;
    cxGridLevel1: TcxGridLevel;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    procedure btnFecharClick(Sender: TObject);
    procedure FrameExit(Sender: TObject);
    procedure Usuario_ExtraEXBeforeOpen(DataSet: TDataSet);
    procedure GridUsuarios_PermitidosSELECAOPropertiesChange(Sender: TObject);
  private
    procedure ExecutaQuery(ASentenca: String);
  public
    FTag: integer;
    procedure AtualizarPermissao;
  end;

var
  FrmFrame_BI_Permissoes: TFrmFrame_BI_Permissoes;

implementation

uses Base, UnitFuncoes, Tag.Form;

{$R *.dfm}

procedure TFrmFrame_BI_Permissoes.btnFecharClick(Sender: TObject);
begin
  inherited;
  TPanel(Self.Owner).Hide;
end;

procedure TFrmFrame_BI_Permissoes.FrameExit(Sender: TObject);
begin
  inherited;
  Usuario_ExtraEX.Close;
//  TransaFD.Commit;
end;

procedure TFrmFrame_BI_Permissoes.GridUsuarios_PermitidosSELECAOPropertiesChange(
  Sender: TObject);
var
  I: integer;
begin
  inherited;
  ExecutaQuery('delete from USUARIO_EXTRAEX ' +
           'where (CODUSUARIO > 0)  ' +
           '      and (MODULO = ''SLA'')' +
           '      and (COMPONENTE = ' + VarToStr(FTag) + ')');
  for I := 0 to GridUsuarios_Permitidos.DataController.RecordCount - 1 do
  begin
     if VarSameValue(GridUsuarios_Permitidos.DataController.Values[i, GridUsuarios_PermitidosSELECAO.Index], 1) then
      UCControls1.UserControl.AddRightEX(GridUsuarios_Permitidos.DataController.Values[i, GridUsuarios_PermitidosCODUSUARIO.Index],
                                         GridUsuarios_Permitidos.DataController.Values[i, GridUsuarios_PermitidosMODULO.Index],
                                         '',
                                         GridUsuarios_Permitidos.DataController.Values[i, GridUsuarios_PermitidosCOMPONENTE.Index]
                                         );
  end;

  TransaFD.Commit;
end;

procedure TFrmFrame_BI_Permissoes.Usuario_ExtraEXBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  Usuario_ExtraEX.SQL.Text := Format('select %s as IdUser, %s as ObjName, %s as FormName ' +
                                         'from %s TAB1 ' +
                                         'where (TAB1.%s = :CODIGO)',
    [UCControls1.UserControl.TableRights.FieldUserID,
     UCControls1.UserControl.TableRights.FieldComponentName,
     UCControls1.UserControl.TableRights.FieldFormName,
     UCControls1.UserControl.TableRights.TableName + 'EX',
     UCControls1.UserControl.TableRights.FieldModule]);
end;

procedure TFrmFrame_BI_Permissoes.AtualizarPermissao;
Var
  QuerUsuarios, QuerExtraEX: TFDQuery;
  Contador :Integer;
begin
  Usuarios_Permitidos.DisableControls;
  while not Usuarios_Permitidos.eof do
    Usuarios_Permitidos.Delete;
  QuerUsuarios := GeraFDQuery(TransaFD);
  QuerUsuarios.SQL.Text :=' select * from USUARIO where CODIGO <> -1 ';
  QuerExtraEX := GeraFDQuery(TransaFD);

  Usuarios_Permitidos.Open;
  QuerExtraEX.Close;
  QuerExtraEX.SQL.Text :=' select * from USUARIO_EXTRAEX ' +
               'where (CODUSUARIO > 0)  ' +
               '      and (MODULO LIKE ' + QuotedStr('SLA%')+ ')' +
               '      and (COMPONENTE = ' + VarToStr(FTag) + ')';
  QuerExtraEX.Open;
  QuerUsuarios.Close;
  QuerUsuarios.Open;
  QuerUsuarios.First;
  while not QuerUsuarios.eof do
  begin
    Usuarios_Permitidos.Insert;
    Usuarios_Permitidos.FieldByName('COMPONENTE').AsInteger:= FTag;
    Usuarios_Permitidos.FieldByName('DESCRICAO').AsString := QuerUsuarios.FieldByName('USUARIO').AsString;
    Usuarios_Permitidos.FieldByName('CODUSUARIO').AsString:= QuerUsuarios.FieldByName('CODIGO').AsString;
    Usuarios_Permitidos.FieldByName('MODULO').AsString    := 'SLA';
    Usuarios_Permitidos.FieldByName('LOGIN').AsString     := QuerUsuarios.FieldByName('USUARIO').AsString;
    if QuerExtraEX.Locate('COMPONENTE;MODULO;CODUSUARIO',VarArrayOf([FTag, 'SLA',QuerUsuarios.FieldByName('CODIGO').AsString]),[] ) then
      Usuarios_Permitidos.FieldByName('SELECAO').AsInteger   := 1;
    Usuarios_Permitidos.Post;
    QuerUsuarios.Next;
  end;
  Usuarios_Permitidos.EnableControls;
//  GridUsuarios_Permitidos.DataController.Groups.FullExpand;
end;

procedure TFrmFrame_BI_Permissoes.ExecutaQuery(ASentenca: String);
var
  QuerX : TFDQuery;
begin
  QuerX := GeraFDQuery(TransaFD);
  try
    QuerX.SQL.Text := ASentenca;
    try
      QuerX.ExecSQL;
    except
      on E:Exception do
      begin
        if not (Pos('RDB$RELATION_FIELDS', E.Message) > 0) then
          raise;
      end;
    end;
  finally
    QuerX.Free;
  end;
end;

initialization
  RegisterFramePainel(Tag_BI_Permissoes, TFrmFrame_BI_Permissoes);

end.
