unit FrmWR_Kanbam;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxLayoutContainer, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxLayoutControl;

type
  TFormWR_Kanbam = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem1: TdxLayoutItem;
    WR_KANBAN: TFDQuery;
    DSWR_KANBAN: TDataSource;
    WR_KANBANCODIGO: TIntegerField;
    WR_KANBANTAG_TELA: TIntegerField;
    WR_KANBANCOLUNA: TStringField;
    WR_KANBANDESCRICAO: TStringField;
    WR_KANBANORDEM: TIntegerField;
    WR_KANBANSTYLE: TMemoField;
    WR_KANBANCOR: TIntegerField;
    WR_KANBANATIVO: TStringField;
    WR_KANBANDT_ALTERACAO: TSQLTimeStampField;
    WR_KANBANCOLUNA_FECHADA: TStringField;
    WR_KANBANCHAVE: TStringField;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1TAG_TELA: TcxGridDBColumn;
    cxGrid1DBTableView1COLUNA: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRICAO: TcxGridDBColumn;
    cxGrid1DBTableView1ORDEM: TcxGridDBColumn;
    cxGrid1DBTableView1STYLE: TcxGridDBColumn;
    cxGrid1DBTableView1COR: TcxGridDBColumn;
    cxGrid1DBTableView1ATIVO: TcxGridDBColumn;
    cxGrid1DBTableView1DT_ALTERACAO: TcxGridDBColumn;
    cxGrid1DBTableView1COLUNA_FECHADA: TcxGridDBColumn;
    cxGrid1DBTableView1CHAVE: TcxGridDBColumn;
    TransaFD: TFDTransaction;
  private
    { Private declarations }
  public
    class procedure Abrir(ASender: TWinControl; AQuery: TFDQuery; TagTela: Integer; ANomeTabela: String);
    { Public declarations }
  end;

var
  FormWR_Kanbam: TFormWR_Kanbam;

implementation

uses
  UnitFuncoes;

{$R *.dfm}




class procedure TFormWR_Kanbam.Abrir(ASender: TWinControl; AQuery: TFDQuery; TagTela: Integer; ANomeTabela: String);
var
  AFormWR_Kanbam: TFormWR_Kanbam;
  ATemCadastro: String;
  QuerMaxOrdem: TFDQuery;
begin
  AFormWR_Kanbam:= TFormWR_Kanbam.Create(ASender.Owner);
  try
    QuerMaxOrdem := GeraFDQuery;
    AFormWR_Kanbam.PopupMode := pmAuto;
   // PosicionarControleAbaixoDe(AFormWR_Kanbam, ASender);
    AFormWR_Kanbam.WR_KANBAN.Close;
    AFormWR_Kanbam.WR_KANBAN.ParamByName('CODIGO').Value := TagTela;
    AFormWR_Kanbam.WR_KANBAN.Open;

    AQuery.First;
    while not AQuery.Eof do
    begin
      ATemCadastro := 'N';
      AFormWR_Kanbam.WR_KANBAN.First;
      while not AFormWR_Kanbam.WR_KANBAN.Eof do
      begin
        if AQuery.FieldByName('CODIGO').Value = AFormWR_Kanbam.WR_KANBAN.FieldByName('CHAVE').Value then
          ATemCadastro := 'S';
        AFormWR_Kanbam.WR_KANBAN.Next;
      end;
      if ATemCadastro = 'N' then
      begin
        QuerMaxOrdem.Close;
        QuerMaxOrdem.SQL.Text := 'select first 1 ORDEM from WR_KANBAN where COLUNA = ' + QuotedStr(ANomeTabela) + ' order by 1 desc';
        QuerMaxOrdem.Open;

        AFormWR_Kanbam.WR_KANBAN.Insert;
        AFormWR_Kanbam.WR_KANBAN.FieldByName('CODIGO').AsInteger        := trunc(GetProximoCodigoGen('CR_WR_KANBAN'));
        AFormWR_Kanbam.WR_KANBAN.FieldByName('TAG_TELA').AsInteger      := TagTela;
        AFormWR_Kanbam.WR_KANBAN.FieldByName('COLUNA').AsString         := ANomeTabela;
        AFormWR_Kanbam.WR_KANBAN.FieldByName('DESCRICAO').AsString      := AQuery.FieldByName('DESCRICAO').AsString;
        AFormWR_Kanbam.WR_KANBAN.FieldByName('ORDEM').AsInteger         := QuerMaxOrdem.FieldByName('ORDEM').AsInteger + 1;
//        AFormWR_Kanbam.WR_KANBAN.FieldByName('COR').AsInteger         :=
        AFormWR_Kanbam.WR_KANBAN.FieldByName('ATIVO').AsString          := 'S';
        AFormWR_Kanbam.WR_KANBAN.FieldByName('DT_ALTERACAO').AsDateTime := now;
        AFormWR_Kanbam.WR_KANBAN.FieldByName('COLUNA_FECHADA').AsString := 'N';
        AFormWR_Kanbam.WR_KANBAN.FieldByName('CHAVE').AsString          := IntToStr(AQuery.FieldByName('CODIGO').AsInteger);
        AFormWR_Kanbam.WR_KANBAN.Post;
      end;
      AQuery.Next;
    end;
    AFormWR_Kanbam.ShowModal;
    AFormWR_Kanbam.WR_KANBAN.Refresh;
  finally
    AFormWR_Kanbam.Free;
    QuerMaxOrdem.Free;
  end;
end;

end.
