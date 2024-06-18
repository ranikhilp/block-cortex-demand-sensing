view: anl_busi_lgstcscurr_p_conv_adj_700 {
  sql_table_name: `sap-cortex-391114.SAP_CDC_PROCESSED_FP.anl_busi_lgstcs-curr_p_conv_adj_700` ;;

  dimension: exch_rate {
    type: number
    sql: ${TABLE}.exch_rate ;;
  }
  dimension_group: exch_rate_eff_from_dte {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.exch_rate_eff_from_dte ;;
  }
  dimension_group: last_updated_dl_ts {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.last_updated_dl_ts ;;
  }
  dimension: orig_crncy_cd {
    type: string
    sql: ${TABLE}.orig_crncy_cd ;;
  }
  dimension: tgt_crncy_cd {
    type: string
    sql: ${TABLE}.tgt_crncy_cd ;;
  }
  measure: count {
    type: count
  }
}
