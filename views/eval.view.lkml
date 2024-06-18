view: eval {
  sql_table_name: `sap-cortex-391114.REPORTING_FP.eval` ;;

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
  dimension: forecast_value {
    type: number
    sql: ${TABLE}.forecast_value ;;
  }
  dimension: gross_value {
    type: number
    sql: ${TABLE}.gross_value ;;
  }
  measure: count {
    type: count
  }
}
