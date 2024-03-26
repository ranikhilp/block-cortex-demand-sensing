view: sfsac_manual {
  sql_table_name: `sap-cortex-391114.SAP_CDC_PROCESSED_FP.SFSAC_manual` ;;

  dimension: bu {
    primary_key: yes
    type: string
    sql: ${TABLE}.bu ;;
  }
  dimension: qtr {
    type: string
    sql: ${TABLE}.QTR ;;
  }
  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: sfsac_manual {
    type: number
    sql: ${TABLE}.SFSAC_manual ;;
  }

  #sfsac total
  measure: sfsac_total {
    type: sum
    sql: ${sfsac_manual} ;;
  }
}
