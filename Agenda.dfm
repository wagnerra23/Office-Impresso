object FrmAgenda: TFrmAgenda
  Left = 0
  Top = 0
  Hint = 'Agenda'
  Caption = 'Agenda'
  ClientHeight = 696
  ClientWidth = 1329
  Color = 4197444
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = True
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlSelecaoData: TPanel
    Left = 101
    Top = 27
    Width = 322
    Height = 105
    Caption = 'Sele'#231#227'o de Data'
    TabOrder = 1
    Visible = False
    object Bevel1: TBevel
      Left = 20
      Top = 65
      Width = 299
      Height = 10
      Shape = bsTopLine
    end
    object EdtSelecaoData: TcxDateEdit
      Left = 20
      Top = 38
      Properties.ShowTime = False
      TabOrder = 1
      Width = 137
    end
    object cxLabel1: TcxLabel
      Left = 20
      Top = 15
      Caption = 'Selecione a data para mover o(s) evento(s) selecionado(s)'
      ParentColor = False
      Transparent = True
    end
    object BtnSelecaoDataConfirmar: TcxButton
      Left = 240
      Top = 76
      Width = 75
      Height = 22
      Caption = 'Confirmar'
      TabOrder = 3
      OnClick = BtnSelecaoDataConfirmarClick
    end
    object BtnSelecaoDataCancelar: TcxButton
      Left = 159
      Top = 76
      Width = 75
      Height = 22
      Caption = 'Cancelar'
      TabOrder = 2
      OnClick = BtnSelecaoDataCancelarClick
    end
  end
  object PnlTransferirResponsavel: TPanel
    Left = 38
    Top = 337
    Width = 347
    Height = 133
    Caption = 'Transfer'#234'ncia de Eventos'
    TabOrder = 3
    Visible = False
    object dxLayoutControl3: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 345
      Height = 131
      Align = alClient
      TabOrder = 0
      LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
      object BtnTransfConfirmar: TcxButton
        Left = 270
        Top = 96
        Width = 75
        Height = 22
        Caption = 'Confirmar'
        TabOrder = 4
        OnClick = BtnTransfConfirmarClick
      end
      object BtnTransfCancelar: TcxButton
        Left = 194
        Top = 96
        Width = 75
        Height = 22
        Caption = 'Cancelar'
        TabOrder = 3
        OnClick = BtnTransfCancelarClick
      end
      object CbTransfResponsavel: TcxComboBox
        Left = 110
        Top = 40
        Properties.DropDownListStyle = lsFixedList
        Properties.DropDownRows = 15
        Style.HotTrack = False
        TabOrder = 1
        Width = 223
      end
      object CbTransfSetor: TcxComboBox
        Left = 110
        Top = 18
        Properties.DropDownListStyle = lsFixedList
        Properties.DropDownRows = 15
        Properties.OnChange = CbTransfSetorPropertiesChange
        Style.HotTrack = False
        TabOrder = 0
        Width = 223
      end
      object DtaEdAgenda: TcxDateEdit
        Left = 110
        Top = 62
        Properties.SaveTime = False
        Properties.ShowTime = False
        Style.HotTrack = False
        TabOrder = 2
        Width = 121
      end
      object dxLayoutControl3Group_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object dxLayoutControl3Item1: TdxLayoutItem
        Parent = dxLayoutControl3Group1
        CaptionOptions.Visible = False
        Control = BtnTransfConfirmar
        ControlOptions.OriginalHeight = 22
        ControlOptions.OriginalWidth = 75
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutControl3Item2: TdxLayoutItem
        Parent = dxLayoutControl3Group1
        CaptionOptions.Visible = False
        Control = BtnTransfCancelar
        ControlOptions.OriginalHeight = 22
        ControlOptions.OriginalWidth = 75
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutControl3Group1: TdxLayoutGroup
        Parent = dxLayoutControl3Group_Root
        AlignHorz = ahRight
        CaptionOptions.Text = 'Hidden Group'
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 1
      end
      object dxLayoutControl3Item3: TdxLayoutItem
        Parent = dxLayoutControl3Group2
        CaptionOptions.Text = 'Respons'#225'vel:'
        Control = CbTransfResponsavel
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 223
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutControl3Group2: TdxLayoutGroup
        Parent = dxLayoutControl3Group_Root
        CaptionOptions.Text = 'Transferir evento para...'
        Index = 0
      end
      object dxLayoutControl3Item4: TdxLayoutItem
        Parent = dxLayoutControl3Group2
        CaptionOptions.Text = 'Setor:'
        Control = CbTransfSetor
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 223
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutControl3Item5: TdxLayoutItem
        Parent = dxLayoutControl3Group2
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Data Agendamento:'
        Control = DtaEdAgenda
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 2
      end
    end
  end
  object PnlOpcoesAgenda: TPanel
    Left = 177
    Top = 72
    Width = 241
    Height = 146
    Caption = 'Op'#231#245'es da Agenda'
    TabOrder = 2
    Visible = False
    object dxLayoutControl2: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 239
      Height = 144
      Align = alClient
      TabOrder = 0
      LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
      object cxButton1: TcxButton
        Left = 159
        Top = 119
        Width = 75
        Height = 20
        Caption = 'Confirmar'
        TabOrder = 7
        OnClick = cxButton1Click
      end
      object cxButton2: TcxButton
        Left = 75
        Top = 119
        Width = 78
        Height = 20
        Caption = 'Cancelar'
        TabOrder = 6
        OnClick = cxButton2Click
      end
      object CbAgendaCor: TcxColorComboBox
        Left = 190
        Top = 46
        Properties.CustomColors = <
          item
            Color = 8454016
            Description = 'Padr'#227'o'
          end>
        Properties.DefaultColor = 8454016
        Properties.DefaultDescription = 'Selecione uma cor'
        Properties.MaxMRUColors = 0
        Properties.ShowDescriptions = False
        Style.HotTrack = False
        TabOrder = 3
        Width = 44
      end
      object CbAgendaMostrarHora: TcxComboBox
        Left = 124
        Top = 46
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          'S'
          'N')
        Style.HotTrack = False
        TabOrder = 2
        Width = 60
      end
      object EdtAgendaIntervalo: TcxCurrencyEdit
        Left = 5
        Top = 46
        Properties.Alignment.Horz = taRightJustify
        Properties.DecimalPlaces = 0
        Properties.DisplayFormat = '0'
        Properties.UseLeftAlignmentOnEditing = False
        Style.HotTrack = False
        TabOrder = 1
        Width = 118
      end
      object EdtAgendaHoraInicial: TcxTimeEdit
        Left = 5
        Top = 82
        Style.HotTrack = False
        TabOrder = 4
        Width = 120
      end
      object EdtAgendaHoraFinal: TcxTimeEdit
        Left = 126
        Top = 82
        Style.HotTrack = False
        TabOrder = 5
        Width = 108
      end
      object CbAgendaUsuarios: TcxComboBox
        Left = 46
        Top = 5
        Properties.DropDownListStyle = lsFixedList
        Properties.OnChange = CbAgendaUsuariosPropertiesChange
        Style.HotTrack = False
        TabOrder = 0
        Width = 188
      end
      object dxLayoutControl2Group_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        Hidden = True
        Padding.Bottom = 5
        Padding.Left = 5
        Padding.Right = 5
        Padding.Top = 5
        Padding.AssignedValues = [lpavBottom, lpavLeft, lpavRight, lpavTop]
        ShowBorder = False
        Index = -1
      end
      object dxLayoutControl2Group1: TdxLayoutGroup
        Parent = dxLayoutControl2Group5
        CaptionOptions.Text = 'Hidden Group'
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 2
      end
      object dxLayoutControl2Group2: TdxLayoutGroup
        Parent = dxLayoutControl2Group5
        CaptionOptions.Text = 'Hidden Group'
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 1
      end
      object dxLayoutControl2Item6: TdxLayoutItem
        Parent = dxLayoutControl2Group3
        AlignHorz = ahRight
        AlignVert = avBottom
        Offsets.Left = 5
        Offsets.Top = 15
        CaptionOptions.Text = 'cxButton1'
        CaptionOptions.Visible = False
        Control = cxButton1
        ControlOptions.OriginalHeight = 20
        ControlOptions.OriginalWidth = 75
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutControl2Item7: TdxLayoutItem
        Parent = dxLayoutControl2Group3
        AlignHorz = ahRight
        AlignVert = avBottom
        Offsets.Top = 15
        CaptionOptions.Visible = False
        Control = cxButton2
        ControlOptions.OriginalHeight = 20
        ControlOptions.OriginalWidth = 78
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutControl2Group3: TdxLayoutGroup
        Parent = dxLayoutControl2Group_Root
        AlignVert = avClient
        CaptionOptions.Text = 'Hidden Group'
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 1
      end
      object dxLayoutControl2Item8: TdxLayoutItem
        Parent = dxLayoutControl2Group2
        AlignHorz = ahClient
        Offsets.Left = 5
        CaptionOptions.Text = 'Cor'
        CaptionOptions.Layout = clTop
        Control = CbAgendaCor
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 44
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutControl2Item5: TdxLayoutItem
        Parent = dxLayoutControl2Group2
        Visible = False
        CaptionOptions.Text = 'Mostrar H.'
        CaptionOptions.Layout = clTop
        Control = CbAgendaMostrarHora
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 60
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutControl2Item4: TdxLayoutItem
        Parent = dxLayoutControl2Group2
        AlignHorz = ahClient
        CaptionOptions.Text = 'Intervalo em Min.'
        CaptionOptions.Layout = clTop
        Control = EdtAgendaIntervalo
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 118
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutControl2Item3: TdxLayoutItem
        Parent = dxLayoutControl2Group1
        AlignHorz = ahClient
        CaptionOptions.Text = 'Hora Inicial'
        CaptionOptions.Layout = clTop
        Control = EdtAgendaHoraInicial
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 120
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutControl2Item1: TdxLayoutItem
        Parent = dxLayoutControl2Group1
        AlignHorz = ahClient
        CaptionOptions.Text = 'Hora Final'
        CaptionOptions.Layout = clTop
        Control = EdtAgendaHoraFinal
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 108
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutControl2CbUsuarios: TdxLayoutItem
        Parent = dxLayoutControl2Group5
        AlignHorz = ahClient
        Offsets.Bottom = 5
        CaptionOptions.Text = 'Usu'#225'rio:'
        Control = CbAgendaUsuarios
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 188
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutControl2Group5: TdxLayoutGroup
        Parent = dxLayoutControl2Group_Root
        CaptionOptions.Text = 'Hidden Group'
        Hidden = True
        ShowBorder = False
        Index = 0
      end
    end
  end
  object dxLayoutControl6: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 1329
    Height = 696
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = dxLayoutSkinLookAndFeel2
    DesignSize = (
      1329
      696)
    object Scheduler: TcxScheduler
      Left = 216
      Top = 44
      Width = 1113
      Height = 652
      DateNavigator.ColCount = 3
      DateNavigator.OnPeriodChanged = SchedulerDateNavigatorPeriodChanged
      DateNavigator.OnSelectionChanged = SchedulerDateNavigatorSelectionChanged
      ViewDay.Active = True
      ViewDay.AlwaysShowEventTime = True
      ViewDay.GroupingKind = gkByResource
      ViewDay.TimeScale = 15
      ViewDay.OnCustomDrawTimeRuler = SchedulerViewDayCustomDrawTimeRuler
      ViewGantt.WorkDaysOnly = True
      ViewGantt.WorkTimeOnly = True
      ViewGantt.TreeBrowser.Visible = True
      ViewGantt.TreeBrowser.Width = 450
      ViewTimeGrid.EventMaxLineCount = 5
      ViewTimeGrid.Scales.TimeStep = 15
      ViewTimeGrid.EventDetailInfo = True
      ViewTimeGrid.SnapEventsToTimeSlots = False
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = cxcbsNone
      ContentPopupMenu.Items = [cpmiNewEvent, cpmiNewAllDayEvent, cpmiNewReccuringEvent, cpmiToday, cpmiGoToDate, cpmiGoToThisDay]
      ControlBox.Control = pnlControls
      EventImages = ImageList2
      EventOperations.InplaceEditing = False
      EventOperations.Recurrence = False
      EventPopupMenu.PopupMenu = MenuAgenda
      EventPopupMenu.UseBuiltInPopupMenu = False
      EventPopupMenu.Items = [epmiOpen, epmiEditSeries, epmiLabel]
      EventPopupMenu.OnPopup = SchedulerEventPopupMenuPopup
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      LookAndFeel.NativeStyle = False
      LookAndFeel.ScrollbarMode = sbmDefault
      LookAndFeel.SkinName = 'Office2019DarkGray'
      OptionsView.AdditionalTimeZoneLabel = 'Hor'#225'rio'
      OptionsView.CurrentTimeZoneLabel = 'Hor'#225'rio'
      OptionsView.GroupingKind = gkNone
      OptionsView.ResourcesPerPage = 3
      OptionsView.WorkStart = 0.291666666666666700
      OptionsView.WorkFinish = 0.916666666666666600
      ResourceNavigator.Buttons.PrevPage.Visible = True
      ResourceNavigator.Buttons.Prev.Visible = True
      ResourceNavigator.Buttons.Next.Visible = True
      ResourceNavigator.Buttons.NextPage.Visible = True
      ResourceNavigator.ShowButtons = False
      ResourceNavigator.Visibility = snvNever
      Storage = SchedulerDBStorage
      TabOrder = 6
      OnAfterEditing = SchedulerAfterEditing
      OnBeforeEditing = SchedulerBeforeEditing
      OnClick = SchedulerClick
      OnGetEventDisplayText = SchedulerGetEventDisplayText
      OnGetEventHintText = SchedulerGetEventHintText
      OnSelectionChanged = SchedulerSelectionChanged
      Splitters = {
        AC0200007D0000005904000082000000A702000000000000AC0200008C020000}
      StoredClientBounds = {0000000000000000590400008C020000}
      object pnlControls: TPanel
        Left = 0
        Top = 0
        Width = 429
        Height = 522
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object LBAgenda: TLabel
          Left = 89
          Top = 52
          Width = 3
          Height = 13
          Visible = False
        end
        object dxLayoutControl1: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 429
          Height = 522
          Align = alClient
          TabOrder = 0
          AutoSize = True
          LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
          object TreeListFiltros: TcxDBTreeList
            Left = 10000
            Top = 10000
            Width = 131
            Height = 238
            Bands = <
              item
              end>
            DataController.DataSource = DSAgendaFiltro
            DataController.ImageIndexField = 'IMAGEINDEX'
            DataController.ParentField = 'PARENT'
            DataController.KeyField = 'CODIGO'
            Images = ImgListMenuConfig
            Navigator.Buttons.CustomButtons = <>
            OptionsBehavior.CopyCaptionsToClipboard = False
            OptionsData.Editing = False
            OptionsData.AnsiSort = True
            OptionsData.Deleting = False
            OptionsSelection.CellSelect = False
            OptionsSelection.HideFocusRect = False
            OptionsSelection.InvertSelect = False
            OptionsView.ColumnAutoWidth = True
            OptionsView.Headers = False
            PopupMenu = MenuFiltros
            RootValue = -1
            ScrollbarAnnotations.CustomAnnotations = <>
            TabOrder = 6
            Visible = False
            OnClick = TreeListFiltrosClick
            object TlFiltroscxDBTreeListColumn2: TcxDBTreeListColumn
              Visible = False
              DataBinding.FieldName = 'CODIGO'
              Width = 100
              Position.ColIndex = 1
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object TlFiltroscxDBTreeListColumn1: TcxDBTreeListColumn
              Caption.Text = 'Filtro'
              DataBinding.FieldName = 'DESCRICAO'
              Width = 100
              Position.ColIndex = 0
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object TlFiltroscxDBTreeListColumn3: TcxDBTreeListColumn
              Visible = False
              DataBinding.FieldName = 'DescExibicao'
              Width = 100
              Position.ColIndex = 2
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
          end
          object cxGridTarefas: TcxGrid
            Left = 10000
            Top = 10000
            Width = 516
            Height = 238
            Images = ImgListMenuConfig
            PopupMenu = PopupMenu1
            TabOrder = 7
            Visible = False
            object cxGridTarefasTableView1: TcxGridDBTableView
              PopupMenu = PopupMenu2
              OnDblClick = cxGridTarefasTableView1DblClick
              OnKeyDown = cxGridTarefasTableView1KeyDown
              Navigator.Buttons.CustomButtons = <>
              ScrollbarAnnotations.CustomAnnotations = <>
              OnCustomDrawCell = cxGridTarefasTableView1CustomDrawCell
              DataController.DataSource = DSTarefas
              DataController.Summary.DefaultGroupSummaryItems = <
                item
                  Format = 'Quantidade: 0'
                  Kind = skCount
                end>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.MultiSelect = True
              OptionsView.GridLineColor = clSilver
              OptionsView.GridLines = glHorizontal
              object cxGridTarefasTableView1COLOR: TcxGridDBColumn
                Caption = 'Tipo do Evento'
                DataBinding.FieldName = 'COLOR'
                Width = 20
              end
              object cxGridTarefasTableView1CODAGENDA_TITULO: TcxGridDBColumn
                Caption = 'Agenda'
                DataBinding.FieldName = 'CODAGENDA_TITULO'
                PropertiesClassName = 'TcxColorComboBoxProperties'
                Properties.CustomColors = <>
                Visible = False
                VisibleForCustomization = False
                Width = 20
              end
              object cxGridTarefasTableView1EVENTO_TIPO: TcxGridDBColumn
                Caption = 'Tipo do Evento'
                DataBinding.FieldName = 'EVENTO_TIPO'
                Visible = False
                VisibleForCustomization = False
                Width = 20
              end
              object cxGridTarefasTableView1PRIORIDADE: TcxGridDBColumn
                Caption = 'Prioridade'
                DataBinding.FieldName = 'PRIORIDADE'
                PropertiesClassName = 'TcxImageComboBoxProperties'
                Properties.Images = ImgListMenuConfig
                Properties.Items = <>
                Width = 20
              end
              object cxGridTarefasTableView1STATUS: TcxGridDBColumn
                Caption = 'Status'
                DataBinding.FieldName = 'STATUS'
                Visible = False
                VisibleForCustomization = False
                Width = 20
              end
              object cxGridTarefasTableView1TAREFA_STATUS: TcxGridDBColumn
                Caption = 'Status da Tarefa'
                DataBinding.FieldName = 'TAREFA_STATUS'
                PropertiesClassName = 'TcxImageComboBoxProperties'
                Properties.Images = ImgListMenuConfig
                Properties.Items = <>
                Width = 20
              end
              object cxGridTarefasTableView1PROTOCOLO: TcxGridDBColumn
                Caption = 'Protocolo'
                DataBinding.FieldName = 'PROTOCOLO'
                Width = 95
              end
              object cxGridTarefasTableView1CODIGO: TcxGridDBColumn
                Caption = 'C'#243'digo'
                DataBinding.FieldName = 'CODIGO'
                Visible = False
                Width = 83
              end
              object cxGridTarefasTableView1DT_EMISSAO: TcxGridDBColumn
                Caption = 'Data Emiss'#227'o'
                DataBinding.FieldName = 'DT_EMISSAO'
                Visible = False
                Width = 100
              end
              object cxGridTarefasTableView1DT_INICIO: TcxGridDBColumn
                Caption = 'Dt In'#237'cio'
                DataBinding.FieldName = 'DT_INICIO'
                PropertiesClassName = 'TcxDateEditProperties'
                Properties.DisplayFormat = 'DD/MM/YY hh:mm'
                SortIndex = 0
                SortOrder = soDescending
                Width = 95
              end
              object cxGridTarefasTableView1CAPTION: TcxGridDBColumn
                Caption = 'Cliente ou Descri'#231#227'o do Agendamento'
                DataBinding.FieldName = 'CAPTION'
                Width = 439
              end
              object cxGridTarefasTableView1SOLICITANTE: TcxGridDBColumn
                Caption = 'Solicitante'
                DataBinding.FieldName = 'SOLICITANTE'
                Width = 147
              end
              object cxGridTarefasTableView1DT_FATURAMENTO: TcxGridDBColumn
                Caption = 'Data Faturamento'
                DataBinding.FieldName = 'DT_FATURAMENTO'
                Width = 100
              end
              object cxGridTarefasTableView1FUNCIONARIO: TcxGridDBColumn
                Caption = 'Funcion'#225'rio Atribu'#237'do'
                DataBinding.FieldName = 'FUNCIONARIO'
                Width = 129
              end
              object cxGridTarefasTableView1IMAGE: TcxGridDBColumn
                Caption = 'Imagem'
                DataBinding.FieldName = 'IMAGE'
                PropertiesClassName = 'TcxImageComboBoxProperties'
                Properties.Images = ImgListMenuConfig
                Properties.Items = <>
                Visible = False
                Width = 51
              end
              object cxGridTarefasTableView1TAREFA_COMPLETA: TcxGridDBColumn
                Caption = 'Tarefa Completa'
                DataBinding.FieldName = 'TAREFA_COMPLETA'
                PropertiesClassName = 'TcxProgressBarProperties'
                Properties.PeakValue = 1.000000000000000000
                Width = 100
              end
              object cxGridTarefasTableView1LOCATION: TcxGridDBColumn
                Caption = 'Contatos'
                DataBinding.FieldName = 'LOCATION'
                Width = 100
              end
              object cxGridTarefasTableView1EQUIPAMENTO: TcxGridDBColumn
                Caption = 'Equipamento'
                DataBinding.FieldName = 'EQUIPAMENTO'
                Width = 100
              end
              object cxGridTarefasTableView1DT_FIM: TcxGridDBColumn
                Caption = 'Data Fim'
                DataBinding.FieldName = 'DT_FIM'
                Visible = False
                Width = 100
              end
              object cxGridTarefasTableView1TELEFONE: TcxGridDBColumn
                Caption = 'Telefone'
                DataBinding.FieldName = 'TELEFONE'
                Width = 100
              end
              object cxGridTarefasTableView1CODFINANCEIRO: TcxGridDBColumn
                Caption = 'C'#243'd. Financeiro'
                DataBinding.FieldName = 'CODFINANCEIRO'
                Visible = False
                Width = 100
              end
              object cxGridTarefasTableView1CODVENDA: TcxGridDBColumn
                Caption = 'C'#243'd. Venda'
                DataBinding.FieldName = 'CODVENDA'
                Visible = False
                Width = 100
              end
              object cxGridTarefasTableView1OCORRENCIA: TcxGridDBColumn
                Caption = 'Ocorr'#234'ncia'
                DataBinding.FieldName = 'OCORRENCIA'
                Width = 100
              end
              object cxGridTarefasTableView1VALOR: TcxGridDBColumn
                Caption = 'Valor'
                DataBinding.FieldName = 'VALOR'
                Width = 100
              end
              object cxGridTarefasTableView1PRODUTO: TcxGridDBColumn
                Caption = 'Produto / Procedimento'
                DataBinding.FieldName = 'PRODUTO'
                Width = 100
              end
              object cxGridTarefasTableView1CODEQUIPAMENTO: TcxGridDBColumn
                Caption = 'C'#243'd. Equipamento'
                DataBinding.FieldName = 'CODEQUIPAMENTO'
                PropertiesClassName = 'TcxImageComboBoxProperties'
                Properties.Images = ImgListMenuConfig
                Properties.Items = <>
                Visible = False
                Width = 100
              end
              object cxGridTarefasTableView1LIDO: TcxGridDBColumn
                Caption = 'Lido'
                DataBinding.FieldName = 'LIDO'
                OnGetDataText = cxGridTarefasTableView1LIDOGetDataText
              end
              object cxGridTarefasTableView1CODSETOR: TcxGridDBColumn
                Caption = 'C'#243'd. Setor'
                DataBinding.FieldName = 'CODSETOR'
                Visible = False
              end
              object cxGridTarefasTableView1CODUSUARIO_RESPONSAVEL: TcxGridDBColumn
                Caption = 'C'#243'd. Respons'#225'vel'
                DataBinding.FieldName = 'CODUSUARIO_RESPONSAVEL'
              end
              object cxGridTarefasTableView1USUARIO_RESPONSAVEL: TcxGridDBColumn
                Caption = 'Respons'#225'vel'
                DataBinding.FieldName = 'USUARIO_RESPONSAVEL'
              end
              object cxGridTarefasTableView1DT_ALTERACAO: TcxGridDBColumn
                Caption = 'Data Altera'#231#227'o'
                DataBinding.FieldName = 'DT_ALTERACAO'
              end
              object cxGridTarefasTableView1CODUSUARIO_CRIADOR: TcxGridDBColumn
                Caption = 'C'#243'd. Usu'#225'rio Criador'
                DataBinding.FieldName = 'CODUSUARIO_CRIADOR'
              end
              object cxGridTarefasTableView1FANTASIA: TcxGridDBColumn
                Caption = 'Fantasia'
                DataBinding.FieldName = 'FANTASIA'
                Width = 268
              end
              object cxGridTarefasTableView1GANTT_DT_INICIO: TcxGridDBColumn
                DataBinding.FieldName = 'GANTT_DT_INICIO'
              end
              object cxGridTarefasTableView1GANTT_DT_FIM: TcxGridDBColumn
                DataBinding.FieldName = 'GANTT_DT_FIM'
              end
              object cxGridTarefasTableView1CODLOTE: TcxGridDBColumn
                Caption = 'Lote'
                DataBinding.FieldName = 'CODLOTE'
              end
              object cxGridTarefasTableView1TEMPO_ESTIMADO: TcxGridDBColumn
                Caption = 'Tempo Estimado'
                DataBinding.FieldName = 'TEMPO_ESTIMADO'
              end
              object cxGridTarefasTableView1DT_PROMETIDO_PARA: TcxGridDBColumn
                Caption = 'Prometido Para'
                DataBinding.FieldName = 'DT_PROMETIDO_PARA'
              end
            end
            object cxGridTarefasTableView2: TcxGridTableView
              Navigator.Buttons.CustomButtons = <>
              ScrollbarAnnotations.CustomAnnotations = <>
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.CellHints = True
              OptionsBehavior.ImmediateEditor = False
            end
            object cxGridLevel1: TcxGridLevel
              GridView = cxGridTarefasTableView1
            end
          end
          object PnlHistorico: TPanel
            Left = 10
            Top = 34
            Width = 650
            Height = 461
            BevelOuter = bvNone
            Color = 16505534
            ParentBackground = False
            TabOrder = 0
          end
          object cxDBLookupComboBox4: TcxDBLookupComboBox
            Left = 10000
            Top = 10000
            AutoSize = False
            Properties.ListColumns = <>
            Style.HotTrack = False
            TabOrder = 1
            Visible = False
            Height = 21
            Width = 49
          end
          object cxDBLookupComboBox5: TcxDBLookupComboBox
            Left = 10000
            Top = 10000
            AutoSize = False
            Properties.ListColumns = <>
            Style.HotTrack = False
            TabOrder = 2
            Visible = False
            Height = 21
            Width = 145
          end
          object edtPesquisa: TcxButtonEdit
            Left = 10000
            Top = 10000
            OnFocusChanged = edtPesquisaFocusChanged
            AutoSize = False
            ParentFont = False
            Properties.Buttons = <
              item
                Default = True
                Glyph.SourceDPI = 96
                Glyph.Data = {
                  424D760200000000000036000000280000000C0000000C000000010020000000
                  000000000000C40E0000C40E00000000000000000000FFFFFF009F9F9FFF0F0F
                  0FFFCFCFCFFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF009F9F9FFF000000FF000000FF0F0F0FFFCFCFCFFFFFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000F0F0FFF000000FF0000
                  00FF000000FF0F0F0FFFCFCFCFFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00CFCFCFFF0F0F0FFF000000FF000000FF000000FF0F0F0FFF0F0F
                  0FFF000000FF0F0F0FFF5F5F5FFFFFFFFF00FFFFFF00FFFFFF00CFCFCFFF0F0F
                  0FFF000000FF000000FF000000FF0F0F0FFF3F3F3FFF0F0F0FFF000000FF0F0F
                  0FFFFFFFFF00FFFFFF00FFFFFF00CFCFCFFF0F0F0FFF000000FF5F5F5FFFFFFF
                  FF00FFFFFF00FFFFFF005F5F5FFF000000FF5F5F5FFFFFFFFF00FFFFFF00FFFF
                  FF000F0F0FFF0F0F0FFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001F1F
                  1FFF000000FFFFFFFF00FFFFFF00FFFFFF00000000FF3F3F3FFFFFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF003F3F3FFF000000FFFFFFFF00FFFFFF00FFFF
                  FF000F0F0FFF0F0F0FFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002F2F
                  2FFF000000FFFFFFFF00FFFFFF00FFFFFF005F5F5FFF000000FF5F5F5FFFFFFF
                  FF00FFFFFF00FFFFFF007F7F7FFF000000FF3F3F3FFFFFFFFF00FFFFFF00FFFF
                  FF00FFFFFF000F0F0FFF000000FF1F1F1FFF3F3F3FFF1F1F1FFF000000FF0F0F
                  0FFFCFCFCFFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005F5F5FFF0000
                  00FF000000FF000000FF3F3F3FFFCFCFCFFFFFFFFF00}
                Kind = bkGlyph
              end>
            Properties.OnButtonClick = edtPesquisaPropertiesButtonClick
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clMedGray
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsItalic]
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 5
            Text = 'Pesquisar'
            Visible = False
            OnKeyDown = edtPesquisaKeyDown
            Height = 21
            Width = 162
          end
          object cxDBLookupComboBox6: TcxDBLookupComboBox
            Left = 10000
            Top = 10000
            AutoSize = False
            Properties.ListColumns = <>
            Style.HotTrack = False
            TabOrder = 3
            Visible = False
            Height = 21
            Width = 145
          end
          object cxDBLookupComboBox7: TcxDBLookupComboBox
            Left = 10000
            Top = 10000
            AutoSize = False
            Properties.ListColumns = <>
            Style.HotTrack = False
            TabOrder = 4
            Visible = False
            Height = 21
            Width = 145
          end
          object dxLayoutGroup1: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Visible = False
            Hidden = True
            ShowBorder = False
            UseIndent = False
            Index = -1
          end
          object LayoutItemFiltrosTarefas: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup4
            AlignVert = avClient
            Visible = False
            CaptionOptions.Text = 'Filtros Salvos'
            CaptionOptions.Visible = False
            Control = TreeListFiltros
            ControlOptions.OriginalHeight = 159
            ControlOptions.OriginalWidth = 131
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object GrupoDados: TdxLayoutGroup
            Parent = dxLayoutGroup1
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'New Group'
            LayoutDirection = ldTabbed
            ShowBorder = False
            Index = 0
          end
          object dxLayoutControl1Group2: TdxLayoutGroup
            Parent = GrupoDados
            CaptionOptions.Text = 'Agendamentos'
            ItemIndex = 1
            Index = 1
          end
          object dxLayoutControl1ItemGridTarefas: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup4
            AlignHorz = ahClient
            AlignVert = avClient
            Control = cxGridTarefas
            ControlOptions.OriginalHeight = 243
            ControlOptions.OriginalWidth = 251
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object GrupoRegistroAtividades: TdxLayoutGroup
            Parent = GrupoDados
            CaptionOptions.Text = 'Atividades'
            Index = 0
          end
          object dxLayoutItem4: TdxLayoutItem
            Parent = GrupoRegistroAtividades
            AlignVert = avClient
            CaptionOptions.Text = 'Panel1'
            CaptionOptions.Visible = False
            Control = PnlHistorico
            ControlOptions.AutoColor = True
            ControlOptions.OriginalHeight = 41
            ControlOptions.OriginalWidth = 185
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem9: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup3
            AlignHorz = ahClient
            CaptionOptions.Text = 'Prioridade'
            CaptionOptions.Layout = clTop
            Control = cxDBLookupComboBox4
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 145
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutControl1Group2
            LayoutDirection = ldHorizontal
            Index = 0
          end
          object dxLayoutItem10: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup3
            AlignVert = avClient
            CaptionOptions.Text = 'Filtros R'#225'pido'
            CaptionOptions.Layout = clTop
            Control = cxDBLookupComboBox5
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 145
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutItem1: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup3
            AlignVert = avBottom
            Control = edtPesquisa
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 162
            ControlOptions.ShowBorder = False
            Index = 4
          end
          object dxLayoutItem11: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup3
            AlignVert = avBottom
            CaptionOptions.Text = 'Setor'
            CaptionOptions.Layout = clTop
            Control = cxDBLookupComboBox6
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 145
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutItem12: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup3
            AlignVert = avBottom
            CaptionOptions.Text = 'Funcion'#225'rio'
            CaptionOptions.Layout = clTop
            Control = cxDBLookupComboBox7
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 145
            ControlOptions.ShowBorder = False
            Index = 3
          end
          object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutControl1Group2
            AlignVert = avClient
            LayoutDirection = ldHorizontal
            Index = 1
          end
          object dxLayoutSplitterItem1: TdxLayoutSplitterItem
            Parent = dxLayoutAutoCreatedGroup4
            SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
            SizeOptions.SizableHorz = False
            SizeOptions.SizableVert = False
            CaptionOptions.Text = 'Splitter'
            Index = 1
          end
        end
      end
    end
    object sbTarefas: TcxButton
      Left = 10000
      Top = 10000
      Width = 22
      Height = 22
      Hint = 'Tarefas'
      Anchors = [akTop, akRight]
      OptionsImage.ImageIndex = 7
      OptionsImage.Images = ImgListMenuConfig
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      Visible = False
      OnClick = sbTarefasClick
    end
    object sbCronograma: TcxButton
      Left = 10000
      Top = 10000
      Width = 22
      Height = 22
      Anchors = [akTop, akRight]
      OptionsImage.ImageIndex = 13
      OptionsImage.Images = ImgListMenuConfig
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      Visible = False
      OnClick = sbCronogramaClick
    end
    object BtnTimeGrid: TcxButton
      Left = 10000
      Top = 10000
      Width = 22
      Height = 22
      Anchors = [akTop, akRight]
      OptionsImage.ImageIndex = 13
      OptionsImage.Images = ImgListMenuConfig
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
      Visible = False
      OnClick = BtnTimeGridClick
    end
    object scConfig: TcxButton
      Left = 10000
      Top = 10000
      Width = 40
      Height = 22
      Hint = 'Configura'#231#245'es'
      Anchors = [akTop, akRight]
      DropDownMenu = PopupMenu1
      Kind = cxbkDropDownButton
      OptionsImage.ImageIndex = 1
      OptionsImage.Images = ImgListMenuConfig
      ParentShowHint = False
      ShowHint = True
      TabOrder = 13
      Visible = False
    end
    object BtnAtualizarTarefas: TcxButton
      Left = 10000
      Top = 10000
      Width = 48
      Height = 22
      Hint = 'Atualizar a lista de tarefas'
      Anchors = [akTop, akRight]
      Caption = '100'
      Colors.Default = clRed
      OptionsImage.ImageIndex = 40
      OptionsImage.Images = ImgListMenuConfig
      ParentShowHint = False
      ShowHint = True
      TabOrder = 14
      Visible = False
      OnClick = BtnAtualizarTarefasClick
    end
    object BtnSkype: TcxButton
      Left = 10000
      Top = 10000
      Width = 22
      Height = 22
      LookAndFeel.Kind = lfUltraFlat
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        000000000000070500084C3600518F630096B07B00B7B47E00BEAA7800B5CF91
        00DBF1AA00FFEAA500F8C08800C9543B00590000000000000000000000000000
        000035250038BE8600C6FDB000FFFFB000FFFDAF00FFFCAE00FFFEAF00FFF7AA
        00FFF1A900FFF2AB00FFFEB300FFFCB200FF523A00570000000000000000412D
        0045E8A400F1FFB200FFF4B319FFF8D37BFFFBE9BEFFFCECC7FFFADFA1FFF5C2
        4AFFF1A800FFF1A900FFF0AA00FFFEB300FFC48900CF000000001D15001FDB9A
        00E5FEB100FFF2B321FFFCF1D5FFFFFFFFFFFFFEFDFFFEFAEEFFFFFFFFFFFFFF
        FFFFF7D37BFFF0A600FFF1AA00FFF2AB00FFEBA700FA000000008C630093FFB7
        00FFF0A500FFF9DE9CFFFFFFFFFFFCE9BEFFF3B424FFF2AE16FFF6CB62FFFEFD
        F8FFFEFCF8FFF3B625FFF0A600FFF1AA00FFEEA800FE0A07000BD79700E4FAB0
        00FFF0A500FFFBE6B4FFFFFFFFFFF4BB31FFEF9E00FFEF9F00FFF1AD09FFFDF7
        E6FFFFFFFFFFF5C145FFF0A500FFF9AF00FFC98F00D62D200030F6AD00FFF3AC
        00FFF1A900FFF3B41EFFF3B82CFFF1A900FFF3B82EFFF6C960FFFBEAC0FFFFFF
        FFFFFEFDF9FFF3B727FFF0A600FFFCB200FFB58000C045300049FCB200FFF2AB
        00FFF1AA00FFF0A400FFF4BE3EFFFBEAC1FFFFFFFEFFFFFFFFFFFFFFFFFFFEFB
        F2FFF7CE6EFFF0A700FFF1AA00FFF9B000FFC58B00D130210033F8AF00FFF3AB
        00FFF0A600FFF4BF3DFFFFFEFBFFFFFFFFFFFEFBF3FFFCEABFFFF8D27AFFF3B7
        26FFF0A400FFF1A900FFF1AA00FFFBB100FFC08700CB543B0058F6AD00FFF2AB
        00FFF0A500FFF9D98FFFFFFFFFFFFBE6B2FFF2B11CFFF0A300FFF1A700FFFAE2
        A8FFF8D581FFF1A700FFF1AA00FFFFB400FFA27100ABD19300DDF3AB00FFF1AA
        00FFF0A500FFF8D47DFFFFFFFFFFFAE3ACFFF1AC12FFF1AC11FFF9D88AFFFFFF
        FFFFFCEFCEFFF1A700FFF2AA00FFFFB500FF5C410061F7AE00FFF1AA00FFF1AA
        00FFF1A700FFF2B320FFFCF1D6FFFFFFFFFFFEFBF4FFFEF9ECFFFFFFFFFFFEFC
        F7FFF6C551FFF0A600FFFFB500FFC88D00D50D09000EB98300C5F8AF00FFF1A9
        00FFF1AA00FFF0A600FFF2B219FFF8D37AFFFBE9BCFFFCECC6FFF9DD98FFF4BD
        38FFF1A600FFFFB400FFE9A300F23727003B0000000030220032F0AA00FDFBB1
        00FFF1AA00FFF1AA00FFF0A700FFF2A600FFF4A900FFF3A800FFF5A900FFFCAF
        00FFFFB600FFD39500DB3E2C004300000000000000000000000062450068EFA9
        00F5F8AF00FFF1AA00FFF3AC00FFF4AC00FFEBA600FAF2AA00FFE6A100F3C78C
        00CF7C570080150F001700000000000000000000000000000000000000002A1E
        002EB47F00BBF3AB00FFD49500DF5A40005F22180024291D002B1C13001D0000
        00000000000000000000000000000000000000000000}
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      TabOrder = 17
      Visible = False
    end
    object cxButton8: TcxButton
      Left = 10000
      Top = 10000
      Width = 22
      Height = 22
      Hint = 'Recalcular datas das tarefas'
      Anchors = [akTop, akRight]
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        00000000000000000000000000000000000100000008000000130000001A0000
        001A000000150000000900000002000000000000000000000000000000000000
        0000000000000000000000000003000000110605225E100F61C815127DEE1411
        7EF00F0D63CB0504236400000013000000030000000000000000000000000000
        00000000000000000001000000100F0E4797333099FFA79CC0FFDCD1D4FFE3D6
        D7FFB2A7C5FF353198FF0D0B49A1000000120000000200000000000000000000
        000000000000000000070B0A2D6637349DFFDCCECCFFF0E1D4FFF2E4D9FF7155
        4CFFF2E3D9FFE6D8D1FF46419EFF09082E6F0000000800000000000000000000
        0000000000000000000D1F1F76CDA497B7FFECDACCFFF0E0D5FFF2E3D8FF7155
        4CFFF0E2D6FFEDDDD0FFBAACBFFF1A1774D4000000100000000E000000150000
        001700000018000000252D2D98F4D8C5C0FFEEE0D3FFF3E6DEFFF3E7DFFF7155
        4CFFF3E8DFFFEFE2D7FFE7D4C6FF2A2797FB000000126E4A3FC5986757FF9966
        56FF986656FFC0A9A1FF3A3AA6FFD7C3BDFF454BBDFF4248BAFF4045B7FF574C
        80FFF6EFE8FFF6EEE7FFE5D1C3FF2F2D9CFA0000000F9B6A5AFFF4EDE5FFF1E8
        DDFFF0E8DDFFEFE9E4FF6161B6FFA194B5FFF7F1ECFFFBF7F4FFFBF7F5FFFBF7
        F5FFFBF7F5FFF7F1EBFFB6A6B7FF26267DCC0000000A9F6E5FFFF5EFE9FFF2E9
        E0FFF2E9E0FFF1EAE4FFB6B4D3FF4F51B1FFDCCCC8FFFEFDFCFFFFFFFFFFFFFF
        FFFFFEFDFCFFE5D4CCFF5A56ADFF13143C6700000004A17362FFF7F2ECFFF3EC
        E3FFF3EBE3FFF3EBE3FFF4EFEAFF9192CBFF5555B5FFAFA1B9FFDED2D0FFE2D6
        D1FFB6A7BAFF5855B1FF232463A00000000600000001A47766FFF8F4EFFFF4EE
        E6FFF4EDE6FFF5EDE6FFF5EEE6FFF5F1ECFFBDBCDBFF7779C6FF5559BBFF5256
        BBFF7273C3FF9C8FAEFF000000140000000100000000A87A6BFFF9F6F1FFF6F0
        EAFFA97E6EFFFAF7F3FFF6EFE8FFAA7F6FFFFAF8F4FFF7F2EDFFD1BBB3FFF9F7
        F5FFF6F1ECFFB79386FF0000000E0000000000000000AB7F6FFFFBF8F4FFF8F3
        EDFFAC8272FFFBF8F5FFF7F1EBFFAC8171FFFAF8F4FFF7F0E9FFAB8070FFFAF7
        F4FFF6EFE7FFA87C6CFF0000000C0000000000000000AE8373FFFCF9F6FFF9F5
        F0FFB08676FFFCF9F7FFF9F4EFFFAF8575FFFBF9F6FFF8F3EDFFAF8475FFFBF8
        F5FFF7F1EBFFAB8070FF0000000A0000000000000000B08777FFFFFFFFFFFFFF
        FFFFB28A7AFFFFFFFFFFFFFFFFFFB28979FFFFFFFFFFFFFFFFFFB18978FFFFFF
        FFFFFFFFFFFFAE8474FF0000000800000000000000008B6E63BFBB9585FFBB94
        85FFBB9484FFBA9384FFBA9383FFB99283FFB99282FFB89181FFB89181FFB890
        80FFB78F80FF876A5FC1000000040000000000000000}
      OptionsImage.ImageIndex = 40
      OptionsImage.Images = ImgListMenuConfig
      ParentShowHint = False
      ShowHint = True
      TabOrder = 21
      Visible = False
      OnClick = cxButton8Click
    end
    object LbTipoViewGantt: TcxLabel
      Left = 10000
      Top = 10000
      AutoSize = False
      Style.HotTrack = False
      Visible = False
      Height = 17
      Width = 15
    end
    object TbZoom: TcxTrackBar
      Left = 10000
      Top = 10000
      Properties.Max = 3
      Properties.PageSize = 1
      Properties.ShowTicks = False
      Properties.TickMarks = cxtmBoth
      Properties.TickSize = 1
      Properties.OnChange = TbZoomPropertiesChange
      Style.HotTrack = False
      TabOrder = 8
      Visible = False
      Height = 15
      Width = 147
    end
    object cxTrackBar1: TcxTrackBar
      Left = 10000
      Top = 10000
      Position = 10
      Properties.Max = 200
      Properties.Min = 10
      Properties.ShowTicks = False
      Properties.ThumbHeight = 1
      Properties.ThumbWidth = 1
      Properties.TickMarks = cxtmBoth
      Properties.TickSize = 1
      Properties.TrackSize = 1
      Properties.OnChange = cxTrackBar1PropertiesChange
      Style.HotTrack = False
      TabOrder = 9
      Visible = False
      Height = 15
      Width = 147
    end
    object LbQuantEventos: TcxLabel
      Left = 10000
      Top = 10000
      Caption = 'LbQuantEventos'
      Style.HotTrack = False
      Transparent = True
      Visible = False
    end
    object cxButton7: TcxButton
      Left = 10000
      Top = 10000
      Width = 22
      Height = 22
      Hint = 'Mostrar / Ocultar o Controlbox'
      Anchors = [akTop, akRight]
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000008484
        84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
        84FF848484FF848484FF848484FF000000000000000000000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF848484FF000000000000000000000000000000008484
        84FFFFFFFFFFB8824DFFFFFFFFFF97A776FF97A776FF97A776FF97A776FFFFFF
        FFFFB8824DFFFFFFFFFF848484FF000000000000000000000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFF97A776FF97A776FF97A776FF97A776FFFFFF
        FFFFFFFFFFFFFFFFFFFF848484FF000000000000000000000000000000008484
        84FFFFFFFFFFB8824DFFFFFFFFFF97A776FF97A776FF97A776FF97A776FFFFFF
        FFFFB8824DFFFFFFFFFF848484FF000000000000000000000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF848484FF000000000000000000000000000000008484
        84FFFFFFFFFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFFFFFFFFF848484FF000000000000000000000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF848484FF000000000000000000000000000000008484
        84FFFFFFFFFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFFFFFFFFF848484FF000000000000000000000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF848484FF000000000000000000000000000000008484
        84FFFFFFFFFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFFFFFFFFF848484FF000000000000000000000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF848484FF000000000000000000000000000000008484
        84FFFFFFFFFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFFFFFFFFF848484FF000000000000000000000000000000008484
        84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF848484FF000000000000000000000000000000008484
        84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
        84FF848484FF848484FF848484FF0000000000000000}
      OptionsImage.ImageIndex = 40
      OptionsImage.Images = ImgListMenuConfig
      ParentShowHint = False
      ShowHint = True
      TabOrder = 23
      Visible = False
      OnClick = cxButton7Click
    end
    object Btn3CX: TcxButton
      Left = 10000
      Top = 10000
      Width = 22
      Height = 22
      Caption = '3CX'
      LookAndFeel.Kind = lfUltraFlat
      PaintStyle = bpsCaption
      SpeedButtonOptions.CanBeFocused = False
      TabOrder = 18
      Visible = False
      OnClick = Btn3CXClick
    end
    object CbTipoAgenda: TcxComboBox
      Left = 10000
      Top = 10000
      Properties.DropDownListStyle = lsFixedList
      Properties.OnChange = CbTipoAgendaPropertiesChange
      Style.HotTrack = False
      TabOrder = 7
      Visible = False
      Width = 121
    end
    object LbTitulo: TcxLabel
      Left = 0
      Top = 0
      AutoSize = False
      Caption = 'Agenda'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -24
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TextColor = clWhite
      Style.IsFontAssigned = True
      Transparent = True
      Height = 36
      Width = 1214
    end
    object edtCentro_Trabalho: TcxLookupComboBox
      Left = 10000
      Top = 10000
      Properties.ListColumns = <>
      Properties.OnValidate = edtCentro_TrabalhoPropertiesValidate
      Style.HotTrack = False
      TabOrder = 19
      Visible = False
      Width = 145
    end
    object edtFuncionario: TcxLookupComboBox
      Left = 10000
      Top = 10000
      Properties.ListColumns = <>
      Properties.OnValidate = edtFuncionarioPropertiesValidate
      Style.HotTrack = False
      TabOrder = 20
      Visible = False
      Width = 212
    end
    object btnMenu: TcxButton
      Left = 1303
      Top = 0
      Width = 26
      Height = 36
      Hint = 'Menu'
      Anchors = [akTop, akRight]
      Caption = 'Menu'
      Colors.DefaultText = 16744448
      Colors.HotText = 16744448
      Colors.PressedText = 16744448
      DropDownMenu = PopupMenu1
      Kind = cxbkDropDown
      LookAndFeel.NativeStyle = True
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000003F744558745469746C6500436F6E646974696F6E616C466F726D6174
        74696E7349636F6E536574426F786573353B436F6E646974696F6E616C466F72
        6D617474696E673B7C2568420000020F49444154785E7DD23D6814511007F0FF
        DBDBBB235A081629AC6C456C146C3C72C1430B053B41AD24585BA64A29042C2D
        C4C6CE0F3082A898468CE612390BC1A0A06D90607367B277C9DDEDBE79EFAD33
        6F77CF331E819D5D667FB3B3F066D4E2B36FEF551ACC9A34055FB0D6C1B91464
        CCEAE2DC990B779E6CBC0554DDB2392E70DE01B266F5EEADB38DB01D25B3D72E
        9FF02F9D1401B09C3C7FF3BD0E40BC7EFDCA49D8C2F926CD965E7D150F42228B
        AD48636B270152058514D3472AD0898514686DF1735B63B3331CF9B1A35590F6
        AE42D20E7D4E626391317C6E286B20CF3E374BE8AFEFC51644450332FE852639
        83144A21CF9D2FD0ECBBB1F13973EE06947B28B09718544A01B844CEC17F60B3
        3F80C487846A993D3FC81EE7D6641E469DE85DF3F54643BA4BF0DD5FD6E81576
        1B757656D697BF9C4F5DE12E734BE24E0138CC51E650C2F9534A89437354240A
        2F22B7815A78D85A2B95CA35E3C6F7C021D17AFDDEEDFAA5F9FBCDE580DDB267
        7B90FA31EB24FEF860FE6223ECF4A876F3EAA9FFE6FC78E9730D40B5D3D5B5B9
        1BA7FD3BEBB283949F3D7ADA3AC71ECA180F9A7349C6B5F93BC68F5FFD911F9F
        9E2A3C0827CFF9DF3DD81D1A76C31A884B5E38429A3CE7D1A288470342A2C59D
        F7EE20185F243B71CE269FB3788F1B1CAA944667D4ED8FEDC176BBDDFCF0A235
        B37F0F0C0D9BEC49C4FEE9E5DA048FC58D0230B56F0F30B60746EC008FFF0090
        F1D2ED271E79BE0000000049454E44AE426082}
      OptionsImage.Spacing = 0
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxLookupComboBox1: TcxLookupComboBox
      Left = 10000
      Top = 10000
      AutoSize = False
      Properties.ListColumns = <>
      Style.HotTrack = False
      TabOrder = 22
      Visible = False
      Height = 21
      Width = 109
    end
    object btnNovoCadastro: TcxButton
      Left = 1215
      Top = 0
      Width = 26
      Height = 36
      Hint = 'Novo Cadastro'
      Anchors = [akTop, akRight]
      Colors.DefaultText = 16744448
      Colors.HotText = 16744448
      Colors.PressedText = 16744448
      Kind = cxbkDropDown
      LookAndFeel.NativeStyle = True
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000023744558745469746C65004164643B46696C653B41646446696C653B
        426172733B526962626F6E3B15DCAA0A000002E049444154785E65927F689555
        18C73FE7BDEFBDCDFD52BBCAC6AC3FC67E68615830DB168DB491DBAC086566B8
        612B35D655D141121B42E48FFE501B28669BD860FB4316CE864284DA2854C28A
        A9685413993437595DC7D6DDDAEEDEF73DE7E9EECD3B821D78CEF71C9E733E7C
        9F874701EAD0A99F7A14AC061004115080117F4766540C82C218F7FBBD91B272
        11310036A0C4C8EA0FB63D0F0002B387B9570E9EF86115A00066019E18109876
        34028800BE26210A0152420AED19E600B4A301D02290FC0C042C0502CA02E3E7
        66201680DADF550180E5033C0D08227E801226E27F71E9D6715A7BDEE6F0F9B5
        B47E5BC737D78FF1F4B22040A0697D37C6083EC0D506010C0AA5147F446FD0F6
        5D84901DA0BAE4431AD79D65434283B6CDCDE801229F9656D98134CB73CDFF1D
        8018884DFE49F7B583BCF94223E52B6A387FB593C6935B3877A583179757B0B1
        AC81F9E194F6773E2ECA3B50DBA32CC0725C8D08584AB8FA6B27CFE5AE21279C
        C368FC37EEDEEF636BE58984DE233A758B507A8CA2C2F28CB405A13D40C0F64B
        987560B8DD7F859AAA77F9BCFB10030F1E20C092AC4C3C2D34B79D263B2B8392
        E26C8C31AF033BFF2B41FB0E40C1586C84096ED27F7F906DAFB5B06FEB693C23
        EC4FE8F186AF181A1C6378FA471C47870165270188F85DB55506A3B128E90B27
        3976760B087C12F992A6CF3622C0FCC57146C727884FE991E41C589E0101DF66
        414E31BFDFF985C295634C7B717ABF7E824599F3F05CCDCA37061081A1BE2013
        31E722602C00ED6904782C6853595C4B6FEF20EEDFA96871487B7C92CD1F5591
        16FE07573B8C465DFAAE3B93C3F7C69B010D90FAD6FB1D976B779F914DBBCEC8
        919397E5687B8754EF79561ABE7846F65DCC97E69FF3129A27DB5B0A645DC372
        5DB2FEC95A20F4EA8EC2D9694C0516000B813090BDB464D14B2FD7E57655D6E7
        3FAC8C14C89AFAFC91559B73BB9E2A5B5C0ACC0354457D3E4A4448AEC44310B8
        D072573D0207937D0204701F8579E5BD3C01F817E1E75F4F0B44B2A300000000
        49454E44AE426082}
      OptionsImage.Spacing = 0
      SpeedButtonOptions.GroupIndex = 77
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 1
      OnDropDownMenuPopup = btnNovoCadastroDropDownMenuPopup
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnDashBoard: TcxButton
      Left = 10000
      Top = 10000
      Width = 26
      Height = 36
      Hint = 'DashBoard'
      Anchors = [akTop, akRight]
      Colors.DefaultText = 16744448
      Colors.HotText = 16744448
      Colors.PressedText = 16744448
      Kind = cxbkDropDown
      LookAndFeel.NativeStyle = True
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000000C744558745469746C650043686172743BB7ACBF070000
        02E649444154785E6DD25F68957518C0F1EFFBEE653BDBDC16D412D740AC8B82
        8A16135AC2D096A913BBF022240BFA8358C40C49ACF0C2A24E785311B4A0FF10
        D539AE0842B02D3DDB0CBA90608A0EB4895B6D12479D7353CF39EFFBFBFBD439
        075D46BFBBDFC5F3BDF83C4F04D44CBCFA4AAE2660B5F372CC7A77DC383FD2F1
        41FFF7804B66A6443734931E9C6145A08645A4C70B78EF1161240282C0FB35ED
        7D7D88319DF1B9739D57C7C6B68DEEDC95C9969A782E9D25080200DABABA7971
        6B1742F5DFFFD5AF3D9580338ED2C4388421514323AD1B37101DFD8D276AEF88
        BFF87DAE33FBCE33133B3E39EA8D8E4504626D01411B4735E02CA2342098524C
        32334DEAB14D24B352DF72F96CF6AE071F79F8C317BA92747F6EE8DDCF8E6C10
        1144404486AA8144E35402802D16B12B7B98714B58DE16D1DEDAF440D7E61D5B
        268F8F7EDDD498EA15EFF1D561BC8708C018834B625CA1887A681D7FD6DD0ECE
        335732DCB3E23626FEB8F01490D1DA1CBA8EE8DCBF108D32E84BB324AB367126
        D506C603804090AA03E3D66ED9F6964AB465F7F6353710F77D94AB22FED5709A
        8EC79F267F314F62DA0141594F21F12CA90D71129A81CFF7B6DCFDDE4FA59B11
        6D1511C03BCDD2E612F7E78719A9EF465B0761D9C463AC590050C60DBDF1FEE0
        4D888B81C22C5E5D635923ACCA1FE0E75B361249C0C2A56BE8523C0E4853637D
        AF78871310BF8808805883D73110B0FCD684B5E77F6474E966A627F394AECCED
        07AC52667811D12D22966BE23452090004DCD96A993EF90DB9E96587725FF665
        009768D3F3F6AEDE1B88AFEF3B5045F49580C15B4518D6404D1D53274F533831
        498B5FBFEEC9EDE94210846865F83F44CA81204AA1352CCC5E646AFC0C17CECF
        1F1E9DBCDC3730969E02DCFA9732D26CECE0CE377FA820568FC957106D6CDC2F
        07FB3F5DEDC4CF2B2B27E68A26FBDAC1B31920067CF1D477B2F7E561E63BBA7B
        05AE6FA0021901EAF98153BD402D2080050C60BFDD7AAF244714FB1FDDC37D84
        3C7BF863FEFBFE06D134DB7C7BF1416A0000000049454E44AE426082}
      OptionsImage.Spacing = 0
      SpeedButtonOptions.GroupIndex = 77
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 24
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnTabela: TcxButton
      Left = 1242
      Top = 0
      Width = 26
      Height = 36
      Hint = 'Calend'#225'rio'
      Anchors = [akTop, akRight]
      Colors.DefaultText = 16744448
      Colors.HotText = 16744448
      Colors.PressedText = 16744448
      Kind = cxbkDropDown
      LookAndFeel.NativeStyle = True
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C00000015744558745469746C6500477269644C696E65733B4772
        69643BC10351250000015649444154785EA5533D4B0341107DB33910042D14C1
        8868672BDA8858497AFF82FFC0C6BF606BFE81E437D8098AA649A10741B11341
        257A65B08CBAB323B3C766201F07E2C20E77F7DEBCB76F778F0094B36254E042
        CD567E4DA0FD481140648895D54A89112929A22184369D9EE57274B83D2493A4
        56D399369AAD3B64CC2192980542D50D06129C23686FE639A0D32DF0FCD6379A
        485A69FA007B2CCB6A7D1EDE075D0163776B053B9B75F330275321050DA939C2
        EDFD075C8C103151676B961139194FE75384ABCE2B5E7AFD92A44E1527918496
        97E6C0CCC8D8331A7BEB605EC3A4219606643A7113F387775884D146F3B7FCA2
        C5500E3182E0FCF209BDE233829657609EE30E8B0BB3F1E8B3C08C83C6063824
        466A2C4568CA6D7044E83E16C85263CD2513D26942E37B3A140D1AE1FB6B7073
        7C72B11FDDC4B263E2B55696C5F23F83B6BECD00C894FFD73F51354844F09FF1
        0BE602D325DBCC0A030000000049454E44AE426082}
      OptionsImage.Spacing = 0
      SpeedButtonOptions.GroupIndex = 77
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Down = True
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 2
      OnDropDownMenuPopup = btnTabelaDropDownMenuPopup
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnKanbam: TcxButton
      Left = 1269
      Top = 0
      Width = 26
      Height = 36
      Hint = 'kanbam'
      Anchors = [akTop, akRight]
      Colors.DefaultText = 16744448
      Colors.HotText = 16744448
      Colors.PressedText = 16744448
      Kind = cxbkDropDown
      LookAndFeel.NativeStyle = True
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000001E744558745469746C6500446174616261723B56696577
        3B466F726D617474696E673BE9BCA8C10000016C49444154785E8593C14AF340
        1485CF34835AC1954FE3421484FF590A52454110A52E4417F2FF2D3FD5655DF8
        106E54B420EE7C1611B4B1A4997BD44E0E21A4E85D9DCBCDFD72E664E2FB57CF
        C34692AC910040A8280982542F1D879349F6E8DFD36C6DBFB50268DF41BA5A82
        C3158A38B9785AF5669CCE5C7BA7F26A55DAFB5750591935E71298119E5A3083
        4A2039210D8C10D98C8A86A90382487BDDAA4138E8F0718D25D4451D8CF02110
        9DEE30CE9C02920B05620536F682268D063CCD70BCBB8E749CC3B9222A59D7C3
        EA8581C3E28247A7FB001F18C359DA6A6BBB968388AFFD73103A1963885996C7
        B3D874F42324840832107970F8DEF51ABEFCEFC339A84AFB74650F2A2B55041C
        FEBD975DB0666196312A607833C3E9DE06461F79240BA4D48564F52E36E73D0E
        CEEEE0190823B1BCD9AA07A7226BFDDBE01216749158BB89BFC2ACC8439FF18B
        38A8FF3A94969076A0159F71948E6FB68FAEFFB01891DA2AB591B37F7186DB4F
        F2771D5F2CAF2ED70000000049454E44AE426082}
      OptionsImage.Spacing = 0
      SpeedButtonOptions.GroupIndex = 77
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 3
      OnDropDownMenuPopup = btnKanbamDropDownMenuPopup
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object TreeListUsuarios: TcxDBTreeList
      Left = 0
      Top = 44
      Width = 212
      Height = 652
      BorderStyle = cxcbsNone
      Bands = <
        item
        end>
      DataController.DataSource = DSAgendaUsuario
      DataController.ImageIndexField = 'IMAGEINDEX'
      DataController.ParentField = 'PARENT'
      DataController.KeyField = 'CODIGO'
      Images = ImgListMenuConfig
      LookAndFeel.NativeStyle = True
      Navigator.Buttons.CustomButtons = <>
      OptionsBehavior.CopyCaptionsToClipboard = False
      OptionsData.Editing = False
      OptionsData.AnsiSort = True
      OptionsData.Deleting = False
      OptionsSelection.CellSelect = False
      OptionsSelection.HideFocusRect = False
      OptionsSelection.InvertSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Headers = False
      OptionsView.TreeLineStyle = tllsNone
      RootValue = -1
      ScrollbarAnnotations.CustomAnnotations = <>
      Styles.Background = EstiloRoxinhoFundo
      Styles.Content = EstiloRoxinhoFundo
      Styles.Inactive = EstiloRoxinhoFonte
      Styles.Selection = EstiloRoxinhoFonte
      Styles.BandBackground = EstiloRoxinhoFundo
      Styles.BandContent = EstiloRoxinhoFundo
      TabOrder = 5
      OnClick = TreeListUsuariosClick
      OnDragOver = TreeListUsuariosDragOver
      object cxDBTreeListColumn1: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'CODIGO'
        Width = 100
        Position.ColIndex = 1
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxDBTreeListColumn2: TcxDBTreeListColumn
        Caption.Text = 'Filtro'
        DataBinding.FieldName = 'DESCRICAO'
        Width = 100
        Position.ColIndex = 0
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxDBTreeListColumn3: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'DescExibicao'
        Width = 100
        Position.ColIndex = 2
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
    end
    object dxLayoutControl6Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      ItemIndex = 2
      ShowBorder = False
      Index = -1
    end
    object LayoutItemScheduler: TdxLayoutItem
      Parent = liCorpo
      AlignHorz = ahClient
      AlignVert = avClient
      Control = Scheduler
      ControlOptions.OriginalHeight = 461
      ControlOptions.OriginalWidth = 1058
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object Layout_Barra: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'Layout Barra'
      CaptionOptions.Visible = False
      ItemIndex = 3
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahRight
      AlignVert = avClient
      Visible = False
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = sbTarefas
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 22
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahRight
      AlignVert = avClient
      Visible = False
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = sbCronograma
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 22
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item17: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahRight
      AlignVert = avClient
      Visible = False
      CaptionOptions.Visible = False
      Control = BtnTimeGrid
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 22
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = scConfig
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 40
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = BtnAtualizarTarefas
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 48
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item16: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahRight
      AlignVert = avClient
      Visible = False
      CaptionOptions.Text = 'cxButton7'
      CaptionOptions.Visible = False
      Control = BtnSkype
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 22
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutControl6Item1: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahRight
      AlignVert = avClient
      Visible = False
      CaptionOptions.Visible = False
      Control = cxButton8
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 22
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object LayoutItemLbTipoViewGantt: TdxLayoutItem
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'Tipo View Gantt:'
      Control = LbTipoViewGantt
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 15
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object Layout_Comandos: TdxLayoutGroup
      CaptionOptions.Text = 'Layout Comandos'
      Visible = False
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      UseIndent = False
      Index = -1
    end
    object LayoutItemTbZoom: TdxLayoutItem
      AlignHorz = ahRight
      AlignVert = avClient
      Control = TbZoom
      ControlOptions.OriginalHeight = 15
      ControlOptions.OriginalWidth = 147
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object dxLayoutControl6Item2: TdxLayoutItem
      Control = cxTrackBar1
      ControlOptions.OriginalHeight = 15
      ControlOptions.OriginalWidth = 147
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object dxLayoutControl6Item3: TdxLayoutItem
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'Quantidade de Eventos:'
      Control = LbQuantEventos
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 84
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object dxLayoutControl6Item5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahRight
      CaptionOptions.Visible = False
      Control = cxButton7
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 22
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object dxLayoutControl6Item4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahRight
      AlignVert = avClient
      Visible = False
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = Btn3CX
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 22
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutControl6Item6: TdxLayoutItem
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'Tipo da Agenda'
      Control = CbTipoAgenda
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
      Parent = dxLayoutControl6Group_Root
      CaptionOptions.Text = 'Separator'
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = LiTopo
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = LbTitulo
      ControlOptions.OriginalHeight = 36
      ControlOptions.OriginalWidth = 88
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      AlignHorz = ahRight
      AlignVert = avBottom
      LayoutDirection = ldHorizontal
      Index = -1
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = LiTopo
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object liedtCentro_Trabalho: TdxLayoutItem
      Parent = Layout_Comandos
      CaptionOptions.Text = 'Setor'
      CaptionOptions.Layout = clTop
      Control = edtCentro_Trabalho
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object LiedtFuncionario: TdxLayoutItem
      Parent = Layout_Comandos
      CaptionOptions.Text = 'Funcion'#225'rio'
      CaptionOptions.Layout = clTop
      Control = edtFuncionario
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 212
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = Layout_Barra
      AlignHorz = ahRight
      CaptionOptions.Visible = False
      Control = btnMenu
      ControlOptions.OriginalHeight = 36
      ControlOptions.OriginalWidth = 26
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object LiedtTipo_Evento: TdxLayoutItem
      Parent = Layout_Comandos
      Visible = False
      CaptionOptions.Text = 'Tipo de Evento'
      CaptionOptions.Layout = clTop
      Control = cxLookupComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 109
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = LiTopo
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = btnNovoCadastro
      ControlOptions.OriginalHeight = 36
      ControlOptions.OriginalWidth = 26
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutSeparatorItem2: TdxLayoutSeparatorItem
      Parent = Layout_Barra
      AlignHorz = ahRight
      CaptionOptions.Text = 'Separator'
      Index = 2
    end
    object dxLayoutItem8: TdxLayoutItem
      AlignHorz = ahRight
      CaptionOptions.Visible = False
      Control = btnDashBoard
      ControlOptions.OriginalHeight = 36
      ControlOptions.OriginalWidth = 26
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = Layout_Barra
      AlignHorz = ahRight
      CaptionOptions.Visible = False
      Control = btnTabela
      ControlOptions.OriginalHeight = 36
      ControlOptions.OriginalWidth = 26
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = Layout_Barra
      AlignHorz = ahRight
      CaptionOptions.Visible = False
      Control = btnKanbam
      ControlOptions.OriginalHeight = 36
      ControlOptions.OriginalWidth = 26
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup5: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Index = -1
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutControl6Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ShowBorder = False
      Index = 2
    end
    object liCorpo: TdxLayoutGroup
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = liCorpo
      AlignVert = avClient
      Control = TreeListUsuarios
      ControlOptions.OriginalHeight = 509
      ControlOptions.OriginalWidth = 212
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object LiTopo: TdxLayoutGroup
      Parent = dxLayoutControl6Group_Root
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutSplitterItem2: TdxLayoutSplitterItem
      Parent = liCorpo
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      CaptionOptions.Text = 'Splitter'
      Index = 1
    end
  end
  object SchedulerDataSource: TDataSource
    DataSet = Agenda
    Left = 237
    Top = 168
  end
  object SchedulerDBStorage: TcxSchedulerDBStorage
    UseActualTimeRange = True
    Reminders.ReminderWindowLookAndFeel.SkinName = ''
    Reminders.OnAlertReminder = SchedulerDBStorageRemindersAlertReminder
    Resources.Items = <
      item
        ImageIndex = 4
        Name = 'Agenda'
        ResourceID = 0
      end>
    Resources.ResourceColor = 'COLOR'
    Resources.ResourceID = 'CODIGO'
    Resources.ResourceImageIndex = 'IMAGEINDEX'
    Resources.ResourceName = 'DESCRICAO'
    CustomFields = <
      item
        FieldName = 'VALOR'
      end
      item
        FieldName = 'CODFINANCEIRO'
      end
      item
        FieldName = 'CODEMPRESA'
      end
      item
        FieldName = 'DT_FATURAMENTO'
      end
      item
        FieldName = 'CODUSUARIO_ALTERADO'
      end
      item
        FieldName = 'CODUSUARIO_CRIADOR'
      end
      item
        FieldName = 'CODUSUARIO_RESPONSAVEL'
      end
      item
        FieldName = 'SOLICITANTE'
      end
      item
        FieldName = 'PRODUTO'
      end
      item
        FieldName = 'CODPRODUTO'
      end
      item
        FieldName = 'CODEQUIPAMENTO'
      end
      item
        FieldName = 'EQUIPAMENTO'
      end
      item
        FieldName = 'CODVENDA'
      end
      item
        FieldName = 'FUNCIONARIO'
      end
      item
        FieldName = 'PRODUCAO_DESC'
      end
      item
        FieldName = 'ATIVO'
      end
      item
        FieldName = 'PROTOCOLO'
      end
      item
        FieldName = 'CODAGENDA_TITULO'
      end
      item
        FieldName = 'PRIORIDADE'
      end
      item
        FieldName = 'CODSETOR'
      end
      item
        FieldName = 'CODSTATUS'
      end
      item
        FieldName = 'MENSALIDADE'
      end
      item
        FieldName = 'CODCONDICAOPAGTO'
      end
      item
        FieldName = 'PESSOA_CLIENTE_CODIGO'
      end
      item
        FieldName = 'PESSOA_CLIENTE_SEQUENCIA'
      end
      item
        FieldName = 'PESSOA_CLIENTE_TIPO'
      end
      item
        FieldName = 'PESSOA_FUNCIONARIO_CODIGO'
      end
      item
        FieldName = 'PESSOA_FUNCIONARIO_SEQUENCIA'
      end
      item
        FieldName = 'PESSOA_FUNCIONARIO_TIPO'
      end
      item
        FieldName = 'VISUALIZA'
      end
      item
        FieldName = 'SKYPE_ID'
      end
      item
        FieldName = 'MENSAGEM'
      end
      item
        FieldName = 'TIPO_AGENDAMENTO'
      end
      item
        FieldName = 'OCORRENCIA'
      end
      item
        FieldName = 'DT_INICIO'
      end
      item
        FieldName = 'DT_FIM'
      end
      item
        FieldName = 'GANTT_DT_INICIO'
      end
      item
        FieldName = 'GANTT_DT_FIM'
      end
      item
        FieldName = 'CODAGENDA_FAQ'
      end
      item
        FieldName = 'CONDICAOPAGTO'
      end>
    Holidays = cxSchedulerHolidays1
    DataSource = SchedulerDataSource
    FieldNames.ActualFinish = 'ACTUAL_FINISH'
    FieldNames.ActualStart = 'ACTUAL_START'
    FieldNames.Caption = 'CAPTION'
    FieldNames.GroupID = 'GROUP_ID'
    FieldNames.EventType = 'EVENTO_TIPO'
    FieldNames.Finish = 'DT_FIM'
    FieldNames.ID = 'CODIGO'
    FieldNames.LabelColor = 'COLOR'
    FieldNames.Location = 'LOCATION'
    FieldNames.Options = 'OPTIONS'
    FieldNames.ParentID = 'PARENT_ID'
    FieldNames.RecurrenceIndex = 'RECURRENCE_INDEX'
    FieldNames.RecurrenceInfo = 'RECURRENCE_INFO'
    FieldNames.ReminderDate = 'REMINDER_DATE'
    FieldNames.ReminderMinutesBeforeStart = 'REMINDER_MINUTES'
    FieldNames.ReminderResourcesData = 'REMINDER_RESOURCES_DATA'
    FieldNames.ResourceID = 'CODUSUARIO_RESPONSAVEL'
    FieldNames.Start = 'DT_INICIO'
    FieldNames.State = 'STATUS'
    FieldNames.TaskCompleteField = 'TAREFA_COMPLETA'
    FieldNames.TaskIndexField = 'TAREFA_INDEX'
    FieldNames.TaskLinksField = 'TAREFA_LINK'
    FieldNames.TaskStatusField = 'TAREFA_STATUS'
    UseIndexedID = True
    Left = 181
    Top = 168
  end
  object DSTarefas: TDataSource
    AutoEdit = False
    DataSet = Agenda_Tarefas
    Left = 237
    Top = 196
  end
  object DS: TDataSource
    DataSet = Agenda_Usuario
    OnDataChange = DSDataChange
    Left = 209
    Top = 140
  end
  object ImageList2: TImageList
    AllocBy = 1
    Left = 265
    Top = 139
    Bitmap = {
      494C010107000900010010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F3F3F300C4C4
      C4009191910083838300868686009F9F9F00DBDBDB00FDFDFD0000000000EAEA
      F800000000000000000000000000000000000000000000000000EFEFEF00BEBE
      BE008E8E8E008282820088888800A4A4A400E1E1E100000000000000000096C6
      9B00DCECDE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E2EFE40016741D0000660800006B0A00006B09000367090083B686000000
      00000000000000000000000000000000000000000000C6C6C60057C44E0051C5
      530058DF58005BEB5B0059E2590054CD550059C95100494C5F002626D5001111
      FF002C2CFF000707AB00000000000000000000000000B4B4B400D8985A00D799
      5B00E8AA5D00EFB35D00E8AA5D00DB9B5B00D7975A00216E2B003AC548001CBE
      2C0033C241004DB9580000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000106F
      18000D7A1F0030BB67001DC6660015C761001EC7660032C57100289D49000067
      0400DEEDDF00000000000000000000000000FEFEFE0053BA4F005CCE510056D4
      550055E15B0058EB5E0055E45C0056D75600469B6B008181FF00B1B1B7006161
      B500BABAB700AFAFB5000D0DB00000000000FEFEFE00CC835700D4855200D88D
      5400E5A05700EDAC5900E5A05700D98F54003B7E27006BC87400A19FA000FDFE
      FD003EC24B0059C6630071C17900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000002680900329C
      4D0040C47A0029C06A003BB06B006CA082006DA3860025BD660040C076005ECA
      8D00046E0D00E0EEE2000000000000000000FEFEFE0054B750004FAF47004696
      3C002F732C00276526002A682800387D31000100AF007C7CFF00DFDFEA00F9F9
      F900000000006161D1008F8FFF00C0C0EA00FEFEFE00C77A5300B37947008F62
      36005B401F0049361800563C1D0079522D0054AB5D00D4CDD40000000000B3D0
      B6009099900060C76A0078CA8100B3D6B7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008BB98F002E93460057C2
      880044C17A002EC06D005CB28100FDFBFC00D5D3D40029BA690042C1790053BF
      84006FCF970000670400000000000000000000000000306E2E005CC04F0054D9
      550057E45A005AEB5D0058E65B0053DD56000706AD007070FF00605FEC000000
      0000F7F7F7007A7BFF007575FF004C4CC4000000000071483000D6935900DD97
      5A00E5A55B00ECAE5B00E5A55B00DE995A0066C1700065C86F0069C973007CCA
      830000000000DEDDDE006BCA750043994C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000067040076D09D005CC5
      890047C07D0039C1740065B28800FBF9FA00D3D3D20035BA700048C07D0056C0
      850068C890003A9B4F0087B88B0000000000FEFEFE0053BA4F005CCD510056D4
      550055E15B0058EA5E0055E45C0055D756000400B3006767FF00FDFDFA00FBFB
      FA0000000000B4B4B5007979FF00E8E8F700FEFEFE00CC825700D4845200D88D
      5400E5A05800ECAB5900E5A05800D98F54001988280064C76D008CCD9300A7D1
      AC009BCAA1000000000068C97200ECF5ED000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000096C39A00298B3C006FC9940053AD
      7B0048AD740040A96C0069A38200FBF9FA00D6D5D5003CA269004BAE760053AE
      7A0064BC890078CE9B000165080000000000FEFEFE0053B84F0050AD47003E8A
      3400265A230023552100235321002E672700479B3A000A0AAE00ABABFF00DEDD
      FF00C5C6FF009B9AFF000B0BAF0000000000FEFEFE00C57D5100AF734500784F
      2C00453017003F2D1400412D16005F3F2200A767400063C06C00A8D1AB00D1D6
      D200B9D2BC0096CF9B000B7A1700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000529A590042A459005FBF8700FCF7
      FA00E9E2E600E8E2E600EFEBED00F9F9F900F4F3F400E8E4E600E8E1E600E7E1
      E40084A591006FCF980000690A000000000000000000387E35005AC14F0052D0
      540057E65A005AED5D0058E85A0054DA550059C04F002C6923000808AD004343
      DF003131CD000A0AAE000000000000000000000000006C442F00D2955900DD99
      5B00E7A85C00EDB15D00E7A85C00DF9B5B00D3955900522D21002D9637006DCC
      76005FC569000B79160000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000519A59003EA4570057C084000000
      0000FFFDFF00FFFDFE00FEFCFD00F8F8F800F8F8F80000000000FFFDFF000000
      000088AE980067D09600006A0C0000000000FEFEFE0053BA4F0059CC510055D4
      550055DF5A0056E45B0055E15A0055D7580058CE520057CB4F00D4D4D4000000
      000000000000000000000000000000000000FEFEFE00CA805600D2835200D98D
      5500E19D5500E1A35200E19D5500DA8F5500D2835200D0805500E7E7E7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007CB482002F95430058C0870056AC
      7B0060B182006AB38B008BAC9800F9F9F900E4E4E5006EAA880070B28C0062B1
      860060BB860068CE91000064060000000000FEFEFE0054B7500056B94C0051B2
      44003D94390036883400398A3600459D3B0053B0480054BE4900D4D4D4000000
      000000000000000000000000000000000000FEFEFE00C77B5300C0814D00A56F
      3C0077542900674B22007250280091623500B87B4900CB7D5000E7E7E7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000026C0D005EC78D0059C2
      860069C890007EC89E0098B7A500FAF9FA00D2D0D00088C4A2007EC89C006DC8
      920061C98C0050B4710018751F0000000000000000003678320054BF50005ED5
      530066E758006AEE5B0067E9590062DD540051BF510035783000F1F1F1000000
      000000000000000000000000000000000000000000006A432D00D0915A00E19D
      5A00EAAC5900EFB45B00EAAC5900E39F5A00D0925A005D3C2600F9F9F9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001A75210049B16A005DC3
      8A0073C897008CC9A500A2B7AC00FAF9F900D1D1D10092C5A70088C8A20073C9
      970067CD96000B741700EFF7F00000000000000000005ABB4E0053CD52006ED8
      52007CE5560080ED59007DE6570075DC530055CE530060CE4E00D3D3D3000000
      000000000000000000000000000000000000FEFEFE00CE875700D1825300E096
      5100ECA95200F1B55300ECA95200E2995100D1825300D6885600E7E7E7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000006704005AC3
      7F0075CA990091C7A800A3B9AC00CFD4D100D0D7D40094C3A9008AC9A3006FCB
      980029934100267A2D000000000000000000FEFEFE0054B7500059BE4F0062DA
      520060E5590060ED5C0061E75A0062DF55005CC3500050BB4900D4D4D4000000
      000000000000000000000000000000000000FEFEFE00C57A5300D4945900E29C
      5900E7A85A00EDB15B00E7A95B00E29E5900D3935900CA7F5200E7E7E7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FAFCFA000067
      04003BA65A0077CC9A0095CAAC00A7CCB8009CCCAF0081C9A10065C68D001881
      2800197420000000000000000000000000000000000051BC4F0054CF530057D4
      540058E05A0059E95D0058E25B0057D7560053CD510056CD5700EAEAEA000000
      00000000000000000000000000000000000000000000C7805700D1815100D88D
      5300E29F5600E9A95700E39F5600D98F5400D2815200CD7E5500F5F5F5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006CA770000067070018852D002996400027933C000F7D1E0000660500C5DD
      C700000000000000000000000000000000000000000000000000AEBBAD0059C0
      500086DE8500A0ECA2008DE28C0063CA5C0083A48100FBFBFB00000000000000
      0000000000000000000000000000000000000000000000000000B3A29600D28E
      5100E8C38500F1DA9E00E8C18300D6945600AEA09600FCFCFC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B8D8BC0086B98B008BBD9100FAFDFB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FCFCFCFFFDFDFDFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FCFCFCFFFDFDFDFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FCFCFCFFFDFDFDFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FCFCFCFFFDFDFDFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E8E8E8FF6E6E8BFF20208BFF0F0F92FF090992FF363682FFB5B5B7FFFAFA
      FAFF000000000000000000000000000000000000000000000000000000000000
      0000E8E8E8FF8B7D6EFF8B5820FF92550FFF925409FF826136FFB7B6B5FFFAFA
      FAFF000000000000000000000000000000000000000000000000000000000000
      0000E8E8E8FF6E8B80FF208B63FF0F9261FF099262FF368269FFB5B7B6FFFAFA
      FAFF000000000000000000000000000000000000000000000000000000000000
      0000E7E7E7FF6D6D8BFF20208BFF0F0F92FF090992FF363681FFB6B6B7FFFAFA
      FAFF000000000000000000000000000000000000000000000000FEFEFEFF8282
      96FF0A0A8FFF00008DFF000090FF000094FF000097FF00009BFF00009EFF1010
      97FFE0E0E0FF0000000000000000000000000000000000000000FEFEFEFF968C
      82FF8F4C0AFF8D4800FF904C00FF945000FF975500FF9B5900FF9E5E00FF9762
      10FFE0E0E0FF0000000000000000000000000000000000000000FEFEFEFF8296
      8EFF0A8F59FF008D56FF00905AFF00945FFF009764FF009B69FF009E6FFF1097
      71FFE0E0E0FF0000000000000000000000000000000000000000FEFEFEFF7E7E
      95FF0A0A8FFF00008DFF020294FF08089EFF03039DFF00009BFF00009EFF1010
      96FFE1E1E1FF000000000000000000000000000000000000000063638EFF0000
      92FF000095FF000097FF00009AFF00009EFF0000A1FF0000A4FF0000A8FF0000
      ABFF0101AFFFE0E0E0FF000000000000000000000000000000008E7963FF9247
      00FF954B00FF974F00FF9A5300FF965706FF9A5900FFA46100FFA86600FFAB6B
      00FFAF7001FFE0E0E0FF00000000000000000000000000000000638E7DFF0092
      57FF00955BFF009760FF009A65FF009E69FF00A16FFF00A474FF00A879FF00AB
      7EFF01AF84FFE0E0E0FF0000000000000000000000000000000062628FFF0000
      92FF11119CFFB6B6BFFFFCFCFCFF0000000000000000B1B1B6FF0000A8FF0000
      ABFF0101AFFFE1E1E1FF000000000000000000000000BEBEC2FF00009AFF0000
      9DFF00009FFF0000A1FF0000A5FF0000A8FF0000ABFF0000AEFF0000AFFF0000
      B5FF0000B9FF1010ADFFFBFBFBFF0000000000000000C2C0BEFF9A4A00FF9D4E
      00FF9F5200FFA25700FFA45B00FFFFFFFFFFE7DBC8FFAE6B00FFB27000FFB575
      00FFB97B00FFAD7B10FFFBFBFBFF0000000000000000BEC2C0FF009A5EFF009D
      62FF009F66FF00A16AFF00A36FFF00A874FF00AB79FF00AE7FFF00B284FF00B5
      89FF00B98FFF10AD8BFFFBFBFBFF0000000000000000BBBBC0FF00009AFF2222
      A1FFF9F9F9FF000000000000000000000000EAEAEAFF0000AEFF0000B2FF0101
      B5FF0000B9FF1111ABFFFBFBFBFF00000000FEFEFEFF1F1FACFF0000A6FF0000
      A8FF8787CFFFF4F4FAFF0000ACFF0000B3FF0000B6FF4040BBFFFFFFFFFF0000
      BCFF0000C2FF0000C5FFBCBCBEFF00000000FEFEFEFFAC631FFFA65200FFA856
      00FFAB5B00FFAD6000FFAF6500FFFFFFFFFFE9DCC8FFB97500FFBC7B00FFBF80
      00FFC28600FFC58B00FFBEBDBCFF00000000FEFEFEFF1FAC78FF00A66AFF00A8
      6EFF00A971FFDAEEE8FFF4FAF8FF00AF7DFF00B685FF00B98AFF00BC8FFF00BF
      94FF00C299FF00C59EFFBCBEBEFF00000000FEFEFEFF1E1EACFF0404A7FFEDED
      EDFF000000000000000000000000FAFAFAFF0B0BB0FF0000B9FF0000BCFFE3E3
      E3FF2D2DAEFF0000C5FFBFBFC1FF00000000EEEEEEFF0000B0FF0000B2FF0000
      B4FF0000B3FFEFEFF8FFF4F4FAFF0000B9FF4040C0FFFFFFFFFF3535C2FF0000
      C9FF0000CCFF0000CEFF3838A5FF00000000EEEEEEFFB05700FFB25B00FFB460
      00FFB66500FFB96A00FFBB6F00FFFFFFFFFFEADEC8FFC48100FFC68600FFC98C
      00FFCC9100FFCE9700FFA58938FF00000000EEEEEEFF00B072FF00B275FF00B2
      78FFD9EFE9FFFDFEFEFFEFF8F6FFF4FAF9FF00BC8DFF00C495FF00C69AFF00C9
      9EFF00CCA3FF00CEA8FF38A592FF00000000EDEDEDFF0000B0FF3F3F9CFF0000
      000000000000000000000000000047479FFF0000C1FF0000C4FFADADB9FFFEFE
      FEFFEAEAECFF0000CEFF3B3BA4FF00000000BDBDC5FF0000BCFF0000BEFF0000
      C0FF0000C2FF0000C1FFEFEFF9FFF4F4FBFFFFFFFFFF3535C7FF0000D0FF0000
      D2FF0000D5FF0000D7FF0909DAFFFEFEFEFFC5C1BDFFBC6300FFBE6800FFBB77
      1FFFC38F46FFC59246FFC69646FFFFFFFFFFF0E8D7FFCBA046FFCCA446FFCEA7
      46FFCC9603FFD7A100FFDAA909FFFEFEFEFFBDC5C2FF00BC7EFF00BE82FF8AD8
      C1FFFDFEFEFF00BE89FF00C390FFEFF9F6FFF4FBF9FF00C99CFF00D0A4FF00D2
      A9FF00D5ADFF00D7B1FF09DAB7FFFEFEFEFFB9B9C2FF0000BCFF9D9DACFF0000
      00000000000000000000A4A4B2FF0000C9FF0000CCFF5B5BA5FF00000000FEFE
      FEFFFAFAFAFF0202D7FF0B0BD9FFFEFEFEFFACACBAFF1515CCFF0B0BCCFF0000
      CBFF0000CDFF0000CFFF4040C8FFFFFFFFFFF4F4FBFF1111D5FF1515DCFF1515
      DEFF1515DFFF1515E1FF1E1EE4FFFEFEFEFFBAB4ACFFCC7B15FFCC7A0BFFFEFE
      FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFE5D297FFE1B115FFE4B81EFFFEFEFEFFACBAB6FF15CC93FF0BCC92FF00C9
      90FF00C993FF00CF99FF00D19EFF00CF9FFFEFFAF7FFF4FBFAFF14D7B0FF15DE
      B9FF15DFBCFF15E1C0FF1EE4C5FFFEFEFEFFA9A9B8FF1515CCFFB4B4B9FF0000
      000000000000E1E1E1FF0A0AD3FF0000D3FF1919C1FFFBFBFBFF00000000FEFE
      FEFFFEFEFEFF1B1BE2FF1E1EE4FFFEFEFEFFDFDFE1FF2E2EDBFF2E2EDCFF2E2E
      DDFF2E2EDFFF5E5ED4FFFFFFFFFF5656D3FFF1F1FAFFF5F5FCFF2D2DE1FF2E2E
      E8FF2E2EE9FF2E2EEAFF3636DCFF00000000E1E0DFFFDB942EFFDC972EFFD998
      2DFFD6982CFFD79C2CFFD79F2CFFFFFFFFFFF0E7D0FFDCAB2CFFDDAF2CFFDFB2
      2CFFE7BB2EFFEAC12EFFDCB836FF00000000DFE1E0FF2EDBA9FF2EDCACFF2EDD
      AFFF2EDFB2FF2EE0B5FF2EE1B8FF2EE3BCFF2DE0BBFFF1FBF9FFF5FCFBFF2DE2
      C3FF2EE9CAFF2EEACDFF36DCC3FF00000000DCDCDEFF2E2EDBFF6F6F9CFF0000
      0000F6F6F6FF2929DCFF2E2EE1FF2828E2FFF7F7F7FF00000000000000000000
      0000F7F7F7FF2F2FEAFF3B3BD9FF00000000FBFBFBFF4D4DE8FF4D4DE8FF4D4D
      E9FF6E6EDEFFFFFFFFFF6C6CDDFF4C4CEDFF4B4BE9FFF3F3FBFFF6F6FCFF4C4C
      EEFF4D4DF1FF4D4DF2FF7A7AAAFF00000000FBFBFBFFE8AB4DFFE8AE4DFFE9B1
      4DFFEAB44DFFEBB84DFFEBBA4CFFFFFFFFFFF2EBD6FFEFC44DFFEFC74DFFF0CA
      4DFFF1CD4DFFF2CF4DFFAAA07AFF00000000FBFBFBFF4DE8BDFF4DE8BFFF4DE9
      C2FF4DEAC4FF4DEBC7FF4DECC9FF4DEDCCFF4DEECEFF4BEACDFFF3FBFAFFF6FC
      FBFF4CEFD6FF4DF2D9FF7AAAA3FF00000000FBFBFBFF4D4DE8FF3D3DE0FFF8F8
      F8FF4646BDFF4D4DEBFF4C4CECFFE6E6E7FF0000000000000000000000000000
      0000A0A0B4FF4D4DF2FF7F7FAAFF00000000000000006363BDFF6D6DF2FF6D6D
      F2FF6D6DE5FF8181E4FF6C6CF4FF6D6DF4FF6D6DF5FF6A6AF1FFB0B0EDFF6C6C
      F5FF6D6DF7FF7272F7FFF1F1F1FF0000000000000000BD9C63FFF2C36DFFF2C5
      6DFFF3C86DFFF3CA6DFFF3CC6CFFFFFFFFFFF4EDDBFFF6D46DFFF6D66DFFF6D8
      6DFFF7DA6DFFF7DD72FFF1F1F1FF000000000000000063BDA6FF6DF2D0FF6DF2
      D2FF6DF3D4FF6DF3D6FF6DF4D8FF6DF4DAFF6DF5DCFF6DF6DDFF6AF1DBFFB0EE
      E4FF6CF6E1FF72F7E5FFF1F1F1FF00000000000000005D5DBDFF6D6DF2FF4848
      9BFF6D6DF3FF6D6DF3FFB2B2BFFF00000000000000000000000000000000F0F0
      F0FF6F6FF7FF7373F7FFF2F2F2FF0000000000000000FBFBFBFF8585F7FF8C8C
      F8FF8C8CF9FF8C8CF9FF8C8CF9FF8C8CFAFF8C8CFAFF8C8CFAFF8C8CFAFF8C8C
      FBFF8C8CFBFF9393B1FF000000000000000000000000FBFBFBFFF7D185FFF8D6
      8CFFF9D88CFFF9D98CFFF8DA8CFFFFFFFFFFF5EFDEFFFAE08CFFFAE28CFFFBE3
      8CFFFBE58CFFB1AB93FF000000000000000000000000FBFBFBFF85F7DDFF8CF8
      E0FF8CF9E1FF8CF9E3FF8CF9E4FF8CFAE5FF8CFAE7FF8CFAE8FF8CFAE9FF8CFB
      EAFF8CFBEBFF93B1ADFF000000000000000000000000FBFBFBFF8686F7FF8C8C
      F8FF8C8CF9FF6E6EAEFF00000000000000000000000000000000DEDEDEFF7B7B
      F1FF8C8CFBFF9595B2FF00000000000000000000000000000000F0F0F2FFA3A3
      FCFFA9A9FCFFA9A9FCFFA9A9FCFFA9A9FCFFA9A9FCFFA9A9FDFFA9A9FDFFA9A9
      FDFF7A7AB6FF0000000000000000000000000000000000000000F2F1F0FFFCE1
      A3FFFCE4A9FFFCE5A9FFFCE7A9FFF9E5A7FFFBE8A8FFFDEAA9FFFDEBA9FFFDEC
      A9FFB6AA7AFF0000000000000000000000000000000000000000F0F2F1FFA3FC
      E9FFA9FCEBFFA9FCECFFA9FCEDFFA9FCEEFFA9FCEFFFA9FDEFFFA9FDF0FFA9FD
      F1FF7AB6ADFF0000000000000000000000000000000000000000F0F0F1FF9E9E
      FCFFA9A9FCFF8383F6FF6F6FA0FFA5A5AEFF8B8BA5FF6D6DC5FFAAAAFDFFA9A9
      FDFF7F7FB6FF000000000000000000000000000000000000000000000000FCFC
      FCFF8D8DC8FFC0C0FEFFC0C0FEFFC0C0FEFFC0C0FEFFC0C0FEFFA7A7FCFFCECE
      D5FF00000000000000000000000000000000000000000000000000000000FCFC
      FCFFC8B78DFFFEEEC0FFFEEFC0FFFEEFC0FFFEF0C0FFFEF1C0FFFCEAA7FFD5D3
      CEFF00000000000000000000000000000000000000000000000000000000FCFC
      FCFF8DC8BCFFC0FEF3FFC0FEF3FFC0FEF4FFC0FEF4FFC0FEF5FFA7FCEFFFCED5
      D4FF00000000000000000000000000000000000000000000000000000000FBFB
      FBFF7E7EC8FFC0C0FEFFC0C0FEFFC0C0FEFFC0C0FEFFC0C0FEFFB4B4FBFFD0D0
      D5FF000000000000000000000000000000000000000000000000000000000000
      000000000000FDFDFDFFE5E5E9FFB4B4C9FFC8C8D4FFF5F5F6FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FDFDFDFFE9E8E5FFC9C4B4FFD4D1C8FFF6F5F5FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FDFDFDFFE5E9E8FFB4C9C5FFC8D4D2FFF5F6F5FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FDFDFDFFE5E5E9FFB3B3C8FFC8C8D5FFF5F5F6FF000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FFFFC02FC0670000F01F800380030000
      E007000100010000C00300080020000080038010800800008001000800040000
      000100010001000000018003800300001051001F001F00000001001F001F0000
      8001801F801F00008001801F001F0000C003001F001F0000C007801F801F0000
      F00FC03FC03F0000FC3FFFFFFFFF0000FE7FFE7FFE7FFE7FF00FF00FF00FF00F
      C007C007C007C007C003C003C003C18380018001800187010001000100010E01
      0001000100011E010000000000001C2000000000000018200001000100011071
      00010001000100F180018001800181E180038003800383C3C007C007C007C007
      E00FE00FE00FE00FF83FF83FF83FF83F00000000000000000000000000000000
      000000000000}
  end
  object cxSchedulerHolidays1: TcxSchedulerHolidays
    Locations = <>
    Left = 181
    Top = 196
  end
  object UCControls1: TUCControls
    GroupName = 'Agenda'
    UserControl = FrmPrincipal.UserControl
    Components = ''
    MostraMessagemErroValidacao = False
    Left = 293
    Top = 224
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 292
    Top = 168
    object Mostrar1: TMenuItem
      Caption = 'Mostrar Estado'
      object menuFaturados: TMenuItem
        Caption = 'Finalizados'
        OnClick = menuMostrarEstadoClick
      end
      object menuEmAberto: TMenuItem
        Caption = 'Em Aberto'
        Checked = True
        OnClick = menuMostrarEstadoClick
      end
      object menuTodos: TMenuItem
        Caption = 'Todos'
        OnClick = menuMostrarEstadoClick
      end
    end
    object Configuraes1: TMenuItem
      Caption = 'Configura'#231#245'es'
      object Abrircomosistema1: TMenuItem
        Caption = 'Abrir com o sistema'
        OnClick = Abrircomosistema1Click
      end
      object Permitirfaturamentoemdata1: TMenuItem
        Caption = 'Permitir faturamento em data diferente'
        Visible = False
      end
      object TransAgDtAtual: TMenuItem
        Caption = 'Transferir automaticamente agendamento para a data atual'
        OnClick = TransAgDtAtualClick
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object Cadastrarnovaagenda1: TMenuItem
        Caption = 'Cadastrar nova agenda'
        OnClick = Cadastrarnovaagenda1Click
      end
      object AlterarOpesdaAgenda1: TMenuItem
        Caption = 'Alterar Op'#231#245'es da Agenda'
        OnClick = AlterarOpesdaAgenda1Click
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object Ocultaragendamentosnogrid1: TMenuItem
        Caption = 'Ocultar agendamentos do grid'
        OnClick = Ocultaragendamentosnogrid1Click
      end
      object Visualizaragendamentospor1: TMenuItem
        Caption = 'Visualizar agendamentos por'
        object VisualizarPorUsuario: TMenuItem
          Caption = 'Usu'#225'rio'
          OnClick = VisualizarPorUsuarioClick
        end
        object VisualizarPorTitulo: TMenuItem
          Caption = 'T'#237'tulo'
          OnClick = VisualizarPorUsuarioClick
        end
        object VisualizarPorEstagio: TMenuItem
          Caption = 'Est'#225'gios'
          OnClick = VisualizarPorUsuarioClick
        end
      end
      object V1: TMenuItem
        Caption = 'Vincular setor automaticamente'
        OnClick = V1Click
      end
    end
    object N2: TMenuItem
      Caption = '-'
      Visible = False
    end
    object Cronogramametas1: TMenuItem
      Caption = 'Produ'#231#227'o -  (Cronograma)'
      Visible = False
      OnClick = Cronogramametas1Click
    end
    object Agendamento1: TMenuItem
      Caption = 'Tarefas - (Agendamento)'
      Visible = False
      OnClick = Agendamento1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Desbloquear1: TMenuItem
      Caption = 'Desbloquear'
      Visible = False
      OnClick = Desbloquear1Click
    end
    object AgruparasTarefas1: TMenuItem
      Caption = 'Agrupar as Tarefas'
      Visible = False
      OnClick = AgruparasTarefas1Click
    end
    object SalvarFiltroComo1: TMenuItem
      Caption = 'Salvar Filtro Como...'
      OnClick = SalvarFiltroComo1Click
    end
    object Criarlistadeprospeco1: TMenuItem
      Caption = 'Criar lista de prospec'#231#227'o'
      Visible = False
      OnClick = Criarlistadeprospeco1Click
    end
    object Relatrio1: TMenuItem
      Caption = 'Relat'#243'rio'
      OnClick = Relatrio1Click
    end
    object GerarContratosWR1: TMenuItem
      Caption = 'Gerar Contratos - WR'
    end
    object S1: TMenuItem
      Caption = 'Selecionar Editor'
      Visible = False
      object P1: TMenuItem
        Caption = 'Padr'#227'o'
        Visible = False
        OnClick = P1Click
      end
      object R1: TMenuItem
        Caption = 'R'#225'pido'
        OnClick = R1Click
      end
      object C1: TMenuItem
        Caption = 'Completo'
        OnClick = C1Click
      end
    end
    object G2: TMenuItem
      Caption = 'Gerar Agendamentos de Emails Recebidos'
      OnClick = G2Click
    end
    object A4: TMenuItem
      Caption = 'Ajustes de Prazos'
      object C2: TMenuItem
        Caption = 'Corrigir Datas do Gantt'
        OnClick = C2Click
      end
      object R3: TMenuItem
        Caption = 'Recalcular Hor'#225'rios do Gantt com Prazo Deinido'
        object N51: TMenuItem
          Tag = 5
          Caption = '5 Minutos'
          OnClick = N51Click
        end
        object N11: TMenuItem
          Tag = 15
          Caption = '15 Minutos'
          OnClick = N51Click
        end
        object N31: TMenuItem
          Tag = 30
          Caption = '30 Minutos'
          OnClick = N51Click
        end
        object N41: TMenuItem
          Tag = 45
          Caption = '45 Minutos'
          OnClick = N51Click
        end
        object N12: TMenuItem
          Tag = 60
          Caption = '1 Hora'
          OnClick = N51Click
        end
      end
    end
    object F1: TMenuItem
      Caption = 'Fechar Lote'
      Visible = False
      OnClick = F1Click
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      OnClick = Fechar1Click
    end
  end
  object ImgListMenuConfig: TImageList
    ColorDepth = cd32Bit
    Left = 237
    Top = 139
    Bitmap = {
      494C010129002D00040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000040000000B0000000010020000000000000B0
      0000000000000000000000000000000000000000000000000000000000000000
      0000010B032205260D59295635AC449158F1439A5BFA3C8D51F2153B1E8A051A
      0A44000000020000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000081B0D5100000005000000000005
      01211F6532CA69AD7EFB86C298FF88C499FF79BE8DFF6BB881FF51A768FF3383
      47EC0A3016730000000700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003C8D51FD2E673DCE072B11753278
      45E49DCFAAFF86C496FF5DB173FF42A45CFF39A054FF40A35BFF4BA764FF46A6
      5FFF30914AFE10461FA600000006000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006AA87AFDB0D8BBFF6FAF80FE9ECE
      ABFF6EB883FF369E52FF278F43FF197833FD1A7934FC288942FE329C4EFF369E
      52FF329C4EFF2B8D46FE0929116D000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000065A375FEB3DCBEFF9FCFACFF5EB1
      75FF2B9848FF2A8442FF12381B970000000C0000000701090337165728C92E93
      4AFE329B4EFF2B8A44FC09311292000200130000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000619E72FEAAD7B7FF76BD8AFF319B
      4DFF329B4EFF2F944AFF165426CC0013044B0000000000000000010B042D1656
      28D019602DE4092813720000000E000200170000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005D996CFE96CDA4FF2E994BFF319D
      4EFF2E9349FF1F6C34E8072A1184000200150000000000000000000000000003
      00230000000C0006021D1A3F248A2A723EEF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000599569FE5FB476FF2F9C4CFF237F
      3CFE0E411BB60211064400000002000000000000000000000000000000000000
      000002190854396845C484BD94FE34864BFE0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003B844EFE308F4AFE144520C00213
      0751000000000000000000000000000000000000000000000001021307432153
      2EB782B590FEBBDFC4FF4EAB67FF257C3CFE0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001C5B2EE9082A11800003011A0000
      0009000501210000000000000000000000000003001206301381588D66E79FCA
      AAFFACD8B8FF87C497FF2C9B4AFF26783CFE0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000C0000000B0E3219694B8C
      5CDD427F54D2000E0431000000000000000001150746285E36C691BF9EFF98CB
      A6FF85C395FF40A25AFF329E4FFF25733BFE0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000001000E0E411D8958A76DFAEDF6
      EFFFC9E1D0FE2B6A3CCC000A03410000000B0000000C0A2D1390488B59FF82C0
      93FF58AE6EFF309B4CFF33A050FF25723AFE0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000B2D1366238D40FD79BE
      8BFFCCE6D2FFBCDEC6FF5BA16EFE367E45FC39804DFD62A373FF7BC18FFF57AF
      6EFF2C9749FF298341FF32994DFF26733BFE0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000510431CA0258A
      40FE55AE6CFF8FC89EFFA5D4B3FF94CBA3FF82C294FF72BC87FF4BA964FF339D
      4FFF145826EC08220F7E10471FD11B5C2DFE0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000100080A2B
      12761D6B33E8258C41FF2C9949FF3AA255FF3BA156FF2E9348FF227F3BFD0E45
      1ED10004002F000000000000000607140B560000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0002021106440D2F1893226935F224723AFD226B34F6154221BB011609600007
      0228000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000422221FF3A1615FF391515FF3915
      15FF412120FF0000000000000000000000000000000000000000000000000000
      00041611142F5E4A52784A3741752113195D3B2B33663D2F365A231C20360705
      050D000000000000000000000000000000000000000000000000000000000000
      0000000000010000000100000003000000030000000300000003000000010000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000442221FF564443FF534342FF5242
      41FF391515FF0000000000000000000000000000000000000000000000070000
      00345F4C57A6DDB6CAFFC796ADFBA9728CF3D0A7BBF9D4AEC0F8BB98AAE87A5A
      70B423131F420000000000000000000000001F1F1F304E4E4E7A626262996D6D
      6DAA757575B7787878BA7F7F7FC6808080C8808080C87F7F7FC6787878BA7575
      75B76D6D6DAA626262994E4E4E7A1F1F1F300000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000007900FF000000000000000000000000442221FF574646FF564544FF5544
      43FF391515FF00000000000000000000000000000000000000020000001F0000
      005187737DC4E3BFD1FFCC97B0FFCD99B1FFE0BBCEFFE3C0D1FFC399B4FFB980
      B0FF8F527FE02C2328450000000000000000020202040808080F0F0F0F1A1616
      16241A1A1A2921212133212121331F2121331987B9D02558708A0F9AD7EC243F
      4B62161616240F0F0F1A0808080F020202040000000000000000CDC4B9FFAC9D
      8BFFAC9D8BFFAC9D8BFFAC9D8BFFCDC4B9FFAC9D8BFFAC9D8BFFAC9D8BFFAC9D
      8BFFCDC4B9FF0000000000000000000000000000000000000000000000000079
      00FF38C338FF007900FF0000000000000000452221FF5B4746FF574646FF5645
      44FF3B1615FF0000000000000000000000000000000000000005000000240403
      0349A38D98CEE3BFD1FFD1A1B8FFD2A4BAFFE2BFD0FFE4C4D3FFBB8EAEFFB576
      A9FFC188AFFF9B818EBE0604050F000000000000000000000000000509110003
      060C000000000003050A00060A13000000001A2F375248616EAD486470AC0003
      03050003070D0005081000000000000000000000000000000000AC9D8BFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFC3B8ABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFAC9D8BFF0000000000000000000000000000000000000000007900FF38C3
      38FF38C338FF38C338FF007900FF43201FFF4F3030FF5B4746FF5C4847FF5946
      46FF4C3131FF422221FF00000000000000000000000000000003000000140806
      0733B19CA5CFE6C6D6FFD4A7BDFFDAB2C6FFE3C1D2FFE3C5D4FFB37CA4FFB26F
      A3FFDBB6CBFFD0ABBDF73A252F5C00000000000000000004070E00A1ECFE0080
      BCCC00000000006DA3B100A3EEFF00101A290216223500A3EEFF03699AA80000
      00000088C7D800A1EBFD00010306000000000000000000000000AC9D8BFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFC3B8ABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFAC9D8BFF00000000000000000000000000000000007900FF38C338FF3EC5
      3EFF007900FF3EC53EFF3EC53EFF007900FF5D4645FF5D4746FF5D4847FF5C48
      47FF5B4746FF3C1616FF00000000000000000000000000000000000000010605
      0511B0A1A9BFEED9E4FFD6AABFFFDEB8CBFFE2BFD0FFD4ACC1FFA1588FFFBB7E
      A9FFE6C8D7FFDBB4C7FF664D59830000000000000000000103062886A9C22467
      819A010204071B5167793490B4D401080D14010B111A3293B7D61A4D61730102
      0407266D89A12881A6BE00010102000000000000000000000000AC9D8BFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFC3B8ABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFAC9D8BFF0000000000000000000000000000000000000000007900FF0079
      00FF00000000007900FF47C847FF47C847FF007900FF5F4746FF5F4A48FF5F4A
      49FF5E4A49FF3E1716FF00000000000000000000000000000000000000000000
      00005E565A67D5B8C8F0DAB2C6FFDDB6CAFFDEB7C9FFD5AFC4FFA66394FFD1A3
      BDFFEAD1DDFFE2C1D1FF65525B7400000000000000000000000024262641646C
      71A79C9D9EF4687074AD3C3C3D5C00000000000000003C3E3E5E697176AF9A9C
      9DF1666C71A72627273F00000000000000000000000000000000AC9D8BFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFC3B8ABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFAC9D8BFF0000000000000000000000000000000000000000000000000000
      00000000000000000000007900FF51CB51FF51CB51FF007900FF624B4AFF634C
      4BFF634C4BFF411716FF00000000000000000000000000000000000000000000
      0000030203043F343949B69CA8CCDCB5C8FFD3B7CDFFB0B2D4FF9B98C6FFDDBF
      D2FFEDD6E1FFE6CBD8FD4E424857000000000000000000000000000000000459
      8593069EE6FD04699BAC000000000000000000000000000000000377B0C3059E
      E6FD034B6E7C0000000000000000000000000000000000000000CDC4B9FFC3B8
      ABFFC3B8ABFFC3B8ABFFC3B8ABFFE7E3DDFFD8D1C6FFD8D1C6FFD8D1C6FFD8D1
      C6FFCDC4B9FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000007900FF5BCE5BFF5BCE5BFF007900FF6A4F
      4EFF695150FF4D2625FF00000000000000000000000000000000000000000000
      0000000000000000000023202025958398BF8095D0FF809FD7FF8FABDEFFC4B7
      D5FFECD4DFFFD6C0CAE92824262E00000000000000000000000000000000036C
      9BA500B2F7FF037EB3BD00000000000000000000000000000000038FCAD500B1
      F7FF025D858D0000000000000000000000000000000000000000AC9D8BFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFD8D1C6FF9D8B74FF897359FF897359FF8973
      59FF897359FFB8AC9CFF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000007900FF65D165FF007900FF7456
      54FF522726FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000020294164678CCCFD9BB6E4FFB1C8EDFFB4BD
      DCF7B396A7D678666F880605050600000000000000000000000000000000040C
      0F1691ABB4E85B767FA245494A6F4747476F4747476F45494B6F5F7B86A98CA6
      AFE1020A0C110000000000000000000000000000000000000000AC9D8BFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFD8D1C6FF897359FFF6C48DFFF7C584FFFCC2
      77FFF1DCC2FF897359FF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000007900FF4D1A19FF4E1A
      19FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000002060A242F4C7FC66C90CDFF95B1E0FFC4D6F2FFB9C8
      DDE8292930360302020400000000000000000000000000000000000000000000
      0000434343595A5B5B774E5C647F96A7B1E790A3AEE04E5B627E5A5B5B774141
      4156000000000000000000000000000000000000000000000000AC9D8BFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFD8D1C6FF897359FFF3C997FFF0A65FFFF2A5
      52FFF1DCC2FF897359FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000006D2E2DFF9C6C6BFF976967FF9167
      65FF531C1BFF0000000000000000000000000000000000000000000000000000
      000000000000000000000717268A2A4E83FF5576ABFF9BB6E3FFDAE7FAFFC3CF
      DDE31A1D21220000000000000000000000000000000000000000000000000000
      00000000000000000000005C8C9A009EEBFF009EEBFF00537D8B000000000000
      0000000000000000000000000000000000000000000000000000AC9D8BFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFD8D1C6FF897359FFF2CFA6FFEEAF6FFFF0A6
      5EFFF1DCC2FF897359FF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000763230FFAF7776FFA77270FF9F6F
      6DFF581D1CFF0000000000000000000000000000000000000000000000000000
      000000000000000000090B202EBE17354AFF395A85FF7290B8FF9EB3CAFFA1B1
      C3E416191C230000000000000000000000000000000000000000000000000000
      00000000000000000000006898A300ACF4FF00ACF4FF005E8993000000000000
      0000000000000000000000000000000000000000000000000000CDC4B9FFAC9D
      8BFFAC9D8BFFAC9D8BFFAC9D8BFFDDD6CCFF897359FFF1DCC2FFF1DCC2FFF1DC
      C2FFF1DCC2FF897359FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000009D504FFFBE8482FFB4807BFFAC78
      76FF6D312FFF0000000000000000000000000000000000000000000000000000
      00000000000000000209223848BC31546DFF3E6586FF335874FF25455CFF2840
      52DB0307081C0000000000000000000000000000000000000000000000000000
      0000000000000000000008486368148DBBBF148DBBBF073F575D000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B8AC9CFF897359FF897359FF8973
      59FF897359FFB8AC9CFF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009F5150FF7C3432FF7933
      32FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000040F144A173A53E12E5C80FF0E3652FF0C2C43FD0F1E
      2B88000000020000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000010611184909253BB209273CCD0F222E860204
      0613000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AC7675FFA05B59FF9F5A59FF9F5A
      59FFA97473FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A57170FF9D5957FF9E5958FF9F5A
      59FFA97473FF000000000000000000000000000000000000000000000000AC75
      74FFA05A58FF9F5958FF9F5958FFA97372FF0000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AC75
      74FFA05A58FF9F5958FF9F5958FFA97372FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AE7876FFBFADACFFBDACABFFBCAB
      AAFF9F5A59FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A4716FFFB9A8A7FFBAA9A8FFBBAA
      A9FF9F5A59FF000000000000000000000000000000000000000000000000AF78
      76FFC0AEADFFBDACABFFBBAAA9FF9E5857FF0000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AF78
      76FFC0AEADFFBDACABFFBBAAA9FF9B5756FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000005BE6FFD8D8D8FF00000000AC7775FFC1B1B0FFBFAEADFFBEAD
      ACFF9F5A59FF00000000000000000000000000000000000000007EB2FFFF0065
      FFFF0065FFFF0065FFFF0065FFFF7EB2FFFFA2706EFFBAAAA9FFBCACABFFBDAC
      ABFF9F5A59FF000000000000000000000000000000000000000000000000B27A
      78FFC3B2B1FFC0AFAEFFBAA9A8FF995655FF00000000005C00FF000000000000
      000000000000000000000000000000000000000000000000000000000000B27A
      78FFC3B2B1FFC0AFAEFFB8A8A7FF915150FFD8D8D8FF005AE6FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000005BE6FF005BE6FFCFCFCFFFA67371FFC1AFAEFFC1B1B0FFC0AF
      AEFFA15B5AFF000000000000000000000000000000007EB2FFFF0065FFFF0065
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF0065FFFFA1706EFFBBAAA9FFBEADACFFBEAE
      ADFFA15B5AFF000000000000000000000000000000000000000000000000B67D
      7BFFC7B5B4FFC3B2B1FFB2A3A2FF925251FF00000000005C00FF005C00FF0000
      000000000000000000000000000000000000000000000000000000000000B67D
      7BFFC7B5B4FFC3B2B1FFAF9F9EFF834948FF005AE6FF005AE6FFC1C1C1FF0000
      00000000000000000000000000000000000000000000000000000059E6FF005B
      E6FF005BE6FF005BE6FF2695FFFF005BE6FFA08181FFB9A9A8FFC3B1B0FFC2B1
      B0FFB79494FFAB7674FF0000000000000000000000000065FFFF0065FFFF7EB2
      FFFFFFFFFFFF7EB2FFFFFFFFFFFF946664FFA88888FFBBAAAAFFC1B0AFFFC2B0
      AFFFB69393FFAB7674FF00000000000000000000000000000000BE8482FFC59F
      9FFFCBB9B8FFB2A2A1FF005C00FF005C00FF005C00FF005C00FF5ADE5AFF005C
      00FF000000000000000000000000000000000000000000000000BE8482FFC59F
      9FFFCBB9B8FFB7A6A5FF9F9090FF005AE6FF2595FFFF005AE6FF005AE6FF005A
      E6FF0058E6FF00000000000000000000000000000000000000000059E6FF3BAC
      FFFF30A0FFFF2D9CFFFF2998FFFF2695FFFF005BE6FFAF9F9EFFC0AEADFFC5B3
      B2FFC5B3B2FFA45D5BFF0000000000000000000000000065FFFF0065FFFF7EB2
      FFFFFFFFFFFF0065FFFF7EB2FFFF8A5F5FFFAC9D9CFFBAA9A8FFC2B0AFFFC4B2
      B1FFC4B2B1FFA45D5BFF00000000000000000000000000000000C28786FFD4C1
      C0FFD0BDBCFFAE9E9DFF005C00FF5ADE5AFF5ADE5AFF5ADE5AFF5ADE5AFF5ADE
      5AFF005C00FF0000000000000000000000000000000000000000C28786FFD4C1
      C0FFD0BDBCFFAB9B9AFF005AE6FF2C9EFFFF2898FFFF2C9CFFFF2FA0FFFF33A4
      FFFF0058E6FF00000000000000000000000000000000000000000059E6FF48BA
      FFFF3BACFFFF30A0FFFF2D9CFFFF2998FFFF2695FFFF005BE6FFBFAEADFFC8B6
      B5FFC9B7B6FFA75F5DFF0000000000000000000000000065FFFF0099FFFF0065
      FFFFFFFFFFFF0065FFFF0065FFFF3E5EACFFA39594FFB7A6A5FFC1B1B0FFC6B5
      B4FFC7B6B5FFA75F5DFF00000000000000000000000000000000C78A89FFD9C6
      C5FFD5C1C0FFAFA09FFF005C00FF67E167FF67E167FF67E167FF67E167FF67E1
      67FF67E167FF005C00FF00000000000000000000000000000000C78A89FFD9C6
      C5FFD5C1C0FF005AE6FF42BBFFFF39AEFFFF33A5FFFF2FA0FFFF33A4FFFF37A8
      FFFF0058E6FF00000000000000000000000000000000000000000059E6FF55CA
      FFFF48BAFFFF3BACFFFF30A0FFFF2D9CFFFF005BE6FFB7A6A5FFC8B7B6FFCEBB
      BAFFCDBAB9FFAB615FFF000000000000000000000000096BFFFF099DFFFF099D
      FFFF096BFFFF096BFFFF099DFFFF096BFFFF4D79C7FFB4A4A3FFC3B1B0FFCAB8
      B7FFCBB9B8FFAB615FFF00000000000000000000000000000000CB8D8BFFDECA
      C9FFDAC6C5FFB6A6A5FF005C00FF79E479FF79E479FF79E479FF79E479FF79E4
      79FF005C00FF0000000000000000000000000000000000000000CB8D8BFFDECA
      C9FFDAC6C5FFB3A3A2FF005AE6FF48BFFFFF3FB4FFFF3AACFFFF37A8FFFF3AAC
      FFFF0058E6FF00000000000000000000000000000000000000000059E6FF0059
      E6FF0059E6FF0059E6FF3BACFFFF005BE6FFB8A7A6FFCBB9B8FFD4C2C1FFD4C0
      BFFFD2BFBEFFB9817EFF0000000000000000000000007EB2FFFF1773FFFF17A3
      FFFF17A3FFFF17A3FFFF17A3FFFF17A3FFFF1773FFFF5985D2FFC6B5B4FFCEBB
      BAFFD0BEBDFFB9817EFF00000000000000000000000000000000DBB1B0FFE3CE
      CDFFDECAC9FFC2B1B0FF005C00FF005C00FF005C00FF005C00FF87E787FF005C
      00FF000000000000000000000000000000000000000000000000DBB1B0FFE3CE
      CDFFDECAC9FFC7B6B5FFAE9D9DFF005AE6FF4EC4FFFF0058E6FF0058E6FF0058
      E6FF0058E6FF0000000000000000000000000000000000000000000000000000
      0000000000000059E6FF0059E6FFB6B6B6FFC7A2A1FFDCC9C8FFDDC9C8FFDBC7
      C6FFC08684FF00000000000000000000000000000000000000007EB2FFFF277D
      FFFF277DFFFF277DFFFF27A9FFFF277DFFFF4D71BFFFBDACABFFCDBAB9FFD4C1
      C0FFBE8583FF000000000000000000000000000000000000000000000000DBB2
      B1FFE3CFCEFFDFCBCAFFCCB9B8FFAF7876FFC5C5C5FF005C00FF005C00FF0000
      000000000000000000000000000000000000000000000000000000000000DBB2
      B1FFE3CFCEFFDFCBCAFFC7B5B4FF9C6B69FF0058E6FF0058E6FFC1C1C1FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000059E6FF0000000000000000D8D8D8FFCD908EFFC16E6CFFBE6C
      6AFF000000000000000000000000000000000000000000000000000000000000
      0000000000003586FFFF3586FFFF7EB2FFFFDFDFDFFFB47D7BFFB56765FFBA69
      67FF000000000000000000000000000000000000000000000000000000000000
      0000CF918FFFC16D6BFFBE6B69FFD8D8D8FF00000000005C00FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CF918FFFC16D6BFFBE6B69FFCCCCCCFFD8D8D8FF0058E6FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D49492FFEAD5D4FFE8D3D2FFE4D0
      CFFFBE6C6AFF0000000000000000000000000000000000000000000000000000
      0000000000003F8CFFFF7EB2FFFF00000000B67E7CFFD8C4C3FFDFCBCAFFE1CE
      CDFFBD6C6AFF000000000000000000000000000000000000000000000000D695
      93FFEBD6D5FFE8D3D2FFE3CFCEFFBD6A68FF0000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D695
      93FFEBD6D5FFE8D3D2FFE2CECDFFB96866FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D79694FFEFD9D8FFECD6D5FFE8D3
      D2FFC26E6CFF0000000000000000000000000000000000000000000000000000
      0000000000007EB2FFFF0000000000000000C68B89FFE5D0CFFFE7D2D1FFE7D2
      D1FFC26E6CFF000000000000000000000000000000000000000000000000D897
      95FFEFD9D8FFECD6D5FFE8D3D2FFC26D6BFF0000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D897
      95FFEFD9D8FFECD6D5FFE7D2D1FFC06C6AFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E7BBBAFFF2DCDBFFEFDAD9FFECD7
      D6FFD19290FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DFB4B3FFEDD8D7FFEDD8D7FFECD7
      D6FFD19290FF000000000000000000000000000000000000000000000000E7BB
      BAFFF2DCDBFFEFDAD9FFECD7D6FFD19290FF0000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E7BB
      BAFFF2DCDBFFEFDAD9FFECD7D6FFD19290FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7BBBAFFD99795FFD796
      94FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E6BAB9FFD99795FFD796
      94FF000000000000000000000000000000000000000000000000000000000000
      0000E7BBBAFFD99795FFD79694FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E7BBBAFFD99795FFD79694FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000005EFF00002BFF00002BFF00002BFF00005EFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B2B2B2FF00002DFF00002DFF00002DFF00002DFF00002DFF00002DFFB2B2
      B2FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C4D8CCFF01010101000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000002BFF0000CCFF0000CCFF0000CCFF00002BFF000000000000
      000000000000000000000000000000000000000000000000000000000000B2B2
      B2FF00002DFF0000ADFF0000CCFF0000CCFF0000CCFF0000CCFF0000ADFF0000
      2DFFB2B2B2FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DB5500FEC4D8CCFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000005EFF00002BFF00002BFF00002BFF00005EFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000005EFF00002BFF00002BFF00002BFF00005EFF000000000000
      0000000000000000000000000000000000000000000000000000B2B2B2FF0000
      2DFF0000ADFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000
      ADFF00002DFFB2B2B2FF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000DB5500FEDC5500FFC4D8CCFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000002BFF0000CCFF0000CCFF0000CCFF00002BFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B2B2B2FF00002DFF0000
      ADFF0000CCFF0000CCFF0000CCFF00000BFF00000BFF0000CCFF0000CCFF0000
      CCFF0000ADFF00002DFFB2B2B2FF00000000000000000000000000000000FB62
      00FEDB5500FEDB5500FEDB5500FEDB5500FEDC5500FFFF751DFFDC5500FFC4D8
      CCFF000000000000000000000000000000000000000000000000000000000000
      00000000000000002BFF0000CCFF0000CCFF0000CCFF00002BFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000005EFF00002BFF00002BFF00002BFF00005EFF000000000000
      0000000000000000000000000000000000000000000000002DFF0404B0FF0404
      CEFF0404CEFF0404CEFF0404CEFF040458FF040458FF0404CEFF0404CEFF0404
      CEFF0404CEFF0404B0FF00002DFF00000000000000000000000000000000DC55
      00FFF1DED2FFECD3C3FFE6C3ACFFDEB092FFDC9C71FFEA8745FFFF751DFFDC55
      00FFC4D8CCFF0000000000000000000000000000000000000000000000000000
      00000000000000002BFF0F0FD1FF0F0FD1FF0F0FD1FF00002BFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000002BFF0000CCFF0000CCFF0000CCFF00002BFF000000000000
      0000000000000000000000000000000000000000000000002DFF1010D0FF1010
      D0FF1010D0FF1010D0FF1010D0FF1010C4FF1010C4FF1010D0FF1010D0FF1010
      D0FF1010D0FF1010D0FF00002DFF00000000000000000000000000000000DC55
      00FFF1DED2FFEDD4C3FFE6C3ACFFDEB092FFDC9C71FFEA8745FFFF751DFFFF75
      1DFFDC5500FFD8CCC4FF00000000000000000000000000000000000000000000
      00000000000000002BFF3131D7FF3131D7FF3131D7FF00002BFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000002BFF0000CCFF0000CCFF0000CCFF00002BFF000000000000
      0000000000000000000000000000000000000000000000002DFF2020D4FF2020
      D4FF2020D4FF2020D4FF2020D4FF202078FF202078FF2020D4FF2020D4FF2020
      D4FF2020D4FF2020D4FF00002DFF00000000000000000000000000000000DC55
      00FFF1DFD3FFEDD4C4FFE7C4ADFFDFB193FFDC9D72FFEA8745FFFF761DFFDC55
      00FFC4D7CBFF0202020200000000000000000000000000000000B2B2B2FF0000
      2BFF00002BFF00002BFF5858DFFF5858DFFF5858DFFF00002BFF00002BFF0000
      2BFFB2B2B2FF0000000000000000000000000000000000000000000000000000
      00000000000000002BFF0F0FD1FF0F0FD1FF0F0FD1FF00002BFF000000000000
      0000000000000000000000000000000000000000000000002DFF3131D7FF3131
      D7FF3131D7FF3131D7FF3131D7FF31315BFF31315BFF3131D7FF3131D7FF3131
      D7FF3131D7FF3131D7FF00002DFF00000000000000000000000000000000FC62
      00FFDA5702FFDA5702FFDA5702FFDD5600FFDC5500FFFF751DFFDC5500FFC4D7
      CBFF02020202000000000000000000000000000000000000000000000000B2B2
      B2FF00002BFF8686E7FF8686E7FF8686E7FF8686E7FF8686E7FF00002BFFB2B2
      B2FF000000000000000000000000000000000000000000000000000000000000
      00000000000000002BFF3131D7FF3131D7FF3131D7FF00002BFF000000000000
      0000000000000000000000000000000000000000000000002DFF4343DBFF4343
      DBFF4343DBFF4343DBFF4343DBFF434354FF434354FF4343DBFF4343DBFF4343
      DBFF4343DBFF4343DBFF00002DFF000000000000000000000000000000000100
      000101000001010000010100000100000000DB5500FEDC5500FFC4D7CBFF0202
      0202000000000000000000000000000000000000000000000000000000000000
      0000B2B2B2FF00002BFFA8A8EEFFA8A8EEFFA8A8EEFF00002BFFB2B2B2FF0000
      0000000000000000000000000000000000000000000000000000B2B2B2FF0000
      2BFF00002BFF00002BFF5858DFFF5858DFFF5858DFFF00002BFF00002BFF0000
      2BFFB2B2B2FF0000000000000000000000000000000000002DFF5454CAFF5454
      DEFF5454DEFF5454DEFF5454DEFF54545FFF54545FFF5454DEFF5454DEFF5454
      DEFF5454DEFF5454CAFF00002DFF000000000000000000000000000000000000
      000000000000000000000000000000000000DB5500FEC4D7CBFF020202020000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B2B2B2FF00002BFFBFBFF2FF00002BFFB2B2B2FF000000000000
      000000000000000000000000000000000000000000000000000000000000B2B2
      B2FF00002BFF8686E7FF8686E7FF8686E7FF8686E7FF8686E7FF00002BFFB2B2
      B2FF0000000000000000000000000000000000000000B2B2B2FF00002DFF6464
      CFFF6464E1FF6464E1FF6464E1FF64646EFF64646EFF6464E1FF6464E1FF6464
      E1FF6464CFFF00002DFFB2B2B2FF000000000000000000000000000000000000
      000000000000000000000000000000000000D8CCC4FF02020202000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B2B2B2FF00002BFFB2B2B2FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B2B2B2FF00002BFFA8A8EEFFA8A8EEFFA8A8EEFF00002BFFB2B2B2FF0000
      0000000000000000000000000000000000000000000000000000B2B2B2FF0000
      2DFF7070D3FF7070E4FF7070E4FF7070C5FF7070C5FF7070E4FF7070E4FF7070
      D3FF00002DFFB2B2B2FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B2B2B2FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B2B2B2FF00002BFFBFBFF2FF00002BFFB2B2B2FF000000000000
      000000000000000000000000000000000000000000000000000000000000B2B2
      B2FF00002DFF8080D6FF8080E6FF8080E6FF8080E6FF8080E6FF8080D6FF0000
      2DFFB2B2B2FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B2B2B2FF00002BFFB2B2B2FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B2B2B2FF00002DFF00002DFF00002DFF00002DFF00002DFF00002DFFB2B2
      B2FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B2B2B2FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000010000001D0000001E0000
      001F0000001F0000001F0000001F0000001F0000001F0000001F0000001F0000
      001F0000001F0000001E0000001D000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000261C142EA57E5BCEE4AB7BFDE7AD
      7CFFE7AD7CFFE7AD7CFFE7AD7CFFE7AD7CFFE7AD7CFFE7AD7CFFE7AD7CFFE7AD
      7CFFE7AD7CFFE3AB7BFC9C7656C71E160F250000000000000000000000000000
      0000000000000000000000000000000000000000000084B094FF23713FFF1769
      35FF23713FFF84B094FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A27B58B3EFC099FEFBD8BCFFFCDB
      C0FFFCDBC0FFFCDBC0FFFCDBC0FFFCDBC0FFFCDBC0FFFCDBC0FFFCDCC1FFFCDC
      C1FFFCDCC1FFFBD8BDFFEEBF9AFD9B7556AA0000000000000000000000000000
      00000000000000000000000000000000000088B297FF268C51FF62BA8DFF95D2
      B2FF62BA8DFF268C51FF81AE91FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B2B2B2FF0000000000000000000000000000
      000000000000000000000000000000000000E2A673FBF8D1B2FFF9D3B4FFF9D3
      B4FFF9D3B4FFF9D3B4FFF9D3B4FFF9D3B4FFF9D3B4FFF9D3B4FFF9D3B4FFF9D3
      B4FFF9D3B4FFF9D3B4FFF8D1B2FFE2A876FB0000000000000000000000000000
      000000000000000000000000000000000000206F3DFF60BA8BFF5EBA87FFFFFF
      FFFF5EB987FF65BC8FFF1E6E3BFF000000000000000000000000000000000000
      0000000000000000000000000000B2B2B2FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B2B2B2FF002C00FFB2B2B2FF00000000000000000000
      000000000000000000000000000000000000E4A46DFFF7CDACFFF6CAA7FFF6CA
      A7FFF6CAA7FFF6CAA7FFF6CAA7FFF6CAA7FFF6CAA7FFF6CAA7FFF6CAA7FFF6CA
      A7FFF6CAA7FFF6CAA7FFF7CEACFFE5A671FF0000000000000000000000000000
      000000000000C1976CFFE3D0BEFF000000002F794AFF9CD4B6FFFFFFFFFFFFFF
      FFFFFFFFFFFF95D2B2FF176935FF000000000000000000000000000000000000
      00000000000000000000B2B2B2FF002F00FFB2B2B2FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B2B2B2FF002C00FF009900FF002C00FFB2B2B2FF000000000000
      000000000000000000000000000000000000E3A067FFF4C7A3FFF3C29BFFF3C2
      9BFFF3C29BFFF3C29BFFF3C29BFFF3C29BFFF3C29BFFF3C29BFFF3C29BFFF3C2
      9BFFF3C29BFFF3C29BFFF4C7A4FFE4A26AFF0000000000000000000000000000
      000000000000D8BDA3FFD4B699FFBB8C5DFF47895EFF90D3B1FF92D6B1FFFFFF
      FFFF63BC8CFF65BC8FFF1E6E3BFF000000000000000000000000000000000000
      000000000000B2B2B2FF002F00FF009900FF002F00FFB2B2B2FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B2B2B2FF002C00FF009900FF009900FF009900FF002C00FFB2B2B2FF0000
      000000000000000000000000000000000000E29C60FFF1C39BFFF0BA8EFFF0BA
      8EFFF0BA8EFFF0BA8EFFF0BA8EFFF0BA8EFFF0BA8EFFF0BA8EFFF0BA8EFFF0BA
      8EFFF0BA8EFFF0BA8EFFF2C29BFFE29E64FF0000000000000000000000000000
      00000000000000000000C2976DFFF5EEE7FF93A382FF5FAB81FF95D4B4FFBAE6
      D0FF68BB8FFF2B8F55FF81AE91FF000000000000000000000000000000000000
      0000B2B2B2FF002F00FF009900FF009900FF009900FF002F00FFB2B2B2FF0000
      000000000000000000000000000000000000000000000000000000000000B2B2
      B2FF002C00FF009900FF10A210FF10A210FF10A210FF009900FF002C00FFB2B2
      B2FF00000000000000000000000000000000E0975AFFF0BE96FFEDB182FFEDB1
      82FFEDB182FFEDB182FFEDB182FFEDB182FFEDB182FFEDB182FFEDB182FFEDB1
      82FFEDB182FFEDB182FFEFBD95FFE1995DFF0000000000000000D1B193FFB988
      58FFB88756FFB88756FFD5B89DFFFFFFFFFFFFFFFFFFABC5B1FF5C966EFF4D8E
      64FF47895EFF99BDA6FF0000000000000000000000000000000000000000B2B2
      B2FF002F00FF009900FF13A213FF13A213FF13A213FF009900FF002F00FFB2B2
      B2FF000000000000000000000000000000000000000000000000B2B2B2FF002C
      00FF002C00FF002C00FF32B032FF32B032FF32B032FF002C00FF002C00FF002C
      00FFB2B2B2FF000000000000000000000000DF9353FFEEBB92FFEAAA76FFEAA9
      74FFEAA974FFEAA974FFEAA974FFEAA974FFEAA974FFEAA974FFEAA974FFEAA9
      74FFEAA974FFEAAA76FFEEBB91FFDF9557FF00000000CEAC8BFFDAC1A9FFFEFE
      FDFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEE2FFFDE3D0FFFEF2E9FFFFFFFFFFDFC9
      B4FFC2986EFF0000000000000000000000000000000000000000B2B2B2FF002F
      00FF002F00FF002F00FF35B035FF35B035FF35B035FF002F00FF002F00FF002F
      00FFB2B2B2FF0000000000000000000000000000000000000000000000000000
      000000000000002C00FF59BF59FF59BF59FF59BF59FF002C00FF000000000000
      000000000000000000000000000000000000DD8F4DFFEDB88EFFEFC29DFFEFC1
      9EFFEFC19EFFEFC19EFFF0C29EFFF0C29EFFF0C29EFFF0C29EFFF0C29EFFF0C2
      9EFFF0C29EFFF0C19CFFEDB68CFFDE9150FF00000000B98858FFFEFEFDFFFEF2
      E9FFFEECDFFFFDEBDCFFFDE9D9FFFDE7D6FFFDE6D3FFFDE4D0FFFCE4D1FFFFFF
      FFFFC8A27BFFEFE4DAFF00000000000000000000000000000000000000000000
      000000000000002F00FF5CBF5CFF5CBF5CFF5CBF5CFF002F00FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000002C00FF86CF86FF86CF86FF86CF86FF002C00FF000000000000
      000000000000000000000000000000000000DC8B47FFDC8B47FFDC8C49FFDC8C
      49FFDC8D49FFDC8D4AFFDC8D4AFFDC8D4AFFDC8D4AFFDC8D4BFFDC8D4BFFDD8E
      4BFFDD8E4BFFDD8E4BFFDD8D4AFFDD8D4AFF00000000C0956AFFFFFFFFFFFEF0
      E5FFFEEEE2FFFEEDE0FFFEEBDDFFFDE9DAFFFDE8D7FFFDE6D4FFFDE4D1FFFFFF
      FFFFCDAA89FFEADCCEFF00000000000000000000000000000000000000000000
      000000000000006200FF002F00FF002F00FF002F00FF006200FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000002C00FFA8DCA8FFA8DCA8FFA8DCA8FF002C00FF000000000000
      00000000000000000000000000000000000007040208D98641FDEAC3A1FFEBC4
      A3FFEBC4A3FFEBC4A3FFEBC4A3FFEBC4A3FFEBC4A3FFEBC4A3FFEBC4A3FFEBC4
      A3FFEBC4A3FFEBC4A3FFDB8740FF0704020800000000C0956AFFFFFFFFFFFEF1
      E8FFFEF0E6FFFEEFE3FFFEEDE0FFFEECDDFFFDEADBFFFDE8D7FFFDE6D5FFFFFF
      FFFFCDAA89FFEADCCEFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000002C00FFBFE5BFFFBFE5BFFFBFE5BFFF002C00FF000000000000
      00000000000000000000000000000000000000000000D98641FCEBC4A4FFECC6
      A6FFECC6A6FFECC5A6FFE1A673FBD78641FBDB8740FFDB8740FFDB8740FFDB87
      40FFDB8740FFDB8740FFDB8740FF0000000000000000B98858FFFEFEFDFFFEF6
      F0FFFEF2E9FFFEF1E6FFFEEFE4FFFEEEE1FFFEECDEFFFDEADBFFFDEADCFFFFFF
      FFFFC7A079FFF0E6DCFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000005F00FF002C00FF002C00FF002C00FF005F00FF000000000000
      00000000000000000000000000000000000000000000D6843FFADB8740FFDB87
      40FFDB8740FFDB8740FFAF6E37CB1D1209220000000000000000000000000000
      00000000000000000000000000000000000000000000CEAC8BFFDAC1A9FFFDFC
      FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFC9
      B4FFC2986EFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1B193FFBA8A
      5AFFB88756FFB88756FFB88756FFB88756FFB88756FFB88756FFB88756FFCBA7
      85FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A591
      77FFAE9C87FFD6CDC2FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000082766AFF00000000C7C2
      BDFF9E968DFF6D6255FF9B9389FFC7C2BDFF0000000082766AFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000003300000033000000330000000B0000000000000000000000008E72
      54FFFFD598FF8E7254FFD8CFC5FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000082766AFF00000000316E
      93FF189EDEFF006CBCFF119ADDFF2B739EFF0000000082766AFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000002F00000033000000330000
      0033000000330000003300000033000000330000003300000033000000330000
      00334780ACFF4880AAFF4882ACFF0F1B245E0000000000000000000000008E72
      54FFFFD598FFFFD598FF8E7254FFD9D1C7FF0000000000000000000000000000
      00000000000000000000000000000000000000000000D2CECAFF746A5DFF068B
      E0FF33C1F5FF0B75A6FF00BCF3FF018ADFFF655747FFA18F77FFBAA68EFF8B70
      56FF8B7056FF8B7056FF8B7056FFB9AB9BFFAFAFAFFF3B3B3BFF343434FF4444
      44FF414141FF3E3E3EFF3C3C3CFF393939FF323232FF2C2C2CFF2B2B2BFF2A2A
      2AFF2A2A2AFF2A2A2AFF292929FF646464FFD7AA6BEEE9B772FFE9B671FFE9B6
      71FFE9B671FFEBB771FFEFBA73FFF2BD75FFF4BF76FFF4BF75FFFFC272FF367D
      B6FF729EBFFF20ACFFFF3F7995AA4491C6FF8E7254FF8E7254FF8E7254FF8E72
      54FFFFD598FFF49B34FFFFD598FF856749FFB3998EFF75514CFF714E4AFF6F4C
      48FF6C4946FF684743FF61423FFF00000000D2CECAFF82766AFF6F6457FF55BF
      F9FFC8F1FFFF6A8A8CFF97E5FEFF08A2F2FF6F6254FF817162FFCFC7BDFFFBF4
      EDFFF6EADAFFF6E8DAFFF6E8D8FF8B7056FF545454FF6C6C6CFF646464FF7777
      77FF9B9B9BFF989898FF939393FF868686FF555555FF3D3D3DFF616161FF9090
      90FF717171FF5E5E5EFF575757FF2E2E2EFFE9B772FFFFEDCDFFFFE8C5FFFFE8
      C5FFFFEBC7FFFFF0CBFFC0B4A3FF7A7B7DFF727478FF727478FF767678FF8E89
      85FFB0A69EFF9EC1D7FFAEE9FFFF3F91C6FF8E7254FFFFE3BAFFFFD598FFFFD5
      98FFFFD598FFFFAA49FFF49B34FFFFD598FF8A684CFFBF8990FFC27691FF9436
      50FFCE6E91FFC65A7CFF6F5451FF0000000082766AFFFFFFFFFF6F6457FFA6E3
      FDFFD4F7FEFF6F8B83FFACE8FEFF4CCDF9FF6E6050FFF6E7D7FF7C6C5AFFF5E5
      D2FFECCCA9FFEBCAA6FFF6E8DAFF8B7056FF5B5B5BFF7B7B7BFF8B8B8BFFB8A5
      95FFCE9661FFD69A5DFFD79B60FFCE9965FFA39383FF585858FF3E3E3EFF9595
      95FF797979FF3F3F3FFF616161FF303030FFE9B670FFFFE9CAFFFFF2E1FFFFF3
      E2FFFFE9BEFF8E8983FF979798FFD6D6DAFFE1E3E7FFE1E2E6FFD7D6D9FF9C9A
      99FF8A8582FFF2ECE7FFBCDDEAFF3F92CAFF8E7254FFFFE3BAFFFFB86EFFFFB4
      65FFFFB057FFFFAA49FFFEA43FFFF49B34FFFFE3BAFF896B4DFFA4D7F0FFB292
      8FFF943650FFCE6E91FF8C716FFF0000000082766AFFD2CECAFF746A5DFF115D
      82FF2F667BFF3D6C7BFF1A5978FF055C90FF736758FFF6E7D7FF736452FFF5E5
      D2FFEDCFAFFFECCBA8FFF6EADAFF8B7056FF5D5D5DFF878787FFB9B9B9FFD096
      61FFD89A5EFFD89C64FFD89D64FFD89C63FFCE9A65FF8C8C8CFF474747FF9A9A
      9AFF808080FF444444FF666666FF323232FFE9B670FFFFE9CCFFFFF1DFFFFFF5
      E2FFC0AF99FF9B9B9DFFE6E6E6FFE8C790FFF1CC81FFF7DA8EFFF5E1A8FFE7E7
      E6FF9E9C9BFFB5AEA8FF3791CBFF000000008E7254FFFFE3BAFFFFE3BAFFFFE3
      BAFFFFE3BAFFFFAA49FFFEA53EFFFFE3BAFF86684AFF9BD1E3FF56A6C9FF5BA6
      CAFF814E47FF92334BFFBBA9AAFF000000000000000082766AFF000000001C3A
      45FF10A0E7FF14ADEFFF0593E4FF183C4AFFF7EBDEFF7C6E5CFFF7E8D8FFEDD3
      B4FFEDCFAFFFEDCDABFFF7E9DAFF8B7056FF5F5F5FFF8E8E8EFFC7C7C7FFD697
      5BFFD79C62FFD99E66FFD9A067FFD89D64FFD79A5FFF9B9B9BFF4D4D4DFF9E9E
      9EFF858585FF4B4B4BFF6B6B6BFF343434FFE9B670FFFFECD0FFFFDCB1FFFFE3
      B5FF838182FFE0E2E5FFE6BF8BFFEECA8CFFF1D48EFFF9E59EFFFFEEA5FFF5E3
      A9FFE0E0E4FF8B827BFF00000000000000008E7254FF8E7254FF8E7254FF8E72
      54FFFFE3BAFFFEA94AFFFFE3BAFF8A6E50FFBF9A92FF458BACFF4C8EABFF458A
      FDFF824D47FFC2C2B3FF00000000000000000000000082766AFF000000007166
      58FF3AACC7FFA1ECF8FF0080BCFF6F6353FFF8EDE1FF796C5DFFF7E8D8FFEDD3
      B4FFEDD2B3FFECCEAFFFF7EADDFF8B7056FF626262FF949494FFD0D0D0FFD697
      5BFFD99D63FFD99F67FFD99E66FFD89B62FFD6985CFFA5A5A5FF535353FFA3A3
      A3FF8B8B8BFF545454FF727272FF363636FFE9B670FFFFECD3FFFFDAACFFFFE1
      B1FF7B7C7EFFF2F5F9FFE4B674FFF3DDB7FFF3DAA3FFF6DF99FFF9E59EFFF6D9
      8DFFF2F3F8FF888582FF00000000000000000000000000000000000000008E72
      54FFFFE3BAFFFFE3BAFF8E7254FF9DA8AAFF52A7D5FF71D9F8FF7BCFF6FF72C9
      F2FF52A1CAFF647880FF00000000000000000000000000000000000000007C72
      66FF8E7B68FF796E60FFAC9F8EFF7A6D5EFFF8EFE4FFF8EDE1FFF0DAC1FFF0D6
      BCFFEED2B6FFEDD0B2FFF7EBDDFF8B7056FF646464FF9B9B9BFFD7D7D7FFD49A
      67FFD6995FFFD79B63FFD79C61FFD6995DFFD09760FFADADADFF5B5B5BFFA9A9
      A9FF929292FF5C5C5CFF797979FF383838FFE9B66FFFFFECD5FFFFEDD8FFFFF4
      DDFF807E7EFFF8FBFFFFE3B376FFF7E9D2FFF4DEB7FFF3DAA2FFF2D48FFFEFCA
      7EFFF8FAFEFF8A8785FF00000000000000000000000000000000000000008E72
      54FFFFE3BAFF8E7254FFB0B8BCFF2B668FFF8FDFF8FF93ECFCFF90DFF8FF88D8
      FAFF7ACFF7FF2B668FFF89A2ACFF000000000000000000000000000000008276
      6AFFBAA68EFFFDFAF7FFFAF3EBFF807061FFF9EFE5FFF8EDE1FFF0DAC1FFF0D6
      BCFFF0D4B9FFEED2B5FFF8ECDEFF8B7056FF666666FFA6A6A6FFBABABAFFDAC7
      B7FFD49A66FFD5965BFFD59659FFD19760FFC5B3A2FF969696FF6E6E6EFFAEAE
      AEFF989898FF656565FF818181FF3B3B3BFFE9B66FFFFFEFDAFFFFECD5FFFFF2
      DAFF8A8784FFEEF2F5FFE3B682FFFAEFE2FFF7E8D1FFF3DCB5FFEDCB90FFEDCB
      94FFEFF2F6FF928C88FF0000000000000000000000000000000000000000A591
      77FFB9AA98FF0000000026486AFF57A9CFFF97E8FAFF9CF3FCFF98E6FAFF8CDB
      FAFF7BCFF5FF55AAD4FF346174FF000000000000000000000000000000000000
      00008B7056FFFCF6F1FFF7EBDEFFFAF3EBFFF8ECE0FFF6E9DAFFF8ECE0FFF6EA
      DDFFF6E9DAFFF6E6D6FFF8EDE0FF8B7056FF696969FFBCBCBCFFA6A6A6FFBCBC
      BCFFDDDDDDFFD8D8D8FFD5D5D5FFCCCCCCFFA3A3A3FF848484FF979797FFB4B4
      B4FF9D9D9DFF8D8D8DFF888888FF3D3D3DFFE9B66FFFFFF1E1FFFFD3A1FFFFD7
      A3FFC7BCB0FFAEAEAFFFFFFFFFFFE3B782FFE5BA85FFE6BE87FFEAC591FFFFFF
      FFFFAEAFB2FFC1A580FF00000000000000000000000000000000000000000000
      000000000000000000000C335DFF2B668FFF99EDFCFFA3F7FCFF9DEAFAFF8EDE
      F8FF7ACEF5FF2B668FFF215D77FF000000000000000000000000000000000000
      00008B7056FFFDFBF9FFFCF6F0FFFBF5EDFFFBF4EDFFFAF1E7FFF7EADDFFA48B
      6DFFA38A67FFA48563FFA3917AFF8B7056FF828282FFAEAEAEFFD2D2D2FFB0B0
      B0FFA3A3A3FF9F9F9FFFB7B7B7FF989898FF9E9E9EFFC0C0C0FFAAAAAAFF6F6F
      6FFF666666FF676767FF646464FF6A6A6AFFE9B56EFFFFF3E7FFFFD09BFFFFD2
      9EFFFFF1D8FFA09D9AFFB1B1B4FFFAFCFFFFFFFFFFFFFFFFFFFFF9FBFFFFB1B1
      B2FFA1A0A0FFF2BB71FF00000000000000000000000000000000000000000000
      00000000000000000000365D89FF0B8EECFF437B98FF68A6B1FF8BDBF3FF5491
      A7FF184F87FF098DECFF2A536AFF000000000000000000000000000000000000
      00008B7056FFFCF8F5FFFAF0E6FFF8EDE1FFFBF4EDFFFAF2EAFFF8EBE0FFA48D
      71FFFAF5EEFFFAF5EEFFDECDBAFFB1A08FFF00000000989898FFC9C9C9FFC8C8
      C8FFC6C6C6FFC4C4C4FF7C939BFFA4E0F9FF3EBEF3FF667985FF929393FFC9C9
      C9FF626262FF595959FF5A5A5AFFDDDDDDFFE9B56EFFFFF5EAFFFFE8CEFFFFEA
      D2FFFFCF99FFFFCE9AFFCABEB1FF939190FF8C8C8EFF8C8C8EFF939190FFCABB
      FDFFFFFAEDFFEBB76FFF00000000000000000000000000000000000000000000
      0000000000000000000095979BFF1E537BFF38C4FFFF098DECFF0662ABFF38C4
      FFFF098DECFF00397AFF8E949AFF000000000000000000000000000000000000
      00008B7056FFFCFAF6FFFAF1E9FFF9EFE5FFF8ECE0FFF6E9DAFFF9EEE2FFA38D
      74FFFAF5EEFFDECDBAFFB3A392FF0000000000000000C9C9C9FFA8A8A8FFA0A0
      A0FF9D9D9DFF959595FF8B8B8BFF828282FF7C7C7CFF898989FFBCBCBCFF0000
      000000000000DEDEDEFF0000000000000000E9B56EFFFFF8F0FFFFE4C8FFFFE6
      CCFFFFCA92FFFFCB93FFFFEACEFFFFECCFFFFFCF93FFFFCF93FFFFEBCEFFFFE8
      CAFFFFF9F1FFE9B56EFF00000000000000000000000000000000000000000000
      0000000000000000000000000000CCCED0FF5A809CFF274E72FF10396CFF1D40
      70FF446594FFB1BBC8FF00000000000000000000000000000000000000000000
      00008B7056FFFDFCF9FFFCFAF6FFFCF7F4FFFCF7F2FFFCF5F0FFFBF4EDFFA296
      8CFFDECDBAFFB6A796FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E9B66FFFFFFDFCFFFFFAF6FFFFFB
      F7FFFFFCF9FFFFFCF9FFFFFBF7FFFFFBF7FFFFFCF9FFFFFCF9FFFFFBF7FFFFFB
      F6FFFFFEFCFFE9B66FFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B9AB9BFF8B7056FF8B7056FF8B7056FF8B7056FF8B7056FF8B7056FF8B70
      56FFB9AA9AFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D7AA6BEAE9B66FFFE9B56DFFE9B5
      6DFFE9B56DFFE9B56DFFE9B56DFFE9B56DFFE9B56DFFE9B56DFFE9B56DFFE9B5
      6DFFE9B66FFFD7AA6BEA00000000000000000000000000000000000000000000
      000000000000000000000000000000000000373737381D1D1D1E000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFB0B0B0FFA4A4
      A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF43904AFF3E90
      45FF2E7533FF8F9F91FFFFFFFFFFFFFFFFFF0000000000000000000000000000
      000000000000000000000000000000000000373737381D1D1D1E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000037373738B0B0B0F6B5B5B5FF202020210000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFB8B8B8FFDBDB
      DBFFB8B8B7FFBDAC96FF9C815BFF845F36FF845F36FF9C815BFF46944BFF73CA
      81FF5BB163FF2E7633FFCAD9CBFFFFFFFFFF0000000000000000000000000000
      000000000000000000000000000037373738B0B0B0F6B5B5B5FF202020210000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000084B094FF216F3DFF1567
      33FF216F3DFF84B094FF00000000000000000000000000000000000000000000
      0000000000000000000037373738B2B2B2F6E0E0E0FFD8D8D8FFB5B5B5FF2020
      202100000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFD3D3
      D3FFC3C0BEFF9C6636FFA66730FFAE6A32FFAE6A32FFA66730FF4C9B4DFF7ACE
      89FF79CF88FF5DB265FF338139FFD3E2D4FF0000000000000000000000000000
      0000000000000000000037373738B2B2B2F6E0E0E0FFD8D8D8FFB5B5B5FF2020
      2021000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000088B297FF248C4FFF60BA8DFF95D2
      B2FF60BA8DFF248C4FFF81AE91FF000000000000000000000000000000000000
      0000000000003A3A3A3BB4B4B4F6E2E2E2FFFDFDFDFFFDFDFDFFD9D9D9FFB5B5
      B5FF20202021000000000000000000000000FFFFFFFFFFFFFFFFD1C1AEFFA78D
      6AFFAF733FFFBB8C59FFC2936CFFC4916FFFC38F6CFFBF9067FF54A657FF86D2
      90FF69CA75FF82D18BFF5FB468FF36843DFF0000000000000000000000000000
      0000000000003A3A3A3BB4B4B4F6E2E2E2FFFDFDFDFFFDFDFDFFD9D9D9FFB5B5
      B5FF202020210000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001E6D3BFF5EBA8BFF5CBA87FFFFFF
      FFFF5CB987FF63BC8FFF1C6C39FF000000000000000000000000000000000000
      00003A3A3A3BB8B8B8F6E4E4E4FFFDFDFDFFD6D7FAFF999BF9FFF7F7FDFFD9D9
      D9FFB6B6B6FF202020210000000000000000FFFFFFFFEAE1D7FFA78556FFB378
      41FFC2996CFFD8AA89FFEFDFCFFFFAF6F3FFFAF5F3FFEFDFD1FF5CB160FF8CD5
      97FF71CF83FF88D492FF66BA6FFF388B3FFF0000000000000000000000000000
      00003A3A3A3BB8B8B8F6E4E4E4FFFDFDFDFFD3F0F8FF8FDFF4FFF7FBFDFFD9D9
      D9FFB6B6B6FF2020202100000000000000000000000000000000000000000000
      000000000000C1976AFFE3D0BEFF000000002D7748FF9CD4B6FFFFFFFFFFFFFF
      FFFFFFFFFFFF95D2B2FF156733FF000000000000000000000000000000003A3A
      3A3BBCBCBCF6E5E5E5FFFDFDFDFFD8D8FAFF898CF9FF8E91FAFF999BF5FFF3F4
      F9FFD9D9D9FFB6B6B6FF2020202100000000FFFFFFFFD0BAA0FFB08045FFC69B
      6AFFD9AA88FFFFFEEBFFFFFAEEFFFFFDF2FFFFFEF2FFFFFCEFFF65BF6EFF92D9
      9EFF92D99DFF72C581FF54AA5CFFD8E9D9FF0000000000000000000000003A3A
      3A3BBCBCBCF6E5E5E5FFFDFDFDFFD4F0F8FF7ADAF4FF84DDF5FF91DCF2FFF3F7
      F9FFD9D9D9FFB6B6B6FF20202021000000000000000000000000000000000000
      000000000000D8BDA3FFD4B699FFBB8C5BFF45895CFF90D3B1FF92D6B1FFFFFF
      FFFF61BC8CFF63BC8FFF1C6C39FF0000000000000000000000003A3A3A3BC0C0
      C0F6E7E7E7FFFDFDFDFFD8D8FAFF8B8DF9FF9A9DFBFF9EA0FBFF9193FAFF9092
      F3FFFBFBFDFFD9D9D9FFB6B6B6FF1E1E1E1FFFFFFFFFC19E70FFBF8F53FFCDA3
      81FFF0DBC1FFFFF7E6FFFAF2E3FFC5C0B6FFF1EDDEFFFFFCE8FF69C572FF97DC
      A3FF81CE8DFF5FB969FFA9A06BFFFFFFFFFF00000000000000003A3A3A3BC0C0
      C0F6E7E7E7FFFDFDFDFFD4F0F8FF80DAF4FF91E0F7FF95E1F7FF86DDF6FF86D8
      EFFFFBFCFDFFD9D9D9FFB6B6B6FF1E1E1E1F0000000000000000000000000000
      00000000000000000000C2976BFFF5EEE7FF93A382FF5DAB81FF95D4B4FFBAE6
      D0FF66BB8FFF298F53FF81AE91FF00000000000000003A3A3A3BC3C3C3F6E8E8
      E8FFFDFDFDFFD8D8FAFF8B8DF9FF9A9DFBFFA0A2FBFF9D9FFBFF8B8EFAFFBBBC
      FAFFFDFDFDFFD7D7D7FFB4B4B4FF14141415FFFFFFFFBC8F55FFC99C61FFCF9F
      80FFFAF3E2FFFDF6E9FFF2F0E3FF8D8C84FF817A72FFD2CFC2FF6DCA77FF61C3
      6CFF5DBE68FFB2A261FFBC8F55FFFFFFFFFF000000003A3A3A3BC3C3C3F6E8E8
      E8FFFDFDFDFFD4F0F8FF80DAF4FF91E0F7FF97E2F7FF93E1F7FF80DCF5FFB5E9
      F7FFFDFDFDFFD7D7D7FFB4B4B4FF141414150000000000000000D1B193FFB988
      56FFB88754FFB88754FFD5B89DFFFFFFFFFFFFFFFFFFABC5B1FF5A966CFF4B8E
      62FF45895CFF99BDA6FF00000000000000003C3C3C3DC6C6C6F6E9E9E9FFFDFD
      FDFFD5D6FAFF8689FAFF9A9CFBFFA0A2FBFF9D9FFBFF8D90FAFFBDBFFAFFFDFD
      FDFFD9D9D9FFB8B8B8FF1414141500000000FFFFFFFFC6985BFFCEA66CFFD1A5
      89FFFAF6E9FFFDF8EEFFFFFFF9FF818074FFB1AEA4FF817A72FFC9C6BAFFDBE7
      BFFFC9966DFFCEA66CFFC6985BFFFFFFFFFF3C3C3C3DC6C6C6F6E9E9E9FFFDFD
      FDFFD1EFF8FF75DAF4FF90E0F6FF97E2F7FF93E1F7FF82DCF5FFB7EAF8FFFDFD
      FDFFD9D9D9FFB8B8B8FF141414150000000000000000CEAC8BFFDAC1A9FFFEFE
      FDFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEE2FFFDE3D0FFFEF2E9FFFFFFFFFFDFC9
      B4FFC2986CFF000000000000000000000000C8C8C8F6EBEBEBFFFDFDFDFFFAFA
      FAFFE8E8FBFF8C8EFAFF989AFBFF9C9EFBFF8D90FAFFBDBFFAFFFDFDFDFFDADA
      DAFFBCBCBCFF141414150000000000000000FFFFFFFFD9B284FFD3AC70FFD9B7
      98FFF1E3D6FFFEFBF5FFF5F5F3FF9F9E95FFF0F0E9FFF8F8F2FFBEB9ADFFF0DA
      C2FFD2AA87FFD3AC70FFD9B284FFFFFFFFFFC8C8C8F6EBEBEBFFFDFDFDFFFAFA
      FAFFE6F5FAFF81DBF5FF8EDFF6FF93E1F7FF82DCF5FFB7EAF8FFFDFDFDFFDADA
      DAFFBCBCBCFF14141415000000000000000000000000B98856FFFEFEFDFFFEF2
      E9FFFEECDFFFFDEBDCFFFDE9D9FFFDE7D6FFFDE6D3FFFDE4D0FFFCE4D1FFFFFF
      FFFFC8A279FFEFE4DAFF0000000000000000CDCDCDFFFDFDFDFFFDFDFDFFFCFC
      FCFFF7F7F7FFEBEBFCFF8C8FFAFF8688FAFFBDBFFAFFFDFDFDFFDCDCDCFFBFBF
      BFFF14141415000000000000000000000000FFFFFFFFD6CAB3FFD3AD72FFDFC4
      9AFFDEBDAAFFFFFFFFFFF0F0EEFFE7E5DAFFFFFFF7FFFFFFF7FFFFFEF3FFDCB4
      98FFDBC096FFC2AA79FFE1CDB1FFFFFFFFFFCDCDCDFFFDFDFDFFFDFDFDFFFCFC
      FCFFF7F7F7FFE9F8FCFF82DCF5FF75DAF5FFB7EAF8FFFDFDFDFFDCDCDCFFBFBF
      BFFF1414141500000000000000000000000000000000C09568FFFFFFFFFFFEF0
      E5FFFEEEE2FFFEEDE0FFFEEBDDFFFDE9DAFFFDE8D7FFFDE6D4FFFDE4D1FFFFFF
      FFFFCDAA89FFEADCCEFF0000000000000000CECECEFFFDFDFDFFE0E0E0FFC9C9
      C9F9C3C3C3E2F7F7F7FFE8E9FBFFBEC0FAFFFDFDFDFFDEDEDEFFC2C2C2FF1414
      141500000000000000000000000000000000C2E7F7FF2AA9DEFF31A0C7FFDEBF
      8AFFE2C9A7FFDFBFAEFFF1E3DCFFF3F1ECFFF4F1EBFFF1E2D9FFDCBAA3FFDFC3
      9EFF8CB1A9FF38A8D2FF37ADDEFFD8EFFAFFCECECEFFFDFDFDFFE0E0E0FFC9C9
      C9F9C3C3C3E2F7F7F7FFE6F6FAFFB8EAF8FFFDFDFDFFDEDEDEFFC2C2C2FF1414
      14150000000000000000000000000000000000000000C09568FFFFFFFFFFFEF1
      E8FFFEF0E6FFFEEFE3FFFEEDE0FFFEECDDFFFDEADBFFFDE8D7FFFDE6D5FFFFFF
      FFFFCDAA89FFEADCCEFF0000000000000000D0D0D0FFFDFDFDFFCDCDCDFF0000
      0000B9B9B9CDF3F3F3FFFBFBFBFFFDFDFDFFE0E0E0FFC7C7C7FF141414150000
      00000000000000000000000000000000000082D0F1FF85D4F3FF66C7E9FF38A5
      C7FFE2C792FFE6D1A9FFE0C2A6FFD5AE96FFD5AB92FFDEBDA0FFE4CFA6FFBFC1
      9EFF43B3D7FFACE3F6FF44BCEBFFD8F0FBFFD0D0D0FFFDFDFDFFCDCDCDFF0000
      0000B9B9B9CDF3F3F3FFFBFBFBFFFDFDFDFFE0E0E0FFC7C7C7FF141414150000
      00000000000000000000000000000000000000000000B98856FFFEFEFDFFFEF6
      F0FFFEF2E9FFFEF1E6FFFEEFE4FFFEEEE1FFFEECDEFFFDEADBFFFDEADCFFFFFF
      FFFFC7A077FFF0E6DCFF0000000000000000D2D2D2FFFDFDFDFFE2E2E2FFCECE
      CEFFE0E0E0FFFDFDFDFFFDFDFDFFE2E2E2FFCBCBCBFF14141415000000000000
      00000000000000000000000000000000000084D5F4FF69CFF2FFB5E8F9FF66CB
      ECFF3EAECEFFECC488FFE9CB94FFE7D09DFFE7D09DFFE9CB94FFDEC28EFF35AD
      D2FF86D5F1FF7AD4F4FF2DB8EDFFFFFFFFFFD2D2D2FFFDFDFDFFE2E2E2FFCECE
      CEFFE0E0E0FFFDFDFDFFFDFDFDFFE2E2E2FFCBCBCBFF14141415000000000000
      00000000000000000000000000000000000000000000CEAC8BFFDAC1A9FFFDFC
      FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFC9
      B4FFC2986CFF000000000000000000000000D3D3D3FFFDFDFDFFFDFDFDFFFDFD
      FDFFFDFDFDFFFDFDFDFFE4E4E4FFCDCDCDFF1414141500000000000000000000
      000000000000000000000000000000000000FFFFFFFF70D3F6FF67D1F5FFBFEC
      FAFF65CFF2FF71C4D5FFFBCD96FFFAC179FFFAC179FFFBCD96FF76C4D5FF6FD3
      F3FF85D9F7FF31BFF2FFFFFFFFFFFFFFFFFFD3D3D3FFFDFDFDFFFDFDFDFFFDFD
      FDFFFDFDFDFFFDFDFDFFE4E4E4FFCDCDCDFF1414141500000000000000000000
      0000000000000000000000000000000000000000000000000000D1B193FFBA8A
      58FFB88754FFB88754FFB88754FFB88754FFB88754FFB88754FFB88754FFCBA7
      85FF00000000000000000000000000000000D5D5D5FFD4D4D4FFD2D2D2FFD1D1
      D1FFD0D0D0FFCECECEFFCDCDCDFF141414150000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFF7ADAF9FF29C2
      F6FF30C4F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF29C2
      F6FF31C5F6FFD8F4FDFFFFFFFFFFFFFFFFFFD5D5D5FFD4D4D4FFD2D2D2FFD1D1
      D1FFD0D0D0FFCECECEFFCDCDCDFF141414150000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000373737381D1D1D1E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000373737381D1D1D1E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000373737381D1D1D1E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000037373738AEAEAEF6B5B5B5FF202020210000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BACAD6FF59758DFF59758DFF59758DFF59758DFF5975
      8DFF59758DFF59758DFFBACAD6FF000000000000000000000000000000000000
      000000000000000000000000000037373738B0B0B0F6B5B5B5FF202020210000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000037373738B0B0B0F6B5B5B5FF202020210000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000037373738B0B0B0F6E0E0E0FFD8D8D8FFB5B5B5FF2020
      2021000000000000000000000000000000000000000000000000000000000000
      000000000000000000006E8DA1FF56B7F2FF61C1F3FF59B9EFFF50B1EBFF46A9
      E6FF3BA0E1FF1980CFFF59758DFF000000000000000000000000000000000000
      0000000000000000000037373738B2B2B2F6E0E0E0FFD8D8D8FFB5B5B5FF2020
      2021000000000000000000000000000000000000000000000000000000000000
      0000000000000000000037373738B2B2B2F6E0E0E0FFD8D8D8FFB5B5B5FF2020
      2021000000000000000000000000000000000000000000000000000000000000
      0000000000003A3A3A3BB2B2B2F6E2E2E2FFFDFDFDFFFDFDFDFFD9D9D9FFB5B5
      B5FF2020202100000000000000000000000000000000C3B8B1FF8C7567FF6448
      35FF8C7567FFC3B8B1FF6E8DA1FF97D8FDFF83D8FFFF79D4FDFF3A4858FFE2F4
      FDFF60BFF3FF3EA2E3FF59758DFF000000000000000000000000000000000000
      0000000000003A3A3A3BB4B4B4F6E2E2E2FFFDFDFDFFFDFDFDFFD9D9D9FFB5B5
      B5FF202020210000000000000000000000000000000000000000000000000000
      0000000000003A3A3A3BB4B4B4F6E2E2E2FFFDFDFDFFFDFDFDFFD9D9D9FFB5B5
      B5FF202020210000000000000000000000000000000000000000000000000000
      00003A3A3A3BB6B6B6F6E4E4E4FFFDFDFDFFCDE2D7FF7AB99BFFF6F9F7FFD9D9
      D9FFB6B6B6FF202020210000000000000000C3B8B1FF9C8A7BFFD3CBC5FFF9F8
      F7FFD3CBC5FFC1B2A5FF627C92FFA0DBFDFF8EDBFFFF83D8FFFF3E4A59FFE3F5
      FEFF6AC6F6FF48AAE8FF59758DFF000000000000000000000000000000000000
      00003A3A3A3BB8B8B8F6E4E4E4FFFDFDFDFFD2E4FAFF8DBDFBFFF7F9FDFFD9D9
      D9FFB6B6B6FF2020202100000000000000000000000000000000000000000000
      00003A3A3A3BB8B8B8F6E4E4E4FFFDFDFDFFEFD3DAFFDD8FA1FFFBF7F8FFD9D9
      D9FFB6B6B6FF2020202100000000000000000000000000000000000000003A3A
      3A3BBABABAF6E5E5E5FFFDFDFDFFCEE3D8FF67AF8CFF6DB391FF80B99BFFF2F5
      F4FFD9D9D9FFB6B6B6FF20202021000000008C7567FFD3CBC5FFFFFFFFFFFFFF
      FFFFFFFFFFFFE3DCD7FF576F83FFB0E0FDFF4D4D5AFF474D5AFF424C5AFF3E4A
      59FF3A4858FF53B3ECFF59758DFF000000000000000000000000000000003A3A
      3A3BBCBCBCF6E5E5E5FFFDFDFDFFD3E5FAFF77B3FAFF81B7FDFF8EBCF7FFF3F6
      F9FFD9D9D9FFB6B6B6FF20202021000000000000000000000000000000003A3A
      3A3BBCBCBCF6E5E5E5FFFDFDFDFFF0D4DBFFD87A93FFDB8498FFDB91A2FFF7F3
      F4FFD9D9D9FFB6B6B6FF202020210000000000000000000000003A3A3A3BBEBE
      BEF6E7E7E7FFFDFDFDFFCEE3D8FF69B08DFF80BB9DFF85BEA0FF6FB593FF70B1
      92FFFAFCFBFFD9D9D9FFB6B6B6FF1E1E1E1F644835FFF9F8F7FFFFFFFFFF5E41
      2DFFFFFFFFFFFBFAF9FF4F6678FFC4E8FEFFA3E0FFFF98DDFFFF474D5AFFE6F7
      FFFF79D4FDFF5CBCF0FF59758DFF0000000000000000000000003A3A3A3BC0C0
      C0F6E7E7E7FFFDFDFDFFD3E5FAFF79B4FBFF8FBEFDFF93C1FDFF84B8FDFF84B4
      F5FFFBFCFDFFD9D9D9FFB6B6B6FF1E1E1E1F00000000000000003A3A3A3BC0C0
      C0F6E7E7E7FFFDFDFDFFF0D4DBFFD98095FFDF91A3FFE095A6FFDC869AFFD686
      98FFFCFBFBFFD9D9D9FFB6B6B6FF1E1E1E1F000000003A3A3A3BC1C1C1F6E8E8
      E8FFFDFDFDFFCEE3D8FF69B08DFF80BB9DFF87BFA2FF83BD9FFF69B18EFFA9D1
      BCFFFDFDFDFFD7D7D7FFB4B4B4FF141414158C7567FFD3CBC5FFFFFFFFFFFFFF
      FFFF5E412DFFE3DCD7FF576F83FFD8EFFEFFADE2FFFFA3E0FFFF4D4D5AFFE8F8
      FFFF83D8FFFF65C3F5FF59758DFF00000000000000003A3A3A3BC3C3C3F6E8E8
      E8FFFDFDFDFFD3E5FAFF79B4FBFF8FBEFDFF95C2FDFF91C0FDFF79B5FDFFB3D3
      FBFFFDFDFDFFD7D7D7FFB4B4B4FF14141415000000003A3A3A3BC3C3C3F6E8E8
      E8FFFDFDFDFFF0D4DBFFD98095FFDF91A3FFE197A8FFE093A5FFDA8095FFE8B5
      C1FFFDFDFDFFD7D7D7FFB4B4B4FF141414153C3C3C3DC5C5C5F6E9E9E9FFFDFD
      FDFFCAE2D6FF62AE89FF7BBB9CFF87BFA2FF83BD9FFF6BB290FFADD3BFFFFDFD
      FDFFD9D9D9FFB8B8B8FF1414141500000000C3B8B1FF9C8A7BFFD3CBC5FFF9F8
      F7FFE3DCD7FF5E412DFF668396FFBFE0FFFFE2F3FFFFCDECFFFFB8E4FEFFA7DF
      FEFF9DDCFEFF62C1F6FF59758DFF000000003C3C3C3DC6C6C6F6E9E9E9FFFDFD
      FDFFD0E3FAFF73B1FCFF8EBEFDFF95C2FDFF91C0FDFF80B6FDFFB6D5FBFFFDFD
      FDFFD9D9D9FFB8B8B8FF14141415000000003C3C3C3DC6C6C6F6E9E9E9FFFDFD
      FDFFEFD1D8FFD97590FFDF90A2FFE197A8FFE093A5FFDB8297FFE9B7C3FFFDFD
      FDFFD9D9D9FFB8B8B8FF1414141500000000C7C7C7F6EBEBEBFFFDFDFDFFFAFA
      FAFFE3EEE8FF6AB28EFF79BA9AFF82BD9EFF6BB290FFADD3BFFFFDFDFDFFDADA
      DAFFBCBCBCFF14141415000000000000000000000000C3B8B1FF8C7567FF6448
      35FF8C7567FFDAD0C8FF555353FF668396FF576F83FF4F6678FF576F83FF627C
      92FF6E8DA1FF6E8DA1FFBACAD6FF00000000C8C8C8F6EBEBEBFFFDFDFDFFFAFA
      FAFFE6EFFBFF79B5FCFF8CBDFDFF91C0FDFF80B6FDFFB6D5FBFFFDFDFDFFDADA
      DAFFBCBCBCFF141414150000000000000000C8C8C8F6EBEBEBFFFDFDFDFFFAFA
      FAFFF5E6EAFFDA8195FFDE8EA1FFE093A5FFDB8297FFE9B7C3FFFDFDFDFFDADA
      DAFFBCBCBCFF141414150000000000000000CDCDCDFFFDFDFDFFFDFDFDFFFCFC
      FCFFF7F7F7FFE6F1EBFF6BB28FFF62AD88FFADD3BFFFFDFDFDFFDCDCDCFFBFBF
      BFFF141414150000000000000000000000000000000000000000000000000000
      00000000000000000000DAD0C8FF5E412DFF62E1F5FF00BBE7FF24B7DDFF72B0
      C6FFC3B8B1FF000000000000000000000000CDCDCDFFFDFDFDFFFDFDFDFFFCFC
      FCFFF7F7F7FFE9F1FDFF80B6FCFF73B1FCFFB6D5FBFFFDFDFDFFDCDCDCFFBFBF
      BFFF14141415000000000000000000000000CDCDCDFFFDFDFDFFFDFDFDFFFCFC
      FCFFF7F7F7FFF7E9ECFFDA8296FFD97590FFE9B7C3FFFDFDFDFFDCDCDCFFBFBF
      BFFF14141415000000000000000000000000CECECEFFFDFDFDFFE0E0E0FFC8C8
      C8F9BFBFBFE2F7F7F7FFE3EFE9FFAED3C0FFFDFDFDFFDEDEDEFFC2C2C2FF1414
      1415000000000000000000000000000000000000000000000000000000000000
      000000000000000000008C7567FF7BD7F8FF5E412DFF50CEF7FF0190DAFF1A87
      C2FF8C7567FF000000000000000000000000CECECEFFFDFDFDFFE0E0E0FFC9C9
      C9F9C3C3C3E2F7F7F7FFE6EFFBFFB7D5FBFFFDFDFDFFDEDEDEFFC2C2C2FF1414
      141500000000000000000000000000000000CECECEFFFDFDFDFFE0E0E0FFC9C9
      C9F9C3C3C3E2F7F7F7FFF5E6EAFFE9B8C4FFFDFDFDFFDEDEDEFFC2C2C2FF1414
      141500000000000000000000000000000000D0D0D0FFFDFDFDFFCDCDCDFF0000
      0000B5B5B5CDF3F3F3FFFBFBFBFFFDFDFDFFE0E0E0FFC7C7C7FF141414150000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000644835FF66CCFFFFA6E5FFFF5E412DFF19A8F2FF008A
      D6FF644835FF000000000000000000000000D0D0D0FFFDFDFDFFCDCDCDFF0000
      0000B9B9B9CDF3F3F3FFFBFBFBFFFDFDFDFFE0E0E0FFC7C7C7FF141414150000
      000000000000000000000000000000000000D0D0D0FFFDFDFDFFCDCDCDFF0000
      0000B9B9B9CDF3F3F3FFFBFBFBFFFDFDFDFFE0E0E0FFC7C7C7FF141414150000
      000000000000000000000000000000000000D2D2D2FFFDFDFDFFE2E2E2FFCECE
      CEFFE0E0E0FFFDFDFDFFFDFDFDFFE2E2E2FFCBCBCBFF14141415000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008C7567FF8ED2F7FF87D4FFFF68CEFFFF2DB5FBFF1D9D
      E0FF8C7567FF000000000000000000000000D2D2D2FFFDFDFDFFE2E2E2FFCECE
      CEFFE0E0E0FFFDFDFDFFFDFDFDFFE2E2E2FFCBCBCBFF14141415000000000000
      000000000000000000000000000000000000D2D2D2FFFDFDFDFFE2E2E2FFCECE
      CEFFE0E0E0FFFDFDFDFFFDFDFDFFE2E2E2FFCBCBCBFF14141415000000000000
      000000000000000000000000000000000000D3D3D3FFFDFDFDFFFDFDFDFFFDFD
      FDFFFDFDFDFFFDFDFDFFE4E4E4FFCDCDCDFF1414141500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C3B8B1FF89B2C6FF8DD2F7FF65CCFFFF42B7F3FF4493
      BAFFC3B8B1FF000000000000000000000000D3D3D3FFFDFDFDFFFDFDFDFFFDFD
      FDFFFDFDFDFFFDFDFDFFE4E4E4FFCDCDCDFF1414141500000000000000000000
      000000000000000000000000000000000000D3D3D3FFFDFDFDFFFDFDFDFFFDFD
      FDFFFDFDFDFFFDFDFDFFE4E4E4FFCDCDCDFF1414141500000000000000000000
      000000000000000000000000000000000000D5D5D5FFD4D4D4FFD2D2D2FFD1D1
      D1FFD0D0D0FFCECECEFFCDCDCDFF141414150000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C3B8B1FF8C7567FF644835FF8C7567FFC3B8
      B1FF00000000000000000000000000000000D5D5D5FFD4D4D4FFD2D2D2FFD1D1
      D1FFD0D0D0FFCECECEFFCDCDCDFF141414150000000000000000000000000000
      000000000000000000000000000000000000D5D5D5FFD4D4D4FFD2D2D2FFD1D1
      D1FFD0D0D0FFCECECEFFCDCDCDFF141414150000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CFAD8DFF0000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B0B0FFB6B6B6FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BC8E5EFFBA8B5AFFF1E7DEFF000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF836950FFE5E1DCFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4B4B4FFE0E0E0FFD8D8D8FFB6B6
      B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      00000000000000000000B0A197FF0000000000000000B0A197FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C3996EFFE2CEBAFFBA8A5AFF000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF836950FFD9933FFF836950FFE7E2
      DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB7B7B7FFE2E2E2FFFDFDFDFFFDFDFDFFD9D9
      D9FFB6B6B6FFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000AB9B91FFD3CBC6FF8A7465FFA9998EFFA9998EFF8A7465FFD3CBC6FFAB9B
      91FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7D7C7FFBC8E5EFFF9F6F1FFE2CDB9FFB88756FFC297
      6CFFC49C72FFD7BBA0FF0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFD9D1CAFF836950FFDB9541FFDB9541FFDF9945FF8369
      50FFD8D0C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFBBBBBBFFE4E4E4FFFDFDFDFFFBECD5FFFDD297FFFDFB
      F7FFD9D9D9FFB7B7B7FFFFFFFFFFFFFFFFFF0000000000000000B0A197FFDDD7
      D3FF7E6757FFA58561FFCE9F5FFFCD8D34FFCD8D33FFCD9E5DFFA4845FFF7E67
      57FFDDD7D3FFB0A197FF00000000000000000000000000000000DBC2ABFF0000
      000000000000D9BFA7FFCFAE8EFFEBDED1FFFDFCFAFFFDFCFAFFFDFBF8FFF4EB
      E3FFF1E7DDFFD8BEA3FFBB8B5BFFDFC9B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFDCD6CEFF836950FFF7D181FFF9DC8CFFDB9541FFDB9541FFE7A1
      4DFF836950FFC6BCB0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFBEBEBEFFE5E5E5FFFDFDFDFFFBECD6FFFDCD86FFFFCF8CFFFAD1
      97FFF9F7F3FFD9D9D9FFB7B7B7FFFFFFFFFF0000000000000000927D6FFF8068
      58FFCAB092FFD79A43FFE2972CFFECA035FFE49938FFE9BD6DFFD2953FFFC6AD
      89FF806858FF927D6FFF00000000000000000000000000000000CDAB8AFFCCA9
      87FF00000000BE9264FFF8F1ECFFFDFBF8FFF8F0E7FFF7EFE6FFF7EEE4FFF8F0
      E8FFF8F1EAFFFDFBF9FFF2E9E0FFC3996FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF836950FF836950FF836950FFFEE8AAFFEAA450FFE29C48FF8369
      50FF836950FF836950FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFC2C2C2FFE7E7E7FFFDFDFDFFFBECD6FFFDCD88FFFFD598FFFFD69CFFFFD0
      8EFFF7CC8DFFFDFCFBFFD9D9D9FFB7B7B7FF00000000BEB2A9FF887262FFECE8
      E6FFDFB376FFE49C2DFFC58E35FF7B582BFF79562BFFB77D35FFE9BD6DFFD9AD
      67FFE2DFCFFF887161FFBEB2A9FF000000000000000000000000D2B396FFEADB
      CCFFCCA886FFBB8D5DFFFAF7F2FFFAF3ECFFF8F1E9FFF8F0E7FFF7EFE6FFF7EE
      E4FFF6ECE2FFF7EFE7FFF4ECE5FFC1966AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF836950FFFFEDD3FFF8B25EFFEEA854FF8369
      50FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5C5
      C5FFE8E8E8FFFDFDFDFFFBECD6FFFDCD88FFFFD598FFFFD79EFFFFD69BFFFFCE
      89FFFDE1BAFFFDFDFDFFD7D7D7FFB5B5B5FFC6BBB4FF8C7768FFF7F6F5FFFFFF
      FFFFCF8F37FFF6B039FF7C5A2CFF513C26FF513C26FF79562BFFE59A37FFCE8E
      34FFF7F7EAFFF3F1E9FF8B7566FFC6BBB4FF00000000EEE3D8FFD0AF90FFF8F4
      EFFFEADACBFFB98958FFFAF6F1FFFAF4EEFFF9F2EAFFF8F1E9FFF8F0E8FFF7EF
      E6FFF7EEE4FFF8F1E9FFF3EAE2FFC2986DFFFFFFFFFFFFFFFFFFFFFFFFFFBAAB
      9AFF8C7154FF8C7154FFBAAB9AFF82674DFFFFF0DFFFFFBD70FFFAB460FF8369
      50FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9C9C9FFE9E9
      E9FFFDFDFDFFFBEBD3FFFFCC83FFFFD498FFFFD79EFFFFD69BFFFFCF8BFFFDE2
      BCFFFDFDFDFFD9D9D9FFB9B9B9FFFFFFFFFFC6BBB4FF8C7667FFF6F5F4FFFFFF
      FFFFD08F37FFF6B039FFB3996AFFB1A391FF513C26FF7B592BFFECA137FFCE8E
      34FFF4F4E2FFF3F1EAFF8B7566FFC6BBB4FFE3D0BEFFDBC1AAFFEFE5DBFFFEFD
      FBFFFEFDFBFFBB8D5DFFFAF6F2FFFAF5EFFFFAF4EEFFFAF3EDFFF9F3EBFFF9F2
      EBFFF8F1E9FFFAF5EFFFF3EAE2FFC2986DFFFFFFFFFFFFFFFFFFBAAB9AFF3185
      9AFF04A7DFFF04A3DEFF31849AFF795F41FFFFF2E4FFFFC686FFFFBD6EFF8369
      50FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDCDCDFFEBEBEBFFFDFD
      FDFFFAFAFAFFFBF3E7FFFECE89FFFFD496FFFFD59AFFFFCF8BFFFDE2BCFFFDFD
      FDFFDADADAFFBDBDBDFFFFFFFFFFFFFFFFFF00000000BEB2A9FF887262FFEBE8
      E4FFE6C390FFEFC163FFFEFEFCFFB3996AFF7C5B2CFFC58F35FFE2992DFFDDB1
      70FFE5E1D7FF887161FFBEB2A9FF00000000CFAE8EFFFAF5F1FFFEFCFBFFFAF4
      EDFFF9F3ECFFC8A27AFFE4D1BEFFFAF6F2FFFAF6F1FFFAF6F1FFFAF5F1FFFAF5
      F1FFFAF5F0FFF6F0E9FFDCC4ADFFCFAE8EFFFFFFFFFFFFFFFFFF8C7154FF30CA
      E9FF5BE8FAFF2CD1F4FF04A5DEFF745838FFFFF4E7FFFFCB90FFFFC481FF8369
      50FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDCDCDFFFDFDFDFFFDFD
      FDFFFCFCFCFFF7F7F7FFFDF5EAFFFECF8AFFFFCC83FFFDE2BCFFFDFDFDFFDCDC
      DCFFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000927D6FFF8068
      58FFCAB091FFE6BD76FFEFC366FFF6B039FFF6B039FFE49D2EFFD79942FFC7AE
      8EFF806858FF927D6FFF0000000000000000CDAB8AFFFBF9F5FFFBF6F1FFFAF5
      EFFFFAF4EDFFEBDCCDFFC8A279FFBC8E5EFFBC8E5FFFBC8E5EFFBA8A59FFBC8F
      5FFFBC8F5FFFC09467FFDAC0A7FF00000000FFFFFFFFFFFFFFFF8C7154FF5CE4
      F0FFB8FAFEFF5BEDFCFF04AEE2FF745838FFFFF5EAFFFFF1E2FFFFD7AAFF8369
      50FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCECECEFFFDFDFDFFE0E0
      E0FFCBCBCBFFCECECEFFF7F7F7FFFBF3E8FFFDE3BDFFFDFDFDFFDEDEDEFFC3C3
      C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFB3ABFF00000000B0A197FFDDD7
      D3FF7E6757FFA58561FFD7B27AFFCE8D35FFCD8D35FFCD9E60FFA58460FF7E67
      57FFDDD7D3FFB0A197FF00000000BFB3ABFFCDAB8AFFFBF8F5FFFBF7F2FFFBF5
      EFFFFAF5EFFFFAF4EEFFF9F3ECFFF9F2EBFFFAF5EFFFF6EFEAFFD2B395FF0000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFBAAB9AFF4BA6
      A4FF5CE9F1FF30DCEEFF318A9BFF795F41FF836950FF836950FF836950FF8369
      50FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0D0D0FFFDFDFDFFCDCD
      CDFFFFFFFFFFD4D4D4FFF3F3F3FFFBFBFBFFFDFDFDFFE0E0E0FFC7C7C7FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA39286FFAD9E93FFFAF9F8FFFFFF
      FFFFAB9B91FFD3CBC6FF8A7465FFA9998EFFA9998EFF8A7465FFD3CBC6FFAB9B
      91FFFFFFFFFFF9F8F7FFAD9E93FFA39286FFCDAB8AFFFBF8F5FFFBF8F3FFFBF7
      F2FFFBF6F2FFFBF6F0FFFBF5F0FFFAF5EFFFFBF8F3FFF6EFEAFFD2B395FF0000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFBAAB
      9AFF8C7154FF8C7154FFBAAB9AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2D2D2FFFDFDFDFFE2E2
      E2FFCECECEFFE0E0E0FFFDFDFDFFFDFDFDFFE2E2E2FFCBCBCBFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000A5958AFF968375FFE8E4
      E1FFFDFCFCFFFFFFFFFFB0A197FFFFFFFFFFFFFFFFFFB0A197FFFFFFFFFFFDFC
      FCFFE8E4E1FF978476FFA5958AFF00000000D7BBA0FFEBDDCFFFFBF8F5FFFBF8
      F5FFFBF8F5FFFBF8F5FFFBF8F5FFFBF8F4FFF8F4EFFFE5D3C2FFDBC3ABFF0000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3D3D3FFFDFDFDFFFDFD
      FDFFFDFDFDFFFDFDFDFFFDFDFDFFE4E4E4FFCDCDCDFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000CEC5BFFF937E
      71FFB4A69CFFDDD6D2FFFAF9F8FFFFFFFFFFFFFFFFFFFAF9F8FFDDD6D2FFB4A6
      9CFF937E71FFCEC5BFFF000000000000000000000000D7BCA2FFCEAC8BFFCEAC
      8BFFCEAC8BFFCEAC8BFFCEAC8BFFCEAC8BFFD0AF90FFE3D0BEFF000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5D5D5FFD4D4D4FFD2D2
      D2FFD1D1D1FFD0D0D0FFCECECEFFCDCDCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000C3B7B0FF998779FF978476FF968375FF968375FF978476FF998779FFC3B7
      B0FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000082776BFF00000000C7C2
      BDFF9E968DFF6E6356FF9B9389FFC7C2BDFF0000000082776BFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005087ABFF0547ABFF013F
      BBFF0347ABFF437AA5FF00000000000000000000000000000000000000000000
      0000C1976BFFE3D0BEFF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A591
      77FFAE9C87FFD6CDC2FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000082776BFF00000000326F
      93FF199EDEFF006DBCFF129ADDFF2C749EFF0000000082776BFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004E85ADFF2262C7FF1E74E6FF0276
      EAFF0061DDFF014BBCFF4178A4FF000000000000000000000000000000000000
      0000D8BDA3FFD4B699FFBB8C5CFFE0CAB5FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008E72
      54FFFFD598FF866A4AFFBAA78DFF8B7056FF8B7056FF8B7056FF8B7056FF8B70
      56FF8B7056FFB9AB9BFF000000000000000000000000D2CECAFF756B5EFF078B
      E0FF34C1F5FF0C76A6FF00BCF3FF028ADFFF665848FFA18F78FFBAA68EFF8B71
      57FF8B7157FF8B7157FF8B7157FFB9AB9BFF0000000000000000000000000000
      0000000000000000000000000000000000000447ABFF609DF4FF157CFFFF0073
      F8FF0073EEFF0065E1FF0347ACFF000000000000000000000000000000000000
      000000000000C2976CFFF5EEE7FFD5B89DFFBA8B5AFFDCC4ADFF000000000000
      0000000000000000000000000000000000000000000000000000000000008E72
      54FFFFD598FFFFD598FF806E54FF82CEE0FF20C0FDFF21C0FDFF21C1FDFF20C1
      FEFF20BFFCFFBAA68EFF0000000000000000D2CECAFF82776BFF706558FF56BF
      F9FFC8F1FFFF6B8A8CFF97E5FEFF09A2F2FF706355FF817263FFCFC7BDFFFBF4
      EDFFF6EADAFFF6E8DAFFF6E8D8FF8B7157FF0000000000000000000000000000
      000000000000C1976BFFE3D0BEFF00000000013FBCFFAECDFEFFFFFFFFFFFFFF
      FFFFFFFFFFFF157CEFFF013FBBFF0000000000000000D1B193FFB98857FFB887
      55FFB88755FFD5B89DFFFFFFFFFFFFFFFFFFF8F3EFFFD5B89DFFC49C72FF0000
      0000000000000000000000000000000000008E7254FF8E7254FF8E7254FF8E72
      54FFFFD598FFF49B34FFFFD598FF85694AFFB0A793FF6F6B56FF6F6B56FF6F6B
      56FF6E6B56FF806143FF8B7056FFB9AB9BFF82776BFFFFFFFFFF706558FFA6E3
      FDFFD4F7FEFF708B83FFACE8FEFF4DCDF9FF6F6151FFF6E7D7FF7D6D5BFFF5E5
      D2FFECCCA9FFEBCAA6FFF6E8DAFF8B7157FF0000000000000000000000000000
      000000000000D8BDA3FFD4B699FFBB8C5CFF0A4BADFF8DB5F6FF4A92FFFF0E74
      FFFF1E86FFFF3D8AEBFF0447A9FF00000000CEAC8BFFDAC1A9FFFEFEFDFFFFFF
      FFFFFFFFFFFFFFFFFFFFFEEEE2FFFDE3D0FFFEF2E9FFFFFFFFFFDFC9B4FFC298
      6DFF000000000000000000000000000000008E7254FFFFE3BAFFFFD598FFFFD5
      98FFFFD598FFFFAA49FFF49B34FFFFD598FF8D7152FFE7DDD2FFF7E9DCFFF7E8
      D9FFF7EBDDFFF7E9DCFFF6E8D8FF8B7056FF82776BFFD2CECAFF756B5EFF125E
      82FF30677CFF3E6D7CFF1B5A79FF065D90FF746859FFCCBFAFFF746553FFCEBA
      A3FF9D7959FF9B7656FFF6EADAFF8B7157FF0000000000000000000000000000
      00000000000000000000C2976CFFF5EEE7FF5980A1FF3671CFFF8DB5F7FFB8D6
      FEFF6FA8F5FF2A68CAFF4980A3FF00000000B98857FFFEFEFDFFFEF2E9FFFEEC
      DFFF153F56FF285E88FF4989BDFF6CA3C2FFE1D5CCFFFCE4D1FFFFFFFFFFC8A2
      7AFFEFE4DAFF0000000000000000000000008E7254FFFFE3BAFFFFB86EFFFFB4
      65FFFFB057FFFFAA49FFFEA43FFFF49B34FFFFE3BAFF896B4BFFD3BEA7FFAC8B
      67FFAC8965FFAB8863FFF6E8DAFF8B7056FF0000000082776BFF000000001D3B
      46FF11A0E7FF15ADEFFF0693E4FF193D4BFFF7EBDEFF7D6F5DFFF7E8D8FFEDD3
      B4FFEDCFAFFFEDCDABFFF7E9DAFF8B7157FF0000000000000000D1B193FFB988
      57FFB88755FFB88755FFD5B89DFFFFFFFFFFFFFFFFFF6692BAFF1453B7FF013F
      BCFF084AAEFF4F84AFFF0000000000000000C09569FFFFFFFFFFFEF0E5FFFEEE
      E2FF2B6484FF94C7F9FF91C9F9FF3E85C9FF2467ACFFD7D0CDFFFFFFFFFFCDAA
      89FFEADCCEFF0000000000000000000000008E7254FFFFE3BAFFFFE3BAFFFFE3
      BAFFFFE3BAFFFFAA49FFFEA53EFFFFE3BAFF8D7051FFF8ECDEFFF0D6BAFFEFD3
      B4FFEECFB0FFEDCEABFFF6EADAFF8B7056FF0000000082776BFF000000007267
      59FF3BACC7FFA1ECF8FF0080BCFF706454FFF8EDE1FF7A6D5EFFD0BEAAFF9F7D
      60FF9C7A5CFF9B7859FFF7EADDFF8B7157FF00000000CEAC8BFFDAC1A9FFFEFE
      FDFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEE2FFFDE3D0FFFEF2E9FFFFFFFFFFDFC9
      B4FFC2986DFF000000000000000000000000C09569FFFFFFFFFFFEF1E8FFFEF0
      E6FF4089AAFFE0F2FFFF519AD8FF1777BEFF4698C5FF458CC3FFDCEAF7FFCDAA
      89FFEADCCEFF0000000000000000000000008E7254FF8E7254FF8E7254FF8E72
      54FFFFE3BAFFFEA94AFFFFE3BAFF8D7153FFD5C4B3FFB19577FFB09373FFAF90
      6FFFAE8E6BFFAD8C68FFF7E9DAFF8B7056FF0000000000000000000000007D73
      67FF8E7C69FF7A6F61FFAC9F8EFF7B6E5FFFF8EFE4FFF8EDE1FFF0DAC1FFF0D6
      BCFFEED2B6FFEDD0B2FFF7EBDDFF8B7157FF00000000B98857FFFEFEFDFFFEF2
      E9FFFEECDFFFFDEBDCFFFDE9D9FFFDE7D6FFFDE6D3FFFDE4D0FFFCE4D1FFFFFF
      FFFFC8A27AFFEFE4DAFF0000000000000000B98857FFFEFEFDFFFEF6F0FFFEF2
      E9FFA7BCC9FF77B6D5FF90B7D1FF52C9E4FF58DFF5FF75D0EDFF4E9DDDFFB49D
      87FFF0E6DCFF0000000000000000000000000000000000000000000000008E72
      54FFFFE3BAFFFFE3BAFF85694AFFFDF9F5FFF6E7D6FFF5E3D0FFF4DFCAFFF2DC
      C3FFF1D8BDFFF0D4B6FFF7EADDFF8B7056FF0000000000000000000000008277
      6BFFBAA68EFFFDFAF7FFFAF3EBFF807162FFF9EFE5FFAF967BFFA08467FF9D81
      62FF9D7C5FFF9C7A5DFFF8ECDEFF8B7157FF00000000C09569FFFFFFFFFFFEF0
      E5FFFEEEE2FFFEEDE0FFFEEBDDFFFDE9DAFFFDE8D7FFFDE6D4FFFDE4D1FFFFFF
      FFFFCDAA89FFEADCCEFF0000000000000000CEAC8BFFDAC1A9FFFDFCFBFFFFFF
      FFFFFFFFFFFFB4D7E7FF73BAD7FFC2F6FDFF60DFF7FF5AE2F8FF76D3F0FF4595
      D7FF000000000000000000000000000000000000000000000000000000008E72
      54FFFFE3BAFF827054FFAFA997FFFBF4EDFFB49D87FFB39B83FFB2997CFFB196
      79FFB09374FFAF9171FFF7EBDDFF8B7056FF0000000000000000000000000000
      00008B7157FFFCF6F1FFF7EBDEFFFAF3EBFFF5E4D2FFF3E0CDFFF8ECE0FFF6EA
      DDFFF6E9DAFFF6E6D6FFF8EDE0FF8B7157FF00000000C09569FFFFFFFFFFFEF1
      E8FFFEF0E6FFFEEFE3FFFEEDE0FFFEECDDFFFDEADBFFFDE8D7FFFDE6D5FFFFFF
      FFFFCDAA89FFEADCCEFF000000000000000000000000D1B193FFBA8A59FFB887
      55FFB88755FFB88755FF828675FF74CBE7FFC7F7FDFF5BDCF5FF57E1F7FF78D4
      F1FF499ADEFFD6E8F7FF0000000000000000000000000000000000000000A591
      77FF886C4EFF8BECFFFF756D56FFFCF5F0FFF9EEE2FFF8EBDDFFF7E8D8FFF8EC
      E0FFF6EADDFFF6E9DAFFF8EDE0FF8B7056FF0000000000000000000000000000
      00008B7157FFFCF7F3FFBDAA96FFA28C72FFA1896FFFA58A70FFF8EDE2FFA48B
      6EFFA38A68FFA48564FFA3917BFF8B7157FF00000000B98857FFFEFEFDFFFEF6
      F0FFFEF2E9FFFEF1E6FFFEEFE4FFFEEEE1FFFEECDEFFFDEADBFFFDEADCFFFFFF
      FFFFC7A078FFF0E6DCFF00000000000000000000000000000000000000000000
      0000000000000000000000000000BFE8F5FF76D3EEFFC7F7FDFF5CDCF5FF58E2
      F7FF77D6F2FF4EA2E2FFDCEAF6FF000000000000000000000000000000000000
      0000BAA68EFF4AD5F8FF756C55FFFCF6F1FFFAF0E6FFFAEEE3FFF9ECDFFFF8ED
      E2FFA48B6DFFA38A67FFA3917AFF8B7056FF0000000000000000000000000000
      00008B7157FFFCF8F5FFFAF0E6FFF8EDE1FFF7EADCFFF6E6D6FFF9EEE5FFA48D
      72FFFAF5EEFFFAF5EEFFDECDBAFFB1A08FFF00000000CEAC8BFFDAC1A9FFFDFC
      FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFC9
      B4FFC2986DFF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C1EBF7FF7AD4EEFFC4F6FDFF69DD
      F6FF6ACAEDFF60A3D7FF66A2D5FF000000000000000000000000000000000000
      0000B9AB9BFFBAA68EFF806143FFFCF7F3FFFAF0E6FFFAF0E6FFF9EEE3FFF9EE
      E5FFA48D71FFFAF5EEFFDECDBAFFAD9C89FF0000000000000000000000000000
      00008B7157FFFCFAF6FFBDAC9BFFA38D76FFA28C73FFA58E75FFFAF1E6FFA38D
      75FFFAF5EEFFDECDBAFFB3A392FF000000000000000000000000D1B193FFBA8A
      59FFB88755FFB88755FFB88755FFB88755FFB88755FFB88755FFB88755FFCBA7
      85FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5E6F5FF81D6EEFFB2E3
      F9FF8BC0E7FFAED3F6FFC4E0FCFF68A2D4FF0000000000000000000000000000
      000000000000000000008B7056FFFDFCF9FFFCFAF6FFFCF7F4FFFCF7F2FFFBF4
      EDFFA2968CFFDECDBAFFA08C74FF000000000000000000000000000000000000
      00008B7157FFFDFCF9FFFCFAF6FFFCF7F4FFFCF7F2FFFCF5F0FFFBF4EDFFA296
      8CFFDECDBAFFB6A796FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B1E6F5FF74BE
      E7FFB4D2F0FFE5F3FFFFACD2EFFF5696CCFF0000000000000000000000000000
      00000000000000000000B9AB9BFF8B7056FF8B7056FF8B7056FF8B7056FF8B70
      56FF8B7056FFB3A393FF00000000000000000000000000000000000000000000
      0000B9AB9BFF8B7157FF8B7157FF8B7157FF8B7157FF8B7157FF8B7157FF8B71
      57FFB9AA9AFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BCE5
      F4FF55A5D8FF85B1DBFF439DD0FFB1D8EEFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000414141966E6E6EFF6E6E6EFF6E6E
      6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E6EFF6E6E
      6EFF6E6E6EFF6E6E6EFF41414196000000000000000000000000000000000000
      00000202022B0F0F0F460000001A474747B75F5F5FD4202020610202021D0F0F
      0F4D00000009000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF84B094FF2472
      40FF186A36FF247240FF84B094FFFFFFFFFF0000000000000000000000000000
      000000000000A29B8EFF6A5F4CFF655B48FF645A47FF9F988CFF000000000000
      000000000000000000000000000000000000707070FFFBFBFBFFFBFBFBFFFBFB
      FBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFB
      FBFFFBFBFBFFFBFBFBFF707070FF000000000000000000000000000000001616
      1642676767E5777777F6252525907E7E7EF4A1A1A1FF434343B4444444B58484
      84FE3C3C3CA0000000020000000000000000FFFFFFFFDFB493FFD59D73FFD196
      67FFCE9262FFCB8E5DFFC98A5AFFC78755FFC38451FF6A7643FF278C52FF63BA
      8DFF95D2B2FF63BA8DFF278C52FF81AE91FF0000000000000000000000000000
      0000A49D8FFF675D4AFFFFFFFFFFFFFFFFFFFFFFFFFF989084FFA19A8DFF0000
      000000000000000000000000000000000000737373FFFBFBFBFFA9A9A9FFA9A9
      A9FFA9A9A9FFA9A9A9FFA9A9A9FFA9A9A9FFA9A9A9FFA9A9A9FFA9A9A9FFA9A9
      A9FFA9A9A9FFFBFBFBFF737373FF000000000000000000000001000000161B1B
      1B53949494FE9E9E9EFF8B8B8CFF979797FD9FA0A0FF8C8C8CFC959595FFA3A3
      A3FF585858BB0000001A0000001000000000FFFFFFFFD7A174FFF8F2EDFFF7F0
      EAFFF6EDE6FFF4EAE2FFF3E7DEFFF1E4DBFFF0E2D8FF206E3CFF61BA8BFF5FBA
      87FFFFFFFFFF5FB987FF66BC8FFF1F6F3CFF0000000000000000000000009084
      71FF6D624EFFB2A797FF635947FF6A604DFF8D8370FFA99F8EFF695E4BFFA99F
      8EFF817361FF817361FFB3ABA1FF00000000767676FFFBFBFBFFE5E5E5FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFE5E5E5FFFBFBFBFF767676FF00000000000000000F0F0F3F656565D84545
      45B8848484EAAFAFAFFFB7B7B6FFBEBDBDFFBFBEBEFFBDBDBCFFB2B1B1FFA7A7
      A7FF4F4F4FC35F5F5FD14242429F00000004FFFFFFFFD9A479FFF9F3EEFFEBD2
      BEFFFFFFFFFFEBD3BFFFFFFFFFFFEBD3C0FFFFFFFFFF307A4BFF9CD4B6FFFFFF
      FFFFFFFFFFFFFFFFFFFF95D2B2FF186A36FF0000000000000000ADA596FF786C
      56FFFBF6F1FF645A47FFBFB7ABFFBFB7ABFF867C6BFFFAF3EAFF655B48FFFAF2
      E8FFF5E4D3FFF5E4D1FF817361FF000000007A7A7AFFFBFBFBFFA9A9A9FFA9A9
      A9FFA9A9A9FFE6E6E6FFCC7C4EFFCC7C4EFFCC7C4EFFCC7C4EFFCC7C4EFFCC7C
      4EFFCC7C4EFFCC7C4EFFCC7C4EFF00000000000000005A5A5AA7B8B8B8FFB0B0
      B0FFB4B4B4FFC6C5C4FFD9D9D7FFE7E7E7FFE8E7E7FFE2E2E1FFCFCECEFFBDBD
      BCFFB1B2B2FFB7B7B7FF9D9D9DFF13131336FFFFFFFFDDA87DFFF9F3EFFFEBD0
      BAFFEBD0BBFF74B579FF74B579FF74B579FFEBD1BDFF48895FFF90D3B1FF92D6
      B1FFFFFFFFFF64BC8CFF66BC8FFF1F6F3CFF00000000ADA596FF7D715AFFB2A7
      97FF6C614DFFBDB3A4FFF7ECDDFFBEB1A0FF665C49FFF6E6D4FF655B48FFF5E4
      D0FFEBCAA6FFF5E4D3FF817361FF000000007E7E7EFFFCFCFCFFA9A9A9FFA9A9
      A9FFA9A9A9FFE8E8E8FFCC7C4EFFEDCCAFFFEDCCAFFFEDCCAFFFEDCCAFFFEDCC
      AFFFEDCCAFFFEDCCAFFFCC7C4EFF000000000000000027272749939393DFC2C2
      C2FFCDCCCCFFD6D5D5FFC6C6C6F1787878946262627B9EA0A0C5D7D8D8FFD1D1
      D0FFC9C9C9FFB2B2B2FB565656A10202020DFFFFFFFFDFAA82FFF9F3EFFFEACE
      B7FFFFFFFFFF74B579FF94D49BFF73B578FFFFFFFFFF9DAF91FF60AB81FF95D4
      B4FFBAE6D0FF69BB8FFF2C8F56FF81AE91FFADA596FF7E715AFFFFFFFFFF796D
      57FFC4BDB2FFF8EDE2FFBEB3A4FF6B604CFFF7E9D9FF675C49FF97856DFFF6E5
      D1FFECCBA8FFF5E6D3FF817361FF00000000838383FFFCFCFCFFA9A9A9FFA9A9
      A9FFA9A9A9FFEBEBEBFFCC7C4EFFEDCCAFFFEDCCAFFFEDCCAFFFEDCCAFFFEDCC
      AFFFEDCCAFFFEDCCAFFFCC7C4EFF000000000B0B0B334949499D858585DCD3D3
      D2FFD0D0CFFFC5C6C6FB3C3C3C5C0000000000000000020202098F8F8FC1D0D0
      D0FFD7D7D6FFB4B4B4F95A5A5AB92D2D2D6CFFFFFFFFE1AE87FFFAF4F0FFEACB
      B2FFEACCB3FF74B579FF73B578FF72B477FFEACEB7FF6FB374FF63A371FF5895
      6DFF4E8E65FF48885EFF7A7E4EFFFFFFFFFF7E715AFFFFFFFFFF7E715AFF9C90
      7DFFFDF8F4FFC2B7A9FF6D624EFFF8ECDFFF726651FF9D8B74FFF6E8D6FFEDCF
      AFFFEDCDABFFF6E5D4FF817361FF00000000878787FFFCFCFCFFA9A9A9FFA9A9
      A9FFA9A9A9FFEDEDEDFFCC7C4EFFEDCCAFFFEDCCAFFFEDCCAFFFEDCCAFFFEDCC
      AFFFEDCCAFFFEDCCAFFFCC7C4EFF000000002D2D2D67E6E6E6FFDCDCDCFFDBDA
      DAFFCBCACAFF939393DB0000000D0000000000000000000000003D3D3D6DC1C1
      C1FFD2D1D1FFDBDBDBFFEBEBEBFF979797D0FFFFFFFFE3B18CFFFAF6F1FFEAC9
      AEFFFFFFFFFFEAC9B0FFFFFFFFFFE9CBB3FFFFFFFFFF6EB172FF8ED295FF6AAF
      6EFFFFFFFFFFF1E5DBFFC68654FFFFFFFFFF7E715AFFFFFFFFFFFFFFFFFFA99F
      8EFFFDF9F5FF766A54FFF9F0E4FF786B55FFA4947DFFF7EADCFFEFD3B7FFEDD2
      B3FFECCEAFFFF6E6D7FF817361FF000000008B8B8BFFFDFDFDFFA9A9A9FFA9A9
      A9FFA9A9A9FFEFEFEFFFCC7C4EFFEDCCAFFFEDCCAFFFEDCCAFFFEDCCAFFFEDCC
      AFFFEDCCAFFFEDCCAFFFCC7C4EFF0000000024242443CACACADADEDEDEF1F8F8
      F9FFC5C5C5FF878787E00000001800000000000000000000000038383879B3B3
      B3FFE0DFDFFFF3F3F3FDD4D4D4E48080809BFFFFFFFFE5B48FFFFAF6F2FFE9C6
      AAFFE9C6ACFFEAC7ACFFE9C7ADFFE9C9AEFFE9C9B0FF6BB070FF69AF6DFF67AD
      6CFFE8CCB5FFF2E7DEFFC88A58FFFFFFFFFFADA596FFADA596FFFFFFFFFFB0A5
      95FF7D7059FFFAF3E9FF7B6F58FFA79883FFF8EDE1FFF0DAC1FFF0D6BCFFEED2
      B6FFEDD0B2FFF6E7D7FF817361FF000000008F8F8FFFFDFDFDFFA9A9A9FFA9A9
      A9FFA9A9A9FFF1F1F1FFCC7C4EFFEDCCAFFFEDCCAFFFEDCCAFFFEDCCAFFFEDCC
      AFFFEDCCAFFFEDCCAFFFCC7C4EFF00000000000000000E0E0E3B828282CFFFFF
      FFFFCBCBCBFF9F9F9FFD3131318100000008000000000202022D737373D5B1B1
      B1FFF1F0F0FFD7D7D7F9323232840303030FFFFFFFFFE7B794FFFBF7F4FFE9C3
      A6FFFFFFFFFFE8C4A9FFFFFFFFFFE9C6AAFFFFFFFFFFE8C7ACFFFFFFFFFFE8C8
      B0FFFFFFFFFFF7F1EBFFCB8F5EFFFFFFFFFF00000000ADA596FF7E715AFF7E71
      5AFFFCF5F0FF7E715AFFAA9B86FFF9EFE5FFF2DECAFFF2DBC4FFF0D9BFFFF0D4
      B9FFEED2B5FFF7E9D8FF817361FF00000000939393FFFDFDFDFFA9A9A9FFA9A9
      A9FFA9A9A9FFF4F4F4FFCC7C4EFFEDCCAFFFEDCCAFFFEDCCAFFFEDCCAFFFEDCC
      AFFFEDCCAFFFEDCCAFFFCC7C4EFF00000000000000006262629FEDEDEDFFFAFA
      FAFFE9E9E9FFAEAEAEFF8D8D8DFC525252BE404040A76E6E6EE19E9E9EFFC9C9
      C9FFFAFAF9FFF8F8F8FFBBBBBBF414141433FFFFFFFFE9BA98FFFBF7F4FF64A4
      FFFF63A3FFFF61A2FFFF60A1FFFF5E9FFFFF5B9DFFFF599AFFFF5698FFFF5395
      FFFF5194FFFFFBF7F4FFCE9363FFFFFFFFFF000000000000000000000000A99F
      8EFFFCF6F1FFFBF5EEFFFAF3EBFFF5E4D2FFF3E0CDFFF7E9DAFFF5E6D7FFF5E5
      D3FFF4E2CFFFF7EADBFF817361FF00000000969696FFFEFEFEFFA9A9A9FFA9A9
      A9FFA9A9A9FFF6F6F6FFCC7C4EFFCC7C4EFFCC7C4EFFCC7C4EFFCC7C4EFFCC7C
      4EFFCC7C4EFFCC7C4EFFCC7C4EFF000000000000000049494961E8E8E8FFB7B7
      B7E5CACACAF1E0E0E0FFB7B7B7FFA8A8A8FFA4A4A4FFAEAEAEFFC9C9C8FFE4E4
      E4FFB3B3B3E0E1E1E1FDADADADCF09090910FFFFFFFFEBBD9BFFFBF7F4FF63A4
      FFFF78BDFFFF74BBFFFF70B9FFFF6CB8FFFF67B3FFFF60B0FFFF59ABFFFF53A7
      FFFF3A7CFFFFFBF7F4FFD19769FFFFFFFFFF0000000000000000000000008173
      61FFFCF7F3FFF9EEE2FFF7EBDDFFF6E6D7FFF5E3D1FFF7EADDFFA48B6FFFA38A
      69FFA48565FFA3917CFF817361FF00000000999999FFFEFEFEFFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFFEFEFEFF999999FF000000000000000000000005313131471B1B
      1B55AEAEAEECE8E8E8FFE6E6E6FFD7D7D7FFD3D3D3FFDFDFDFFFE6E6E6FFE0E0
      E0FF545454A2292929401F1F1F2C00000000FFFFFFFFECBF9EFFFBF7F4FF64A4
      FFFF63A3FFFF5FA0FFFF5C9EFFFF5799FFFF5396FFFF4C90FFFF468BFFFF4184
      FFFF3C7EFFFFFBF7F4FFD49B6EFFFFFFFFFF0000000000000000000000008173
      61FFFCF8F5FFFAF0E6FFF8EDE1FFF7EADCFFF6E6D6FFF8EBE0FFA48D73FFFAF5
      EEFFFAF5EEFFDECDBAFFAAA195FF000000009C9C9CFFFEFEFEFFA9A9A9FFA9A9
      A9FFA9A9A9FFA9A9A9FFA9A9A9FFA9A9A9FFA9A9A9FFA9A9A9FFA9A9A9FFA9A9
      A9FFA9A9A9FFFEFEFEFF9C9C9CFF000000000000000000000000000000002D2D
      2D51D7D7D7FFD9D9D9FF7F7F7FB9C1C1C1F2DEDEDEFF909090C9A1A1A1DAEDED
      EDFF8A8A8AC5000000000000000000000000FFFFFFFFEFC6A8FFFBF7F4FFFBF7
      F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7
      F4FFFBF7F4FFFBF7F4FFD8A377FFFFFFFFFF0000000000000000000000008173
      61FFFCFAF6FFFAF1E9FFF9EFE5FFF8ECE0FFF6E9DAFFF9EEE2FFA38D76FFFAF5
      EEFFDECDBAFFACA398FF00000000000000009F9F9FFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFF9F9F9FFF000000000000000000000000000000000505
      05074343435D666666880E0E0E27AFAFAFE9E2E2E2FF5353537D252525416C6C
      6C8F17171722000000000000000000000000FFFFFFFFF7E1D2FFF1C8ACFFEDC0
      9FFFEBBE9DFFEBBC9AFFE9BA96FFE7B793FFE6B590FFE4B28CFFE2AF88FFE0AC
      84FFDDA980FFDCA57CFFE2B696FFFFFFFFFF0000000000000000000000008173
      61FFFDFCF9FFFCFAF6FFFCF7F4FFFCF7F2FFFCF5F0FFFBF4EDFFA2968CFFDECD
      BAFFB0A79CFF0000000000000000000000005F5F5F96A1A1A1FFA1A1A1FFA1A1
      A1FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1
      A1FFA1A1A1FFA1A1A1FF5F5F5F96000000000000000000000000000000000000
      0000000000000000000000000000202020352C2C2C420F0F0F19000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000B3AB
      A1FF817361FF817361FF817361FF817361FF817361FF817361FF817361FFB3AB
      A0FF00000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000B00000000100010000000000800500000000000000000000
      000000000000000000000000FFFFFF00F0070000000000002003000000000000
      00010000000000000000000000000000000000000000000000C0000000000000
      00E000000000000001F00000000000000F800000000000000700000000000000
      0300000000000000000000000000000080000000000000008000000000000000
      C004000000000000E00F000000000000FF07E00FF00FFFFFFF07C0070000FFFF
      F70780030000C007E3078001C903C007C00380018811C0078003C0018001C007
      C803F001C183C007FC03F001E3C7C007FE03FC01E3C7C003FF07FE01E007C003
      FF8FFC03F00FC003FF07FC07FC3FC003FF07F807FC3FC003FF07F807FC3FFF03
      FF8FFC07FFFFFFFFFFFFFC0FFFFFFFFFFF07FF07E0FFE0FFFF07FF07E0FFE0FF
      F907C007E0BFE03FF8078007E09FE01FC0038003C00FC007C0038003C007C007
      C0038003C003C007C0038003C007C007C0038003C00FC007F807C007E01FE01F
      FB0FF80FF0BFF03FFF07F907E0FFE0FFFF07FB07E0FFE0FFFF07FF07E0FFE0FF
      FF8FFF8FF1FFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF83FF00F
      FF3FFFFFF83FE007FF3FF83FF83FC003FF1FF83FFFFF8001E00FF83FF83F8001
      E007F83FF83F8001E003F83FF83F8001E003C007F83F8001E007E00FF83F8001
      E10FF01FC0078001FF1FF83FE00F8001FF3FFC7FF01FC003FFFFFEFFF83FE007
      FFFFFFFFFC7FF00FFFFFFFFFFEFFFFFF0000FFFFFFFFFFFF0000FF83FFFFFFFF
      0000FF01FFFFFEFF0000FF01FEFFFC7F0000F901FC7FF83F0000F801F83FF01F
      0000FC01F01FE00F0000C003E00FC00700008007C007F83F00008003F83FF83F
      00008003F83FF83F00008003FFFFF83F80018003FFFFF83F80FF8007FFFFFFFF
      FFFFC00FFFFFFFFFFFFFFFFFFFFFFFFFE3FFA0BFFFFFFFF0E1FFA0BFFFFF0000
      E0FF800000000000000100000000000000010000000000000001000000000001
      0001A000000000030003A00000000003E003E00000000003E001E00000000003
      E401F00000000003FC01F00000000003FC01F00080000003FC01F001801B0003
      FE03F003FFFF0003FFFFF007FFFF0003FF3F0000FF3FFFFFFE1F0000FE1FFF83
      FC0F0000FC0FFF01F8070000F807FF01F0030000F003F901E0010000E001F801
      C0000000C000FC01800000008000C00300010000000180070003000000038003
      0007000000078003000F0000000F8003101F0000101F8003003F0000003F8007
      007F0000007FC00F00FF000000FFFFFFFF3FFFFFFF3FFF3FFE1FFC01FE1FFE1F
      FC0FFC01FC0FFC0FF8078001F807F807F0030001F003F003E0010001E001E001
      C0000001C000C000800000018000800000010001000100010003800100030003
      0007FC0700070007000FFC07000F000F101FFC07101F101F003FFC07003F003F
      007FFC07007F007F00FFFE0F00FF00FFFEFF00000000FFFFFE3F00000000FDBF
      FE3F00000000F00FFC0300000000C003D80000000000C003C800000000008001
      C00000000000000080000000000000000000000000008001000000000000C003
      0001000000004002001F000000000000001F000000008001001F00000000C003
      803F00000000F00FFFFF00000000FFFFA0BFFF83F3FFE3FFA0BFFF01F0FFE003
      8000FF01F83FE0030000F901801F00000000F801000F00000000FC0100070000
      A000C00300070000A000800700070000E00080030007E000E0008003000FE000
      F00080038003E000F0008003FE01F000F0008007FF01F000F001C00FFF80FC01
      F003FFFFFFC0FC03F007FFFFFFE0FFFF0000F0070000F83F0000E0030000F01F
      000080010000E001000080000000C00100008000000080010000800000000001
      0000018000000001000001C000000001000001C0000000010000808000008001
      000080000000E001000080000000E001000080010000E0010000E0070000E003
      0000E0070000E0070000FE3F0000E00F00000000000000000000000000000000
      000000000000}
  end
  object DDEAgenda: TDdeServerItem
    OnChange = DDEAgendaChange
    Left = 181
    Top = 224
  end
  object DSAgendaFiltro: TDataSource
    AutoEdit = False
    DataSet = CDSAgendaFiltro
    Left = 237
    Top = 252
  end
  object MenuFiltros: TPopupMenu
    OnPopup = MenuFiltrosPopup
    Left = 293
    Top = 196
    object SalvarFiltroComo2: TMenuItem
      Caption = 'Salvar Filtro Como...'
      OnClick = SalvarFiltroComo1Click
    end
    object ExcluirFiltro1: TMenuItem
      Caption = 'Excluir Filtro'
      OnClick = ExcluirFiltro1Click
    end
  end
  object CDSAgendaFiltro: TClientDataSet
    PersistDataPacket.Data = {
      EC0000009619E0BD010000001800000009000000000003000000EC0006434F44
      49474F04000100000000000944455343524943414F0100490000000100055749
      44544802000200960006504152454E5404000100000000000A434F4455535541
      52494F04000100000000000A434F44454D505245534104000100000000000646
      494C54524F04004B0000000200075355425459504502004900070042696E6172
      79000557494454480200020008000A494D414745494E44455804000100000000
      000B436F644974656D4669786F0100490000000100055749445448020002000F
      00045449504F04000100000000000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
      end
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'PARENT'
        DataType = ftInteger
      end
      item
        Name = 'CODUSUARIO'
        DataType = ftInteger
      end
      item
        Name = 'CODEMPRESA'
        DataType = ftInteger
      end
      item
        Name = 'FILTRO'
        DataType = ftBlob
        Size = 8
      end
      item
        Name = 'IMAGEINDEX'
        DataType = ftInteger
      end
      item
        Name = 'CodItemFixo'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'TIPO'
        DataType = ftInteger
      end
      item
        Name = 'DescExibicao'
        DataType = ftString
        Size = 160
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 181
    Top = 252
    object CDSAgendaFiltroCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object CDSAgendaFiltroDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 150
    end
    object CDSAgendaFiltroPARENT: TIntegerField
      FieldName = 'PARENT'
    end
    object CDSAgendaFiltroCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
    end
    object CDSAgendaFiltroCODEMPRESA: TIntegerField
      FieldName = 'CODEMPRESA'
    end
    object CDSAgendaFiltroFILTRO: TBlobField
      FieldName = 'FILTRO'
      Size = 8
    end
    object CDSAgendaFiltroIMAGEINDEX: TIntegerField
      FieldName = 'IMAGEINDEX'
    end
    object CDSAgendaFiltroCodItemFixo: TStringField
      FieldName = 'CodItemFixo'
      Size = 15
    end
    object CDSAgendaFiltroDescExibicao: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'DescExibicao'
      Size = 160
    end
    object CDSAgendaFiltroTIPO: TIntegerField
      FieldName = 'TIPO'
    end
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Components = <>
    StorageName = 'AgendaProperties.ini'
    Left = 293
    Top = 252
  end
  object CDSAgendaUsuario: TClientDataSet
    PersistDataPacket.Data = {
      EC0000009619E0BD010000001800000009000000000003000000EC0006434F44
      49474F04000100000000000944455343524943414F0100490000000100055749
      44544802000200960006504152454E5404000100000000000A434F4455535541
      52494F04000100000000000A434F44454D505245534104000100000000000646
      494C54524F04004B0000000200075355425459504502004900070042696E6172
      79000557494454480200020008000A494D414745494E44455804000100000000
      000B436F644974656D4669786F0100490000000100055749445448020002000F
      00045449504F04000100000000000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
      end
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'PARENT'
        DataType = ftInteger
      end
      item
        Name = 'CODUSUARIO'
        DataType = ftInteger
      end
      item
        Name = 'CODEMPRESA'
        DataType = ftInteger
      end
      item
        Name = 'FILTRO'
        DataType = ftBlob
        Size = 8
      end
      item
        Name = 'IMAGEINDEX'
        DataType = ftInteger
      end
      item
        Name = 'CodItemFixo'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'TIPO'
        DataType = ftInteger
      end
      item
        Name = 'DescExibicao'
        DataType = ftString
        Size = 160
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 182
    Top = 286
    object CDSAgendaUsuarioCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object CDSAgendaUsuarioDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 150
    end
    object CDSAgendaUsuarioPARENT: TIntegerField
      FieldName = 'PARENT'
    end
    object CDSAgendaUsuarioCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
    end
    object CDSAgendaUsuarioCODEMPRESA: TIntegerField
      FieldName = 'CODEMPRESA'
    end
    object CDSAgendaUsuarioFILTRO: TBlobField
      FieldName = 'FILTRO'
      Size = 8
    end
    object CDSAgendaUsuarioIMAGEINDEX: TIntegerField
      FieldName = 'IMAGEINDEX'
    end
    object CDSAgendaUsuarioCodItemFixo: TStringField
      FieldName = 'CodItemFixo'
      Size = 15
    end
    object CDSAgendaUsuarioDescExibicao: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'DescExibicao'
      Size = 160
    end
    object CDSAgendaUsuarioTIPO: TIntegerField
      FieldName = 'TIPO'
    end
  end
  object DSAgendaUsuario: TDataSource
    DataSet = CDSAgendaUsuario
    Left = 210
    Top = 286
  end
  object MenuAgenda: TPopupMenu
    Left = 238
    Top = 286
    object Menunoutilizadoporenquanto1: TMenuItem
      Caption = '<Menu carregado em RunTime>'
      Visible = False
    end
    object Visualizartempogasto1: TMenuItem
      Caption = 'Visualizar tempo gasto'
      OnClick = Visualizartempogasto1Click
    end
    object Moverparadata1: TMenuItem
      Caption = 'Mover para data...'
      OnClick = Moverparadata1Click
    end
    object ransferirpara1: TMenuItem
      Caption = 'Transferir para...'
      OnClick = ransferirpara1Click
    end
    object SelecionarTodos1: TMenuItem
      Caption = 'Selecionar Todos'
      Enabled = False
      Visible = False
      OnClick = SelecionarTodos1Click
    end
  end
  object UCHistWRGeral1: TUCHistWRGeral
    ControlHistorico = FrmPrincipal.UCControlHistorico1
    Left = 266
    Top = 286
  end
  object PopupMenu2: TPopupMenu
    Left = 294
    Top = 286
    object ransferirpara2: TMenuItem
      Caption = 'Transferir para...'
      OnClick = ransferirpara2Click
    end
  end
  object ImageListRanking: TImageList
    ColorDepth = cd32Bit
    Left = 321
    Top = 252
    Bitmap = {
      494C010102000500040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000002592C4FF2492C4FF2492C4FF2592
      C4FF2592C4FF2592C4FF2592C4FF2592C4FF2592C4FF2492C4FF2492C4FF2592
      C4FF2592C4FF2592C4FF2592C4FF2592C4FF0000000010101052303030F92727
      27C8020202110000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002196C8FF0DC6F8FF0EC7F9FF0DC6
      F8FF0EC6F8FF49D6FAFF74E2FCFF93EAFCFF93EAFCFF74E2FCFF4AD7FAFF0DC7
      F9FF0EC7F9FF0DC7F8FF0DC7F8FF2197C9FF0A0A0A37323232FE323232FF3232
      32FF282828C90303031600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001E9BCEFF21CBF9FF21CCF9FF20CC
      F9FF21CCF9FF58DAFBFF7EE4FCFF9BEBFDFF9BEBFDFF80E4FCFF58DAFBFF21CB
      F9FF21CCF9FF21CBF9FF21CCF9FF1E9BCEFF303030F6262626C9343434FF3232
      32FF323232FF2F2F2FF00404041A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000019A0D4FF1AA1D4FF1AA1D4FF1AA1
      D4FF19A1D4FF1AA1D4FF19A1D3FF19A1D4FF19A0D4FF19A1D4FF1AA1D4FF19A1
      D4FF1AA0D4FF1AA0D4FF19A1D4FF1AA0D4FF040404152D2D2DEA1F1F1F9F3232
      32F8323232FF323232FF313131F80B0B0B3E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000015A6DAFF15A6DAFF15A6DAFF15A6
      DAFF15A7DAFF15A7DAFF15A7DAFF15A7DAFF15A7DAFF15A7DAFF15A6DAFF15A7
      DAFF15A6DAFF15A7DAFF15A6DAFF15A6DAFF0000000007070728303030F71111
      115C323232FF323232FF323232FF313131F90D0D0D4200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000010ACE0FF6EE0FCFF6EE0FBFF6EE0
      FBFF6EE0FCFF8FE8FCFFA6EEFEFFB6F2FEFFB6F2FEFFA6EEFEFF8FE8FCFF6EE0
      FCFF6EE0FBFF6EE0FBFF6EE0FCFF10ADE0FF00000000000000001C1C1C8D2F2F
      2FF416161673353535FF323232FF323232FF323232FF14141468000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001C24DAFF8AE7FCFF8BE8FDFF8AE7
      FDFF8BE7FCFFA2EEFDFF1C24DAFF8589EBFF8589EBFF1C24DAFFA3EEFEFF8BE7
      FCFF8AE7FCFF8BE7FDFF8BE7FCFF1C24DAFF00000000000000001C1C1C963232
      32FF2E2E2EEA1212125D313131F6323232FF323232FF373737FF0A0A0A360303
      030E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001C24DAFFA4EEFDFFA5EEFDFFA4EE
      FEFFA5EEFDFFB6F2FEFF1C24DAFF8589EBFF8589EBFF1C24DAFFB6F2FEFFA5EE
      FDFFA4EEFEFFA5EEFDFFA5EEFDFF1C24DAFF0000000000000000000000002424
      24BD2C2C2CDE303030F40F0F0F51343434FF323232FF1E1E1E9A2B2B2BDF3333
      33FF1818187F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000005BBF0FFBCF4FEFFBCF4FEFF82E5
      FCFFBDF4FEFFC6F7FEFFCEF9FEFFD2FAFEFFD2FAFEFFCDF9FEFFC6F7FEFFBCF4
      FEFF83E5FCFFBCF4FEFFBDF4FEFF05BBF0FF0000000000000000000000000000
      0000000000001A1A1A862A2A2AD52F2F2FEC1E1E1E9A292929D6323232FF3232
      32FF333333FF2C2C2CE014141463000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000003BEF3FFD0F9FEFF90E8FDFF03BE
      F3FF03BEF3FF90E8FCFFD7FBFFFFD9FCFEFFD9FCFFFFD7FCFFFF92E9FDFF03BE
      F3FF03BEF3FF8FE8FDFFD0F9FEFF03BEF3FF0000000000000000000000000000
      00000000000000000003242424BC222222B22B2B2BE0333333FF323232FF3232
      32FF323232FF323232FF333333FF2A2A2AD50000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000003BEF3FF9AEBFDFF03BEF3FF003C
      4D4F0021292B03BEF3FF9AEBFDFFDEFDFFFFDEFDFFFF9AEBFDFF03BEF3FF003C
      4D4F0021292B03BEF3FF9AEBFDFF03BEF3FF0000000000000000000000000000
      00000000000000000000000000011A1A1A842F2F2FF02E2E2EE6323232FF3232
      32FF323232FF323232FF323232FF2A2A2AD80000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000003BEF3FF03BEF3FF003C4D4F0000
      000000000000003C4D4F03BEF3FF9AEBFDFF9AEBFDFF03BEF3FF003C4D4F0000
      000000000000003C4D4F03BEF3FF03BEF3FF0000000000000000000000000000
      000000000000000000000000000013131366303030F70808082F303030FA3232
      32FF323232FF323232FF343434FF0D0D0D4A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000003BEF3FF003C4D4F000000000000
      00000000000000000000003C4D4F03BEF3FF03BEF3FF003C4D4F000000000000
      00000000000000000000003C4D4F03BDF3FF0000000000000000000000000000
      000000000000000000000000000002020209303030F81A1A1A86070707243030
      30F7323232FF323232FE0E0E0E4B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000021292B00000000000000000000
      00000000000000000000000000000021292B003C4D4F00000000000000000000
      0000000000000000000000000000003C4D4F0000000000000000000000000000
      0000000000000000000000000000000000000A0A0A3A353535FF080808312323
      23B7343434FF1515156A00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000262626C7323232FE3232
      32FE1313135C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000003BEF3FF00000000000000000000
      000000000000000000000000000003BEF3FF03BEF3FF00000000000000000000
      000000000000000000000000000003BEF3FF0000000000000000000000000000
      00000000000000000000000000000000000000000000090909342D2D2DE50404
      0419000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00000087FF00000000000003FF00000000
      000001FF00000000000000FF000000000000807F000000000000C03F00000000
      0000C00F000000000000E007000000000000F801000000000000F80000000000
      0000FC00000000000000FE00000000000000FE01000000000000FF0300000000
      0000FF87000000000000FF8F0000000000000000000000000000000000000000
      000000000000}
  end
  object frxAgenda: TfrxDBDataset
    UserName = 'Agenda'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'PROTOCOLO=PROTOCOLO'
      'SEQUENCIA=SEQUENCIA'
      'CODAGENDA_TITULO=CODAGENDA_TITULO'
      'CAPTION=CAPTION'
      'DT_INICIO=DT_INICIO'
      'DT_FIM=DT_FIM'
      'H_MINIMO=H_MINIMO'
      'H_MAXIMO=H_MAXIMO'
      'IMAGEMINDEX=IMAGEMINDEX'
      'COLOR=COLOR'
      'IMAGE=IMAGE'
      'TAREFA_COMPLETA=TAREFA_COMPLETA'
      'TAREFA_INDEX=TAREFA_INDEX'
      'STATUS=STATUS'
      'EVENTO_TIPO=EVENTO_TIPO'
      'RECURRENCE_INDEX=RECURRENCE_INDEX'
      'REMINDER_DATE=REMINDER_DATE'
      'OPTIONS=OPTIONS'
      'MENSSAGE=MENSSAGE'
      'LOCATION=LOCATION'
      'RECURRENCE_INFO=RECURRENCE_INFO'
      'CODCLIENTE=CODCLIENTE'
      'TELEFONE=TELEFONE'
      'TAREFA_STATUS=TAREFA_STATUS'
      'TAREFA_LINK=TAREFA_LINK'
      'CODFINANCEIRO=CODFINANCEIRO'
      'CODEMPRESA=CODEMPRESA'
      'DT_FATURAMENTO=DT_FATURAMENTO'
      'BLOQUEIO=BLOQUEIO'
      'CODFUNCIONARIO=CODFUNCIONARIO'
      'FUNCIONARIO=FUNCIONARIO'
      'CODEQUIPAMENTO=CODEQUIPAMENTO'
      'EQUIPAMENTO=EQUIPAMENTO'
      'SOLICITANTE=SOLICITANTE'
      'CODVENDA=CODVENDA'
      'OCORRENCIA=OCORRENCIA'
      'VALOR=VALOR'
      'DT_EMISSAO=DT_EMISSAO'
      'PRIORIDADE=PRIORIDADE'
      'DT_ALTERACAO=DT_ALTERACAO'
      'CODVENDA_PRODUTO=CODVENDA_PRODUTO'
      'CODPRODUTO_GRUPO_WORKFLOW=CODPRODUTO_GRUPO_WORKFLOW'
      'OBS_FINALIZACAO=OBS_FINALIZACAO'
      'ATIVO=ATIVO'
      'CODSETOR=CODSETOR'
      'LIDO=LIDO'
      'ID_ALTERACAO=ID_ALTERACAO'
      'ID_ALTERACAO_DIA=ID_ALTERACAO_DIA'
      'CODUSUARIO_RESPONSAVEL=CODUSUARIO_RESPONSAVEL'
      'CODPRODUTO=CODPRODUTO'
      'PRODUTO=PRODUTO'
      'CODUSUARIO_CRIADOR=CODUSUARIO_CRIADOR'
      'CODUSUARIO_ALTERADO=CODUSUARIO_ALTERADO'
      'PARENT_ID=PARENT_ID'
      'REMINDER_MINUTES=REMINDER_MINUTES'
      'GROUP_ID=GROUP_ID'
      'REMINDER_RESOURCES_DATA=REMINDER_RESOURCES_DATA'
      'CODAGENDA_COMPOSICAO=CODAGENDA_COMPOSICAO'
      'QUANT=QUANT'
      'LARG=LARG'
      'COMP=COMP'
      'ESPESSURA=ESPESSURA'
      'QTDADEPECA=QTDADEPECA'
      'CODCOMPOSICAO=CODCOMPOSICAO'
      'COMPOSICAO=COMPOSICAO'
      'PATH=PATH'
      'CODSTATUS=CODSTATUS'
      'LOCAL=LOCAL'
      'MENSALIDADE=MENSALIDADE'
      'CODCONDICAOPAGTO=CODCONDICAOPAGTO'
      'TIPO_AGENDAMENTO=TIPO_AGENDAMENTO'
      'RAZAOSOCIAL=RAZAOSOCIAL'
      'FANTASIA=FANTASIA'
      'TIPO=TIPO'
      'FONE1=FONE1'
      'EMAIL=EMAIL'
      'CONDICAOPAGTO=CONDICAOPAGTO')
    BCDToCurrency = False
    Left = 237
    Top = 224
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 293
    Top = 140
    object dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      GroupOptions.CaptionOptions.Font.Charset = DEFAULT_CHARSET
      GroupOptions.CaptionOptions.Font.Color = clWindowText
      GroupOptions.CaptionOptions.Font.Height = -11
      GroupOptions.CaptionOptions.Font.Name = 'Tahoma'
      GroupOptions.CaptionOptions.Font.Style = []
      GroupOptions.CaptionOptions.UseDefaultFont = False
      ItemOptions.CaptionOptions.Font.Charset = DEFAULT_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clWindowText
      ItemOptions.CaptionOptions.Font.Height = -11
      ItemOptions.CaptionOptions.Font.Name = 'Tahoma'
      ItemOptions.CaptionOptions.Font.Style = []
      ItemOptions.CaptionOptions.UseDefaultFont = False
      Offsets.ControlOffsetHorz = 0
      Offsets.ControlOffsetVert = 0
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 0
      Offsets.RootItemsAreaOffsetVert = 0
      LookAndFeel.NativeStyle = False
      PixelsPerInch = 96
    end
  end
  object Agenda_Usuario: TFDQuery
    BeforeOpen = Agenda_UsuarioBeforeOpen
    AfterOpen = Agenda_UsuarioAfterOpen
    BeforeClose = Agenda_UsuarioBeforeClose
    Connection = DMBanco.Banco
    Transaction = Transa
    SQL.Strings = (
      
        'select CODIGO, USUARIO as DESCRICAO, COLOR, IMAGEINDEX, DT_INICI' +
        'AL, DT_FINAL, MINUTOS, CODFUNCIONARIO'
      'from USUARIO'
      'where (INATIVO = 0)')
    Left = 181
    Top = 140
    object Agenda_UsuarioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Agenda_UsuarioDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'USUARIO'
      Size = 30
    end
    object Agenda_UsuarioCOLOR: TIntegerField
      FieldName = 'COLOR'
      Origin = 'COLOR'
    end
    object Agenda_UsuarioIMAGEINDEX: TSmallintField
      FieldName = 'IMAGEINDEX'
      Origin = 'IMAGEINDEX'
    end
    object Agenda_UsuarioDT_INICIAL: TSQLTimeStampField
      FieldName = 'DT_INICIAL'
      Origin = 'DT_INICIAL'
    end
    object Agenda_UsuarioDT_FINAL: TSQLTimeStampField
      FieldName = 'DT_FINAL'
      Origin = 'DT_FINAL'
    end
    object Agenda_UsuarioMINUTOS: TIntegerField
      FieldName = 'MINUTOS'
      Origin = 'MINUTOS'
    end
    object Agenda_UsuarioCODFUNCIONARIO: TStringField
      FieldName = 'CODFUNCIONARIO'
      Origin = 'CODFUNCIONARIO'
      Size = 10
    end
  end
  object Agenda: TFDQuery
    BeforeOpen = AgendaBeforeOpen
    AfterOpen = AgendaAfterOpen
    AfterInsert = AgendaAfterInsert
    AfterEdit = AgendaAfterEdit
    BeforePost = AgendaBeforePost
    AfterPost = AgendaAfterPost
    AfterCancel = AgendaAfterCancel
    OnCalcFields = AgendaCalcFields
    MasterSource = DS
    Connection = DMBanco.Banco
    Transaction = Transa
    FetchOptions.AssignedValues = [evItems, evRowsetSize, evCursorKind]
    FetchOptions.CursorKind = ckDefault
    FetchOptions.RowsetSize = 1000
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint]
    SQL.Strings = (
      
        'select A.CODIGO, A.PROTOCOLO, A.SEQUENCIA, A.CODAGENDA_TITULO, A' +
        '.CAPTION,'
      '       A.DT_INICIO, A.DT_FIM, A.IMAGEMINDEX, A.COLOR, A.IMAGE,'
      
        '       A.TAREFA_COMPLETA, A.TAREFA_INDEX, A.STATUS, A.EVENTO_TIP' +
        'O,'
      
        '       A.RECURRENCE_INDEX, A.REMINDER_DATE, A.OPTIONS, A.LOCATIO' +
        'N,'
      
        '       A.RECURRENCE_INFO, A.TELEFONE, A.TAREFA_STATUS, A.TAREFA_' +
        'LINK,'
      
        '       A.CODFINANCEIRO, A.CODEMPRESA, A.DT_FATURAMENTO, A.BLOQUE' +
        'IO,'
      
        '       A.FUNCIONARIO, A.CODEQUIPAMENTO, A.EQUIPAMENTO, A.SOLICIT' +
        'ANTE,'
      
        '       A.CODVENDA, A.OCORRENCIA, A.VALOR, A.DT_EMISSAO, A.PRIORI' +
        'DADE,'
      '       A.DT_ALTERACAO, A.CODVENDA_PRODUTO, A.ATIVO, A.CODSETOR,'
      
        '       A.CODUSUARIO_RESPONSAVEL, A.CODPRODUTO, A.PRODUTO, A.CODU' +
        'SUARIO_CRIADOR,'
      
        '       A.CODUSUARIO_ALTERADO, A.PARENT_ID, A.REMINDER_MINUTES, A' +
        '.GROUP_ID,'
      
        '       A.REMINDER_RESOURCES_DATA, A.CODAGENDA_COMPOSICAO, A.CODS' +
        'TATUS,'
      
        '       A.TIPO_AGENDAMENTO, A.PESSOA_CLIENTE_CODIGO, A.PESSOA_CLI' +
        'ENTE_TIPO,'
      
        '       A.PESSOA_CLIENTE_SEQUENCIA, A.PESSOA_FUNCIONARIO_CODIGO, ' +
        'A.CODEMAIL, A.CODEMAIL_CRM_DATABASE,'
      
        '       A.PESSOA_FUNCIONARIO_TIPO, A.PESSOA_FUNCIONARIO_SEQUENCIA' +
        ', A.VISUALIZA,'
      
        '       A.ORDENACAO, A.ACTUAL_START, A.ACTUAL_FINISH, A.GANTT_DT_' +
        'INICIO, A.CODAGENDA_FAQ,'
      
        '       A.KANBAN_DT_INICIO, A.KANBAN_DT_FIM, A.KANBAN_ACTUAL_STAR' +
        'T, A.KANBAN_ACTUAL_FINISH,'
      
        '       A.GANTT_DT_FIM, A.GANTT_ACTUAL_START, A.GANTT_ACTUAL_FINI' +
        'SH, rpad('#39#39', 30) as SKYPE_ID, A.CODCONDICAOPAGTO, A.CONDICAOPAGT' +
        'O,'
      '       (select first 1 AM.MENSAGEM'
      '        from AGENDA_MENSAGEM AM'
      '        where (AM.CODAGENDA = A.CODIGO)'
      '        order by AM.DT_MENSAGEM desc) as MENSAGEM'
      'from AGENDA A')
    Left = 209
    Top = 168
    object AgendaCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 40
    end
    object AgendaPROTOCOLO: TStringField
      FieldName = 'PROTOCOLO'
      Origin = 'PROTOCOLO'
      Required = True
      Size = 50
    end
    object AgendaSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
      Origin = 'SEQUENCIA'
    end
    object AgendaCODAGENDA_TITULO: TIntegerField
      FieldName = 'CODAGENDA_TITULO'
      Origin = 'CODAGENDA_TITULO'
    end
    object AgendaCAPTION: TStringField
      FieldName = 'CAPTION'
      Origin = 'CAPTION'
      Size = 255
    end
    object AgendaDT_INICIO: TSQLTimeStampField
      FieldName = 'DT_INICIO'
      Origin = 'DT_INICIO'
    end
    object AgendaDT_FIM: TSQLTimeStampField
      FieldName = 'DT_FIM'
      Origin = 'DT_FIM'
    end
    object AgendaIMAGEMINDEX: TIntegerField
      FieldName = 'IMAGEMINDEX'
      Origin = 'IMAGEMINDEX'
    end
    object AgendaCOLOR: TIntegerField
      FieldName = 'COLOR'
      Origin = 'COLOR'
    end
    object AgendaIMAGE: TIntegerField
      FieldName = 'IMAGE'
      Origin = 'IMAGE'
    end
    object AgendaTAREFA_COMPLETA: TIntegerField
      FieldName = 'TAREFA_COMPLETA'
      Origin = 'TAREFA_COMPLETA'
    end
    object AgendaTAREFA_INDEX: TIntegerField
      FieldName = 'TAREFA_INDEX'
      Origin = 'TAREFA_INDEX'
    end
    object AgendaSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
    object AgendaEVENTO_TIPO: TIntegerField
      FieldName = 'EVENTO_TIPO'
      Origin = 'EVENTO_TIPO'
    end
    object AgendaRECURRENCE_INDEX: TIntegerField
      FieldName = 'RECURRENCE_INDEX'
      Origin = 'RECURRENCE_INDEX'
    end
    object AgendaREMINDER_DATE: TSQLTimeStampField
      FieldName = 'REMINDER_DATE'
      Origin = 'REMINDER_DATE'
    end
    object AgendaOPTIONS: TIntegerField
      FieldName = 'OPTIONS'
      Origin = 'OPTIONS'
    end
    object AgendaLOCATION: TStringField
      FieldName = 'LOCATION'
      Origin = 'LOCATION'
      Size = 255
    end
    object AgendaRECURRENCE_INFO: TBlobField
      FieldName = 'RECURRENCE_INFO'
      Origin = 'RECURRENCE_INFO'
    end
    object AgendaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 12
    end
    object AgendaTAREFA_STATUS: TIntegerField
      FieldName = 'TAREFA_STATUS'
      Origin = 'TAREFA_STATUS'
    end
    object AgendaTAREFA_LINK: TBlobField
      FieldName = 'TAREFA_LINK'
      Origin = 'TAREFA_LINK'
    end
    object AgendaCODFINANCEIRO: TStringField
      FieldName = 'CODFINANCEIRO'
      Origin = 'CODFINANCEIRO'
      Size = 10
    end
    object AgendaCODEMPRESA: TStringField
      FieldName = 'CODEMPRESA'
      Origin = 'CODEMPRESA'
      Size = 10
    end
    object AgendaDT_FATURAMENTO: TSQLTimeStampField
      FieldName = 'DT_FATURAMENTO'
      Origin = 'DT_FATURAMENTO'
    end
    object AgendaBLOQUEIO: TStringField
      FieldName = 'BLOQUEIO'
      Origin = 'BLOQUEIO'
      Size = 1
    end
    object AgendaFUNCIONARIO: TStringField
      FieldName = 'FUNCIONARIO'
      Origin = 'FUNCIONARIO'
      Size = 150
    end
    object AgendaCODEQUIPAMENTO: TStringField
      FieldName = 'CODEQUIPAMENTO'
      Origin = 'CODEQUIPAMENTO'
      Size = 15
    end
    object AgendaEQUIPAMENTO: TStringField
      FieldName = 'EQUIPAMENTO'
      Origin = 'EQUIPAMENTO'
      Size = 150
    end
    object AgendaSOLICITANTE: TStringField
      FieldName = 'SOLICITANTE'
      Origin = 'SOLICITANTE'
      Size = 150
    end
    object AgendaCODVENDA: TStringField
      FieldName = 'CODVENDA'
      Origin = 'CODVENDA'
      Size = 15
    end
    object AgendaOCORRENCIA: TStringField
      FieldName = 'OCORRENCIA'
      Origin = 'OCORRENCIA'
      Size = 100
    end
    object AgendaVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'VALOR'
    end
    object AgendaDT_EMISSAO: TSQLTimeStampField
      FieldName = 'DT_EMISSAO'
      Origin = 'DT_EMISSAO'
    end
    object AgendaPRIORIDADE: TIntegerField
      FieldName = 'PRIORIDADE'
      Origin = 'PRIORIDADE'
    end
    object AgendaDT_ALTERACAO: TSQLTimeStampField
      FieldName = 'DT_ALTERACAO'
      Origin = 'DT_ALTERACAO'
    end
    object AgendaCODVENDA_PRODUTO: TIntegerField
      FieldName = 'CODVENDA_PRODUTO'
      Origin = 'CODVENDA_PRODUTO'
    end
    object AgendaATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object AgendaCODSETOR: TIntegerField
      FieldName = 'CODSETOR'
      Origin = 'CODSETOR'
    end
    object AgendaCODUSUARIO_RESPONSAVEL: TIntegerField
      FieldName = 'CODUSUARIO_RESPONSAVEL'
      Origin = 'CODUSUARIO_RESPONSAVEL'
      Required = True
    end
    object AgendaCODPRODUTO: TStringField
      FieldName = 'CODPRODUTO'
      Origin = 'CODPRODUTO'
      Size = 15
    end
    object AgendaPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
      Size = 300
    end
    object AgendaCODUSUARIO_CRIADOR: TIntegerField
      FieldName = 'CODUSUARIO_CRIADOR'
      Origin = 'CODUSUARIO_CRIADOR'
    end
    object AgendaCODUSUARIO_ALTERADO: TIntegerField
      FieldName = 'CODUSUARIO_ALTERADO'
      Origin = 'CODUSUARIO_ALTERADO'
    end
    object AgendaPARENT_ID: TStringField
      FieldName = 'PARENT_ID'
      Origin = 'PARENT_ID'
      Size = 40
    end
    object AgendaREMINDER_MINUTES: TIntegerField
      FieldName = 'REMINDER_MINUTES'
      Origin = 'REMINDER_MINUTES'
    end
    object AgendaGROUP_ID: TStringField
      FieldName = 'GROUP_ID'
      Origin = 'GROUP_ID'
      Size = 40
    end
    object AgendaREMINDER_RESOURCES_DATA: TBlobField
      FieldName = 'REMINDER_RESOURCES_DATA'
      Origin = 'REMINDER_RESOURCES_DATA'
    end
    object AgendaCODAGENDA_COMPOSICAO: TStringField
      FieldName = 'CODAGENDA_COMPOSICAO'
      Origin = 'CODAGENDA_COMPOSICAO'
      Size = 40
    end
    object AgendaCODSTATUS: TIntegerField
      FieldName = 'CODSTATUS'
      Origin = 'CODSTATUS'
    end
    object AgendaTIPO_AGENDAMENTO: TSmallintField
      FieldName = 'TIPO_AGENDAMENTO'
      Origin = 'TIPO_AGENDAMENTO'
    end
    object AgendaPESSOA_CLIENTE_CODIGO: TStringField
      FieldName = 'PESSOA_CLIENTE_CODIGO'
      Origin = 'PESSOA_CLIENTE_CODIGO'
      Size = 10
    end
    object AgendaPESSOA_CLIENTE_TIPO: TStringField
      FieldName = 'PESSOA_CLIENTE_TIPO'
      Origin = 'PESSOA_CLIENTE_TIPO'
      Size = 3
    end
    object AgendaPESSOA_CLIENTE_SEQUENCIA: TIntegerField
      FieldName = 'PESSOA_CLIENTE_SEQUENCIA'
      Origin = 'PESSOA_CLIENTE_SEQUENCIA'
    end
    object AgendaPESSOA_FUNCIONARIO_CODIGO: TStringField
      FieldName = 'PESSOA_FUNCIONARIO_CODIGO'
      Origin = 'PESSOA_FUNCIONARIO_CODIGO'
      Size = 10
    end
    object AgendaPESSOA_FUNCIONARIO_TIPO: TStringField
      FieldName = 'PESSOA_FUNCIONARIO_TIPO'
      Origin = 'PESSOA_FUNCIONARIO_TIPO'
      Size = 3
    end
    object AgendaPESSOA_FUNCIONARIO_SEQUENCIA: TIntegerField
      FieldName = 'PESSOA_FUNCIONARIO_SEQUENCIA'
      Origin = 'PESSOA_FUNCIONARIO_SEQUENCIA'
    end
    object AgendaVISUALIZA: TIntegerField
      FieldName = 'VISUALIZA'
      Origin = 'VISUALIZA'
    end
    object AgendaORDENACAO: TFloatField
      FieldName = 'ORDENACAO'
      Origin = 'ORDENACAO'
    end
    object AgendaACTUAL_START: TIntegerField
      FieldName = 'ACTUAL_START'
      Origin = 'ACTUAL_START'
    end
    object AgendaACTUAL_FINISH: TIntegerField
      FieldName = 'ACTUAL_FINISH'
      Origin = 'ACTUAL_FINISH'
    end
    object AgendaSKYPE_ID: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SKYPE_ID'
      Origin = 'SKYPE_ID'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object AgendaMENSAGEM: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'MENSAGEM'
      Origin = 'MENSAGEM'
      ProviderFlags = []
      ReadOnly = True
      BlobType = ftMemo
    end
    object AgendaGANTT_DT_INICIO: TSQLTimeStampField
      FieldName = 'GANTT_DT_INICIO'
      Origin = 'GANTT_DT_INICIO'
    end
    object AgendaGANTT_DT_FIM: TSQLTimeStampField
      FieldName = 'GANTT_DT_FIM'
      Origin = 'GANTT_DT_FIM'
    end
    object AgendaGANTT_ACTUAL_START: TIntegerField
      FieldName = 'GANTT_ACTUAL_START'
      Origin = 'GANTT_ACTUAL_START'
    end
    object AgendaGANTT_ACTUAL_FINISH: TIntegerField
      FieldName = 'GANTT_ACTUAL_FINISH'
      Origin = 'GANTT_ACTUAL_FINISH'
    end
    object AgendaCODEMAIL: TIntegerField
      FieldName = 'CODEMAIL'
      Origin = 'CODEMAIL'
    end
    object AgendaCODEMAIL_CRM_DATABASE: TIntegerField
      FieldName = 'CODEMAIL_CRM_DATABASE'
      Origin = 'CODEMAIL_CRM_DATABASE'
    end
    object AgendaKANBAN_DT_INICIO: TSQLTimeStampField
      FieldName = 'KANBAN_DT_INICIO'
      Origin = 'KANBAN_DT_INICIO'
    end
    object AgendaKANBAN_DT_FIM: TSQLTimeStampField
      FieldName = 'KANBAN_DT_FIM'
      Origin = 'KANBAN_DT_FIM'
    end
    object AgendaKANBAN_ACTUAL_START: TIntegerField
      FieldName = 'KANBAN_ACTUAL_START'
      Origin = 'KANBAN_ACTUAL_START'
    end
    object AgendaKANBAN_ACTUAL_FINISH: TIntegerField
      FieldName = 'KANBAN_ACTUAL_FINISH'
      Origin = 'KANBAN_ACTUAL_FINISH'
    end
    object AgendaCODAGENDA_FAQ: TStringField
      FieldName = 'CODAGENDA_FAQ'
      Origin = 'CODAGENDA_FAQ'
      Size = 15
    end
    object AgendaCODCONDICAOPAGTO: TIntegerField
      FieldName = 'CODCONDICAOPAGTO'
      Origin = 'CODCONDICAOPAGTO'
    end
    object AgendaCONDICAOPAGTO: TStringField
      FieldName = 'CONDICAOPAGTO'
      Origin = 'CONDICAOPAGTO'
      Size = 100
    end
  end
  object Agenda_Tarefas: TFDQuery
    BeforeOpen = Agenda_TarefasBeforeOpen
    AfterOpen = Agenda_TarefasAfterOpen
    BeforeClose = Agenda_TarefasBeforeClose
    Connection = DMBanco.Banco
    Transaction = Transa
    SQL.Strings = (
      
        'select A.COLOR, A.PRIORIDADE, A.TAREFA_STATUS, A.PROTOCOLO, A.DT' +
        '_INICIO,'
      
        '       A.CAPTION, A.SOLICITANTE, A.DT_FATURAMENTO, A.FUNCIONARIO' +
        ','
      
        '       A.TAREFA_COMPLETA, A.LOCATION, A.EQUIPAMENTO, A.TELEFONE,' +
        ' A.OCORRENCIA,'
      
        '       A.VALOR, A.PRODUTO, A.CODUSUARIO_RESPONSAVEL, A.DT_ALTERA' +
        'CAO,'
      
        '       A.CODUSUARIO_CRIADOR, A.CODIGO, A.DT_EMISSAO, A.IMAGE, A.' +
        'DT_FIM,'
      
        '       A.CODFINANCEIRO, A.CODVENDA, A.CODEQUIPAMENTO, A.CODSETOR' +
        ', P.FANTASIA,'
      
        '       A.GANTT_DT_INICIO, A.GANTT_DT_FIM, A.CODLOTE, iif(AL.CODA' +
        'GENDA is null, 1, 0) as LIDO,'
      
        '       UR.USUARIO as USUARIO_RESPONSAVEL, A.TEMPO_ESTIMADO, A.DT' +
        '_PROMETIDO_PARA'
      'from AGENDA A'
      'left join PESSOAS P on (a.pessoa_cliente_codigo = P.codigo)'
      
        'left join AGENDA_LIDO AL on (A.CODIGO = AL.CODAGENDA) and (AL.CO' +
        'DUSUARIO = :CodUsuario)'
      'left join USUARIO UR on (UR.CODIGO = A.CODUSUARIO_RESPONSAVEL)'
      'where (A.TIPO_AGENDAMENTO = :TipoAgendamento)')
    Left = 209
    Top = 196
    ParamData = <
      item
        Name = 'CODUSUARIO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'TIPOAGENDAMENTO'
        DataType = ftSmallint
        ParamType = ptInput
      end>
  end
  object Agenda_Filtro: TFDQuery
    BeforeOpen = Agenda_FiltroBeforeOpen
    AfterOpen = Agenda_FiltroAfterOpen
    BeforeClose = Agenda_FiltroBeforeClose
    BeforePost = Agenda_FiltroBeforePost
    Connection = DMBanco.Banco
    Transaction = TransaFiltro
    SQL.Strings = (
      'select *'
      'from AGENDA_FILTRO'
      'where (CODEMPRESA = :Emp)'
      '      and ((CODUSUARIO = 0) or (CODUSUARIO = :CodUsuario))'
      'order by DESCRICAO')
    Left = 209
    Top = 252
    ParamData = <
      item
        Name = 'EMP'
        ParamType = ptInput
      end
      item
        Name = 'CODUSUARIO'
        ParamType = ptInput
      end>
  end
  object Agenda_Historico: TFDQuery
    Connection = DMBanco.Banco
    Transaction = Transa
    UpdateOptions.AssignedValues = [uvGeneratorName]
    SQL.Strings = (
      'select first 1 *'
      'from AGENDA'
      'where (CODIGO = :Cod)')
    Left = 321
    Top = 140
    ParamData = <
      item
        Name = 'COD'
        DataType = ftString
        ParamType = ptInput
        Size = 40
      end>
  end
  object Transa: TFDTransaction
    Options.AutoStop = False
    Options.EnableNested = False
    Connection = DMBanco.Banco
    Left = 349
    Top = 140
  end
  object TransaFiltro: TFDTransaction
    Options.AutoStop = False
    Options.EnableNested = False
    Connection = DMBanco.Banco
    Left = 265
    Top = 252
  end
  object SPAgenda: TFDStoredProc
    Connection = DMBanco.Banco
    StoredProcName = 'GENAGENDA'
    Left = 321
    Top = 168
    ParamData = <
      item
        Position = 1
        Name = 'NEWCODIGO'
        DataType = ftInteger
        ParamType = ptOutput
      end>
  end
  object TimerF10: TTimer
    Enabled = False
    Interval = 30
    OnTimer = TimerF10Timer
    Left = 321
    Top = 196
  end
  object FDUpdateSQL1: TFDUpdateSQL
    InsertSQL.Strings = (
      'INSERT INTO AGENDA'
      '(CODIGO, PROTOCOLO, SEQUENCIA, CODAGENDA_TITULO, '
      '  CAPTION, DT_INICIO, DT_FIM, IMAGEMINDEX, '
      '  COLOR, IMAGE, TAREFA_COMPLETA, TAREFA_INDEX, '
      '  STATUS, EVENTO_TIPO, RECURRENCE_INDEX, REMINDER_DATE, '
      '  OPTIONS, LOCATION, RECURRENCE_INFO, TELEFONE, '
      '  TAREFA_STATUS, TAREFA_LINK, CODFINANCEIRO, '
      '  CODEMPRESA, DT_FATURAMENTO, BLOQUEIO, FUNCIONARIO, '
      '  CODEQUIPAMENTO, EQUIPAMENTO, SOLICITANTE, '
      '  CODVENDA, OCORRENCIA, VALOR, DT_EMISSAO, '
      '  PRIORIDADE, DT_ALTERACAO, CODVENDA_PRODUTO, '
      '  CODPRODUTO_GRUPO_WORKFLOW, OBS_FINALIZACAO, ATIVO, '
      '  CODSETOR, LIDO, CODUSUARIO_RESPONSAVEL, CODPRODUTO, '
      '  PRODUTO, CODUSUARIO_CRIADOR, CODUSUARIO_ALTERADO, '
      
        '  PARENT_ID, REMINDER_MINUTES, GROUP_ID, REMINDER_RESOURCES_DATA' +
        ', '
      '  CODAGENDA_COMPOSICAO, QUANT, LARG, COMP, '
      '  ESPESSURA, QTDADEPECA, CODCOMPOSICAO, COMPOSICAO, '
      '  PATH, CODSTATUS, LOCAL, MENSALIDADE, '
      '  CODCONDICAOPAGTO, TIPO_AGENDAMENTO, PESSOA_CLIENTE_CODIGO, '
      '  PESSOA_CLIENTE_TIPO, PESSOA_CLIENTE_SEQUENCIA, '
      '  PESSOA_FUNCIONARIO_CODIGO, PESSOA_FUNCIONARIO_TIPO, '
      '  PESSOA_FUNCIONARIO_SEQUENCIA, REMETENTE_NOME, '
      '  REMETENTE_ENDERECO, CODEMAIL_ANEXO, IS_EMAIL, '
      '  VISUALIZA, ORDENACAO, ACTUAL_START, ACTUAL_FINISH)'
      
        'VALUES (:NEW_CODIGO, :NEW_PROTOCOLO, :NEW_SEQUENCIA, :NEW_CODAGE' +
        'NDA_TITULO, '
      '  :NEW_CAPTION, :NEW_DT_INICIO, :NEW_DT_FIM, :NEW_IMAGEMINDEX, '
      
        '  :NEW_COLOR, :NEW_IMAGE, :NEW_TAREFA_COMPLETA, :NEW_TAREFA_INDE' +
        'X, '
      
        '  :NEW_STATUS, :NEW_EVENTO_TIPO, :NEW_RECURRENCE_INDEX, :NEW_REM' +
        'INDER_DATE, '
      
        '  :NEW_OPTIONS, :NEW_LOCATION, :NEW_RECURRENCE_INFO, :NEW_TELEFO' +
        'NE, '
      '  :NEW_TAREFA_STATUS, :NEW_TAREFA_LINK, :NEW_CODFINANCEIRO, '
      
        '  :NEW_CODEMPRESA, :NEW_DT_FATURAMENTO, :NEW_BLOQUEIO, :NEW_FUNC' +
        'IONARIO, '
      '  :NEW_CODEQUIPAMENTO, :NEW_EQUIPAMENTO, :NEW_SOLICITANTE, '
      '  :NEW_CODVENDA, :NEW_OCORRENCIA, :NEW_VALOR, :NEW_DT_EMISSAO, '
      '  :NEW_PRIORIDADE, :NEW_DT_ALTERACAO, :NEW_CODVENDA_PRODUTO, '
      
        '  :NEW_CODPRODUTO_GRUPO_WORKFLOW, :NEW_OBS_FINALIZACAO, :NEW_ATI' +
        'VO, '
      
        '  :NEW_CODSETOR, :NEW_LIDO, :NEW_CODUSUARIO_RESPONSAVEL, :NEW_CO' +
        'DPRODUTO, '
      
        '  :NEW_PRODUTO, :NEW_CODUSUARIO_CRIADOR, :NEW_CODUSUARIO_ALTERAD' +
        'O, '
      
        '  :NEW_PARENT_ID, :NEW_REMINDER_MINUTES, :NEW_GROUP_ID, :NEW_REM' +
        'INDER_RESOURCES_DATA, '
      '  :NEW_CODAGENDA_COMPOSICAO, :NEW_QUANT, :NEW_LARG, :NEW_COMP, '
      
        '  :NEW_ESPESSURA, :NEW_QTDADEPECA, :NEW_CODCOMPOSICAO, :NEW_COMP' +
        'OSICAO, '
      '  :NEW_PATH, :NEW_CODSTATUS, :NEW_LOCAL, :NEW_MENSALIDADE, '
      
        '  :NEW_CODCONDICAOPAGTO, :NEW_TIPO_AGENDAMENTO, :NEW_PESSOA_CLIE' +
        'NTE_CODIGO, '
      '  :NEW_PESSOA_CLIENTE_TIPO, :NEW_PESSOA_CLIENTE_SEQUENCIA, '
      '  :NEW_PESSOA_FUNCIONARIO_CODIGO, :NEW_PESSOA_FUNCIONARIO_TIPO, '
      '  :NEW_PESSOA_FUNCIONARIO_SEQUENCIA, :NEW_REMETENTE_NOME, '
      '  :NEW_REMETENTE_ENDERECO, :NEW_CODEMAIL_ANEXO, :NEW_IS_EMAIL, '
      
        '  :NEW_VISUALIZA, :NEW_ORDENACAO, :NEW_ACTUAL_START, :NEW_ACTUAL' +
        '_FINISH)')
    ModifySQL.Strings = (
      'UPDATE AGENDA'
      
        'SET CODIGO = :NEW_CODIGO, PROTOCOLO = :NEW_PROTOCOLO, SEQUENCIA ' +
        '= :NEW_SEQUENCIA, '
      
        '  CODAGENDA_TITULO = :NEW_CODAGENDA_TITULO, CAPTION = :NEW_CAPTI' +
        'ON, '
      
        '  DT_INICIO = :NEW_DT_INICIO, DT_FIM = :NEW_DT_FIM, IMAGEMINDEX ' +
        '= :NEW_IMAGEMINDEX, '
      
        '  COLOR = :NEW_COLOR, IMAGE = :NEW_IMAGE, TAREFA_COMPLETA = :NEW' +
        '_TAREFA_COMPLETA, '
      '  TAREFA_INDEX = :NEW_TAREFA_INDEX, STATUS = :NEW_STATUS, '
      
        '  EVENTO_TIPO = :NEW_EVENTO_TIPO, RECURRENCE_INDEX = :NEW_RECURR' +
        'ENCE_INDEX, '
      '  REMINDER_DATE = :NEW_REMINDER_DATE, OPTIONS = :NEW_OPTIONS, '
      
        '  LOCATION = :NEW_LOCATION, RECURRENCE_INFO = :NEW_RECURRENCE_IN' +
        'FO, '
      '  TELEFONE = :NEW_TELEFONE, TAREFA_STATUS = :NEW_TAREFA_STATUS, '
      
        '  TAREFA_LINK = :NEW_TAREFA_LINK, CODFINANCEIRO = :NEW_CODFINANC' +
        'EIRO, '
      
        '  CODEMPRESA = :NEW_CODEMPRESA, DT_FATURAMENTO = :NEW_DT_FATURAM' +
        'ENTO, '
      '  BLOQUEIO = :NEW_BLOQUEIO, FUNCIONARIO = :NEW_FUNCIONARIO, '
      
        '  CODEQUIPAMENTO = :NEW_CODEQUIPAMENTO, EQUIPAMENTO = :NEW_EQUIP' +
        'AMENTO, '
      '  SOLICITANTE = :NEW_SOLICITANTE, CODVENDA = :NEW_CODVENDA, '
      
        '  OCORRENCIA = :NEW_OCORRENCIA, VALOR = :NEW_VALOR, DT_EMISSAO =' +
        ' :NEW_DT_EMISSAO, '
      
        '  PRIORIDADE = :NEW_PRIORIDADE, DT_ALTERACAO = :NEW_DT_ALTERACAO' +
        ', '
      
        '  CODVENDA_PRODUTO = :NEW_CODVENDA_PRODUTO, CODPRODUTO_GRUPO_WOR' +
        'KFLOW = :NEW_CODPRODUTO_GRUPO_WORKFLOW, '
      '  OBS_FINALIZACAO = :NEW_OBS_FINALIZACAO, ATIVO = :NEW_ATIVO, '
      
        '  CODSETOR = :NEW_CODSETOR, LIDO = :NEW_LIDO, CODUSUARIO_RESPONS' +
        'AVEL = :NEW_CODUSUARIO_RESPONSAVEL, '
      
        '  CODPRODUTO = :NEW_CODPRODUTO, PRODUTO = :NEW_PRODUTO, CODUSUAR' +
        'IO_CRIADOR = :NEW_CODUSUARIO_CRIADOR, '
      
        '  CODUSUARIO_ALTERADO = :NEW_CODUSUARIO_ALTERADO, PARENT_ID = :N' +
        'EW_PARENT_ID, '
      
        '  REMINDER_MINUTES = :NEW_REMINDER_MINUTES, GROUP_ID = :NEW_GROU' +
        'P_ID, '
      '  REMINDER_RESOURCES_DATA = :NEW_REMINDER_RESOURCES_DATA, '
      
        '  CODAGENDA_COMPOSICAO = :NEW_CODAGENDA_COMPOSICAO, QUANT = :NEW' +
        '_QUANT, '
      
        '  LARG = :NEW_LARG, COMP = :NEW_COMP, ESPESSURA = :NEW_ESPESSURA' +
        ', '
      
        '  QTDADEPECA = :NEW_QTDADEPECA, CODCOMPOSICAO = :NEW_CODCOMPOSIC' +
        'AO, '
      
        '  COMPOSICAO = :NEW_COMPOSICAO, PATH = :NEW_PATH, CODSTATUS = :N' +
        'EW_CODSTATUS, '
      
        '  LOCAL = :NEW_LOCAL, MENSALIDADE = :NEW_MENSALIDADE, CODCONDICA' +
        'OPAGTO = :NEW_CODCONDICAOPAGTO, '
      
        '  TIPO_AGENDAMENTO = :NEW_TIPO_AGENDAMENTO, PESSOA_CLIENTE_CODIG' +
        'O = :NEW_PESSOA_CLIENTE_CODIGO, '
      
        '  PESSOA_CLIENTE_TIPO = :NEW_PESSOA_CLIENTE_TIPO, PESSOA_CLIENTE' +
        '_SEQUENCIA = :NEW_PESSOA_CLIENTE_SEQUENCIA, '
      '  PESSOA_FUNCIONARIO_CODIGO = :NEW_PESSOA_FUNCIONARIO_CODIGO, '
      '  PESSOA_FUNCIONARIO_TIPO = :NEW_PESSOA_FUNCIONARIO_TIPO, '
      
        '  PESSOA_FUNCIONARIO_SEQUENCIA = :NEW_PESSOA_FUNCIONARIO_SEQUENC' +
        'IA, '
      
        '  REMETENTE_NOME = :NEW_REMETENTE_NOME, REMETENTE_ENDERECO = :NE' +
        'W_REMETENTE_ENDERECO, '
      
        '  CODEMAIL_ANEXO = :NEW_CODEMAIL_ANEXO, IS_EMAIL = :NEW_IS_EMAIL' +
        ', '
      '  VISUALIZA = :NEW_VISUALIZA, ORDENACAO = :NEW_ORDENACAO, '
      
        '  ACTUAL_START = :NEW_ACTUAL_START, ACTUAL_FINISH = :NEW_ACTUAL_' +
        'FINISH'
      'WHERE CODIGO = :OLD_CODIGO')
    DeleteSQL.Strings = (
      'DELETE FROM AGENDA'
      'WHERE CODIGO = :OLD_CODIGO')
    FetchRowSQL.Strings = (
      
        'SELECT CODIGO, PROTOCOLO, SEQUENCIA, CODAGENDA_TITULO, CAPTION, ' +
        'DT_INICIO, '
      
        '  DT_FIM, IMAGEMINDEX, COLOR, IMAGE, TAREFA_COMPLETA, TAREFA_IND' +
        'EX, '
      
        '  STATUS, EVENTO_TIPO, RECURRENCE_INDEX, REMINDER_DATE, OPTIONS,' +
        ' '
      
        '  LOCATION, RECURRENCE_INFO, TELEFONE, TAREFA_STATUS, TAREFA_LIN' +
        'K, '
      
        '  CODFINANCEIRO, CODEMPRESA, DT_FATURAMENTO, BLOQUEIO, FUNCIONAR' +
        'IO, '
      
        '  CODEQUIPAMENTO, EQUIPAMENTO, SOLICITANTE, CODVENDA, OCORRENCIA' +
        ', '
      
        '  VALOR, DT_EMISSAO, PRIORIDADE, DT_ALTERACAO, CODVENDA_PRODUTO,' +
        ' '
      '  CODPRODUTO_GRUPO_WORKFLOW, OBS_FINALIZACAO, ATIVO, CODSETOR, '
      
        '  LIDO, CODUSUARIO_RESPONSAVEL, CODPRODUTO, PRODUTO, CODUSUARIO_' +
        'CRIADOR, '
      '  CODUSUARIO_ALTERADO, PARENT_ID, REMINDER_MINUTES, GROUP_ID, '
      '  REMINDER_RESOURCES_DATA, CODAGENDA_COMPOSICAO, QUANT, LARG, '
      '  COMP, ESPESSURA, QTDADEPECA, CODCOMPOSICAO, COMPOSICAO, '
      
        '  PATH, CODSTATUS, LOCAL, MENSALIDADE, CODCONDICAOPAGTO, TIPO_AG' +
        'ENDAMENTO, '
      
        '  PESSOA_CLIENTE_CODIGO, PESSOA_CLIENTE_TIPO, PESSOA_CLIENTE_SEQ' +
        'UENCIA, '
      
        '  PESSOA_FUNCIONARIO_CODIGO, PESSOA_FUNCIONARIO_TIPO, PESSOA_FUN' +
        'CIONARIO_SEQUENCIA, '
      '  REMETENTE_NOME, REMETENTE_ENDERECO, CODEMAIL_ANEXO, IS_EMAIL, '
      '  VISUALIZA, ORDENACAO, ACTUAL_START, ACTUAL_FINISH'
      'FROM AGENDA'
      'WHERE CODIGO = :CODIGO')
    Left = 349
    Top = 224
  end
  object TransaHistoricoAux: TFDTransaction
    Options.AutoStop = False
    Options.DisconnectAction = xdRollback
    Connection = DMBanco.Banco
    Left = 349
    Top = 168
  end
  object cxSchedulerGridConnection1: TcxSchedulerGridConnection
    GridView = cxGridTarefasTableView2
    Storage = SchedulerDBStorage
    Left = 349
    Top = 196
  end
  object MenuTreeViewBrower: TPopupMenu
    Left = 263
    Top = 195
    object a2: TMenuItem
      Caption = 'Finalizar'
      OnClick = a2Click
    end
    object G1: TMenuItem
      Caption = 'Group'
      Visible = False
      OnClick = G1Click
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object R2: TMenuItem
      Caption = 'Recalcular Prazos'
      OnClick = R2Click
    end
  end
  object Timer3CX: TTimer
    Enabled = False
    OnTimer = Timer3CXTimer
    Left = 321
    Top = 224
  end
  object TimerNaoLido: TTimer
    Enabled = False
    OnTimer = TimerNaoLidoTimer
    Left = 377
    Top = 140
  end
  object AgendaEventoSelecionado: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 322
    Top = 286
    object AgendaEventoSelecionadoCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 40
    end
    object AgendaEventoSelecionadoPESSOA_CLIENTE_CODIGO: TStringField
      FieldName = 'PESSOA_CLIENTE_CODIGO'
      Size = 10
    end
  end
  object DSAgendaEventoSelecionado: TDataSource
    AutoEdit = False
    DataSet = AgendaEventoSelecionado
    Left = 350
    Top = 286
  end
  object dxLayoutLookAndFeelList2: TdxLayoutLookAndFeelList
    Left = 265
    Top = 168
    object dxLayoutSkinLookAndFeel2: TdxLayoutSkinLookAndFeel
      GroupOptions.CaptionOptions.Font.Charset = DEFAULT_CHARSET
      GroupOptions.CaptionOptions.Font.Color = clWindowText
      GroupOptions.CaptionOptions.Font.Height = -11
      GroupOptions.CaptionOptions.Font.Name = 'Tahoma'
      GroupOptions.CaptionOptions.Font.Style = []
      GroupOptions.CaptionOptions.UseDefaultFont = False
      GroupOptions.Color = 4197444
      ItemOptions.CaptionOptions.Font.Charset = DEFAULT_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clWindowText
      ItemOptions.CaptionOptions.Font.Height = -11
      ItemOptions.CaptionOptions.Font.Name = 'Tahoma'
      ItemOptions.CaptionOptions.Font.Style = []
      ItemOptions.CaptionOptions.UseDefaultFont = False
      ItemOptions.ControlBorderColor = 4197444
      Offsets.ControlOffsetHorz = 0
      Offsets.ControlOffsetVert = 0
      Offsets.ItemOffset = 1
      Offsets.RootItemsAreaOffsetHorz = 0
      Offsets.RootItemsAreaOffsetVert = 0
      LookAndFeel.NativeStyle = True
      LookAndFeel.SkinName = 'Office2013White'
      PixelsPerInch = 96
    end
  end
  object UCHist_Casdatro: TUCHist_DataSet
    Enabled = False
    DataSet = Agenda
    ControlHistorico = FrmPrincipal.UCControlHistorico1
    CampoPK2 = 'CODIGO'
    Tabela = 'AGENDA'
    Modulo = 'CRM'
    Left = 265
    Top = 224
  end
  object UCHist_Selecionado: TUCHist_DataSet
    DataSet = AgendaEventoSelecionado
    ControlHistorico = FrmPrincipal.UCControlHistorico1
    CampoPK2 = 'CODIGO'
    Tabela = 'AGENDA'
    Modulo = 'CRM'
    Left = 378
    Top = 286
  end
  object MensagensMemoria: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 349
    Top = 252
    object MensagensMemoriaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 100
    end
    object MensagensMemoriaMENSAGEM: TMemoField
      FieldName = 'MENSAGEM'
      BlobType = ftMemo
    end
    object MensagensMemoriaDATA: TDateTimeField
      FieldName = 'DATA'
    end
  end
  object RespositorioEstilos: TcxStyleRepository
    Left = 209
    Top = 224
    PixelsPerInch = 96
    object EstiloGridLinha1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16314351
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = 4737096
    end
    object EstiloGridLinha2: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = 4737096
    end
    object EstiloGridHeader: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = 3223857
    end
    object EstiloSegoeSB14: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
    end
    object EstiloSegoe12: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      TextColor = clGrayText
    end
    object EstiloSegoe18: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = []
      TextColor = clGrayText
    end
    object EstiloSegoe8: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
    end
    object EstiloRoxinhoFundo: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4197444
      TextColor = 11771827
    end
    object EstiloRoxinhoFonte: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 4197444
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = 16447995
    end
    object EstiloAviso: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 3947775
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = 3947775
    end
  end
end
