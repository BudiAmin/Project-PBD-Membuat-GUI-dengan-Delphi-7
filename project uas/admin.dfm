object user1: Tuser1
  Left = 140
  Top = 114
  Width = 1218
  Height = 606
  Caption = 'User'
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
    Left = 480
    Top = 8
    Width = 335
    Height = 60
    Caption = 'Selamat Datang'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -48
    Font.Name = 'Ink Free'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 392
    Top = 72
    Width = 509
    Height = 39
    Caption = 'Silahkan Cari Buku Yang Ingin Di Beli'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Ink Free'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object EDBImage1: TEDBImage
    Left = 80
    Top = 136
    Width = 105
    Height = 105
    DataField = 'foto'
    DataSource = DataModuleLog.dsource3
    TabOrder = 0
    ZoomToFit = False
  end
  object PopupMenu1: TPopupMenu
    Left = 40
    Top = 40
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
