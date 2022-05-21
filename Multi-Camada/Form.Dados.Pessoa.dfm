object frmDadosPessoa: TfrmDadosPessoa
  Left = 0
  Top = 0
  Caption = 'Dados Pessoa'
  ClientHeight = 625
  ClientWidth = 949
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Splitter1: TSplitter
    Left = 0
    Top = 394
    Width = 949
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    ExplicitTop = 60
    ExplicitWidth = 337
  end
  object DBNavigator1: TDBNavigator
    AlignWithMargins = True
    Left = 3
    Top = 44
    Width = 943
    Height = 54
    DataSource = dtsPessoa
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh, nbApplyUpdates, nbCancelUpdates]
    Align = alTop
    TabOrder = 0
    OnClick = DBNavigator1Click
  end
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 104
    Width = 943
    Height = 287
    Align = alClient
    DataSource = dtsPessoa
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_NASCIMENTO'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SALDO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_CADASTRO'
        Width = 200
        Visible = True
      end>
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 400
    Width = 943
    Height = 222
    Align = alBottom
    TabOrder = 2
    object DBNavigator2: TDBNavigator
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 935
      Height = 37
      DataSource = dtsCache
      Align = alTop
      TabOrder = 0
    end
    object DBGrid2: TDBGrid
      AlignWithMargins = True
      Left = 4
      Top = 47
      Width = 935
      Height = 171
      Align = alClient
      Color = clSkyBlue
      DataSource = dtsCache
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 949
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    object RadioButtonFiltroPadrao: TRadioButton
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 131
      Height = 35
      Align = alLeft
      Caption = 'Filtro Padr'#227'o'
      TabOrder = 0
      OnClick = RadioButtonFiltroPadraoClick
    end
    object RadioButtonFiltroSomenteAlterados: TRadioButton
      AlignWithMargins = True
      Left = 140
      Top = 3
      Width = 131
      Height = 35
      Align = alLeft
      Caption = 'Somente Alterados'
      TabOrder = 1
      OnClick = RadioButtonFiltroSomenteAlteradosClick
    end
    object RadioButtonFiltroSomenteExcluidos: TRadioButton
      AlignWithMargins = True
      Left = 277
      Top = 3
      Width = 131
      Height = 35
      Align = alLeft
      Caption = 'Somente Exclu'#237'dos'
      TabOrder = 2
      OnClick = RadioButtonFiltroSomenteExcluidosClick
    end
    object ButtonCopiarDelta: TButton
      AlignWithMargins = True
      Left = 824
      Top = 3
      Width = 122
      Height = 35
      Align = alRight
      Caption = 'Copiar Delta'
      TabOrder = 3
      OnClick = ButtonCopiarDeltaClick
    end
  end
  object TimerOpen: TTimer
    Enabled = False
    OnTimer = TimerOpenTimer
    Left = 464
    Top = 320
  end
  object dtsPessoa: TDataSource
    DataSet = dmdPessoa.qryPessoa
    Left = 344
    Top = 128
  end
  object dtsCache: TDataSource
    DataSet = dmdPessoa.memCache
    Left = 336
    Top = 472
  end
end
