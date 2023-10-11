object frmCharts: TfrmCharts
  Left = 0
  Top = 0
  Caption = 'Charts'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Shape1: TShape
    Left = 89
    Top = 304
    Width = 25
    Height = 1
    Enabled = False
  end
  object Shape2: TShape
    Left = 128
    Top = 304
    Width = 25
    Height = 1
  end
  object Shape3: TShape
    Left = 168
    Top = 304
    Width = 25
    Height = 1
  end
  object Shape4: TShape
    Left = 207
    Top = 304
    Width = 25
    Height = 1
  end
  object Shape5: TShape
    Left = 248
    Top = 304
    Width = 25
    Height = 1
  end
  object Shape6: TShape
    Left = 288
    Top = 304
    Width = 25
    Height = 1
  end
  object Shape7: TShape
    Left = 331
    Top = 304
    Width = 25
    Height = 1
  end
  object Shape8: TShape
    Left = 375
    Top = 304
    Width = 25
    Height = 1
  end
  object Shape9: TShape
    Left = 415
    Top = 304
    Width = 25
    Height = 1
  end
  object Shape10: TShape
    Left = 455
    Top = 304
    Width = 25
    Height = 1
  end
  object Shape11: TShape
    Left = 496
    Top = 304
    Width = 25
    Height = 1
  end
  object Shape12: TShape
    Left = 536
    Top = 304
    Width = 25
    Height = 1
  end
  object lblGraph: TLabel
    Left = 288
    Top = 8
    Width = 61
    Height = 15
    Caption = 'Sales Graph'
  end
  object btnMakeChart: TButton
    Left = 281
    Top = 393
    Width = 75
    Height = 25
    Caption = 'Make chart'
    TabOrder = 0
    OnClick = btnMakeChartClick
  end
  object Initial_Month: TLabeledEdit
    Left = 89
    Top = 360
    Width = 121
    Height = 23
    EditLabel.Width = 68
    EditLabel.Height = 15
    EditLabel.Caption = 'Initial Month'
    TabOrder = 1
    Text = ''
  end
  object Final_Month: TLabeledEdit
    Left = 440
    Top = 360
    Width = 121
    Height = 23
    EditLabel.Width = 67
    EditLabel.Height = 15
    EditLabel.Caption = 'LabeledEdit1'
    TabOrder = 2
    Text = ''
  end
  object Product: TLabeledEdit
    Left = 264
    Top = 360
    Width = 129
    Height = 23
    EditLabel.Width = 42
    EditLabel.Height = 15
    EditLabel.Caption = 'Product'
    TabOrder = 3
    Text = ''
  end
end
