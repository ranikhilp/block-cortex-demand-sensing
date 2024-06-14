view: actvsfcapac {
  sql_table_name: `sap-cortex-391114.REPORTING_FP.actvsfc-APAC` ;;

  measure: accuracy {
    type: sum
    sql: ${TABLE}.accuracy ;;
  }
  measure: err_rate {
    type: sum
    sql: ${TABLE}.err_rate ;;
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
  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }
  measure: time_series_data {
    type: sum
    sql: ${TABLE}.time_series_data ;;
  }
  measure: count {
    type: count
  }
}
