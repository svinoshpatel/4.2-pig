object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Polymorphism: Pigs'
  ClientHeight = 211
  ClientWidth = 384
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 20
    Top = 20
    Width = 61
    Height = 15
    Caption = 'Pig`s name:'
  end
  object Edit1: TEdit
    Left = 120
    Top = 18
    Width = 200
    Height = 23
    TabOrder = 0
  end
  object GroupBox1: TGroupBox
    Left = 20
    Top = 50
    Width = 300
    Height = 50
    Caption = 'Pig type'
    TabOrder = 1
    object RadioButtonPet: TRadioButton
      Left = 20
      Top = 20
      Width = 120
      Height = 17
      Caption = 'Pet pig'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object RadioButtonFarm: TRadioButton
      Left = 160
      Top = 20
      Width = 120
      Height = 17
      Caption = 'Farm pig'
      TabOrder = 1
    end
  end
  object ButtonAdd: TButton
    Left = 20
    Top = 120
    Width = 140
    Height = 25
    Caption = 'Add pig'
    TabOrder = 2
    OnClick = ButtonAddClick
  end
  object ButtonShow: TButton
    Left = 180
    Top = 120
    Width = 140
    Height = 25
    Caption = 'Show list'
    TabOrder = 3
    OnClick = ButtonShowClick
  end
end
