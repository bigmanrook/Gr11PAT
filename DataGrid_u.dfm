object frmData: TfrmData
  Left = 490
  Top = 228
  Caption = 'Data'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  OnShow = ConnectDatabase
  TextHeight = 15
  object dbgAccTable: TDBGrid
    Left = 24
    Top = 8
    Width = 577
    Height = 361
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object btnBack: TButton
    Left = 526
    Top = 392
    Width = 75
    Height = 25
    Caption = 'Back'
    TabOrder = 1
    OnClick = btnBackClick
  end
end
