@AbapCatalog.sqlViewName: 'ZZV_BRANDSL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Brands'
define view ZZ_B_BRANDS
  as select from zzrent_brands
{
  key marca as Marca,
      @UI.hidden: true
      url   as Imagen
}
