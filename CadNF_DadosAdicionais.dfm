inherited FrmNF_DadosAdicionais: TFrmNF_DadosAdicionais
  Caption = 'CADASTRO DADOS ADICIONAIS'
  ClientHeight = 498
  ClientWidth = 843
  ExplicitWidth = 859
  ExplicitHeight = 537
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Left = 736
    Height = 498
    ExplicitLeft = 736
    ExplicitHeight = 498
    inherited Gradient2: TGradient
      Height = 459
      ExplicitHeight = 459
    end
    inherited Ali: TPanel
      Top = 461
      ExplicitTop = 461
    end
    inherited BitBtn6: TBitBtn
      OnClick = BitBtn6Click
    end
  end
  inherited Panel1: TPanel
    Width = 736
    Height = 498
    ExplicitWidth = 736
    ExplicitHeight = 498
    inherited Gradient1: TGradient
      Width = 732
      ExplicitWidth = 732
    end
    inherited Gradient3: TGradient
      Width = 732
      Height = 452
      ExplicitTop = 54
      ExplicitWidth = 732
      ExplicitHeight = 452
    end
    inherited DBEdit2: TDBEdit
      CharCase = ecNormal
    end
    inherited NetGradient2: TcxLabel
      Caption = 'CADASTRO DADOS ADICIONAIS'
      ExplicitWidth = 276
    end
    inherited StatusBar: TStatusBar
      Top = 477
      Width = 732
      ExplicitTop = 477
      ExplicitWidth = 732
    end
  end
  inherited DS: TDataSource
    DataSet = NF_DadosAdicionais
  end
  object NF_DadosAdicionais: TIBDataSet
    Database = FrmPrincipal.CONECTAR
    Transaction = Transa
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from NF_DADOSADICIONAIS'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into NF_DADOSADICIONAIS'
      '  (CODIGO, DESCRICAO)'
      'values'
      '  (:CODIGO, :DESCRICAO)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  DESCRICAO'
      'from NF_DADOSADICIONAIS '
      'where'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * from NF_DADOSADICIONAIS')
    ModifySQL.Strings = (
      'update NF_DADOSADICIONAIS'
      'set'
      '  CODIGO = :CODIGO,'
      '  DESCRICAO = :DESCRICAO'
      'where'
      '  CODIGO = :OLD_CODIGO')
    ParamCheck = True
    UniDirectional = False
    Left = 312
    Top = 72
  end
end
