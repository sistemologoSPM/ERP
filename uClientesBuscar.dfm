inherited frmClientesBuscar: TfrmClientesBuscar
  Caption = 'Buscar clientes'
  PixelsPerInch = 96
  TextHeight = 16
  inherited dxLayoutControl1: TdxLayoutControl
    inherited GridListado: TcxGrid
      inherited GridListadoDBTableView1: TcxGridDBTableView
        object GridListadoDBTableView1codigo: TcxGridDBColumn
          Caption = 'C'#243'digo'
          DataBinding.FieldName = 'codigo'
          HeaderAlignmentHorz = taCenter
        end
        object GridListadoDBTableView1NombreCliente: TcxGridDBColumn
          Caption = 'Cliente'
          DataBinding.FieldName = 'NombreCliente'
          Width = 250
        end
        object GridListadoDBTableView1Documento: TcxGridDBColumn
          Caption = 'Documento de identidad'
          DataBinding.FieldName = 'Documento'
          Width = 200
        end
      end
    end
  end
  inherited qListado: TADOQuery
    CursorType = ctStatic
    SQL.Strings = (
      'Select a.clienteId, codigo'
      ',concat(Nombres, '#39' '#39', Apellidos) NombreCliente'
      ',concat(documento, '#39' ('#39', d.TipoDocumento, '#39')'#39') Documento'
      ''
      ''
      'From Clientes a'
      'Inner join ClientesCategorias b on a.CategoriaId = b.CategoriaId'
      'Inner join ClientesTipos c on a.TipoClienteId = c.TipoClienteId'
      
        'Inner join TiposDocumentos d on a.TipoDocumentoId = d.TipoDocume' +
        'ntoId'
      'Inner join Estados e on a.EstadoId = e.EstadoId'
      'Where a.EstadoId = 1')
    object qListadocodigo: TIntegerField
      Alignment = taCenter
      FieldName = 'codigo'
    end
    object qListadoNombreCliente: TStringField
      FieldName = 'NombreCliente'
      ReadOnly = True
      Size = 401
    end
    object qListadoDocumento: TStringField
      FieldName = 'Documento'
      ReadOnly = True
      Size = 103
    end
    object qListadoclienteId: TIntegerField
      FieldName = 'clienteId'
    end
  end
end
