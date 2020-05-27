object Form1: TForm1
  Left = 187
  Top = 116
  Width = 1103
  Height = 627
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Asosiy'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object label_code: TLabel
    Left = 16
    Top = 16
    Width = 134
    Height = 25
    Caption = 'Assembly code'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object label_input: TLabel
    Left = 648
    Top = 37
    Width = 43
    Height = 25
    Caption = 'Input'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object label_output: TLabel
    Left = 656
    Top = 365
    Width = 59
    Height = 25
    Caption = 'Output'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object code: TRichEdit
    Left = 16
    Top = 48
    Width = 617
    Height = 505
    TabOrder = 0
  end
  object yuklash: TButton
    Left = 48
    Top = 568
    Width = 75
    Height = 25
    Caption = 'Yuklash'
    TabOrder = 1
    OnClick = yuklashClick
  end
  object chiqish: TMemo
    Left = 656
    Top = 397
    Width = 185
    Height = 89
    TabOrder = 2
  end
  object cpu: TGroupBox
    Left = 656
    Top = 96
    Width = 321
    Height = 257
    Caption = 'CPU'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object label_pc: TLabel
      Left = 96
      Top = 72
      Width = 149
      Height = 25
      Caption = 'Program Counter'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object label_acc: TLabel
      Left = 14
      Top = 144
      Width = 109
      Height = 25
      Caption = 'Accumulator'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object label_ix: TLabel
      Left = 164
      Top = 144
      Width = 124
      Height = 25
      Caption = 'Index Register'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object pc: TEdit
      Left = 56
      Top = 72
      Width = 33
      Height = 33
      TabOrder = 0
      Text = '00'
    end
    object acc: TEdit
      Left = 8
      Top = 176
      Width = 121
      Height = 33
      TabOrder = 1
      Text = '0'
    end
    object ix: TEdit
      Left = 168
      Top = 176
      Width = 121
      Height = 33
      TabOrder = 2
      Text = '0'
    end
  end
  object step_forward: TButton
    Left = 216
    Top = 568
    Width = 75
    Height = 25
    Caption = '==>'
    TabOrder = 4
    OnClick = step_forwardClick
  end
  object step_back: TButton
    Left = 136
    Top = 568
    Width = 75
    Height = 25
    Caption = '<=='
    TabOrder = 5
  end
  object qayta: TButton
    Left = 440
    Top = 563
    Width = 75
    Height = 25
    Caption = 'Qayta'
    TabOrder = 6
    OnClick = qaytaClick
  end
  object kirish: TEdit
    Left = 656
    Top = 69
    Width = 121
    Height = 21
    TabOrder = 7
    OnKeyPress = kirishKeyPress
  end
  object Button1: TButton
    Left = 528
    Top = 563
    Width = 75
    Height = 25
    Caption = 'Ishla'
    TabOrder = 8
    OnClick = Button1Click
  end
  object xotira: TGroupBox
    Left = 280
    Top = 48
    Width = 353
    Height = 297
    Caption = 'Xoira bilan ishlash'
    TabOrder = 9
    object tezxot: TValueListEditor
      Left = 8
      Top = 16
      Width = 201
      Height = 225
      HelpType = htKeyword
      KeyOptions = [keyEdit, keyAdd, keyDelete, keyUnique]
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goEditing, goTabs, goAlwaysShowEditor, goThumbTracking]
      Strings.Strings = (
        '=')
      TabOrder = 0
      TitleCaptions.Strings = (
        'Xotira manzili'
        'Qiymati'
        '')
      OnSetEditText = ge
      ColWidths = (
        83
        112)
    end
    object xoita_qosh: TButton
      Left = 232
      Top = 80
      Width = 75
      Height = 25
      Caption = 'Qo'#39'shish'
      TabOrder = 1
      OnClick = xoita_qoshClick
    end
    object ymanzil: TEdit
      Left = 216
      Top = 40
      Width = 121
      Height = 21
      TabOrder = 2
    end
  end
end
