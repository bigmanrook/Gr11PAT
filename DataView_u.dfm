object frmDataView: TfrmDataView
  Left = 0
  Top = 0
  Caption = 'View Data'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object dbgView: TDBGrid
    Left = 0
    Top = 0
    Width = 569
    Height = 393
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object btnMainMenu: TButton
    Left = 8
    Top = 409
    Width = 75
    Height = 25
    Caption = 'Back'
    TabOrder = 1
    OnClick = btnMainMenuClick
  end
end
