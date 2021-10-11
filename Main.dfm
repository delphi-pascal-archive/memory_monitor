object frmMain: TfrmMain
  Left = 243
  Top = 136
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Memory monitor'
  ClientHeight = 297
  ClientWidth = 363
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001002020100001000400E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    0000000080000080000000808000800000008000800080800000C0C0C0008080
    80000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000080000000000000000000000000000000800000000000000000000000
    0000078080008000000000000000000000007780800080000000000000000000
    0008778070808000800000000000000000087F88088080008000000000000000
    0078F77888807080800080000000000088787777788808808000800000000007
    8878777777788880708080008000087788778777777778880880800080000877
    F888777777777778888070808000087F777777777777777778880880800008F7
    7777777777777777777888807000087777777777777777777777788808000088
    7777777777777777777777788800000088777777777777777777777778000000
    0088777777777777777777777000000000008877777777777777777700000000
    0000008877777777777777700000000000000000887777777777770000000000
    0000000000887777777770000000000000000000000088777777000000000000
    0000000000000088777000000000000000000000000000008800000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000FFFF
    FFFFFFF7FFFFFFE3FFFFFF837FFFFF023FFFFE0037FFFE0023FFFC00037FF000
    023FE0000037C00000238000000380000003800000018000000180000001C000
    0001E0000001FC000003FE000007FFC0000FFFE0001FFFFC003FFFFE007FFFFF
    C0FFFFFFE1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 120
  TextHeight = 16
  object Panel9: TPanel
    Left = 8
    Top = 8
    Width = 170
    Height = 185
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 1
      Top = 168
      Width = 168
      Height = 16
      Align = alBottom
      Alignment = taCenter
      Caption = 'Allocated memory'
    end
    object Panel1: TPanel
      Left = 10
      Top = 10
      Width = 31
      Height = 149
      BevelOuter = bvLowered
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      object GgAllocatedMem: TGauge
        Left = 1
        Top = 1
        Width = 29
        Height = 147
        Hint = 'Memoria nao disponivel (alocada)'
        Align = alClient
        BackColor = clBtnFace
        BorderStyle = bsNone
        ForeColor = clNavy
        Kind = gkVerticalBar
        Progress = 0
      end
    end
    object Panel6: TPanel
      Left = 49
      Top = 10
      Width = 31
      Height = 149
      BevelOuter = bvLowered
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      object GgAllocatedPhysicalMem: TGauge
        Left = 1
        Top = 1
        Width = 29
        Height = 147
        Hint = 'Memoria fisica alocada'
        Align = alClient
        BackColor = clBtnFace
        BorderStyle = bsNone
        ForeColor = clNavy
        Kind = gkVerticalBar
        Progress = 0
      end
    end
    object Panel7: TPanel
      Left = 89
      Top = 10
      Width = 30
      Height = 149
      BevelOuter = bvLowered
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      object GgAllocatedPageFileMem: TGauge
        Left = 1
        Top = 1
        Width = 28
        Height = 147
        Hint = 'Memoria alocada no arquivo de paginacao'
        Align = alClient
        BackColor = clBtnFace
        BorderStyle = bsNone
        ForeColor = clNavy
        Kind = gkVerticalBar
        Progress = 0
      end
    end
    object Panel8: TPanel
      Left = 128
      Top = 10
      Width = 31
      Height = 149
      BevelOuter = bvLowered
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      object GgAllocatedVirtualMem: TGauge
        Left = 1
        Top = 1
        Width = 29
        Height = 147
        Hint = 'Memoria virtual alocada'
        Align = alClient
        BackColor = clBtnFace
        BorderStyle = bsNone
        ForeColor = clNavy
        Kind = gkVerticalBar
        Progress = 0
      end
    end
  end
  object Panel10: TPanel
    Left = 184
    Top = 8
    Width = 169
    Height = 185
    BevelOuter = bvLowered
    TabOrder = 1
    object Label2: TLabel
      Left = 1
      Top = 168
      Width = 167
      Height = 16
      Align = alBottom
      Alignment = taCenter
      Caption = 'Available memory'
    end
    object Panel2: TPanel
      Left = 10
      Top = 10
      Width = 31
      Height = 149
      BevelOuter = bvLowered
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      object GgFreeMem: TGauge
        Left = 1
        Top = 1
        Width = 29
        Height = 147
        Hint = 'Memoria disponivel (nao alocada)'
        Align = alClient
        BackColor = clBtnFace
        BorderStyle = bsNone
        ForeColor = clNavy
        Kind = gkVerticalBar
        Progress = 0
      end
    end
    object Panel3: TPanel
      Left = 49
      Top = 10
      Width = 31
      Height = 149
      BevelOuter = bvLowered
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      object GgFreePhysicalMem: TGauge
        Left = 1
        Top = 1
        Width = 29
        Height = 147
        Hint = 'Memoria fisica disponivel'
        Align = alClient
        BackColor = clBtnFace
        BorderStyle = bsNone
        ForeColor = clNavy
        Kind = gkVerticalBar
        Progress = 0
      end
    end
    object Panel4: TPanel
      Left = 89
      Top = 10
      Width = 30
      Height = 149
      BevelOuter = bvLowered
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      object GgFreePageFileMem: TGauge
        Left = 1
        Top = 1
        Width = 28
        Height = 147
        Hint = 'Memoria disponivel no arquivo de paginacao'
        Align = alClient
        BackColor = clBtnFace
        BorderStyle = bsNone
        ForeColor = clNavy
        Kind = gkVerticalBar
        Progress = 0
      end
    end
    object Panel5: TPanel
      Left = 128
      Top = 10
      Width = 31
      Height = 149
      BevelOuter = bvLowered
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      object GgFreeVirtualMem: TGauge
        Left = 1
        Top = 1
        Width = 29
        Height = 147
        Hint = 'Memoria virtual disponivel'
        Align = alClient
        BackColor = clBtnFace
        BorderStyle = bsNone
        ForeColor = clNavy
        Kind = gkVerticalBar
        Progress = 0
      end
    end
  end
  object Panel11: TPanel
    Left = 8
    Top = 200
    Width = 345
    Height = 89
    BevelOuter = bvNone
    Enabled = False
    TabOrder = 2
    object MmResumo: TMemo
      Left = 0
      Top = 0
      Width = 345
      Height = 89
      TabStop = False
      Align = alClient
      Color = clBtnFace
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Lines.Strings = (
        'Memory in use:                     00%'
        'Total of physical memory:     0000,00 Mb'
        'Maximum of pagefile:         0000,00 Mb'
        'Total of virtual memory:    0000,00 Mb')
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
  end
  object TmrRefresh: TTimer
    Interval = 100
    OnTimer = TmrRefreshTimer
    Left = 16
    Top = 16
  end
  object PppMnTray: TPopupMenu
    Left = 56
    Top = 16
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      OnClick = Fechar1Click
    end
  end
end
