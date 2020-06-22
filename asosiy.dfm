object Form1: TForm1
  Left = 250
  Top = 84
  Width = 1019
  Height = 645
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Assembler'
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object sLabel1: TsLabel
    Left = 1024
    Top = 32
    Width = 49
    Height = 25
    Caption = 'Kirish'
    Color = clDefault
    ParentColor = False
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
  end
  object sLabel5: TsLabel
    Left = 1024
    Top = 432
    Width = 66
    Height = 25
    Caption = 'Chiqish'
    Color = clDefault
    ParentColor = False
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
  end
  object sLabel6: TsLabel
    Left = 16
    Top = 16
    Width = 109
    Height = 25
    Caption = 'Dastur matni'
    Color = clDefault
    ParentColor = False
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
  end
  object sLabelFX1: TsLabelFX
    Left = 1224
    Top = 676
    Width = 133
    Height = 21
    Caption = #169' Azimjon Mehmonali o'#39'g'#39'li'
  end
  object code: TRichEdit
    Left = 16
    Top = 48
    Width = 745
    Height = 505
    TabOrder = 0
  end
  object chiqish: TMemo
    Left = 1024
    Top = 461
    Width = 185
    Height = 89
    TabOrder = 1
  end
  object cpu: TGroupBox
    Left = 1024
    Top = 136
    Width = 321
    Height = 257
    Caption = 'CPU'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object sLabel2: TsLabel
      Left = 100
      Top = 80
      Width = 149
      Height = 25
      Caption = 'Program Counter'
      Color = clDefault
      ParentColor = False
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object sLabel3: TsLabel
      Left = 8
      Top = 144
      Width = 109
      Height = 25
      Caption = 'Accumulator'
      Color = clDefault
      ParentColor = False
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object sLabel4: TsLabel
      Left = 168
      Top = 144
      Width = 124
      Height = 25
      Caption = 'Index Register'
      Color = clDefault
      ParentColor = False
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object pc: TEdit
      Left = 56
      Top = 72
      Width = 33
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '00'
    end
    object acc: TEdit
      Left = 8
      Top = 176
      Width = 121
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = '0'
    end
    object ix: TEdit
      Left = 168
      Top = 176
      Width = 121
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = '0'
    end
  end
  object kirish: TEdit
    Left = 1024
    Top = 61
    Width = 121
    Height = 21
    TabOrder = 3
    OnKeyPress = kirishKeyPress
  end
  object xotira: TGroupBox
    Left = 776
    Top = 48
    Width = 225
    Height = 505
    Caption = 'Xoira bilan ishlash'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object tezxot: TValueListEditor
      Left = 8
      Top = 24
      Width = 209
      Height = 377
      HelpType = htKeyword
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyOptions = [keyUnique]
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goEditing, goTabs, goAlwaysShowEditor, goThumbTracking]
      ParentFont = False
      Strings.Strings = (
        '')
      TabOrder = 0
      TitleCaptions.Strings = (
        'Xotira manzili'
        'Qiymati'
        '')
      OnSetEditText = ge
      ColWidths = (
        83
        120)
    end
    object ymanzil: TEdit
      Left = 56
      Top = 416
      Width = 121
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object yuklash: TsButton
    Left = 16
    Top = 576
    Width = 75
    Height = 25
    Caption = 'Yuklash'
    TabOrder = 5
    OnClick = yuklash1Click
    SkinData.SkinSection = 'BUTTON'
  end
  object step_forward: TsButton
    Left = 304
    Top = 576
    Width = 75
    Height = 25
    Caption = '==>'
    TabOrder = 6
    OnClick = step_forward1Click
    SkinData.SkinSection = 'BUTTON'
  end
  object qayta: TsButton
    Left = 680
    Top = 576
    Width = 75
    Height = 25
    Caption = 'Qayta'
    TabOrder = 7
    OnClick = qayta1Click
    SkinData.SkinSection = 'BUTTON'
  end
  object ishla: TsButton
    Left = 400
    Top = 576
    Width = 75
    Height = 25
    Caption = 'Ishla'
    TabOrder = 8
    OnClick = ishla1Click
    SkinData.SkinSection = 'BUTTON'
  end
  object xotira_qosh: TsButton
    Left = 856
    Top = 500
    Width = 75
    Height = 25
    BiDiMode = bdLeftToRight
    Caption = 'Qo'#39'shish'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 9
    OnClick = xoita_qosh1Click
    SkinData.SkinSection = 'BUTTON'
  end
  object sSkinManager1: TsSkinManager
    Active = False
    InternalSkins = <>
    MenuSupport.ExtraLineFont.Charset = DEFAULT_CHARSET
    MenuSupport.ExtraLineFont.Color = clWindowText
    MenuSupport.ExtraLineFont.Height = -11
    MenuSupport.ExtraLineFont.Name = 'MS Sans Serif'
    MenuSupport.ExtraLineFont.Style = []
    SkinName = 'Afterburner (internal)'
    SkinInfo = 'N/A'
    ThirdParty.ThirdEdits = ' '
    ThirdParty.ThirdButtons = 'TButton'
    ThirdParty.ThirdBitBtns = ' '
    ThirdParty.ThirdCheckBoxes = ' '
    ThirdParty.ThirdGroupBoxes = ' '
    ThirdParty.ThirdListViews = ' '
    ThirdParty.ThirdPanels = ' '
    ThirdParty.ThirdGrids = ' '
    ThirdParty.ThirdTreeViews = ' '
    ThirdParty.ThirdComboBoxes = ' '
    ThirdParty.ThirdWWEdits = ' '
    ThirdParty.ThirdVirtualTrees = ' '
    ThirdParty.ThirdGridEh = ' '
    ThirdParty.ThirdPageControl = ' '
    ThirdParty.ThirdTabControl = ' '
    ThirdParty.ThirdToolBar = ' '
    ThirdParty.ThirdStatusBar = ' '
    ThirdParty.ThirdSpeedButton = ' '
    ThirdParty.ThirdScrollControl = ' '
    ThirdParty.ThirdUpDown = ' '
    ThirdParty.ThirdScrollBar = ' '
    Left = 1080
    Top = 564
  end
  object sSkinProvider1: TsSkinProvider
    AddedTitle.Font.Charset = DEFAULT_CHARSET
    AddedTitle.Font.Color = clNone
    AddedTitle.Font.Height = -11
    AddedTitle.Font.Name = 'MS Sans Serif'
    AddedTitle.Font.Style = []
    SkinData.SkinSection = 'FORM'
    MakeSkinMenu = True
    TitleButtons = <>
    TitleSkin = 'BARPANEL'
    Left = 1112
    Top = 564
  end
end
