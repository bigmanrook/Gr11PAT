object frmMenu: TfrmMenu
  Left = 674
  Top = 332
  Caption = 'Main Menu'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  TextHeight = 15
  object btnLogOut: TButton
    Left = 264
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Log Out'
    TabOrder = 0
    OnClick = btnLogOutClick
  end
  object btnEditData: TButton
    Left = 264
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Edit Data'
    TabOrder = 1
    OnClick = btnEditDataClick
  end
  object btnViewData: TButton
    Left = 264
    Top = 280
    Width = 75
    Height = 25
    Caption = 'View Data'
    TabOrder = 2
    OnClick = btnViewDataClick
  end
end