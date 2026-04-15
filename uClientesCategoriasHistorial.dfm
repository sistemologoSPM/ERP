inherited frmClientesCategoriasHistorial: TfrmClientesCategoriasHistorial
  BorderStyle = bsDialog
  Caption = 'Historial cambios categorias clientes'
  ClientHeight = 435
  ClientWidth = 860
  ExplicitWidth = 866
  ExplicitHeight = 464
  PixelsPerInch = 96
  TextHeight = 16
  inherited StatusBar1: TStatusBar
    Top = 416
    Width = 860
  end
  inherited Panel3: TPanel
    Width = 845
    Height = 406
  end
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 860
    Height = 416
    inherited GridListado: TcxGrid
      Width = 601
      Height = 280
      ExplicitWidth = 601
      ExplicitHeight = 280
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
  object dsHistorial: TDataSource
    DataSet = qHistorial
    Left = 192
    Top = 224
  end
  object qHistorial: TADOQuery
    Connection = dmBaseDeDatos.db
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CategoriaId'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from ClientesCategoriasHistorialCambios( :CategoriaId)')
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
end
