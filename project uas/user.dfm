object admin1: Tadmin1
  Left = 201
  Top = 129
  Width = 1319
  Height = 653
  Caption = 'Admin'
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 224
    Width = 39
    Height = 16
    Caption = 'NAMA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 32
    Top = 264
    Width = 48
    Height = 16
    Caption = 'NO TLP'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 32
    Top = 304
    Width = 54
    Height = 16
    Caption = 'ALAMAT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 616
    Top = 200
    Width = 54
    Height = 13
    Caption = 'JENIS TAS'
  end
  object Label5: TLabel
    Left = 616
    Top = 224
    Width = 55
    Height = 13
    Caption = 'MERK TAS'
  end
  object Label6: TLabel
    Left = 624
    Top = 248
    Width = 38
    Height = 13
    Caption = 'HARGA'
  end
  object Label7: TLabel
    Left = 624
    Top = 272
    Width = 36
    Height = 13
    Caption = 'STOCK'
  end
  object Label8: TLabel
    Left = 520
    Top = 400
    Width = 78
    Height = 16
    Caption = 'ID_TRANSAKSI'
  end
  object Label9: TLabel
    Left = 520
    Top = 424
    Width = 83
    Height = 16
    Caption = 'ID_PELANGGAN'
  end
  object Label10: TLabel
    Left = 528
    Top = 448
    Width = 63
    Height = 16
    Caption = 'ID_PRODUK'
  end
  object Label11: TLabel
    Left = 520
    Top = 472
    Width = 91
    Height = 13
    Caption = 'JUMLAH BARANG'
  end
  object Label12: TLabel
    Left = 528
    Top = 496
    Width = 76
    Height = 16
    Caption = 'TOTAL HARGA'
  end
  object ed_nama: TEdit
    Left = 144
    Top = 224
    Width = 320
    Height = 21
    TabOrder = 0
  end
  object ed_tlp: TEdit
    Left = 144
    Top = 256
    Width = 320
    Height = 21
    TabOrder = 1
  end
  object ed_alamat: TEdit
    Left = 144
    Top = 296
    Width = 320
    Height = 21
    TabOrder = 2
  end
  object user_navigator: TSMDBNavigator
    Left = 32
    Top = 160
    Width = 434
    Height = 33
    DataSource = DataModuleLog.dsource2
    VisibleButtons = [sbFirst, sbPrior, sbNext, sbLast, sbInsert, sbDelete, sbEdit, sbFilter, sbFind, sbPrint, sbExport, sbPost, sbCancel, sbRefresh]
    Layout = blGlyphLeft
    ShowCaption = False
    ShowGlyph = True
    TabOrder = 3
    OnClick = user_navigatorClick
  end
  object btn_save: TButton
    Left = 32
    Top = 336
    Width = 140
    Height = 30
    Caption = 'SAVE'
    TabOrder = 4
    OnClick = btn_saveClick
  end
  object btn_delete: TButton
    Left = 320
    Top = 336
    Width = 140
    Height = 30
    Caption = 'DELETE'
    TabOrder = 5
    OnClick = btn_deleteClick
  end
  object btn_update: TButton
    Left = 176
    Top = 336
    Width = 140
    Height = 30
    Caption = 'UPDATE'
    TabOrder = 6
    OnClick = btn_updateClick
  end
  object rincian_navigator: TSMDBNavigator
    Left = 40
    Top = 528
    Width = 434
    Height = 33
    DataSource = DataModuleLog.dsource4
    VisibleButtons = [sbFirst, sbPrior, sbNext, sbLast, sbInsert, sbDelete, sbEdit, sbFilter, sbFind, sbPrint, sbExport, sbPost, sbCancel, sbRefresh]
    Layout = blGlyphLeft
    ShowCaption = False
    ShowGlyph = True
    TabOrder = 7
    OnClick = rincian_navigatorClick
  end
  object grid_pelanggan: TSMDBGrid
    Left = 24
    Top = 32
    Width = 449
    Height = 120
    DataSource = DataModuleLog.dsource2
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Flat = False
    Bands.Strings = (
      'Id Pelanggan'
      'Id buku')
    BandsFont.Charset = DEFAULT_CHARSET
    BandsFont.Color = clWindowText
    BandsFont.Height = -11
    BandsFont.Name = 'MS Sans Serif'
    BandsFont.Style = []
    Groupings = <>
    GridStyle.Style = gsNormal
    GridStyle.OddColor = clWindow
    GridStyle.EvenColor = clWindow
    TitleHeight.PixelCount = 24
    FooterColor = clBtnFace
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    Columns = <
      item
        Expanded = False
        FieldName = 'id_pelanggan'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_pelanggan'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'no_tlp'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'alamat'
        Visible = True
      end>
  end
  object grid_produk: TSMDBGrid
    Left = 592
    Top = 16
    Width = 497
    Height = 169
    DataSource = DataModuleLog.dsource3
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Flat = False
    BandsFont.Charset = DEFAULT_CHARSET
    BandsFont.Color = clWindowText
    BandsFont.Height = -11
    BandsFont.Name = 'MS Sans Serif'
    BandsFont.Style = []
    Groupings = <>
    GridStyle.Style = gsNormal
    GridStyle.OddColor = clWindow
    GridStyle.EvenColor = clWindow
    TitleHeight.PixelCount = 24
    FooterColor = clBtnFace
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    Columns = <
      item
        Expanded = False
        FieldName = 'id_produk'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jenis_tas'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'merk_tas'
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'harga'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'stock'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'foto'
        Visible = True
      end>
  end
  object grid_transaksi: TSMDBGrid
    Left = 24
    Top = 384
    Width = 457
    Height = 128
    DataSource = DataModuleLog.dsource4
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Flat = False
    BandsFont.Charset = DEFAULT_CHARSET
    BandsFont.Color = clWindowText
    BandsFont.Height = -11
    BandsFont.Name = 'MS Sans Serif'
    BandsFont.Style = []
    Groupings = <>
    GridStyle.Style = gsNormal
    GridStyle.OddColor = clWindow
    GridStyle.EvenColor = clWindow
    TitleHeight.PixelCount = 24
    FooterColor = clBtnFace
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    Columns = <
      item
        Expanded = False
        FieldName = 'id_transaksi'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_pelanggan'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_produk'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jumlah_barang'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'total_harga'
        Visible = True
      end>
  end
  object EDBImage1: TEDBImage
    Left = 1088
    Top = 40
    Width = 105
    Height = 105
    DataField = 'foto'
    DataSource = DataModuleLog.dsource3
    PopupMenu = PopupMenu1
    ShrinkToFit = True
    TabOrder = 11
    ZoomToFit = False
  end
  object Button1: TButton
    Left = 1104
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Load File'
    TabOrder = 12
  end
  object ed_jenistas: TEdit
    Left = 688
    Top = 200
    Width = 320
    Height = 21
    TabOrder = 13
  end
  object ed_merktas: TEdit
    Left = 688
    Top = 224
    Width = 320
    Height = 21
    TabOrder = 14
  end
  object ed_harga: TEdit
    Left = 688
    Top = 248
    Width = 320
    Height = 21
    TabOrder = 15
  end
  object ed_stock: TEdit
    Left = 688
    Top = 272
    Width = 320
    Height = 21
    TabOrder = 16
  end
  object SMDBNavigator1: TSMDBNavigator
    Left = 592
    Top = 296
    Width = 434
    Height = 33
    DataSource = DataModuleLog.dsource3
    VisibleButtons = [sbFirst, sbPrior, sbNext, sbLast, sbInsert, sbDelete, sbEdit, sbFilter, sbFind, sbPrint, sbExport, sbPost, sbCancel, sbRefresh]
    Layout = blGlyphLeft
    ShowCaption = False
    ShowGlyph = True
    TabOrder = 17
    OnClick = user_navigatorClick
  end
  object Button2: TButton
    Left = 608
    Top = 336
    Width = 97
    Height = 25
    Caption = 'SAVE'
    TabOrder = 18
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 760
    Top = 336
    Width = 113
    Height = 25
    Caption = 'UPDATE'
    TabOrder = 19
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 920
    Top = 336
    Width = 97
    Height = 25
    Caption = 'DELETE'
    TabOrder = 20
    OnClick = Button4Click
  end
  object ed_transaksi: TEdit
    Left = 632
    Top = 392
    Width = 320
    Height = 21
    TabOrder = 21
  end
  object ed_pelanggan: TEdit
    Left = 632
    Top = 424
    Width = 320
    Height = 21
    TabOrder = 22
  end
  object ed_produk: TEdit
    Left = 632
    Top = 448
    Width = 320
    Height = 21
    TabOrder = 23
  end
  object ed_jumlahbarang: TEdit
    Left = 632
    Top = 472
    Width = 320
    Height = 21
    TabOrder = 24
  end
  object ed_totalharga: TEdit
    Left = 632
    Top = 496
    Width = 320
    Height = 21
    TabOrder = 25
  end
  object Button5: TButton
    Left = 616
    Top = 536
    Width = 75
    Height = 25
    Caption = 'SAVE'
    TabOrder = 26
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 768
    Top = 536
    Width = 75
    Height = 25
    Caption = 'UPDATE'
    TabOrder = 27
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 936
    Top = 536
    Width = 75
    Height = 25
    Caption = 'DELETE'
    TabOrder = 28
    OnClick = Button7Click
  end
  object export_user: TmxDBGridExport
    DateFormat = 'M/d/yyyy'
    TimeFormat = 'hh:mm'
    DateTimeFormat = 'hh:mm M/d/yyyy'
    ExportType = xtExcel
    ExportTypes = [xtHTML, xtExcel, xtWord, xtTXT, xtCSV, xtTAB, xtRTF, xtDIF, xtSYLK, xtClipboard]
    ExportStyle = xsView
    FileName = 'user.xls'#13#10
    HTML.CustomColors.Background = clWhite
    HTML.CustomColors.DefaultLink = clRed
    HTML.CustomColors.DefaultFontFace = 'Arial,Helvetica'
    HTML.CustomColors.VisitedLink = clAqua
    HTML.CustomColors.ActiveLink = clBlue
    HTML.CustomColors.DefaultText = clBlack
    HTML.CustomColors.TableFontColor = clBlack
    HTML.CustomColors.TableFontFace = 'Arial,Helvetica'
    HTML.CustomColors.TableBackground = 16777167
    HTML.CustomColors.TableOddBackground = clWhite
    HTML.CustomColors.HeaderBackground = 3368601
    HTML.CustomColors.HeadersFontColor = clWhite
    HTML.Options = [hoShowGridLines, hoBoldHeaders, hoAutoLink, hoOddRowColoring, hoDisplayTitle]
    HTML.Template = ctStandard
    Messages.Caption = 'Exporting DBGrid'
    Messages.CopiedToClipboard = 'Data was copied to clipboard!'
    Messages.CancelCaption = '&Cancel'
    Messages.CreatedText = 'Created:'
    Messages.DocumentFilter.HTML = 'HTML Documents'
    Messages.DocumentFilter.Excel = 'Excel Files'
    Messages.DocumentFilter.Word = 'Word Documents'
    Messages.DocumentFilter.Text = 'Text Files'
    Messages.DocumentFilter.Comma = 'CSV (Comma delimited)'
    Messages.DocumentFilter.Tab = 'Text (Tab delimited)'
    Messages.DocumentFilter.RTF = 'Rich Text Format'
    Messages.DocumentFilter.DIF = 'Data Interchange Format'
    Messages.DocumentFilter.SYLK = 'SYLK Files'
    Messages.ExportCaption = '&Export'
    Messages.ExportToFile = 'Export &to file'
    Messages.FalseText = 'False'
    Messages.Height = 80
    Messages.SaveTitle = 'Save document'
    Messages.SelectFormat = 'E&xport formats:'
    Messages.Text = 'Processing...'
    Messages.TrueText = 'True'
    Messages.Width = 300
    Messages.ViewOnly = '&View only'
    TruncateSymbol = '...'
    RowNumberFormat = '%d'
    DOC_RTF.Template = rtStandard
    DOC_RTF.Options = [roShowGridLines, roOddRowColoring]
    DOC_RTF.CustomSettings.TableBackground = 16777167
    DOC_RTF.CustomSettings.TableOddBackground = clWhite
    DOC_RTF.CustomSettings.HeaderBackground = 3368601
    DOC_RTF.CustomSettings.DefaultFont.Charset = DEFAULT_CHARSET
    DOC_RTF.CustomSettings.DefaultFont.Color = clWindowText
    DOC_RTF.CustomSettings.DefaultFont.Height = -11
    DOC_RTF.CustomSettings.DefaultFont.Name = 'MS Sans Serif'
    DOC_RTF.CustomSettings.DefaultFont.Style = []
    DOC_RTF.CustomSettings.HeaderFont.Charset = DEFAULT_CHARSET
    DOC_RTF.CustomSettings.HeaderFont.Color = clWindowText
    DOC_RTF.CustomSettings.HeaderFont.Height = -11
    DOC_RTF.CustomSettings.HeaderFont.Name = 'MS Sans Serif'
    DOC_RTF.CustomSettings.HeaderFont.Style = [fsBold]
    DOC_RTF.CustomSettings.TableFont.Charset = DEFAULT_CHARSET
    DOC_RTF.CustomSettings.TableFont.Color = clWindowText
    DOC_RTF.CustomSettings.TableFont.Height = -11
    DOC_RTF.CustomSettings.TableFont.Name = 'MS Sans Serif'
    DOC_RTF.CustomSettings.TableFont.Style = []
    DOC_RTF.CellWidth = 1400
    DOC_RTF.TopMargin = 101
    DOC_RTF.BottomMargin = 101
    DOC_RTF.LeftMargin = 461
    DOC_RTF.RightMargin = 562
    EXCEL.Options = [reSetMargins, reUseBorders]
    EXCEL.ColumnWidth = 20
    EXCEL.Protected = False
    EXCEL.Footer = '&P'
    EXCEL.DefaultFont.Charset = DEFAULT_CHARSET
    EXCEL.DefaultFont.Color = clWindowText
    EXCEL.DefaultFont.Height = -11
    EXCEL.DefaultFont.Name = 'MS Sans Serif'
    EXCEL.DefaultFont.Style = []
    EXCEL.HeaderFont.Charset = DEFAULT_CHARSET
    EXCEL.HeaderFont.Color = clWindowText
    EXCEL.HeaderFont.Height = -11
    EXCEL.HeaderFont.Name = 'MS Sans Serif'
    EXCEL.HeaderFont.Style = [fsBold]
    EXCEL.TableFont.Charset = DEFAULT_CHARSET
    EXCEL.TableFont.Color = clWindowText
    EXCEL.TableFont.Height = -11
    EXCEL.TableFont.Name = 'MS Sans Serif'
    EXCEL.TableFont.Style = []
    EXCEL.TopMargin = 0.300000000000000000
    EXCEL.BottomMargin = 0.300000000000000000
    EXCEL.LeftMargin = 0.300000000000000000
    EXCEL.RightMargin = 0.300000000000000000
    Options = [xoClipboardMessage, xoFooterLine, xoHeaderLine, xoShowExportDate, xoShowHeader, xoShowProgress, xoUseAlignments]
    Version = '2.37'
    Left = 520
    Top = 32
  end
  object export_rincian: TmxDBGridExport
    DateFormat = 'M/d/yyyy'
    TimeFormat = 'hh:mm'
    DateTimeFormat = 'hh:mm M/d/yyyy'
    ExportType = xtExcel
    ExportTypes = [xtHTML, xtExcel, xtWord, xtTXT, xtCSV, xtTAB, xtRTF, xtDIF, xtSYLK, xtClipboard]
    ExportStyle = xsView
    FileName = 'rincian-transaksi.xls'
    HTML.CustomColors.Background = clWhite
    HTML.CustomColors.DefaultLink = clRed
    HTML.CustomColors.DefaultFontFace = 'Arial,Helvetica'
    HTML.CustomColors.VisitedLink = clAqua
    HTML.CustomColors.ActiveLink = clBlue
    HTML.CustomColors.DefaultText = clBlack
    HTML.CustomColors.TableFontColor = clBlack
    HTML.CustomColors.TableFontFace = 'Arial,Helvetica'
    HTML.CustomColors.TableBackground = 16777167
    HTML.CustomColors.TableOddBackground = clWhite
    HTML.CustomColors.HeaderBackground = 3368601
    HTML.CustomColors.HeadersFontColor = clWhite
    HTML.Options = [hoShowGridLines, hoBoldHeaders, hoAutoLink, hoOddRowColoring, hoDisplayTitle]
    HTML.Template = ctStandard
    Messages.Caption = 'Exporting DBGrid'
    Messages.CopiedToClipboard = 'Data was copied to clipboard!'
    Messages.CancelCaption = '&Cancel'
    Messages.CreatedText = 'Created:'
    Messages.DocumentFilter.HTML = 'HTML Documents'
    Messages.DocumentFilter.Excel = 'Excel Files'
    Messages.DocumentFilter.Word = 'Word Documents'
    Messages.DocumentFilter.Text = 'Text Files'
    Messages.DocumentFilter.Comma = 'CSV (Comma delimited)'
    Messages.DocumentFilter.Tab = 'Text (Tab delimited)'
    Messages.DocumentFilter.RTF = 'Rich Text Format'
    Messages.DocumentFilter.DIF = 'Data Interchange Format'
    Messages.DocumentFilter.SYLK = 'SYLK Files'
    Messages.ExportCaption = '&Export'
    Messages.ExportToFile = 'Export &to file'
    Messages.FalseText = 'False'
    Messages.Height = 80
    Messages.SaveTitle = 'Save document'
    Messages.SelectFormat = 'E&xport formats:'
    Messages.Text = 'Processing...'
    Messages.TrueText = 'True'
    Messages.Width = 300
    Messages.ViewOnly = '&View only'
    TruncateSymbol = '...'
    RowNumberFormat = '%d'
    DOC_RTF.Template = rtStandard
    DOC_RTF.Options = [roShowGridLines, roOddRowColoring]
    DOC_RTF.CustomSettings.TableBackground = 16777167
    DOC_RTF.CustomSettings.TableOddBackground = clWhite
    DOC_RTF.CustomSettings.HeaderBackground = 3368601
    DOC_RTF.CustomSettings.DefaultFont.Charset = DEFAULT_CHARSET
    DOC_RTF.CustomSettings.DefaultFont.Color = clWindowText
    DOC_RTF.CustomSettings.DefaultFont.Height = -11
    DOC_RTF.CustomSettings.DefaultFont.Name = 'MS Sans Serif'
    DOC_RTF.CustomSettings.DefaultFont.Style = []
    DOC_RTF.CustomSettings.HeaderFont.Charset = DEFAULT_CHARSET
    DOC_RTF.CustomSettings.HeaderFont.Color = clWindowText
    DOC_RTF.CustomSettings.HeaderFont.Height = -11
    DOC_RTF.CustomSettings.HeaderFont.Name = 'MS Sans Serif'
    DOC_RTF.CustomSettings.HeaderFont.Style = [fsBold]
    DOC_RTF.CustomSettings.TableFont.Charset = DEFAULT_CHARSET
    DOC_RTF.CustomSettings.TableFont.Color = clWindowText
    DOC_RTF.CustomSettings.TableFont.Height = -11
    DOC_RTF.CustomSettings.TableFont.Name = 'MS Sans Serif'
    DOC_RTF.CustomSettings.TableFont.Style = []
    DOC_RTF.CellWidth = 1400
    DOC_RTF.TopMargin = 101
    DOC_RTF.BottomMargin = 101
    DOC_RTF.LeftMargin = 461
    DOC_RTF.RightMargin = 562
    EXCEL.Options = [reSetMargins, reUseBorders]
    EXCEL.ColumnWidth = 20
    EXCEL.Protected = False
    EXCEL.Footer = '&P'
    EXCEL.DefaultFont.Charset = DEFAULT_CHARSET
    EXCEL.DefaultFont.Color = clWindowText
    EXCEL.DefaultFont.Height = -11
    EXCEL.DefaultFont.Name = 'MS Sans Serif'
    EXCEL.DefaultFont.Style = []
    EXCEL.HeaderFont.Charset = DEFAULT_CHARSET
    EXCEL.HeaderFont.Color = clWindowText
    EXCEL.HeaderFont.Height = -11
    EXCEL.HeaderFont.Name = 'MS Sans Serif'
    EXCEL.HeaderFont.Style = [fsBold]
    EXCEL.TableFont.Charset = DEFAULT_CHARSET
    EXCEL.TableFont.Color = clWindowText
    EXCEL.TableFont.Height = -11
    EXCEL.TableFont.Name = 'MS Sans Serif'
    EXCEL.TableFont.Style = []
    EXCEL.TopMargin = 0.300000000000000000
    EXCEL.BottomMargin = 0.300000000000000000
    EXCEL.LeftMargin = 0.300000000000000000
    EXCEL.RightMargin = 0.300000000000000000
    Options = [xoClipboardMessage, xoFooterLine, xoHeaderLine, xoShowExportDate, xoShowHeader, xoShowProgress, xoUseAlignments]
    Version = '2.37'
    Left = 520
    Top = 80
  end
  object PopupMenu1: TPopupMenu
    Left = 1216
    Top = 72
    object Load1: TMenuItem
      Caption = '&Load'
      OnClick = Load1Click
    end
    object Extract1: TMenuItem
      Caption = '&Extract'
      OnClick = Extract1Click
    end
    object Clear1: TMenuItem
      Caption = '&Clear'
      OnClick = Clear1Click
    end
  end
end
