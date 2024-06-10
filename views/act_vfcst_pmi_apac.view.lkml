view: act_vfcst_pmi_apac {
  sql_table_name: `sap-cortex-391114.SAP_CDC_PROCESSED_FP.actVfcst_pmi_apac` ;;

  dimension: accuracy {
    type: number
    sql: ${TABLE}.accuracy ;;
  }
  dimension: actual {
    type: string
    sql: ${TABLE}.actual ;;
  }
  dimension: error__rate {
    type: number
    sql: ${TABLE}.`error _rate` ;;
  }
  dimension: forecast {
    type: string
    sql: ${TABLE}.forecast ;;
  }
  measure: count {
    type: count
  }
}
