view: actuals_fcst_multivariate {
  sql_table_name: `sap-cortex-391114.REPORTING_FP.actuals_fcst_multivariate` ;;

  dimension: avg_inventory {
    type: number
    sql: ${TABLE}.avg_inventory ;;
  }
  dimension: bu_rgn {
    type: string
    sql: ${TABLE}.BU_RGN ;;
  }
  measure: expect_ra_order {
    type: sum
    sql: ${TABLE}.expect_ra_order ;;
  }
  measure: forecast_value {
    type: sum
    sql: ${TABLE}.forecast_value ;;
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
  measure: prediction_lb {
    type: sum
    sql: ${TABLE}.prediction_lb ;;
  }
  measure: prediction_up {
    type: sum
    sql: ${TABLE}.prediction_up ;;
  }
  measure: total_inventory {
    type: sum
    sql: ${TABLE}.total_inventory ;;
  }
  measure: total_new_demand {
    type: sum
    sql: ${TABLE}.total_new_demand ;;
  }
  measure: count {
    type: count
  }
}
