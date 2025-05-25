@AbapCatalog.sqlViewName: 'ZV_CLIENTES_8083'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Clientes'
define view ZCDS_CLIENTES_8083
  as select from ztb_clientes_083
{
  key id_cliente                as IdCliente,
  key tipo_acceso               as TipoAcceso,
      nombre                    as Nombre,
      apellidos                 as Apellidos,
      concat_with_space(nombre, apellidos, 1) as NombreCompleto,
      email                     as Email,
      @UI.hidden: true
      url                       as Url
}
