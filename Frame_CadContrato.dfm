inherited FrameCadContrato: TFrameCadContrato
  inherited MainLayout: TdxLayoutControl
    inherited BtnMostrarLogAtividades: TcxButton
      TabOrder = 5
    end
    inherited PnlFrameHistorico: TPanel
      Left = 30
      Top = 66
      Width = 898
      Height = 492
      TabOrder = 4
      Visible = True
      ExplicitLeft = 30
      ExplicitTop = 66
      ExplicitWidth = 898
      ExplicitHeight = 492
    end
    inherited GrupoMain: TdxLayoutGroup
      ItemIndex = 3
    end
    inherited GrupoLogAlteracoes: TdxLayoutGroup
      Parent = GrupoMain
      AlignVert = avClient
      Visible = True
      Index = 3
    end
  end
  inherited DS: TDataSource
    Top = 71
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited Cadastro: TFDQuery
    SQL.Strings = (
      'SELECT * FROM CONTRATO'
      'WHERE CODIGO = :Codigo')
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
end
