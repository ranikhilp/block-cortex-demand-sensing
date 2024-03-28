view: sfsac_manual {
  sql_table_name: `sap-cortex-391114.SAP_CDC_PROCESSED_FP.SFSAC_manual` ;;
label: "Ship From Stock and Credits"

  dimension: bu {
    type: string
    sql: ${TABLE}.bu ;;
  }

  dimension: qtr {
    type: string
    sql: ${TABLE}.QTR ;;
  }

  dimension: qtr_join {
    hidden: yes
    sql:SUBSTRING(CAST(qtr_dttm AS string), 1, 7) ;;
  }


    dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: sfsac_manual {
    type: number
    sql: ${TABLE}.SFSAC_manual ;;
  }


  dimension: primary_key {
    primary_key: yes
    hidden: yes
    type: string
    sql: CONCAT(${bu}, '-', ${qtr}, '-', ${region}) ;;
  }

  #sfsac total
  measure: sfsac_total {
    value_format_name: usd
    type: sum
    sql: ${sfsac_manual} ;;
  }


  measure: count {
    type: count
  }


  # #sfsac total
  # measure: sfsac_total {
  #   type: sum
  #   sql: ${sfsac_manual} ;;
  # }
}
