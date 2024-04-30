object DMAtualizacao: TDMAtualizacao
  OldCreateOrder = False
  Height = 286
  Width = 390
  object SolicitaAtualizacao: TTimer
    Enabled = False
    Interval = 3000
    OnTimer = SolicitaAtualizacaoTimer
    Left = 68
    Top = 59
  end
  object TimerProgressoDownload: TTimer
    Enabled = False
    Interval = 5000
    OnTimer = TimerProgressoDownloadTimer
    Left = 192
    Top = 59
  end
  object FDTransaction: TFDTransaction
    Connection = DMBanco.Banco
    Left = 320
    Top = 56
  end
end
