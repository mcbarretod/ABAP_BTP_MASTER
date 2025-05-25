@AbapCatalog.sqlViewName: 'ZV_CATEGO_8083'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Categorias'
define view ZCDS_CATEGO_8083
  as select from ztb_catego_8083
{
  key bi_categ    as Categoria,
      descripcion as Descripcion
}
