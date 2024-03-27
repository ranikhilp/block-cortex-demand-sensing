view: gross_orders_manual {
  sql_table_name: `sap-cortex-391114.SAP_CDC_PROCESSED_FP.Gross_Orders_manual` ;;

  dimension: bu {
    type: string
    sql: ${TABLE}.BU ;;
  }
  dimension: gross_orders_manual {
    type: number
    sql: ${TABLE}.Gross_Orders_manual ;;
  }
  dimension: qtr {
    type: string
    sql: ${TABLE}.QTR ;;
  }
  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }
  measure: count {
    type: count
  }

  measure: gross_ord_sum {
    type: sum
    sql: ${gross_orders_manual} ;;
  }
}
