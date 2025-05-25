@AbapCatalog.sqlViewName: 'ZZV_REM_DAYSL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Remaining days'
define view ZZ_B_REM_DAYS
  as select from zzrent_cars
{
  key matricula as Matricula,
      marca     as Marca,
      case
      when alq_hasta <> ''
      then dats_days_between( cast(
      $session.system_date as abap.dats ), alq_hasta)
      end       as Dias

}
