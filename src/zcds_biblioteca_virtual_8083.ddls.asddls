@AbapCatalog.sqlViewName: 'ZV_BIBLIO_8083'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Biblioteca virtual'
@Metadata.allowExtensions: true
define view ZCDS_BIBLIOTECA_VIRTUAL_8083
  as select from    ZCDS_LIBROS_8083        as Libros
    inner join      ZCDS_CATEGO_8083        as Catego on Libros.Categoria = Catego.Categoria
    inner join      ZCDS_ACC_CATEG_8083     as AccCat on Libros.Categoria = AccCat.Categoria
    left outer join ZCDS_LIBROS_VENTAS_8083 as Ventas on Libros.IdLibro = Ventas.IdLibro

  association [0..*] to ZCDS_CLNTS_LIB_8083 as _Clientes on $projection.IdLibro = _Clientes.IdLibro
{
  key Libros.IdLibro,
  key Libros.Categoria,
      Libros.Titulo,
      Libros.Autor,
      Libros.Editorial,
      Catego.Descripcion,
      Libros.Idioma,
      Libros.Paginas,
      @Semantics.amount.currencyCode: 'Moneda'
      Libros.Precio,
      @Semantics.currencyCode: true
      Libros.Moneda,
      Libros.Formato,
      AccCat.TipoAcceso,

      // 0 neutral grey
      // 1 negative red
      // 2 critical yellow
      // 3 positive green
      case
      when Ventas.Ventas < 1 then 0
      when Ventas.Ventas = 1 then 1
      when Ventas.Ventas = 2 then 2
      when Ventas.Ventas > 2 then 3
      else 0
      end as CantVentas,
      ''  as Ventas,

      Libros.Imagen,

      _Clientes
}
