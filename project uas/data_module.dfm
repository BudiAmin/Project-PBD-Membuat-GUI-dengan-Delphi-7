object DataModuleLog: TDataModuleLog
  OldCreateOrder = False
  Left = 1076
  Top = 145
  Height = 542
  Width = 357
  object Zconn: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = True
    Properties.Strings = (
      'AutoEncodeStrings=True'
      'controls_cp=GET_ACP')
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'uas_pbd'
    User = 'root'
    Protocol = 'mysql'
    Left = 16
    Top = 16
  end
  object zqry1: TZQuery
    Connection = Zconn
    SQL.Strings = (
      'SELECT * FROM auth_login')
    Params = <>
    Left = 64
    Top = 16
  end
  object dsource1: TDataSource
    DataSet = zqry1
    Left = 64
    Top = 64
  end
  object dsource2: TDataSource
    DataSet = zqry2
    Left = 120
    Top = 64
  end
  object zqry2: TZQuery
    Connection = Zconn
    SQL.Strings = (
      'SELECT * FROM pengunjung')
    Params = <>
    Left = 120
    Top = 16
  end
  object find_user: TSMDBFindDialog
    Caption = 'Record search'
    ShowDialog = True
    DataSource = dsource2
    FindOption = []
    FindMode = fmBeginPart
    FindScore = fsFromFirst
    SayResult = False
    Left = 120
    Top = 112
  end
  object filter_user: TSMDBFilterDialog
    Caption = 'Filter setup dialog'
    Dataset = zqry2
    FilterMode = fmFilterDataset
    WildCard = '%'
    Left = 120
    Top = 160
  end
  object save_user: TSaveDialog
    DefaultExt = 'Excel Workbook'
    FileName = 'user.xls'
    Filter = 'Excel Workbook|*.xlsx|All File|*.*'
    Left = 120
    Top = 304
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 120
    Top = 352
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 120
    Top = 400
  end
  object zqry3: TZQuery
    Connection = Zconn
    SQL.Strings = (
      'SELECT*FROM produk')
    Params = <>
    Left = 176
    Top = 16
    object zqry3id_produk: TIntegerField
      FieldName = 'id_produk'
      Required = True
    end
    object zqry3jenis_tas: TStringField
      FieldName = 'jenis_tas'
      Required = True
      Size = 50
    end
    object zqry3merk_tas: TStringField
      FieldName = 'merk_tas'
      Required = True
      Size = 50
    end
    object zqry3harga: TIntegerField
      FieldName = 'harga'
      Required = True
    end
    object zqry3stock: TIntegerField
      FieldName = 'stock'
      Required = True
    end
    object zqry3foto: TBlobField
      FieldName = 'foto'
      Required = True
    end
  end
  object dsource3: TDataSource
    DataSet = zqry3
    Left = 176
    Top = 64
  end
  object dsource4: TDataSource
    DataSet = zqry4
    Left = 232
    Top = 64
  end
  object zqry4: TZQuery
    Connection = Zconn
    SQL.Strings = (
      'SELECT*FROM transaksi')
    Params = <>
    Left = 232
    Top = 16
  end
  object find_rincian: TSMDBFindDialog
    Caption = 'Record search'
    ShowDialog = True
    DataSource = dsource4
    FindOption = []
    FindMode = fmBeginPart
    FindScore = fsFromFirst
    SayResult = False
    Left = 232
    Top = 112
  end
  object filter_rincian: TSMDBFilterDialog
    Caption = 'Filter setup dialog'
    Dataset = zqry4
    FilterMode = fmFilterDataset
    WildCard = '%'
    Left = 232
    Top = 160
  end
  object db_dataset_rincian: TfrxDBDataset
    UserName = 'db_dataset_rincian'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_Rincian=ID_Rincian'
      'Nama=nama'
      'Pesanan=Pesanan'
      'Jumlah=Jumlah')
    DataSet = zqry4
    Left = 232
    Top = 208
  end
  object frx_report_rincian: TfrxReport
    Version = '4.6.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45233.592999224500000000
    ReportOptions.LastChange = 45234.938491794000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 232
    Top = 256
    Datasets = <
      item
        DataSet = db_dataset_rincian
        DataSetName = 'db_dataset_rincian'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object PageHeader1: TfrxPageHeader
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo1: TfrxMemoView
          Left = 37.795300000000000000
          Top = 3.779530000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'DATA RINCIAN PESANAN')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 147.401670000000000000
        Width = 793.701300000000000000
        DataSet = db_dataset_rincian
        DataSetName = 'db_dataset_rincian'
        RowCount = 0
        object Memo2: TfrxMemoView
          Left = 37.795300000000000000
          Top = 3.779530000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSetName = 'db_dataset_user'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[db_dataset_rincian."ID_Rincian"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 188.976500000000000000
          Top = 3.779530000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSetName = 'db_dataset_user'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[db_dataset_rincian."nama"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 340.157700000000000000
          Top = 3.779530000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[db_dataset_rincian."Pesanan"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 491.338900000000000000
          Top = 3.779530000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[db_dataset_rincian."Jumlah"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 170.078850000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line2: TfrxLineView
          Left = 321.260050000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line3: TfrxLineView
          Left = 472.441250000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line4: TfrxLineView
          Left = 623.622450000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line10: TfrxLineView
          Left = 18.897650000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Diagonal = True
        end
      end
      object Header1: TfrxHeader
        Height = 22.677180000000000000
        Top = 102.047310000000000000
        Width = 793.701300000000000000
        object Memo6: TfrxMemoView
          Left = 37.795300000000000000
          Top = 3.779530000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID RINCIAN')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 188.976500000000000000
          Top = 3.779530000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NAMA')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 340.157700000000000000
          Top = 3.779530000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'PESANAN')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 491.338900000000000000
          Top = 3.779530000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'JUMLAH')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Left = 623.622450000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line6: TfrxLineView
          Left = 472.441250000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line7: TfrxLineView
          Left = 321.260050000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line8: TfrxLineView
          Left = 170.078850000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line9: TfrxLineView
          Left = 18.897650000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Diagonal = True
        end
      end
    end
  end
  object save_rincian: TSaveDialog
    DefaultExt = 'Excel Workbook'
    FileName = 'rincian-transaksi.xls'
    Filter = 'Excel Workbook|*.xlsx|All File|*.*||*.xlsx'
    Left = 232
    Top = 304
  end
  object frxPDFExport2: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 232
    Top = 352
  end
  object frxXLSExport2: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 232
    Top = 400
  end
  object db_dataset_pelanggan: TfrxDBDataset
    UserName = 'db_dataset_pelanggan'
    CloseDataSource = False
    DataSet = zqry2
    Left = 120
    Top = 208
  end
  object frx_report_pelanggan: TfrxReport
    Version = '4.6.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45268.950859606500000000
    ReportOptions.LastChange = 45268.950859606500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 120
    Top = 256
    Datasets = <
      item
        DataSet = db_dataset_pelanggan
        DataSetName = 'db_dataset_pelanggan'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      object PageHeader1: TfrxPageHeader
        Height = 71.811070000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo1: TfrxMemoView
          Left = 275.905690000000000000
          Top = 18.897650000000000000
          Width = 264.567100000000000000
          Height = 56.692950000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'DATA PELANGGAN')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 52.913420000000000000
        Top = 151.181200000000000000
        Width = 793.701300000000000000
        object Memo2: TfrxMemoView
          Left = 41.574830000000000000
          Top = 15.118120000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '        NO')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 185.196970000000000000
          Top = 15.118120000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '       NAMA')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 328.819110000000000000
          Top = 15.118120000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '          NO TELEPON')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 544.252320000000000000
          Top = 15.118120000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '                ALAMAT')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 226.771800000000000000
        Width = 793.701300000000000000
        DataSet = db_dataset_pelanggan
        DataSetName = 'db_dataset_pelanggan'
        RowCount = 0
        object db_dataset_pelangganid: TfrxMemoView
          Left = 79.370130000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id'
          DataSet = db_dataset_pelanggan
          DataSetName = 'db_dataset_pelanggan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[db_dataset_pelanggan."id"]')
          ParentFont = False
        end
        object db_dataset_pelanggannama: TfrxMemoView
          Left = 211.653680000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nama'
          DataSet = db_dataset_pelanggan
          DataSetName = 'db_dataset_pelanggan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[db_dataset_pelanggan."nama"]')
          ParentFont = False
        end
        object db_dataset_pelangganno_tlp: TfrxMemoView
          Left = 347.716760000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'no_tlp'
          DataSet = db_dataset_pelanggan
          DataSetName = 'db_dataset_pelanggan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[db_dataset_pelanggan."no_tlp"]')
          ParentFont = False
        end
        object db_dataset_pelangganalamat: TfrxMemoView
          Left = 566.929500000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'alamat'
          DataSet = db_dataset_pelanggan
          DataSetName = 'db_dataset_pelanggan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[db_dataset_pelanggan."alamat"]')
          ParentFont = False
        end
      end
    end
  end
end
