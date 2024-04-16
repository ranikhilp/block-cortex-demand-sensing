view: anl_ra_gdsdate_dim {
  sql_table_name: `sap-cortex-391114.SAP_CDC_PROCESSED_FP.anl_ra_gds-date_dim` ;;
  label: "Date"

  dimension: cal_mth {
    type: number
    sql: ${TABLE}.cal_mth ;;
  }
  dimension: cal_wk {
    type: number
    sql: ${TABLE}.cal_wk ;;
  }
  dimension: cal_yr {
    type: number
    sql: ${TABLE}.cal_yr ;;
  }
  dimension: cal_yr_mth {
    type: number
    sql: ${TABLE}.cal_yr_mth ;;
  }
  dimension: cal_yr_qtr {
    type: number
    sql: ${TABLE}.cal_yr_qtr ;;
  }
  dimension: cal_yr_wk {
    type: number
    sql: ${TABLE}.cal_yr_wk ;;
  }
  dimension_group: date_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date_dt ;;
  }
  dimension: date_key {
    type: number
    sql: ${TABLE}.date_key ;;
  }
  dimension: fiscal_per {
    type: number
    sql: ${TABLE}.fiscal_per ;;
  }
  dimension: fiscal_qtr_lbl {
    type: string
    sql: ${TABLE}.fiscal_qtr_lbl ;;
  }
  dimension: fiscal_yr {
    type: number
    sql: ${TABLE}.fiscal_yr ;;
  }
  dimension: fiscal_yr_per {
    type: number
    sql: ${TABLE}.fiscal_yr_per ;;
  }
  dimension: fiscal_yr_qtr {
    type: number
    sql: ${TABLE}.fiscal_yr_qtr ;;
  }
  dimension_group: last_updated_dl_ts {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.last_updated_dl_ts ;;
  }
  measure: count {
    type: count
  }
}
