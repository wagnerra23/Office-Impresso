inherited FrmProducao: TFrmProducao
  Caption = 'Produ'#231#227'o'
  ClientHeight = 497
  OnCreate = FormCreate
  ExplicitHeight = 536
  PixelsPerInch = 96
  TextHeight = 13
  inherited tcBase: TdxTileControl
    Height = 497
    ExplicitLeft = 0
    ExplicitHeight = 497
    inherited tiBasePadrao: TdxTileControlItem
      Tag = 111
      Text1.Font.Name = 'Segoe UI'
      Text1.Font.Style = []
      Text1.Value = 'Tarefas'
    end
    object tiKanban: TdxTileControlItem
      Tag = 224
      GroupIndex = 0
      IndexInGroup = 1
      Size = tcisLarge
      Text1.Align = oaMiddleCenter
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = DEFAULT_CHARSET
      Text1.Font.Color = clDefault
      Text1.Font.Height = -19
      Text1.Font.Name = 'Segoe UI'
      Text1.Font.Style = []
      Text1.Value = 'Kanban'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      Visible = False
      OnActivateDetail = tiBasePadraoActivateDetail
    end
    object tiAgenda: TdxTileControlItem
      Tag = 223
      GroupIndex = 0
      IndexInGroup = 2
      Size = tcisLarge
      Text1.Align = oaMiddleCenter
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = DEFAULT_CHARSET
      Text1.Font.Color = clDefault
      Text1.Font.Height = -19
      Text1.Font.Name = 'Segoe UI'
      Text1.Font.Style = []
      Text1.Value = 'Agendamentos'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      Visible = False
      OnActivateDetail = tiBasePadraoActivateDetail
    end
    object tiPlanejamento: TdxTileControlItem
      Tag = 155
      GroupIndex = 0
      IndexInGroup = 3
      Size = tcisLarge
      Text1.Align = oaMiddleCenter
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = DEFAULT_CHARSET
      Text1.Font.Color = clDefault
      Text1.Font.Height = -19
      Text1.Font.Name = 'Segoe UI'
      Text1.Font.Style = []
      Text1.Value = 'Planejamento'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
    end
    object tiProjeto: TdxTileControlItem
      Tag = 133
      GroupIndex = 0
      IndexInGroup = 4
      Size = tcisLarge
      Text1.Align = oaMiddleCenter
      Text1.AssignedValues = [avFont]
      Text1.Font.Charset = DEFAULT_CHARSET
      Text1.Font.Color = clDefault
      Text1.Font.Height = -19
      Text1.Font.Name = 'Segoe UI'
      Text1.Font.Style = []
      Text1.Value = 'Projetos'
      Text2.AssignedValues = []
      Text3.AssignedValues = []
      Text4.AssignedValues = []
      OnActivateDetail = tiBasePadraoActivateDetail
    end
  end
end
