
view: union_forecast_train {
  derived_table: {
    sql: SELECT *
          FROM `sap-cortex-391114.SAP_CDC_PROCESSED_FP.amount_train`
        UNION ALL
        SELECT bu_reg, forecast_value, CAST(forecast_timestamp AS DATE)
          FROM `sap-cortex-391114.REPORTING_FP.value_forecast`
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: bu_reg {
    type: string
    sql: ${TABLE}.bu_reg ;;
  }

  measure: gross_value {
    type: sum
    value_format_name: usd
    sql: ${TABLE}.gross_value ;;
  }

  dimension: creatd_dttm {
    type: date
    datatype: date
    sql: ${TABLE}.creatd_dttm ;;
  }

  set: detail {
    fields: [
        bu_reg,
  gross_value,
  creatd_dttm
    ]
  }
}
