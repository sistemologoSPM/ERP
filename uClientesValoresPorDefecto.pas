unit uClientesValoresPorDefecto;

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
  dxSkinXmas2008Blue, Vcl.Menus, dxLayoutControlAdapters, Vcl.AppEvnts,
  dxLayoutContainer, cxClasses, Vcl.StdCtrls, cxButtons, dxLayoutControl,
  Vcl.ComCtrls, uBaseDeDatos, Vcl.DBCtrls, Data.DB, Data.Win.ADODB;

type
  TfrmClientesValoresPorDefecto = class(TfrmBaseFormInsert)
    qValoresPorDefecto: TADOQuery;
    qValoresPorDefectoClientesTipoClienteId: TIntegerField;
    qValoresPorDefectoClientesCategoriaId: TIntegerField;
    qValoresPorDefectoClientesTerminoDePagoId: TIntegerField;
    qValoresPorDefectoClientesSexoId: TIntegerField;
    qValoresPorDefectoClientesProvinciaId: TIntegerField;
    qValoresPorDefectoClientesTipoDocumentoId: TIntegerField;
    qValoresPorDefectoClientesEstadoCivilId: TIntegerField;
    qValoresPorDefectoClientesListaPrecioId: TIntegerField;
    qTiposClientes: TADOQuery;
    qCategorias: TADOQuery;
    TiposDocumentos: TADOQuery;
    qSexos: TADOQuery;
    qEstadosCiviles: TADOQuery;
    qNacionalidades: TADOQuery;
    qTipoNCF: TADOQuery;
    qTerminosDePagos: TADOQuery;
    qListadoDePrecios: TADOQuery;
    qProvincias: TADOQuery;
    qValoresPorDefectoListadoTiposClientes: TStringField;
    qValoresPorDefectoListadoCategorias: TStringField;
    dsValoresPorDefecto: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    dxLayoutItem1: TdxLayoutItem;
    DBLookupComboBox2: TDBLookupComboBox;
    dxLayoutItem3: TdxLayoutItem;
    qValoresPorDefectoListadoTiposDocumentos: TStringField;
    qValoresPorDefectoListadoSexos: TStringField;
    qValoresPorDefectoListadosEstadosCiviles: TStringField;
    DBLookupComboBox3: TDBLookupComboBox;
    dxLayoutItem4: TdxLayoutItem;
    DBLookupComboBox4: TDBLookupComboBox;
    dxLayoutItem5: TdxLayoutItem;
    DBLookupComboBox5: TDBLookupComboBox;
    dxLayoutItem6: TdxLayoutItem;
    qValoresPorDefectoListadoProvincias: TStringField;
    qValoresPorDefectoClientesNacionalidadId: TIntegerField;
    qValoresPorDefectoClientesTipoNCFId: TIntegerField;
    qValoresPorDefectoListadoTerminosPagos: TStringField;
    qValoresPorDefectoListadoNacionalidades: TStringField;
    qValoresPorDefectoListadosTiposNCF: TStringField;
    qValoresPorDefectoListadosListasDePrecios: TStringField;
    DBLookupComboBox6: TDBLookupComboBox;
    dxLayoutItem7: TdxLayoutItem;
    DBLookupComboBox7: TDBLookupComboBox;
    dxLayoutItem8: TdxLayoutItem;
    DBLookupComboBox11: TDBLookupComboBox;
    dxLayoutItem9: TdxLayoutItem;
    DBLookupComboBox12: TDBLookupComboBox;
    dxLayoutItem10: TdxLayoutItem;
    DBLookupComboBox8: TDBLookupComboBox;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    dxLayoutSeparatorItem2: TdxLayoutSeparatorItem;
    dxLayoutSeparatorItem3: TdxLayoutSeparatorItem;
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClientesValoresPorDefecto: TfrmClientesValoresPorDefecto;

implementation

{$R *.dfm}

procedure TfrmClientesValoresPorDefecto.cxButton1Click(Sender: TObject);
begin
  inherited;

  if qValoresPorDefecto.State in [dsEdit,dsInsert ] then
    Begin
      qValoresPorDefecto.Post;
      ModalResult:= mrOk;
    End;
end;

procedure TfrmClientesValoresPorDefecto.FormShow(Sender: TObject);
begin
  inherited;

  qTiposClientes.close;
  qTiposClientes.Open;

  qCategorias.Close;
  qCategorias.Open;

  qSexos.Close;
  qSexos.Open;

  qEstadosCiviles.Close;
  qEstadosCiviles.Open;

  qNacionalidades.Close;
  qNacionalidades.Open;

  qTipoNCF.Close;
  qTipoNCF.Open;

  qTerminosDePagos.Close;
  qTerminosDePagos.Open;

  qListadoDePrecios.Close;
  qListadoDePrecios.Open;

  qProvincias.Close;
  qProvincias.Open;

  qValoresPorDefecto.Close;
  qValoresPorDefecto.Open;
  qValoresPorDefecto.Edit;


end;

end.
