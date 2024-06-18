view: dmi_corr_eval {
  sql_table_name: `sap-cortex-391114.REPORTING_FP.dmi_corr_eval` ;;

  dimension: bu_region {
    type: string
    sql: ${TABLE}.BU_Region ;;
  }
  dimension: dmi_correlation {
    type: number
    sql: ${TABLE}.DMI_Correlation ;;
  }
  dimension: dmi_impact {
    type: number
    sql: ${TABLE}.DMI_impact ;;
  }
  dimension: mape__without_dmi {
    type: number
    sql: ${TABLE}.MAPE__without_DMI ;;
  }
  dimension: mape_with_dmi {
    type: number
    sql: ${TABLE}.MAPE_with_DMI ;;
  }
  measure: count {
    type: count
  }
}
