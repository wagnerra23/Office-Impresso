inherited ConsuConfiguracao_Cronjob: TConsuConfiguracao_Cronjob
  inherited pnlFiltros: TPanel [0]
  end
  inherited pnlFiltroData: TPanel [1]
    inherited LayoutControlFiltroData: TdxLayoutControl
      inherited DateNavigatorFiltro: TcxDateNavigator
        ExplicitLeft = 0
        ExplicitTop = 0
      end
    end
  end
  inherited pnlImpressoes: TPanel [2]
  end
  inherited pnlAgrupador: TPanel [3]
  end
  inherited dxLayoutControl1: TdxLayoutControl [4]
    inherited GridConsulta: TcxGrid
      inherited GridConsultaDBTableView1: TcxGridDBTableView
        OptionsView.ColumnAutoWidth = True
        object GridConsultaDBTableView1CODIGO: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'CODIGO'
          Visible = False
        end
        object GridConsultaDBTableView1ACAO: TcxGridDBColumn
          Caption = 'A'#231#227'o'
          DataBinding.FieldName = 'ACAO'
          Width = 117
        end
        object GridConsultaDBTableView1USUARIO: TcxGridDBColumn
          Caption = 'Usu'#225'rio'
          DataBinding.FieldName = 'USUARIO'
          Width = 143
        end
        object GridConsultaDBTableView1SERVIDOR_CRON_HOST: TcxGridDBColumn
          Caption = 'Host'
          DataBinding.FieldName = 'SERVIDOR_CRON_HOST'
          Width = 166
        end
        object GridConsultaDBTableView1SERVIDOR_CRON_PROCESS: TcxGridDBColumn
          Caption = 'Processo'
          DataBinding.FieldName = 'SERVIDOR_CRON_PROCESS'
          Width = 244
        end
        object GridConsultaDBTableView1SERVIDOR_CRON_OS_USER: TcxGridDBColumn
          Caption = 'Usu'#225'rio Windows'
          DataBinding.FieldName = 'SERVIDOR_CRON_OS_USER'
          Visible = False
          Width = 179
        end
        object GridConsultaDBTableView1SERVIDOR_CRON_ADDRESS: TcxGridDBColumn
          Caption = 'Endere'#231'o IP'
          DataBinding.FieldName = 'SERVIDOR_CRON_ADDRESS'
          Width = 135
        end
        object GridConsultaDBTableView1DT_ULTIMA_ATUALIZACAO: TcxGridDBColumn
          Caption = 'Data'
          DataBinding.FieldName = 'DT_ULTIMA_ATUALIZACAO'
          SortIndex = 0
          SortOrder = soDescending
          Width = 162
        end
        object GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn
          Caption = 'Dt. Altera'#231#227'o'
          DataBinding.FieldName = 'DT_ALTERACAO'
          Visible = False
          Width = 149
        end
        object GridConsultaDBTableView1CODUSUARIO: TcxGridDBColumn
          Caption = 'Usu'#225'rio Sistema'
          DataBinding.FieldName = 'CODUSUARIO'
          Visible = False
        end
      end
    end
    inherited tcAcoes: TdxTileControl
      inherited dxTileControlItem1: TdxTileControlItem
        Visible = False
      end
      object tiPCNaoServidor: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 1
        Size = tcisLarge
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = []
        Text1.Value = 'Seu computador n'#227'o '#233' o Servidor CronJob'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
      end
      object tiTornarCronJob: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 2
        Size = tcisLarge
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = []
        Text1.Value = 'Tornar Servidor Cronjob'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = tiTornarCronJobClick
      end
      object tiExecutarRotina: TdxTileControlItem
        GroupIndex = 0
        IndexInGroup = 3
        Size = tcisLarge
        Text1.Align = oaMiddleCenter
        Text1.AssignedValues = []
        Text1.Value = 'Executar Rotina Cronjob'
        Text2.AssignedValues = []
        Text3.AssignedValues = []
        Text4.AssignedValues = []
        OnClick = tiExecutarRotinaClick
      end
    end
  end
  inherited pnlIniciar: TPanel [5]
    inherited cxLabel1: TcxLabel
      AnchorX = 72
    end
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    PixelsPerInch = 96
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.CreationDate = 44939.486971400460000000
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
    inherited LookBrancoWeb: TdxLayoutWebLookAndFeel
      PixelsPerInch = 96
    end
    inherited dxLayoutSkinLookAndFeelData: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited cxEditStyleController1: TcxEditStyleController
    PixelsPerInch = 96
  end
  inherited dxScreenTipRepository1: TdxScreenTipRepository
    PixelsPerInch = 96
  end
  inherited RespositorioEstilos: TcxStyleRepository
    PixelsPerInch = 96
  end
  inherited ImgListBotoesPesquisa: TcxImageList
    FormatVersion = 1
  end
  inherited imgBaseCinza: TcxImageList
    FormatVersion = 1
  end
  inherited imgBaseBranco: TcxImageList
    FormatVersion = 1
  end
  inherited Consulta: TFDQuery
    SQL.Strings = (
      'SELECT CC.*, U.USUARIO FROM CONFIGURACAO_CRONJOB CC'
      'LEFT JOIN USUARIO U ON U.CODIGO = CC.CODUSUARIO')
  end
  object TimerVerificaServidor: TTimer
    Interval = 5000
    OnTimer = TimerVerificaServidorTimer
    Left = 379
    Top = 361
  end
end
