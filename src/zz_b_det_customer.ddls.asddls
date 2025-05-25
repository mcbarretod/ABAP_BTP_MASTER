@AbapCatalog.sqlViewName: 'ZZV_DET_CUSTL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Details Customers'
@Metadata.allowExtensions: true
define view ZZ_B_DET_CUSTOMER
  as select from zzrent_customers
{
  key doc_id    as ID,
  key matricula as Matricula,
      nombres   as Nombre,
      apellidos as Apellidos,
      email     as Correo,
      cntr_type as TipoContrato

}
