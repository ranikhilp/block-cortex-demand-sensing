view: demand_forecast {
  sql_table_name: `sap-cortex-391114.SAP_CDC_PROCESSED_FP.Demand_Forecast` ;;

  dimension: catalog_item_id {
    type: string
    sql: ${TABLE}.CatalogItemId ;;
  }
  dimension: customer_id {
    type: string
    sql: ${TABLE}.CustomerId ;;
  }
  dimension_group: date_of_forecast {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DateOfForecast ;;
  }
  dimension: mlforecast_quantity {
    type: number
    sql: ${TABLE}.MLForecastQuantity ;;
  }
  dimension: mlforecast_quantity_lower_bound {
    type: number
    sql: ${TABLE}.MLForecastQuantityLowerBound ;;
  }
  dimension: mlforecast_quantity_upper_bound {
    type: number
    sql: ${TABLE}.MLForecastQuantityUpperBound ;;
  }
  dimension_group: week_start {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.WeekStart ;;
  }
  measure: count {
    type: count
  }
}
