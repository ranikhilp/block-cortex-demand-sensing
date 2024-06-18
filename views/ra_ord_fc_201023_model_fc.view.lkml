view: ra_ord_fc_201023_model_fc {
  sql_table_name: `sap-cortex-391114.REPORTING_FP.ra_ord_fc_2010-23_model_FC` ;;
  label: " ord_FC_BQ"

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

  dimension: prediction_interval_lower_bound{
    type: number
    sql: ${TABLE}.prediction_interval_lower_bound ;;
    }
  measure: prediction_interval_lower_bound_v1{
    type: sum
    sql: if(${prediction_interval_lower_bound}=0,null,${prediction_interval_lower_bound});;
  }
  dimension: prediction_interval_upper_bound {
    type: number
    sql: ${TABLE}.prediction_interval_upper_bound ;;
  }
  measure: prediction_interval_upper_bound_v1{
    type: sum
    sql: if(coalesce(${prediction_interval_upper_bound},0)=0,null,${prediction_interval_upper_bound});;
  }
  dimension: residual {
    type: number
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
  dimension: time_series_data {
    type: number
    sql: ${TABLE}.time_series_data ;;
  }

  measure: time_series_data_v1{
    type: sum
    sql: if(coalesce(${time_series_data},0)=0,null,${time_series_data});;
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
}
