
view: union_forecast_train {
  derived_table: {
    sql: SELECT *
          FROM `sap-cortex-391114.SAP_CDC_PROCESSED_FP.amount_final`
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


  dimension_group: creatd_dttm {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.creatd_dttm ;;
  }

  set: detail {
    fields: [
        bu_reg,
  gross_value,
  creatd_dttm.month
    ]
  }
}
