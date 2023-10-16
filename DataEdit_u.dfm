object frmDataEdit: TfrmDataEdit
  Left = 0
  Top = 0
  Caption = 'Data editting'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = ConnectDataGrid
  TextHeight = 15
  object dbgAccTable: TDBGrid
    Left = 24
    Top = 8
    Width = 569
    Height = 233
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object btnBack: TButton
    Left = 8
    Top = 408
    Width = 75
    Height = 25
    Caption = 'back'
    TabOrder = 1
  end
  object Month: TLabeledEdit
    Left = 24
    Top = 288
    Width = 121
    Height = 23
    EditLabel.Width = 36
    EditLabel.Height = 15
    EditLabel.Caption = 'Month'
    TabOrder = 2
    Text = ''
  end
  object Value: TLabeledEdit
    Left = 472
    Top = 288
    Width = 121
    Height = 23
    EditLabel.Width = 67
    EditLabel.Height = 15
    EditLabel.Caption = 'LabeledEdit1'
    TabOrder = 3
    Text = ''
  end
  object Product: TLabeledEdit
    Left = 264
    Top = 288
    Width = 121
    Height = 23
    EditLabel.Width = 42
    EditLabel.Height = 15
    EditLabel.Caption = 'Product'
    TabOrder = 4
    Text = ''
  end
  object btnPost: TButton
    Left = 280
    Top = 352
    Width = 75
    Height = 25
    Caption = 'Post Changes'
    TabOrder = 5
    OnClick = btnPostClick
  end
end
