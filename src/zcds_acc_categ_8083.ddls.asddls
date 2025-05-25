@AbapCatalog.sqlViewName: 'ZV_ACC_CATEG_083'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Categorias y Tipos de Acceso'
define view ZCDS_ACC_CATEG_8083
  as select from ztb_acc_categ_83
{
  key bi_categ    as Categoria,
  key tipo_acceso as TipoAcceso
}
