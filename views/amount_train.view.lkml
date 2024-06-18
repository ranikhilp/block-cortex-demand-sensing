view: amount_train {
  sql_table_name: `sap-cortex-391114.SAP_CDC_PROCESSED_FP.amount_train` ;;

  dimension: bu_reg {
    type: string
    sql: ${TABLE}.bu_reg ;;
  }
  dimension_group: creatd_dttm {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.creatd_dttm ;;
  }
  dimension: gross_value {
    type: number
    sql: ${TABLE}.gross_value ;;
  }
  measure: count {
    type: count
  }
}
