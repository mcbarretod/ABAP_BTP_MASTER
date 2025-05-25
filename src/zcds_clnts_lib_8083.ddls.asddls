@AbapCatalog.sqlViewName: 'ZV_CLTS_LIB_8083'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Clientes y libros'
@Metadata.allowExtensions: true
define view ZCDS_CLNTS_LIB_8083
  as select from ztb_clnts_lib_83   as ClntLib
    inner join   ZCDS_CLIENTES_8083 as DetClien on DetClien.IdCliente = ClntLib.id_cliente
{
  key id_cliente              as IdCliente,
  key DetClien.TipoAcceso     as TipoAcceso,
  key id_libro                as IdLibro,
      DetClien.Nombre         as Nombre,
      DetClien.Apellidos      as Apellidos,
      DetClien.NombreCompleto as NombreCompleto,
      DetClien.Email          as Email,
      @UI.hidden: true
      DetClien.Url            as Url
}
