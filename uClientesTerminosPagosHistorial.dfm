inherited frmClientesTerminosPagosHistorial: TfrmClientesTerminosPagosHistorial
  BorderStyle = bsDialog
  Caption = 'frmClientesTerminosPagosHistorial'
  ClientHeight = 436
  ClientWidth = 882
  ExplicitWidth = 888
  ExplicitHeight = 465
  PixelsPerInch = 96
  TextHeight = 16
  inherited StatusBar1: TStatusBar
    Top = 417
    Width = 882
  end
  inherited Panel3: TPanel
    Width = 867
    Height = 407
  end
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 882
    Height = 417
    inherited GridListado: TcxGrid
      Width = 623
      Height = 281
      ExplicitWidth = 623
      ExplicitHeight = 281
      inherited GridListadoDBTableView1: TcxGridDBTableView
        DataController.DataSource = dsHistorial
        object GridListadoDBTableView1FechaCambio: TcxGridDBColumn
          DataBinding.FieldName = 'FechaCambio'
          Width = 165
        end
        object GridListadoDBTableView1Usuario: TcxGridDBColumn
          DataBinding.FieldName = 'Usuario'
          Width = 150
        end
        object GridListadoDBTableView1Campo: TcxGridDBColumn
          DataBinding.FieldName = 'Campo'
          Width = 150
        end
        object GridListadoDBTableView1valorAnterior: TcxGridDBColumn
          DataBinding.FieldName = 'valorAnterior'
          Width = 150
        end
        object GridListadoDBTableView1ValorNuevo: TcxGridDBColumn
          DataBinding.FieldName = 'ValorNuevo'
          Width = 150
        end
      end
    end
  end
  object qHistorial: TADOQuery
    Active = True
    Connection = dmBaseDeDatos.db
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'TerminoPagoId'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'select * from ClientesTerminosPagosHistorialCambios( :TerminoPag' +
        'oId)')
    Left = 144
    Top = 280
    object qHistorialHistorialId: TIntegerField
      FieldName = 'HistorialId'
    end
    object qHistorialTabla: TStringField
      FieldName = 'Tabla'
      Size = 50
    end
    object qHistorialClavePrimaria: TIntegerField
      FieldName = 'ClavePrimaria'
    end
    object qHistorialCampo: TStringField
      FieldName = 'Campo'
      ReadOnly = True
      Size = 50
    end
    object qHistorialvalorAnterior: TMemoField
      FieldName = 'valorAnterior'
      ReadOnly = True
      BlobType = ftMemo
    end
    object qHistorialValorNuevo: TMemoField
      FieldName = 'ValorNuevo'
      ReadOnly = True
      BlobType = ftMemo
    end
    object qHistorialUsuario: TStringField
      FieldName = 'Usuario'
      Size = 50
    end
    object qHistorialFechaCambio: TDateTimeField
      FieldName = 'FechaCambio'
    end
  end
  object dsHistorial: TDataSource
    DataSet = qHistorial
    Left = 192
    Top = 224
  end
end
