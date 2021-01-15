@EndUserText.label: 'Travel'
@AccessControl.authorizationCheck: #CHECK
define root view entity ZSW_I_Travel
  as select from zsw_travel as Travel
{
  key    mykey           as TravelUUID,
  key    travel_id       as TravelId,
         agency_id       as AgencyId,
         customer_id     as CustomerId,
         begin_date      as BeginDate,
         end_date        as EndDate,
         @Semantics.amount.currencyCode: 'CurrencyCode'
         booking_fee     as BookingFee,
         @Semantics.amount.currencyCode: 'CurrencyCode'
         total_price     as TotalPrice,
         currency_code   as CurrencyCode,
         description     as Description,
         overall_status  as OverallStatus,

         /*-- Admin data --*/
         @Semantics.user.createdBy: true
         created_by      as CreatedBy,
         @Semantics.systemDateTime.createdAt: true
         created_at      as CreatedAt,
         @Semantics.user.lastChangedBy: true
         last_changed_by as LastChangedBy,
         @Semantics.systemDateTime.lastChangedAt: true
         last_changed_at as LastChangedAt
}
