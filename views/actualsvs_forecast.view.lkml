view: actualsvs_forecast {
  sql_table_name: `sap-cortex-391114.REPORTING_FP.ActualsvsForecast` ;;

  measure: _actuals {
    type: sum
    sql: ${TABLE}._Actuals ;;
  }
  measure: _forecast_value__2016_10_to_2024_03_ {
    type: sum
    sql: ${TABLE}._forecast_value__2016_10_to_2024_03_ ;;
  }
  measure: _order_dmi__new_demand_ {
    type: sum
    sql: ${TABLE}._Order_DMI__new_demand_ ;;
  }
  measure: _orders___dmi__new_demand__new_order____weights {
    type: sum
    sql: ${TABLE}._Orders___DMI__new_demand__new_order____weights ;;
  }
  measure: _orders___dmi__new_order_ {
    type: sum
    sql: ${TABLE}._Orders___DMI__new_order_ ;;
  }
  measure: _orders___dmi__new_order____weights {
    type: sum
    sql: ${TABLE}._Orders___DMI__new_order____weights ;;
  }
  measure: _orders_dmi_new_demand__new_order_ {
    type: sum
    sql: ${TABLE}._Orders_DMI_new_demand__new_order_ ;;
  }
  measure: _orders_dmi_new_demand__weights {
    type: sum
    sql: ${TABLE}._Orders_DMI_new_demand__weights ;;
  }
  dimension: bu_rgn {
    type: string
    sql: ${TABLE}.BU_RGN ;;
  }
  dimension_group: forecast_timestamp {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.forecast_timestamp ;;
  }
  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }
  measure: count {
    type: count
  }
}
