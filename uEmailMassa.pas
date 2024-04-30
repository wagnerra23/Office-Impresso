unit uEmailMassa;

interface

uses
  Vcl.Graphics;

type
  TEmailMassaSituacao = (emsAguardandoEnvio, emsEnvioConcluido, emsMensagensPendentes);
  TEmailMassaSituacaoHelper = record helper for TEmailMassaSituacao
  public
    function Codigo: string;
    function Descricao: string;
    function Cor: TColor;
    class function GetFromCodigo(ACodigo: string): TEmailMassaSituacao; static;
  end;

  TEmailMassaMensagemSituacao = (emmsAguardandoEnvio, emmsEnviado, emmsFalhaEnvio);
  TEmailMassaMensagemSituacaoHelper = record helper for TEmailMassaMensagemSituacao
  public
    function Codigo: string;
    function Descricao: string;
    function Cor: TColor;
    class function GetFromCodigo(ACodigo: string): TEmailMassaMensagemSituacao; static;
  end;

implementation

{ TEmailMassaSituacaoHelper }

function TEmailMassaMensagemSituacaoHelper.Codigo: string;
begin
  case Self of
    emmsAguardandoEnvio: Result := 'AGUARDANDO_ENVIO';
            emmsEnviado: Result := 'ENVIADO';
         emmsFalhaEnvio: Result := 'FALHA_ENVIO';
  end;
end;

function TEmailMassaMensagemSituacaoHelper.Cor: TColor;
begin
  case Self of
    emmsAguardandoEnvio: Result := $00AE0400;
            emmsEnviado: Result := clGreen;
         emmsFalhaEnvio: Result := clRed;
  end;
end;

function TEmailMassaMensagemSituacaoHelper.Descricao: string;
begin
  case Self of
    emmsAguardandoEnvio: Result := 'Aguardando Envio';
            emmsEnviado: Result := 'Enviado';
         emmsFalhaEnvio: Result := 'Falha no Envio';
  end;
end;

class function TEmailMassaMensagemSituacaoHelper.GetFromCodigo(ACodigo: string): TEmailMassaMensagemSituacao;
begin
  for Result := Low(TEmailMassaMensagemSituacao) to High(TEmailMassaMensagemSituacao) do
  begin
    if Result.Codigo = ACodigo then
      Exit;
  end;
  Result := emmsAguardandoEnvio;
end;

{ TEmailMassaSituacaoHelper }

function TEmailMassaSituacaoHelper.Codigo: string;
begin
  case Self of
       emsAguardandoEnvio: Result := 'AGUARDANDO_ENVIO';
        emsEnvioConcluido: Result := 'ENVIO_CONCLUIDO';
    emsMensagensPendentes: Result := 'MENSAGENS_PENDENTES';
  end;
end;

function TEmailMassaSituacaoHelper.Cor: TColor;
begin
  case Self of
       emsAguardandoEnvio: Result := $00AE0400;
        emsEnvioConcluido: Result := clGreen;
    emsMensagensPendentes: Result := $000000D2;
  end;
end;

function TEmailMassaSituacaoHelper.Descricao: string;
begin
  case Self of
       emsAguardandoEnvio: Result := 'Aguardando Envio';
        emsEnvioConcluido: Result := 'Envio Concluído';
    emsMensagensPendentes: Result := 'Mensagens Pendentes para Envio';
  end;
end;

class function TEmailMassaSituacaoHelper.GetFromCodigo(ACodigo: string): TEmailMassaSituacao;
begin
  for Result := Low(TEmailMassaSituacao) to High(TEmailMassaSituacao) do
  begin
    if Result.Codigo = ACodigo then
      Exit;
  end;
  Result := emsAguardandoEnvio;
end;

end.
