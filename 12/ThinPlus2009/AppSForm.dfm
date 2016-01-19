object ServerForm: TServerForm
  Left = 281
  Top = 286
  Caption = 'AppServerPlus'
  ClientHeight = 240
  ClientWidth = 400
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbLog: TListBox
    Left = 0
    Top = 0
    Width = 400
    Height = 240
    Align = alClient
    ItemHeight = 13
    TabOrder = 0
  end
  object DSServer1: TDSServer
    AutoStart = True
    HideDSAdmin = False
    Left = 72
    Top = 96
  end
  object DSServerClass1: TDSServerClass
    OnGetClass = DSServerClass1GetClass
    Server = DSServer1
    LifeCycle = 'Session'
    Left = 160
    Top = 96
  end
  object DSTCPServerTransport1: TDSTCPServerTransport
    PoolSize = 0
    Server = DSServer1
    BufferKBSize = 32
    Left = 72
    Top = 160
  end
end
