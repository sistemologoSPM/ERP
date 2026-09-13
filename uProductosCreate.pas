unit uProductosCreate;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uBaseFormInsert, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.Menus, dxLayoutControlAdapters, dxLayoutContainer,
  cxClasses, Vcl.StdCtrls, cxButtons, dxLayoutControl, Vcl.ComCtrls,
  uBaseDeDatos, dxLayoutcxEditAdapters, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  Data.DB, Data.Win.ADODB, cxMemo, cxDBEdit, Vcl.ExtCtrls, cxCalendar,
  cxCurrencyEdit, Vcl.DBCtrls, cxCheckBox, dxLayoutLookAndFeels, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxGridCustomView, cxGrid, Vcl.ToolWin, cxImage, Datasnap.DBClient,
  Datasnap.Provider;

type
  TfrmProductosCreate = class(TfrmBaseFormInsert)
    qProdutos: TADOQuery;
    qProductosTipos: TADOQuery;
    dsProductos: TDataSource;
    dxLayoutItem1: TdxLayoutItem;
    qCategorias: TADOQuery;
    cbCategorias: TcxDBLookupComboBox;
    dxLayoutItem3: TdxLayoutItem;
    cbProductosTipos: TcxDBLookupComboBox;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxDBMemo1: TcxDBMemo;
    dxLayoutItem6: TdxLayoutItem;
    qProductosMarcas: TADOQuery;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    cxDBTextEdit2: TcxDBTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    qProductosUnidadesDeMedidas: TADOQuery;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutItem7: TdxLayoutItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    dxLayoutItem10: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutItem11: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    dxLayoutItem14: TdxLayoutItem;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    dxLayoutItem15: TdxLayoutItem;
    qMonedas: TADOQuery;
    qAlmacen: TADOQuery;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutGroup8: TdxLayoutGroup;
    MainMenu1: TMainMenu;
    Configuraciones1: TMenuItem;
    Cat1: TMenuItem;
    Marcas1: TMenuItem;
    Unidadesdemedidas1: TMenuItem;
    N1: TMenuItem;
    Salir1: TMenuItem;
    btnAgregarImpuesto: TcxButton;
    btnQuitarImpuesto: TcxButton;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem21: TdxLayoutItem;
    cxImage1: TcxImage;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    btnCargarFoto: TcxButton;
    btnTomarFoto: TcxButton;
    Panel1: TPanel;
    dxLayoutItem22: TdxLayoutItem;
    dxLayoutItem23: TdxLayoutItem;
    Panel2: TPanel;
    dxLayoutItem24: TdxLayoutItem;
    dxLayoutItem25: TdxLayoutItem;
    dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup;
    dxLayoutItem26: TdxLayoutItem;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup;
    cxDBCheckBox2: TcxDBCheckBox;
    dxLayoutItem27: TdxLayoutItem;
    cxDBCheckBox3: TcxDBCheckBox;
    dxLayoutItem28: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    cxDBCurrencyEdit5: TcxDBCurrencyEdit;
    dxLayoutItem29: TdxLayoutItem;
    cxDBCurrencyEdit6: TcxDBCurrencyEdit;
    dxLayoutItem30: TdxLayoutItem;
    dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup;
    qMarcasModelos: TADOQuery;
    cdsProductos: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    cdsProductosProductoId: TIntegerField;
    cdsProductosTipoProductoId: TIntegerField;
    cdsProductosCategoriaId: TIntegerField;
    cdsProductosMarcaId: TIntegerField;
    cdsProductosModeloId: TIntegerField;
    cdsProductosUnidadDeMedidaId: TIntegerField;
    cdsProductosCodigo: TStringField;
    cdsProductosReferencia: TStringField;
    cdsProductosNombre: TStringField;
    cdsProductosDescripcion: TMemoField;
    cdsProductosAlmacenId: TIntegerField;
    cdsProductosFechaCantidadInicial: TDateTimeField;
    cdsProductosCantidadInicial: TWideStringField;
    cdsProductosCantidadMinima: TBCDField;
    cdsProductosCostoUnitario: TBCDField;
    cdsProductosPrecioVenta: TBCDField;
    cdsProductosEsActivoFijo: TBooleanField;
    cdsProductosTieneFechaVencimiento: TBooleanField;
    cdsProductosTieneSerie: TBooleanField;
    cdsProductosMonedaId: TIntegerField;
    cdsProductosEstadoId: TIntegerField;
    cdsProductosCreadoPor: TStringField;
    cdsProductosFechaCreacion: TDateTimeField;
    cdsProductosModificadoPor: TStringField;
    cdsProductosFechaModificacion: TDateTimeField;
    cdsProductosListadoTiposProductos: TStringField;
    cdsProductosListadoCategorias: TStringField;
    cdsProductosListadoMarcas: TStringField;
    cdsProductosListadoMarcasModelos: TStringField;
    cdsProductosListadosUnidadesDeMedidas: TStringField;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    cdsProductosListadosMonedas: TStringField;
    cdsProductosImpuestos: TCurrencyField;
    cdsProductosGanancias: TCurrencyField;
    cdsProductosListadoAlmacen: TStringField;
    procedure FormShow(Sender: TObject);
    procedure cdsProductosNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    ProductoId:Integer;
    { Public declarations }
  end;

var
  frmProductosCreate: TfrmProductosCreate;

implementation

{$R *.dfm}

procedure TfrmProductosCreate.cdsProductosNewRecord(DataSet: TDataSet);
begin
  inherited;

  dmBaseDeDatos.qValoresPorDefecto.Close;
  dmBaseDeDatos.qValoresPorDefecto.Open;

  DataSet.FieldByName('ProductoId').AsInteger:= dmBaseDeDatos.GetProximoId('ProductoId');
  DataSet.FieldByName('TipoProductoId').AsInteger:= dmBaseDeDatos.qValoresPorDefectoProductosTipoProductoId.Value;
  DataSet.FieldByName('CategoriaId').AsInteger:= dmBaseDeDatos.qValoresPorDefectoProductosCategoriaId.Value;
  DataSet.FieldByName('MarcaId').AsInteger:= dmBaseDeDatos.qValoresPorDefectoProductosMarcaId.Value;
  DataSet.FieldByName('ModeloId').AsInteger:= dmBaseDeDatos.qValoresPorDefectoProductosModeloId.Value;
  DataSet.FieldByName('UnidadDeMedidaId').AsInteger:= dmBaseDeDatos.qValoresPorDefectoProductosUnidadDeMedidaId.Value;
  DataSet.FieldByName('AlmacenId').AsInteger:= dmBaseDeDatos.qValoresPorDefectoAlmacenId.Value;
  DataSet.FieldByName('MonedaId').AsInteger:= dmBaseDeDatos.qValoresPorDefectoMonedaId.Value;

  DataSet.FieldByName('Codigo').AsString:= '0';
  DataSet.FieldByName('EsActivoFijo').AsBoolean:= false;
  DataSet.FieldByName('TieneFechaVencimiento').AsBoolean:= false;
  DataSet.FieldByName('TieneSerie').AsBoolean:= false;

  DataSet.FieldByName('EstadoId').AsInteger:= 1;
  DataSet.FieldByName('CreadoPor').AsString:= dmBaseDeDatos.GetUsuarioActual;
  DataSet.FieldByName('FechaCreacion').AsDateTime:= dmBaseDeDatos.GetFechaActual;








end;

procedure TfrmProductosCreate.FormShow(Sender: TObject);
begin
  inherited;


  qProductosTipos.Close;
  qProductosTipos.Open;

  qCategorias.Close;
  qCategorias.Open;

  qProductosMarcas.Close;
  qProductosMarcas.Open;

  qMarcasModelos.Close;
  qMarcasModelos.Open;

  qProductosUnidadesDeMedidas.Close;
  qProductosUnidadesDeMedidas.Open;

  qMonedas.Close;
  qMonedas.Open;

  qAlmacen.Close;
  qAlmacen.Open;


  qProdutos.Parameters.ParamValues['ProductoId']:= ProductoId;
  qProdutos.Close;
  qProdutos.Open;

  cdsProductos.Close;
  cdsProductos.Open;

  if cdsProductos.RecordCount>1 then
    cdsProductos.Edit
  else
    cdsProductos.Insert;




end;

end.
