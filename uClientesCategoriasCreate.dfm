inherited frmClientesCategoriasCreate: TfrmClientesCategoriasCreate
  Caption = ''
  ClientWidth = 437
  OnShow = FormShow
  ExplicitWidth = 453
  PixelsPerInch = 96
  TextHeight = 16
  inherited StatusBar1: TStatusBar
    Width = 437
    ExplicitWidth = 437
  end
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 437
    ExplicitWidth = 437
    inherited cxButton1: TcxButton
      Left = 311
      TabOrder = 1
      OnClick = cxButton1Click
      ExplicitLeft = 311
    end
    object txtCategoria: TcxDBTextEdit [1]
      Left = 87
      Top = 125
      DataBinding.DataField = 'Categoria'
      DataBinding.DataSource = dsCategorias
      Properties.ValidationErrorIconAlignment = taRightJustify
      Properties.ValidationOptions = [evoShowErrorIcon]
      Properties.OnValidate = txtCategoriaPropertiesValidate
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 324
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = Cuerpo
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'Categoria'
      Control = txtCategoria
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object qCategorias: TADOQuery
    Connection = dmBaseDeDatos.db
    CursorType = ctStatic
    BeforePost = qCategoriasBeforePost
    OnNewRecord = qCategoriasNewRecord
    Parameters = <
      item
        Name = 'CategoriaId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select * From ClientesCategorias'
      'Where CategoriaId= :CategoriaId')
    Left = 32
    Top = 224
    object qCategoriasCategoria: TStringField
      FieldName = 'Categoria'
      Size = 200
    end
    object qCategoriasEstadoId: TIntegerField
      FieldName = 'EstadoId'
    end
    object qCategoriasCreadoPor: TStringField
      FieldName = 'CreadoPor'
      Size = 50
    end
    object qCategoriasFechaCreacion: TDateTimeField
      FieldName = 'FechaCreacion'
    end
    object qCategoriasModificadopor: TStringField
      FieldName = 'Modificadopor'
      Size = 50
    end
    object qCategoriasFechaModificacion: TDateTimeField
      FieldName = 'FechaModificacion'
    end
    object qCategoriasCategoriaId: TAutoIncField
      FieldName = 'CategoriaId'
      ReadOnly = True
    end
  end
  object dsCategorias: TDataSource
    DataSet = qCategorias
    Left = 192
    Top = 184
  end
  object qHistorialCambios: TADOQuery
    Connection = dmBaseDeDatos.db
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'HistorialId'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select * From HistorialDeCambios '
      'Where HistorialId=:HistorialId')
    Left = 302
    Top = 157
    object qHistorialCambiosHistorialId: TIntegerField
      FieldName = 'HistorialId'
    end
    object qHistorialCambiosTabla: TStringField
      FieldName = 'Tabla'
      Size = 50
    end
    object qHistorialCambiosClavePrimaria: TIntegerField
      FieldName = 'ClavePrimaria'
    end
    object qHistorialCambiosCampo: TStringField
      FieldName = 'Campo'
      Size = 50
    end
    object qHistorialCambiosValorAnterior: TMemoField
      FieldName = 'ValorAnterior'
      BlobType = ftMemo
    end
    object qHistorialCambiosValorNuevo: TMemoField
      FieldName = 'ValorNuevo'
      BlobType = ftMemo
    end
    object qHistorialCambiosUsuario: TStringField
      FieldName = 'Usuario'
      Size = 50
    end
    object qHistorialCambiosFechaCambio: TDateTimeField
      FieldName = 'FechaCambio'
    end
  end
end
