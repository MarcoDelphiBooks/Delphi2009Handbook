object FormFirst3Tier2009Server: TFormFirst3Tier2009Server
  Left = 0
  Top = 0
  Caption = 'First3Tier2009 Server'
  ClientHeight = 227
  ClientWidth = 438
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 438
    Height = 227
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 112
    ExplicitTop = 80
    ExplicitWidth = 185
    ExplicitHeight = 89
  end
  object DSServer1: TDSServer
    OnConnect = DSServer1Connect
    OnDisconnect = DSServer1Disconnect
    AutoStart = True
    HideDSAdmin = False
    Left = 120
    Top = 176
  end
  object DSTCPServerTransport1: TDSTCPServerTransport
    PoolSize = 0
    Server = DSServer1
    BufferKBSize = 32
    Left = 224
    Top = 176
  end
  object DSServerClass1: TDSServerClass
    OnGetClass = DSServerClass1GetClass
    Server = DSServer1
    LifeCycle = 'Session'
    Left = 336
    Top = 176
  end
end
