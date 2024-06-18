view: april_2024_actuals {
  sql_table_name: `sap-cortex-391114.SAP_CDC_PROCESSED_FP.april_2024_actuals` ;;

  dimension: bu_rgn {
    type: string
    sql: ${TABLE}.BU_RGN ;;
  }
  dimension: gross_orders {
    type: number
    sql: ${TABLE}.gross_orders ;;
  }

  measure: gross_orders_sum {
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
  measure: count {
    type: count
  }
}
