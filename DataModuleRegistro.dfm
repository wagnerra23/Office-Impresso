object DMRegistro: TDMRegistro
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 300
  Width = 366
  object Licenciamento: TIBDataSet
    Database = ConexaoLocal
    Transaction = Transa
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from LICENCIAMENTO'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into LICENCIAMENTO'
      
        '  (ANTIVIRUS, ATIVO, BACKUP_AUTOMATICO, CODEMPRESA, CODIGO, CONE' +
        'XAO, CONTRA_SENHA, '
      
        '   DESCRICAO, DT_ALTERACAO, DT_CADASTRO, DT_ULTIMA_ASSISTENCIA, ' +
        'DT_VALIDADE, '
      
        '   GERA_MENSALIDADE, HD, HOSTNAME, IMPRESSORA_FISCAL, IP_INTERNO' +
        ', LEITOR_BARRAS, '
      
        '   LIBERADO, MEMORIA, MOTIVO, PAF, PASTA_INSTALACAO, PROCESSADOR' +
        ', SENHA, '
      
        '   SERIAL, SISTEMA_OPERACIONAL, TIPODEACESSO, USUARIO, VALOR, VE' +
        'LOCIDADE_CONEXAO, '
      '   VERSAO_BANCO, VERSAO_EXE)'
      'values'
      
        '  (:ANTIVIRUS, :ATIVO, :BACKUP_AUTOMATICO, :CODEMPRESA, :CODIGO,' +
        ' :CONEXAO, '
      
        '   :CONTRA_SENHA, :DESCRICAO, :DT_ALTERACAO, :DT_CADASTRO, :DT_U' +
        'LTIMA_ASSISTENCIA, '
      
        '   :DT_VALIDADE, :GERA_MENSALIDADE, :HD, :HOSTNAME, :IMPRESSORA_' +
        'FISCAL, '
      
        '   :IP_INTERNO, :LEITOR_BARRAS, :LIBERADO, :MEMORIA, :MOTIVO, :P' +
        'AF, :PASTA_INSTALACAO, '
      
        '   :PROCESSADOR, :SENHA, :SERIAL, :SISTEMA_OPERACIONAL, :TIPODEA' +
        'CESSO, '
      
        '   :USUARIO, :VALOR, :VELOCIDADE_CONEXAO, :VERSAO_BANCO, :VERSAO' +
        '_EXE)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  DESCRICAO,'
      '  TIPODEACESSO,'
      '  CONEXAO,'
      '  USUARIO,'
      '  SENHA,'
      '  SISTEMA_OPERACIONAL,'
      '  IP_INTERNO,'
      '  ANTIVIRUS,'
      '  PASTA_INSTALACAO,'
      '  VERSAO_EXE,'
      '  VERSAO_BANCO,'
      '  DT_ULTIMA_ASSISTENCIA,'
      '  HD,'
      '  BACKUP_AUTOMATICO,'
      '  PAF,'
      '  PROCESSADOR,'
      '  MEMORIA,'
      '  VELOCIDADE_CONEXAO,'
      '  IMPRESSORA_FISCAL,'
      '  LEITOR_BARRAS,'
      '  GERA_MENSALIDADE,'
      '  HOSTNAME,'
      '  LIBERADO,'
      '  DT_VALIDADE,'
      '  SERIAL,'
      '  CONTRA_SENHA,'
      '  VALOR,'
      '  MOTIVO,'
      '  ATIVO,'
      '  DT_CADASTRO,'
      '  DT_ALTERACAO,'
      '  CODEMPRESA'
      'from LICENCIAMENTO '
      'where'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'SELECT * '
      'FROM LICENCIAMENTO'
      'WHERE (CODEMPRESA = :CodEmpresa)'
      '')
    ModifySQL.Strings = (
      'update LICENCIAMENTO'
      'set'
      '  ANTIVIRUS = :ANTIVIRUS,'
      '  ATIVO = :ATIVO,'
      '  BACKUP_AUTOMATICO = :BACKUP_AUTOMATICO,'
      '  CODEMPRESA = :CODEMPRESA,'
      '  CODIGO = :CODIGO,'
      '  CONEXAO = :CONEXAO,'
      '  CONTRA_SENHA = :CONTRA_SENHA,'
      '  DESCRICAO = :DESCRICAO,'
      '  DT_ALTERACAO = :DT_ALTERACAO,'
      '  DT_CADASTRO = :DT_CADASTRO,'
      '  DT_ULTIMA_ASSISTENCIA = :DT_ULTIMA_ASSISTENCIA,'
      '  DT_VALIDADE = :DT_VALIDADE,'
      '  GERA_MENSALIDADE = :GERA_MENSALIDADE,'
      '  HD = :HD,'
      '  HOSTNAME = :HOSTNAME,'
      '  IMPRESSORA_FISCAL = :IMPRESSORA_FISCAL,'
      '  IP_INTERNO = :IP_INTERNO,'
      '  LEITOR_BARRAS = :LEITOR_BARRAS,'
      '  LIBERADO = :LIBERADO,'
      '  MEMORIA = :MEMORIA,'
      '  MOTIVO = :MOTIVO,'
      '  PAF = :PAF,'
      '  PASTA_INSTALACAO = :PASTA_INSTALACAO,'
      '  PROCESSADOR = :PROCESSADOR,'
      '  SENHA = :SENHA,'
      '  SERIAL = :SERIAL,'
      '  SISTEMA_OPERACIONAL = :SISTEMA_OPERACIONAL,'
      '  TIPODEACESSO = :TIPODEACESSO,'
      '  USUARIO = :USUARIO,'
      '  VALOR = :VALOR,'
      '  VELOCIDADE_CONEXAO = :VELOCIDADE_CONEXAO,'
      '  VERSAO_BANCO = :VERSAO_BANCO,'
      '  VERSAO_EXE = :VERSAO_EXE'
      'where'
      '  CODIGO = :OLD_CODIGO')
    ParamCheck = True
    UniDirectional = False
    Left = 27
    Top = 133
  end
  object DS: TDataSource
    DataSet = Licenciamento
    Left = 27
    Top = 184
  end
  object Transa: TIBTransaction
    DefaultDatabase = ConexaoLocal
    DefaultAction = TACommitRetaining
    Left = 27
    Top = 78
  end
  object ConexaoRemota: TSQLConnection
    ConnectionName = 'ServidorWR2'
    DriverName = 'Datasnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=DBXDataSnap'
      'HostName=sistema.wr2.com.br'
      'Port=211'
      'CommunicationProtocol=tcp/ip'
      'DatasnapContext=datasnap/'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=15.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b'
      'Filters={}'
      'ConnectTimeout=500')
    BeforeConnect = ConexaoRemotaBeforeConnect
    Left = 105
    Top = 22
    UniqueId = '{01F5ADB6-81D0-4D0F-A6CE-FB55B90DDF6D}'
  end
  object AppProtect1: TAppProtect
    Active = False
    IdApplication = 2312
    RegKey = '\SOFTWARE\TCF Software\AppProtect\'
    Left = 197
    Top = 23
  end
  object Licenciamento_Historico: TIBDataSet
    Database = ConexaoLocal
    Transaction = Transa
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from LICENCIAMENTO_HISTORICO'
      'where'
      '  CODIGO = :OLD_CODIGO and'
      '  CODLICENCIAMENTO = :OLD_CODLICENCIAMENTO')
    InsertSQL.Strings = (
      'insert into LICENCIAMENTO_HISTORICO'
      
        '  (ANTIVIRUS, ATIVO, BACKUP_AUTOMATICO, CODEMPRESA, CODIGO, CODL' +
        'ICENCIAMENTO, '
      
        '   CONEXAO, CONTRA_SENHA, DESCRICAO, DT_ALTERACAO, DT_CADASTRO, ' +
        'DT_ULTIMA_ASSISTENCIA, '
      
        '   DT_VALIDADE, GERA_MENSALIDADE, HD, HOSTNAME, IMPRESSORA_FISCA' +
        'L, IP_INTERNO, '
      
        '   LEITOR_BARRAS, LIBERADO, MEMORIA, MOTIVO, PAF, PASTA_INSTALAC' +
        'AO, PROCESSADOR, '
      
        '   SENHA, SERIAL, SISTEMA_OPERACIONAL, TIPODEACESSO, USUARIO, VA' +
        'LOR, VELOCIDADE_CONEXAO, '
      '   VERSAO_BANCO, VERSAO_EXE)'
      'values'
      
        '  (:ANTIVIRUS, :ATIVO, :BACKUP_AUTOMATICO, :CODEMPRESA, :CODIGO,' +
        ' :CODLICENCIAMENTO, '
      
        '   :CONEXAO, :CONTRA_SENHA, :DESCRICAO, :DT_ALTERACAO, :DT_CADAS' +
        'TRO, :DT_ULTIMA_ASSISTENCIA, '
      
        '   :DT_VALIDADE, :GERA_MENSALIDADE, :HD, :HOSTNAME, :IMPRESSORA_' +
        'FISCAL, '
      
        '   :IP_INTERNO, :LEITOR_BARRAS, :LIBERADO, :MEMORIA, :MOTIVO, :P' +
        'AF, :PASTA_INSTALACAO, '
      
        '   :PROCESSADOR, :SENHA, :SERIAL, :SISTEMA_OPERACIONAL, :TIPODEA' +
        'CESSO, '
      
        '   :USUARIO, :VALOR, :VELOCIDADE_CONEXAO, :VERSAO_BANCO, :VERSAO' +
        '_EXE)')
    RefreshSQL.Strings = (
      'Select '
      '  CODLICENCIAMENTO,'
      '  CODIGO,'
      '  DESCRICAO,'
      '  TIPODEACESSO,'
      '  CONEXAO,'
      '  USUARIO,'
      '  SENHA,'
      '  SISTEMA_OPERACIONAL,'
      '  IP_INTERNO,'
      '  ANTIVIRUS,'
      '  PASTA_INSTALACAO,'
      '  VERSAO_EXE,'
      '  VERSAO_BANCO,'
      '  DT_ULTIMA_ASSISTENCIA,'
      '  HD,'
      '  BACKUP_AUTOMATICO,'
      '  PAF,'
      '  PROCESSADOR,'
      '  MEMORIA,'
      '  VELOCIDADE_CONEXAO,'
      '  IMPRESSORA_FISCAL,'
      '  LEITOR_BARRAS,'
      '  GERA_MENSALIDADE,'
      '  HOSTNAME,'
      '  LIBERADO,'
      '  DT_VALIDADE,'
      '  SERIAL,'
      '  CONTRA_SENHA,'
      '  VALOR,'
      '  MOTIVO,'
      '  ATIVO,'
      '  DT_CADASTRO,'
      '  DT_ALTERACAO,'
      '  CODEMPRESA'
      'from LICENCIAMENTO_HISTORICO '
      'where'
      '  CODIGO = :CODIGO and'
      '  CODLICENCIAMENTO = :CODLICENCIAMENTO')
    SelectSQL.Strings = (
      'SELECT *'
      'FROM LICENCIAMENTO_HISTORICO'
      'WHERE (1 = 2)')
    ModifySQL.Strings = (
      'update LICENCIAMENTO_HISTORICO'
      'set'
      '  ANTIVIRUS = :ANTIVIRUS,'
      '  ATIVO = :ATIVO,'
      '  BACKUP_AUTOMATICO = :BACKUP_AUTOMATICO,'
      '  CODEMPRESA = :CODEMPRESA,'
      '  CODIGO = :CODIGO,'
      '  CODLICENCIAMENTO = :CODLICENCIAMENTO,'
      '  CONEXAO = :CONEXAO,'
      '  CONTRA_SENHA = :CONTRA_SENHA,'
      '  DESCRICAO = :DESCRICAO,'
      '  DT_ALTERACAO = :DT_ALTERACAO,'
      '  DT_CADASTRO = :DT_CADASTRO,'
      '  DT_ULTIMA_ASSISTENCIA = :DT_ULTIMA_ASSISTENCIA,'
      '  DT_VALIDADE = :DT_VALIDADE,'
      '  GERA_MENSALIDADE = :GERA_MENSALIDADE,'
      '  HD = :HD,'
      '  HOSTNAME = :HOSTNAME,'
      '  IMPRESSORA_FISCAL = :IMPRESSORA_FISCAL,'
      '  IP_INTERNO = :IP_INTERNO,'
      '  LEITOR_BARRAS = :LEITOR_BARRAS,'
      '  LIBERADO = :LIBERADO,'
      '  MEMORIA = :MEMORIA,'
      '  MOTIVO = :MOTIVO,'
      '  PAF = :PAF,'
      '  PASTA_INSTALACAO = :PASTA_INSTALACAO,'
      '  PROCESSADOR = :PROCESSADOR,'
      '  SENHA = :SENHA,'
      '  SERIAL = :SERIAL,'
      '  SISTEMA_OPERACIONAL = :SISTEMA_OPERACIONAL,'
      '  TIPODEACESSO = :TIPODEACESSO,'
      '  USUARIO = :USUARIO,'
      '  VALOR = :VALOR,'
      '  VELOCIDADE_CONEXAO = :VELOCIDADE_CONEXAO,'
      '  VERSAO_BANCO = :VERSAO_BANCO,'
      '  VERSAO_EXE = :VERSAO_EXE'
      'where'
      '  CODIGO = :OLD_CODIGO and'
      '  CODLICENCIAMENTO = :OLD_CODLICENCIAMENTO')
    ParamCheck = True
    UniDirectional = False
    Left = 107
    Top = 80
  end
  object ConexaoLocal: TIBDatabase
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'lc_ctype=WIN1252')
    LoginPrompt = False
    DefaultTransaction = Transa
    ServerType = 'IBServer'
    BeforeConnect = ConexaoLocalBeforeConnect
    Left = 25
    Top = 22
  end
  object AutoUpdate1: TAutoUpdate
    FTPHost = 'ftp.microgrupo.com.br'
    FTPUser = 'wratualizacao@microgrupo.com.br'
    FTPPassword = 'wscrct000465'
    FTPPassive = True
    UpdateMessage = 
      'H'#225' uma nova vers'#227'o do aplicativo dispon'#237'vel.'#13'A atualiza'#231#227'o autom' +
      #225'tica ser'#225' iniciada.'
    OptionalUpdate = False
    AutoNeedVersionControl = True
    Compact = True
    Left = 271
    Top = 23
  end
  object CONECTAR: TFDConnection
    ConnectionName = 'ServidorWR2'
    Params.Strings = (
      'DriverName=Firebird'
      'Database=192.168.0.10'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=15.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b'
      'DriverUnit=DBXDataSnap'
      'DriverID=DataSnap')
    FormatOptions.AssignedValues = [fvDataSnapCompatibility]
    LoginPrompt = False
    Transaction = Transacao
    Left = 234
    Top = 107
  end
  object Transacao: TFDTransaction
    Connection = CONECTAR
    Left = 298
    Top = 107
  end
  object LicenciamentoFireDac: TFDQuery
    Connection = CONECTAR
    Transaction = Transacao
    SQL.Strings = (
      'SELECT * '
      'FROM EQUIPAMENTOS')
    Left = 238
    Top = 220
  end
end
