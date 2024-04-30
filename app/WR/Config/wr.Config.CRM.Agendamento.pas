unit wr.Config.CRM.Agendamento;

interface

procedure Inicializa_Config_CRM_Agendamento;

implementation

uses Base, Tag.APP, Tag.Config;

procedure Inicializa_Config_CRM_Agendamento;
begin
  RegistraWR_Config(TagAPP_Agendamentos, Tag_Config_AGENDA_PRODUCAO_USAR_NUMERO_SEQUENCIA_NO_PROTOCOLO,
                'Parâmetros', 'AGENDA_PRODUCAO_USAR_NUMERO_SEQUENCIA_NO_PROTOCOLO',
                'Usar número sequencial no Protocolo dos agendamentos (sem a data hora).',
                '', 'checkbox');

  RegistraWR_Config(TagAPP_Agendamentos, Tag_Config_EMAIL_AUTO_CLIENTE,
                'Parâmetros', 'EMAIL_AUTO_CLIENTE',
                'Enviar email automaticamente ao cadastrar novo cliente',
                '', 'checkbox');
  RegistraWR_Config(TagAPP_Agendamentos, Tag_Config_ASSUNTO_EMAIL_CLIENTE,
                'Parâmetros', 'ASSUNTO_EMAIL_CLIENTE',
                'Assunto (email)',
                '', 'text');
  RegistraWR_Config(TagAPP_Agendamentos, Tag_Config_TEXTO_EMAIL_CLIENTE,
                'Parâmetros', 'TEXTO_EMAIL_CLIENTE',
                'Mensagem (email)',
                '', 'text');
end;

initialization
  Inicializa_Config_CRM_Agendamento;

end.

