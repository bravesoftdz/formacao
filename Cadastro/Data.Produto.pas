unit Data.Produto;

interface

uses
  System.SysUtils, System.Classes, Data.Base, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.FMTBcd, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Data.Connection;

type
  TdmdProduto = class(TdmdBase)
    qryDadosIDPRODUTO: TFDAutoIncField;
    qryDadosDESCRICAO: TWideStringField;
    qryDadosPRECO_DESEJADO: TFloatField;
    qryDadosMODELO: TWideStringField;
    qryDadosDATA_CADASTRO: TDateTimeField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmdProduto: TdmdProduto;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
