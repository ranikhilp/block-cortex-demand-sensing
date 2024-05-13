view: ra_plot_univariate_all_bu_rgn {
  sql_table_name: `sap-cortex-391114.REPORTING_FP.ra_plot_univariate_all_bu_rgn` ;;

  dimension: bu_rgn {
    type: string
    sql: ${TABLE}.BU_RGN ;;
  }
  dimension: confidence_level {
    type: number
    sql: ${TABLE}.confidence_level ;;
  }
  dimension: holiday_effect {
    type: number
    sql: ${TABLE}.holiday_effect ;;
  }
  measure: prediction_interval_lower_bound {
    type: sum
    sql: ${TABLE}.prediction_interval_lower_bound ;;
  }
  measure: prediction_interval_upper_bound {
    type: sum
    sql: ${TABLE}.prediction_interval_upper_bound ;;
  }
  measure: residual {
    type: sum
    sql: ${TABLE}.residual ;;
  }
  dimension: seasonal_period_daily {
    type: number
    sql: ${TABLE}.seasonal_period_daily ;;
  }
  dimension: seasonal_period_monthly {
    type: number
    sql: ${TABLE}.seasonal_period_monthly ;;
  }
  dimension: seasonal_period_quarterly {
    type: number
    sql: ${TABLE}.seasonal_period_quarterly ;;
  }
  dimension: seasonal_period_weekly {
    type: number
    sql: ${TABLE}.seasonal_period_weekly ;;
  }
  dimension: seasonal_period_yearly {
    type: number
    sql: ${TABLE}.seasonal_period_yearly ;;
  }
  dimension: spikes_and_dips {
    type: number
    sql: ${TABLE}.spikes_and_dips ;;
  }
  dimension: standard_error {
    type: number
    sql: ${TABLE}.standard_error ;;
  }
  dimension: step_changes {
    type: number
    sql: ${TABLE}.step_changes ;;
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
  measure: trend {
    type: sum
    sql: ${TABLE}.trend ;;
  }
  measure: count {
    type: count
  }
}
