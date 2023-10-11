object frmSignUp: TfrmSignUp
  Left = 735
  Top = 332
  Caption = 'Sign up Page'
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
  object Account: TLabeledEdit
    Left = 248
    Top = 160
    Width = 121
    Height = 23
    EditLabel.Width = 45
    EditLabel.Height = 15
    EditLabel.Caption = 'Account'
    TabOrder = 0
    Text = ''
  end
  object Username: TLabeledEdit
    Left = 248
    Top = 216
    Width = 121
    Height = 23
    EditLabel.Width = 53
    EditLabel.Height = 15
    EditLabel.Caption = 'Username'
    TabOrder = 1
    Text = ''
  end
  object Password: TLabeledEdit
    Left = 248
    Top = 272
    Width = 121
    Height = 23
    EditLabel.Width = 50
    EditLabel.Height = 15
    EditLabel.Caption = 'Password'
    TabOrder = 2
    Text = ''
  end
  object btnSignUp: TButton
    Left = 272
    Top = 336
    Width = 75
    Height = 25
    Caption = 'btnSignUp'
    TabOrder = 3
    OnClick = btnSignUpClick
  end
end
