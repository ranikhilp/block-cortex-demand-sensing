view: ra_order_na_actuals_prod_nonothers {
  sql_table_name: `sap-cortex-391114.REPORTING_FP.ra_order_NA_actuals_prod_non-others` ;;

  dimension: bu_rgn {
    type: string
    sql: ${TABLE}.BU_RGN ;;
  }
  measure: gross_orders {
    type: sum
    sql: ${TABLE}.gross_orders ;;
  }
  dimension_group: month {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.month ;;
  }
  measure: count {
    type: count
  }
}
