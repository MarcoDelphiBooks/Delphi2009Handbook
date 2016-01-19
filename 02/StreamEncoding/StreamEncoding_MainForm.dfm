object FormStreamEncoding: TFormStreamEncoding
  Left = 0
  Top = 0
  Caption = 'StreamEncoding'
  ClientHeight = 340
  ClientWidth = 422
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ListBox1: TListBox
    Left = 173
    Top = 8
    Width = 241
    Height = 324
    ItemHeight = 13
    Items.Strings = (
      #199#39#235'sht'#235' Unicode?'
      #4841#4754#4782#4853' '#4637#4757#4853#4757' '#4752#4813'?'
      #1605#1575' '#1607#1610' '#1575#1604#1588#1601#1585#1577' '#1575#1604#1605#1608#1581#1583#1577' "'#1610#1608#1606#1616#1603#1608#1583'" '#1567
      #2439#2441#2472#2495#2453#2507#2465' '#2453#2496'?'
      #4841#4754#4782#4853' '#4813#4648#4754' '#4877#4757'?'
      #1050#1072#1082#1074#1086' '#1077' Unicode ?'
      #20160#40637#26159'Unicode('#32113#19968#30908'/'#27161#28310#33836#22283#30908')?'
      #20160#20040#26159'Unicode('#32479#19968#30721')?'
      #352'to je Unicode?'
      'Co je Unicode?'
      'Hvad er Unicode?'
      'Wat is Unicode?'
      'Kio estas Unikodo?'
      'Mik'#228' on Unicode?'
      'Qu'#39'est ce qu'#39'Unicode?'
      #4320#4304' '#4304#4320#4312#4321' '#4323#4316#4312#4313#4317#4307#4312'?'
      'Was ist Unicode?'
      #932#953' '#949#943#957#945#953' '#964#959' Unicode;'
      #932#943' '#949#7990#957#945#953' '#964#8056' Unicode;'
      #1502#1492' '#1494#1492' '#1497#1493#1504#1497#1511#1493#1491' (Unicode)?'
      #2351#2370#2344#2367#2325#2379#2337' '#2325#2381#2351#2366' '#2361#2376'?'
      'Hva'#240' er Unicode?'
      'Que es Unicode?'
      'Cos'#39#232' Unicode?'
      #12518#12491#12467#12540#12489#12392#12399#20309#12363#65311
      #50976#45768#53076#46300#50640' '#45824#54644'?'
      'Kas tai yra Unikodas?'
      #1064#1090#1086' '#1077' Unicode?'
      'X'#39'inhu l-Unicode?'
      #1610#1608#1606#1740#8204#1705#1615#1583' '#1670#1610#1587#1578#1567
      'Czym jest Unikod?'
      'O que '#233' Unicode?'
      'Ce este Unicode?'
      #1063#1090#1086' '#1090#1072#1082#1086#1077' Unicode?'
      #4841#4754#4782#4853' '#4637#4675#4649'?'
      #352'ta je Unicode?'
      #1064#1090#1072' je Unicode?'
      'Kaj je Unicode?'
      #191'Qu'#233' es Unicode?'
      'Vad '#228'r Unicode?'
      #2991#3010#2985#3007#2965#3021#2965#3019#2975#3009' '#2958#2985#3021#2993#3006#2994#3021' '#2958#2985#3021#2985'?'
      #3119#3138#3112#3136#3093#3147#3105#3149' '#3077#3074#3143' '#3087#3118#3135#3103#3135'?<'
      'Unicode '#3588#3639#3629#3629#3632#3652#3619'?'
      #4841#4754#4782#4853' '#4773#4757#4723#4845' '#4770#4841'?'
      #352'to je Unicode?'
      'Evrensel Kod Nedir?'
      #65267#64472#65255#64489#65244#65262#65193' '#65193#64488#64405#65258#65253' '#65255#64489#65252#65258#1567
      'Unicode d'#233'gen n'#233'me?'
      'Unicode l'#224' g'#236'?'
      'Beth yw Unicode?'
      #4841#4754#4782#4853' '#4808#4648#4888' '#4840#4893'?')
    TabOrder = 0
  end
  object btnPlain: TButton
    Left = 16
    Top = 8
    Width = 129
    Height = 25
    Caption = 'btnPlain'
    TabOrder = 1
    OnClick = btnPlainClick
  end
  object btnUtf8: TButton
    Left = 16
    Top = 48
    Width = 129
    Height = 25
    Caption = 'btnUtf8'
    TabOrder = 2
    OnClick = btnUtf8Click
  end
  object btnAsNeeded: TButton
    Left = 16
    Top = 88
    Width = 129
    Height = 25
    Caption = 'btnAsNeeded'
    TabOrder = 3
    OnClick = btnAsNeededClick
  end
  object btnUtf8Default: TButton
    Left = 16
    Top = 192
    Width = 129
    Height = 25
    Caption = 'btnUtf8Default'
    TabOrder = 4
    OnClick = btnUtf8DefaultClick
  end
  object btnAsNeeded2: TButton
    Left = 16
    Top = 128
    Width = 129
    Height = 25
    Caption = 'btnAsNeeded2'
    TabOrder = 5
    OnClick = btnAsNeeded2Click
  end
end
