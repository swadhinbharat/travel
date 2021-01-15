@EndUserText.label: 'Travel'
@AccessControl.authorizationCheck: #CHECK
define root view entity ZSW_C_Travel
  as projection on ZSW_I_Travel
{
          @UI.facet: [ { id:              'Travel',
                         purpose:         #STANDARD,
                         type:            #IDENTIFICATION_REFERENCE,
                         label:           'Travel',
                         position:        10 } ]

          @UI.hidden: true
  key     TravelUUID,


          @UI: {
              lineItem:       [ { position: 10, importance: #HIGH } ],
              identification: [ { position: 10, label: 'Travel ID [1,...,99999999]' } ] }
          @Search.defaultSearchElement: true
  key     TravelId,

          @UI: {
              lineItem:       [ { position: 20, importance: #HIGH } ],
              identification: [ { position: 20 } ],
              selectionField: [ { position: 20 } ] }
          @Consumption.valueHelpDefinition: [{ entity : {name: '/DMO/I_Agency', element: 'AgencyID'  } }]

          //      @ObjectModel.text.element: ['AgencyName'] ----meaning?
          @Search.defaultSearchElement: true
          AgencyId,
          //  AgencyName,

          @UI: {
              lineItem:       [ { position: 30, importance: #HIGH } ],
              identification: [ { position: 30 } ],
              selectionField: [ { position: 30 } ] }
          @Consumption.valueHelpDefinition: [{ entity : {name: '/DMO/I_Customer', element: 'CustomerID'  } }]

          //      @ObjectModel.text.element: ['CustomerName']
          @Search.defaultSearchElement: true
          CustomerId,

          //  @UI.hidden: true
          //  CustomerName,

          @UI: {
              lineItem:       [ { position: 40, importance: #MEDIUM } ],
              identification: [ { position: 40 } ] }
          BeginDate,

          @UI: {
              lineItem:       [ { position: 41, importance: #MEDIUM } ],
              identification: [ { position: 41 } ] }
          EndDate,

          @UI: {
              lineItem:       [ { position: 50, importance: #MEDIUM } ],
              identification: [ { position: 50, label: 'Total Price' } ] }
          @Semantics.amount.currencyCode: 'CurrencyCode'
          TotalPrice,

          @Consumption.valueHelpDefinition: [{entity: {name: 'I_Currency', element: 'Currency' }}]
          CurrencyCode,

          //      @UI: {
          //            lineItem:       [ { position: 60, importance: #HIGH },
          //                              { type: #FOR_ACTION, dataAction: 'acceptTravel', label: 'Accept Travel' } ],
          //          identification: [ { position: 60, label: 'Status [O(Open)|A(Accepted)|X(Canceled)]' } ]  }
          //      TravelStatus,

          @UI.identification: [ { position: 70, label: 'Remarks' } ]
          Description,

          @UI.hidden: true
          LastChangedAt


}
