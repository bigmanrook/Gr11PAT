object frmWelcome: TfrmWelcome
  Left = 460
  Top = 225
  Caption = 'Welcome'
  ClientHeight = 438
  ClientWidth = 612
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  OnClose = FormClose
  TextHeight = 15
  object btnLogin: TButton
    Left = 112
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Login'
    TabOrder = 0
    OnClick = btnLoginClick
  end
  object btnSignUp: TButton
    Left = 424
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Sign Up'
    TabOrder = 1
    OnClick = btnSignUpClick
  end
  object Account: TLabeledEdit
    Left = 240
    Top = 112
    Width = 121
    Height = 23
    EditLabel.Width = 45
    EditLabel.Height = 23
    EditLabel.Caption = 'Account'
    LabelPosition = lpLeft
    TabOrder = 2
    Text = ''
  end
  object Password: TLabeledEdit
    Left = 240
    Top = 176
    Width = 121
    Height = 23
    EditLabel.Width = 50
    EditLabel.Height = 23
    EditLabel.Caption = 'Password'
    LabelPosition = lpLeft
    TabOrder = 3
    Text = ''
  end
end
