object frmDataEdit: TfrmDataEdit
  Left = 674
  Top = 332
  Caption = 'Data editting'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  OnCreate = FormCreate
  TextHeight = 15
  object dbgEdit: TDBGrid
    Left = 0
    Top = 0
    Width = 616
    Height = 225
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object Month: TLabeledEdit
    Left = 32
    Top = 264
    Width = 121
    Height = 23
    EditLabel.Width = 36
    EditLabel.Height = 15
    EditLabel.Caption = 'Month'
    TabOrder = 1
    Text = 'Type in month '
  end
  object Edit: TLabeledEdit
    Left = 32
    Top = 320
    Width = 121
    Height = 23
    EditLabel.Width = 67
    EditLabel.Height = 15
    EditLabel.Caption = 'LabeledEdit1'
    TabOrder = 2
    Text = 'Fix the error'
  end
  object btnMakeChanges: TButton
    Left = 32
    Top = 384
    Width = 121
    Height = 25
    Caption = 'Make Changes'
    TabOrder = 3
    OnClick = btnMakeChangesClick
  end
end
