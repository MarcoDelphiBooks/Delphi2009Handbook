object FormBareBoneRibbon: TFormBareBoneRibbon
  Left = 0
  Top = 0
  Caption = 'BareBoneRibbon'
  ClientHeight = 308
  ClientWidth = 613
  Color = clBtnFace
  Constraints.MinHeight = 270
  Constraints.MinWidth = 320
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Ribbon1: TRibbon
    Left = 0
    Top = 0
    Width = 613
    Height = 145
    Caption = 'Ribbon Caption'
    DocumentName = 'Document Name'
    Tabs = <
      item
        Caption = 'RibbonPage1'
        KeyTip = 'r'
        Page = RibbonPage1
      end
      item
        Caption = 'RibbonPage2'
        KeyTip = 'p'
        Page = RibbonPage2
      end>
    TabIndex = 1
    ExplicitLeft = 248
    ExplicitTop = 96
    ExplicitWidth = 0
    DesignSize = (
      613
      145)
    StyleName = 'Ribbon - Luna'
    object RibbonPage1: TRibbonPage
      Left = 0
      Top = 52
      Width = 612
      Height = 93
      Caption = 'RibbonPage1'
      Index = 0
      KeyTip = 'r'
      ExplicitWidth = 592
      object RibbonGroup1: TRibbonGroup
        Left = 4
        Top = 3
        Width = 189
        Height = 86
        Caption = 'RibbonGroup1'
        GroupIndex = 0
        object Button2: TButton
          Left = 16
          Top = 16
          Width = 145
          Height = 41
          Caption = 'btn100'
          Style = bsCommandLink
          TabOrder = 0
          OnClick = Button2Click
        end
      end
      object RibbonGroup2: TRibbonGroup
        Left = 195
        Top = 3
        Width = 177
        Height = 86
        Caption = 'RibbonGroup2'
        GroupIndex = 1
        object RibbonSpinEdit1: TRibbonSpinEdit
          Left = 24
          Top = 16
          Width = 121
          Height = 22
          MaxValue = 0
          MinValue = 0
          TabOrder = 0
          Value = 0
        end
      end
    end
    object RibbonPage2: TRibbonPage
      Left = 0
      Top = 52
      Width = 612
      Height = 93
      Caption = 'RibbonPage2'
      Index = 1
      KeyTip = 'p'
      ExplicitWidth = 592
      object RibbonGroup3: TRibbonGroup
        Left = 4
        Top = 3
        Width = 133
        Height = 86
        Caption = 'RibbonGroup3'
        GroupIndex = 0
      end
      object RibbonGroup4: TRibbonGroup
        Left = 241
        Top = 3
        Width = 100
        Height = 86
        Caption = 'RibbonGroup4'
        GroupIndex = 2
      end
      object RibbonGroup5: TRibbonGroup
        Left = 139
        Top = 3
        Width = 100
        Height = 86
        Caption = 'RibbonGroup5'
        GroupIndex = 1
      end
    end
  end
  object cbShowBorder: TCheckBox
    Left = 23
    Top = 168
    Width = 97
    Height = 17
    Caption = 'cbShowBorder'
    Checked = True
    State = cbChecked
    TabOrder = 1
    OnClick = cbShowBorderClick
  end
end
