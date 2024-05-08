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
  dimension: expect_ra_order {
    type: number
    sql: ${TABLE}.expect_ra_order ;;
  }
  dimension: forecast_value {
    type: number
    sql: ${TABLE}.forecast_value ;;
  }
  dimension: gross_orders {
    type: number
    sql: ${TABLE}.gross_orders ;;
  }
  dimension_group: month {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.month ;;
  }
  dimension: prediction_lb {
    type: number
    sql: ${TABLE}.prediction_lb ;;
  }
  dimension: prediction_up {
    type: number
    sql: ${TABLE}.prediction_up ;;
  }
  dimension: total_inventory {
    type: number
    sql: ${TABLE}.total_inventory ;;
  }
  dimension: total_new_demand {
    type: number
    sql: ${TABLE}.total_new_demand ;;
  }
  measure: count {
    type: count
  }
}
