object FormLogin: TFormLogin
  Left = 401
  Top = 60
  Width = 611
  Height = 626
  Caption = 'Form Login'
  Color = clAppWorkSpace
  Font.Charset = OEM_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 80
    Top = 256
    Width = 112
    Height = 25
    Caption = 'USERNAME'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 80
    Top = 344
    Width = 118
    Height = 25
    Caption = 'PASSWORD'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 40
    Top = 72
    Width = 278
    Height = 54
    Caption = 'WELCOME TO '
    Color = clCaptionText
    Font.Charset = OEM_CHARSET
    Font.Color = clBlack
    Font.Height = -47
    Font.Name = 'Roman'
    Font.Style = [fsBold, fsItalic]
    ParentColor = False
    ParentFont = False
  end
  object Label4: TLabel
    Left = 296
    Top = 72
    Width = 244
    Height = 54
    Caption = 'TAS STORE '
    Color = clCaptionText
    Font.Charset = OEM_CHARSET
    Font.Color = clWindowText
    Font.Height = -47
    Font.Name = 'Roman'
    Font.Style = [fsBold, fsItalic, fsStrikeOut]
    ParentColor = False
    ParentFont = False
  end
  object Label5: TLabel
    Left = 16
    Top = 560
    Width = 132
    Height = 16
    Caption = '152022213_BUDI AMIN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 400
    Top = 560
    Width = 162
    Height = 16
    Caption = 'Pemrograman Basis Data 2023'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Serif'
    Font.Style = []
    ParentFont = False
  end
  object ed_username: TEdit
    Left = 296
    Top = 248
    Width = 201
    Height = 22
    TabOrder = 0
  end
  object ed_password: TEdit
    Left = 296
    Top = 336
    Width = 201
    Height = 22
    TabOrder = 1
  end
  object btn_login: TButton
    Left = 176
    Top = 440
    Width = 225
    Height = 49
    Caption = 'LOGIN'
    TabOrder = 2
    OnClick = btn_loginClick
  end
end
