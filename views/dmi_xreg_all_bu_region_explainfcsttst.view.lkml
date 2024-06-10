view: dmi_xreg_all_bu_region_explainfcsttst {
  sql_table_name: `sap-cortex-391114.REPORTING_FP.dmi_xreg_all_bu_region_explainfcsttst` ;;

  dimension: bu_rgn {
    type: string
    sql: ${TABLE}.BU_RGN ;;
  }
  dimension: confidence_level {
    type: number
    sql: ${TABLE}.confidence_level ;;
  }
  measure: prediction_interval_lower_bound {
    type: sum
    sql: ${TABLE}.prediction_interval_lower_bound ;;
  }
  measure: prediction_interval_upper_bound {
    type: sum
    sql: ${TABLE}.prediction_interval_upper_bound ;;
  }
  dimension: standard_error {
    type: number
    sql: ${TABLE}.standard_error ;;
  }
  dimension: time_series_adjusted_data {
    type: number
    sql: ${TABLE}.time_series_adjusted_data ;;
  }
  measure: time_series_data {
    type: sum
    sql: ${TABLE}.time_series_data ;;
  }
  dimension_group: time_series_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.time_series_timestamp ;;
  }
  dimension: time_series_type {
    type: string
    sql: ${TABLE}.time_series_type ;;
  }
  dimension: trend {
    type: number
    sql: ${TABLE}.trend ;;
  }
  measure: count {
    type: count
  }
}
