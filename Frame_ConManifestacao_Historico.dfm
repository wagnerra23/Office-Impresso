inherited Frame_ConsuManifestacao_Historico: TFrame_ConsuManifestacao_Historico
  inherited pnlFiltros: TPanel [0]
  end
  inherited pnlAgrupador: TPanel [1]
  end
  inherited dxLayoutControl1: TdxLayoutControl [2]
    inherited GridConsulta: TcxGrid
      inherited GridConsultaDBTableView1: TcxGridDBTableView
        OnCustomDrawCell = GridConsultaDBTableView1CustomDrawCell
        OptionsBehavior.EditAutoHeight = eahRow
        OptionsData.Editing = True
        OptionsSelection.CellSelect = True
        OptionsView.CellTextMaxLineCount = 20
        object GridConsultaDBTableView1CODIGO: TcxGridDBColumn
          Caption = 'C'#243'd. Requisi'#231#227'o'
          DataBinding.FieldName = 'CODIGO'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 129
        end
        object GridConsultaDBTableView1USUARIO: TcxGridDBColumn
          Caption = 'Usu'#225'rio'
          DataBinding.FieldName = 'USUARIO'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 188
        end
        object GridConsultaDBTableView1SUCESSO_REQUISICAO: TcxGridDBColumn
          Caption = 'Deu certo?'
          DataBinding.FieldName = 'SUCESSO_REQUISICAO'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          VisibleForEditForm = bFalse
          Width = 169
        end
        object GridConsultaDBTableView1DT_ALTERACAO: TcxGridDBColumn
          Caption = 'Data'
          DataBinding.FieldName = 'DT_ALTERACAO'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 243
        end
        object GridConsultaDBTableView1REQUISICAO: TcxGridDBColumn
          Caption = 'Requisi'#231#227'o'
          DataBinding.FieldName = 'REQUISICAO'
          PropertiesClassName = 'TcxRichEditProperties'
          Properties.Alignment = taCenter
          Properties.AllowObjects = True
          Properties.AutoSelect = True
          Properties.AutoURLDetect = True
          Properties.ReadOnly = True
          Properties.ScrollBars = ssVertical
          Properties.StreamModes = [resmPlainRtf]
          OnGetDisplayText = GridConsultaGetDisplayText
          HeaderAlignmentHorz = taCenter
          Width = 256
        end
        object GridConsultaDBTableView1DT_CONSULTA: TcxGridDBColumn
          DataBinding.FieldName = 'DT_CONSULTA'
          Visible = False
        end
        object GridConsultaDBTableView1DADOS: TcxGridDBColumn
          DataBinding.FieldName = 'DADOS'
          Visible = False
        end
        object GridConsultaDBTableView1EVENTOS: TcxGridDBColumn
          Caption = 'Eventos'
          DataBinding.FieldName = 'EVENTOS'
          PropertiesClassName = 'TcxRichEditProperties'
          Properties.Alignment = taCenter
          Properties.AllowObjects = True
          Properties.AutoSelect = True
          Properties.AutoURLDetect = True
          Properties.ReadOnly = True
          Properties.ScrollBars = ssVertical
          Properties.StreamModes = [resmPlainRtf]
          Properties.OnURLClick = GridConsultaDBTableView1EVENTOSPropertiesURLClick
          HeaderAlignmentHorz = taCenter
          Styles.Content = EstiloGridLinha2
          VisibleForCustomization = False
          Width = 400
        end
        object GridConsultaDBTableView1CODEMPRESA: TcxGridDBColumn
          DataBinding.FieldName = 'CODEMPRESA'
          Visible = False
        end
        object GridConsultaDBTableView1ATIVO: TcxGridDBColumn
          DataBinding.FieldName = 'ATIVO'
          Visible = False
        end
      end
    end
  end
  inherited pnlIniciar: TPanel [3]
    inherited cxLabel1: TcxLabel
      AnchorX = 72
    end
  end
  inherited pnlFiltroData: TPanel [4]
    inherited LayoutControlFiltroData: TdxLayoutControl
      inherited DateNavigatorFiltro: TcxDateNavigator
        ExplicitLeft = 0
        ExplicitTop = 0
      end
    end
  end
  inherited pnlImpressoes: TPanel [5]
  end
  inherited dxComponentPrinter1: TdxComponentPrinter
    PixelsPerInch = 96
    inherited dxComponentPrinter1Link1: TdxGridReportLink
      ReportDocument.CreationDate = 44874.603160844900000000
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
      'SELECT R.*, U.USUARIO'
      'FROM REQ_MANIFESTO R'
      'LEFT JOIN USUARIO U ON U.CODIGO = R.CODUSUARIO')
  end
end
