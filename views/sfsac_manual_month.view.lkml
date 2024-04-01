view: sfsac_manual_month {
  sql_table_name: `sap-cortex-391114.SAP_CDC_PROCESSED_FP.SFSAC_manual_month` ;;

  dimension: bu {
    type: string
    sql: ${TABLE}.BU ;;
  }
  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, fiscal_quarter,quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Date ;;
  }
  dimension: month {
    type: string
    sql: ${TABLE}.Month ;;
  }
  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }
  dimension: sfsac_manual {
    type: number
    sql: ${TABLE}.sfsac_manual ;;
  }
  measure: count {
    type: count
  }
}
