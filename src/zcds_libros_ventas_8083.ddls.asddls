@AbapCatalog.sqlViewName: 'ZV_VENTAS_8083'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cantidad de ventas por libros'
define view ZCDS_LIBROS_VENTAS_8083 as select from ZCDS_CLNTS_LIB_8083
{
    key IdLibro,
    count(distinct IdCliente) as Ventas
}

group by
  IdLibro;
