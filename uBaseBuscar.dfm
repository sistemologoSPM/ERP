inherited frmBaseBuscar: TfrmBaseBuscar
  BorderStyle = bsDialog
  Caption = 'frmBaseBuscar'
  ClientHeight = 439
  ClientWidth = 698
  OnShow = FormShow
  ExplicitWidth = 704
  ExplicitHeight = 468
  PixelsPerInch = 96
  TextHeight = 16
  inherited StatusBar1: TStatusBar
    Top = 420
    Width = 698
    ExplicitTop = 420
    ExplicitWidth = 698
  end
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 698
    Height = 420
    Align = alClient
    TabOrder = 1
    object GridListado: TcxGrid
      AlignWithMargins = True
      Left = 26
      Top = 33
      Width = 646
      Height = 284
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = cxcbsNone
      TabOrder = 0
      object GridListadoDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Insert.Visible = False
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Delete.Visible = False
        Navigator.Buttons.Edit.Visible = False
        Navigator.Buttons.Post.Visible = False
        Navigator.Buttons.Cancel.Visible = False
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.Buttons.Filter.Visible = False
        Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        FindPanel.DisplayMode = fpdmAlways
        FindPanel.InfoText = 'Introduzca texto para buscar...'
        FindPanel.ShowClearButton = False
        FindPanel.ShowCloseButton = False
        FindPanel.ShowFindButton = False
        OnCellDblClick = GridListadoDBTableView1CellDblClick
        DataController.DataSource = dsListado
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.NoDataToDisplayInfoText = '<No hay datos para mostrar>'
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
      end
      object GridListadoLevel1: TcxGridLevel
        GridView = GridListadoDBTableView1
      end
    end
    object btnImprimir: TcxButton
      Left = 547
      Top = 359
      Width = 125
      Height = 35
      Caption = 'Aceptar'
      ModalResult = 1
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000006624B474400FF00FF00FFA0BDA79300000168494441543811636460
        40808AEE39FF113CDCAC8ED21446982C0B8C01A3DB4B92614CAC7465CF5C1471
        26141E191C8A0D60CCAA9DB4EFCF9F7F0E0C0CFF195F30AA31100324FEDF022A
        63FCCFC2C2B48FE5CF9FBF0E9EEE2E8C40C0306FE743065B5B6BA0246E74F8F0
        51062F0F5786FFFFFF336EDFB9C709E405A05E78A0E2D6892463267F9F01A809
        24C2083200C400634E7656868F9F3E83D9D8888F9F3E317071B0309C7AA80897
        4689461B2D418623D7AE337CFFF91BAE009901B2C0565B08598801C50059314E
        864820465141800337E0E9B3E70C172F5D21A01C28CDC8C060A0A7C320252909
        E430205C202D25C9F0F8C94386B88840B0042E62D18AF570CD20352CCCCCCCB7
        F7EE3D20F19F91F13F0F0F3B9FA60CAA1F418AD0F19E7D073F3102A3919985E5
        390BCB4706DD3FDCBFA5C18A78D8EF8268F4F40E120361583EF9FBF3972188FF
        86E3E313100DC7A0DC084C207811480D5C0390C102C4280897ED288A90380073
        337DD212BBFED30000000049454E44AE426082}
      TabOrder = 1
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = Listado
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = GridListado
      ControlOptions.OriginalHeight = 468
      ControlOptions.OriginalWidth = 648
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = BarraHerramientas
      AlignHorz = ahRight
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnImprimir
      ControlOptions.OriginalHeight = 35
      ControlOptions.OriginalWidth = 125
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object BarraHerramientas: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object Listado: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 0
    end
  end
  object qListado: TADOQuery
    Connection = dmBaseDeDatos.db
    Parameters = <>
    Left = 152
    Top = 136
  end
  object dsListado: TDataSource
    DataSet = qListado
    Left = 240
    Top = 152
  end
end
