@AbapCatalog.sqlViewName: 'ZV_LIBROS_8083 '
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Libros'
@Metadata.allowExtensions: true
define view ZCDS_LIBROS_8083
  as select from ztb_libros_8083
{
  key id_libro  as IdLibro,
  key bi_categ  as Categoria,
      titulo    as Titulo,
      autor     as Autor,
      editorial as Editorial,
      idioma    as Idioma,
      paginas   as Paginas,
      @Semantics.amount.currencyCode: 'Moneda'
      precio    as Precio,
      @Semantics.currencyCode: true
      moneda    as Moneda,
      formato   as Formato,
      @UI.hidden: true
      url       as Imagen
}
