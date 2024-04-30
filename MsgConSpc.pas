unit MsgConSpc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DB, IBX.IBQuery;

type
  TParametrosSpc = record
    Tipo: String;
    SN: String;
    Situacao: String;
  end;

  TFrmMsgConSpc = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    CkRegistradoSpc: TCheckBox;
    Bevel1: TBevel;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    QuerX : TIBQuery;
  public
    { Public declarations }
    ParametrosSpc : TParametrosSpc;
    SpcPodeFechar : Boolean;
    isSpc         : Boolean;
  end;

var
  FrmMsgConSpc: TFrmMsgConSpc;
  

implementation

uses StrUtils, UrlMon, UnitFuncoes, Classes.WR;

{$R *.dfm}

procedure TFrmMsgConSpc.BitBtn1Click(Sender: TObject);
begin
  ParametrosSpc.Tipo     := IfThen(isSpc,'SPC','COBRANCA');
  ParametrosSpc.SN       := 'N';
  ParametrosSpc.Situacao := 'REMOVIDO REGISTRO';
  SpcPodeFechar          := True;
  Close;
end;

procedure TFrmMsgConSpc.BitBtn2Click(Sender: TObject);
begin
  ParametrosSpc.Tipo     := IfThen(isSpc,'SPC','COBRANCA');
  ParametrosSpc.SN       := 'S';
  ParametrosSpc.Situacao := 'INCLUÍDO REGISTRO';
  SpcPodeFechar          := True;
  Close;
end;

procedure TFrmMsgConSpc.BitBtn3Click(Sender: TObject);
begin
  ParametrosSpc.Tipo     := IfThen(isSpc,'SPC','COBRANCA');
  ParametrosSpc.SN       := IfThen(CkRegistradoSpc.Checked, 'S', 'N');
  ParametrosSpc.Situacao := 'CONSULTA (' + IfThen(CkRegistradoSpc.Checked, 'REGISTRADO', 'NÃO REGISTRADO') + ')';
  SpcPodeFechar          := True;
  Close;
end;

procedure TFrmMsgConSpc.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := SpcPodeFechar;
end;

procedure TFrmMsgConSpc.FormShow(Sender: TObject);
begin
  SpcPodeFechar := False;
  if isSpc then
  begin
    FrmMsgConSpc.Caption := 'SPC';
    HlinkNavigateString(nil, PWideChar(TConfig.ReadString('URL_SPC')));
  end else
  begin
    FrmMsgConSpc.Caption := 'Cobrança';
    HlinkNavigateString(nil, PWideChar(TConfig.ReadString('URL_COBRANCA')));
  end;
end;

end.
