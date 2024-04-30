inherited FrmLocal: TFrmLocal
  Caption = 'Cadastro de Local de Aplica'#231#227'o'
  ClientHeight = 523
  ClientWidth = 1018
  ExplicitWidth = 1034
  ExplicitHeight = 562
  PixelsPerInch = 96
  TextHeight = 13
  inherited MainLayout: TdxLayoutControl
    Width = 1018
    Height = 503
    ExplicitWidth = 1018
    ExplicitHeight = 503
    inherited btnNovo: TcxButton
      Left = 899
      ExplicitLeft = 899
    end
    inherited btnConfirmar: TcxButton
      Left = 899
      ExplicitLeft = 899
    end
    inherited btnAlterar: TcxButton
      Left = 899
      ExplicitLeft = 899
    end
    inherited btnCancelar: TcxButton
      Left = 899
      ExplicitLeft = 899
    end
    inherited btnExcluir: TcxButton
      Left = 899
      ExplicitLeft = 899
    end
    inherited btnConsultar: TcxButton
      Left = 899
      ExplicitLeft = 899
    end
    inherited btnSair: TcxButton
      Left = 899
      Top = 475
      ExplicitLeft = 899
      ExplicitTop = 475
    end
    inherited edtCodigo: TcxDBTextEdit
      AutoSize = False
      ExplicitWidth = 50
      Width = 50
    end
    inherited edtDT_Alteracao: TcxDBTextEdit
      Left = 773
      AutoSize = False
      ExplicitLeft = 773
      ExplicitWidth = 112
      Width = 112
    end
    inherited edtDescricao: TcxDBTextEdit
      Left = 54
      AutoSize = False
      Properties.CharCase = ecNormal
      ExplicitLeft = 54
      ExplicitWidth = 676
      Width = 676
    end
    inherited btnNavegacaoAnterior: TcxButton
      Left = 899
      ExplicitLeft = 899
    end
    inherited btnNavegacaoProximo: TcxButton
      Left = 958
      ExplicitLeft = 958
    end
    inherited BtnMostrarLogAtividades: TcxButton
      Left = 952
      ExplicitLeft = 952
    end
    inherited BtnSeguidores: TcxButton
      Left = 970
      ExplicitLeft = 970
    end
    inherited BtnConfiguracoes: TcxButton
      Left = 991
      ExplicitLeft = 991
    end
    inherited btnMenuConfig: TcxButton
      Left = 943
      ExplicitLeft = 943
    end
    inherited PnlFrameHistorico: TPanel
      Top = 103
      Width = 858
      Height = 385
      ExplicitTop = 103
      ExplicitWidth = 858
      ExplicitHeight = 385
    end
    inherited BtnImprimir: TcxButton
      Left = 990
      ExplicitLeft = 990
    end
    inherited BtnDesativar: TcxButton
      Left = 899
      ExplicitLeft = 899
    end
    inherited BtnAtivar: TcxButton
      Left = 899
      ExplicitLeft = 899
    end
    inherited BtnAjuda: TcxButton
      Left = 899
      ExplicitLeft = 899
    end
    inherited cbxAtivo: TcxDBComboBox
      Left = 731
      ExplicitLeft = 731
      ExplicitWidth = 41
      Width = 41
    end
    inherited BtnImprimirPadrao: TcxButton
      Left = 899
      ExplicitLeft = 899
    end
    inherited LbTitulo: TcxLabel
      Caption = 'Cadastro de Local de Aplica'#231#227'o'
      ExplicitWidth = 882
    end
    inherited LiedtCodigo: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
    end
    inherited LiedtDT_Alteracao: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
    end
    inherited LiedtDescricao: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
      ControlOptions.OriginalWidth = 710
    end
    inherited GrupoLogAlteracoes: TdxLayoutGroup
      AlignVert = avClient
    end
    inherited LicbxAtivo: TdxLayoutItem
      AlignHorz = ahClient
      AlignVert = avClient
    end
    object MainLayoutItem16: TdxLayoutItem
      AlignHorz = ahClient
      Index = -1
    end
  end
  inherited dxStatusBar1: TdxStatusBar
    Top = 503
    Width = 1018
    ExplicitTop = 503
    ExplicitWidth = 1018
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited WREventosCadastro: TWREventosCadastro
    Versao_Configuracao = 1
    FormClassCadastro = 'TFrmLocal'
    FormClassConsulta = 'TConsuLocal'
  end
  inherited Cadastro: TFDQuery
    SQL.Strings = (
      'select CODIGO, DESCRICAO, DT_ALTERACAO, ATIVO '
      'from LOCAL'
      'where (CODIGO = :Codigo)')
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object CadastroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CadastroDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 150
    end
    object CadastroDT_ALTERACAO: TSQLTimeStampField
      FieldName = 'DT_ALTERACAO'
      Origin = 'DT_ALTERACAO'
    end
    object CadastroATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
  end
  inherited UCHist_Cadastro: TUCHist_DataSet
    Tabela = 'LOCAL'
    Modulo = 'PRODUCAO'
  end
end
