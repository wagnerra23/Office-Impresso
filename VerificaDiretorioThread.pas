unit VerificaDiretorioThread;

interface

uses
  System.Classes, System.SysUtils, System.IOUtils;

type
  TVerificaDiretorioThread = class(TThread)
  private
    FCaminho: string;
    FDirectoryExists: Boolean;
    FError: Boolean;
  protected
    procedure Execute; override;
    procedure SincronizarMensagem;
  public
    constructor Create(const ACaminho: string);
    property DirectoryExists: Boolean read FDirectoryExists;
  end;

implementation

{ TVerificaDiretorioThread }

constructor TVerificaDiretorioThread.Create(const ACaminho: string);
begin
  inherited Create(True);
  FCaminho := ACaminho;
  FDirectoryExists := False;
end;

procedure TVerificaDiretorioThread.Execute;
begin
  try
    FDirectoryExists := TDirectory.Exists(FCaminho);
    Synchronize(SincronizarMensagem);
  except
    // tratamento de exceção, se necessário
  end;
end;

procedure TVerificaDiretorioThread.SincronizarMensagem;
begin

end;

end.

