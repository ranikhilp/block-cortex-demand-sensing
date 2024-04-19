view: fc_ul {
  sql_table_name: `sap-cortex-391114.REPORTING_FP.fc_ul` ;;



  dimension: _actual {
    hidden: yes
    type: number
    sql: ${TABLE}.actual ;;
  }

  measure: actual  {
    type: sum
    sql:
      CASE
        WHEN ${creatd_dttm_month} = '2024-02' THEN NULL
        WHEN ${creatd_dttm_month} = '2024-03' THEN NULL
        ELSE ${_actual}
      END
    ;;


  }

  dimension: bu_reg {
    type: string
    sql: ${TABLE}.bu_reg ;;
  }
  dimension_group: creatd_dttm {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.creatd_dttm ;;
  }

  measure: forecast {
    type: sum
    value_format_name: usd
    sql: ${TABLE}.forecast ;;

  }

  measure: lower_bound {
    type: sum
    value_format_name: usd
    sql: ${TABLE}.lower_bound ;;
  }

  measure: upper_bound {
    value_format_name: usd
    type: sum
    sql: ${TABLE}.upper_bound ;;
  }

  measure: count {
    type: count
  }
}
