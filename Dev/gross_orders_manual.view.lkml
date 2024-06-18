view: gross_orders_manual {
  sql_table_name: `sap-cortex-391114.SAP_CDC_PROCESSED_FP.Gross_Orders_manual` ;;

  dimension: bu {
    type: string
    sql: ${TABLE}.BU ;;
  }
  dimension: fy {
    type: number
    sql: ${TABLE}.FY ;;
  }
  dimension: gross_orders_manual {
    type: number
    sql: ${TABLE}.Gross_Orders_manual ;;
  }
  dimension: qtr {
    type: string
    sql: ${TABLE}.QTR ;;
  }
  dimension: qtr_join {
    hidden: yes
    sql:SUBSTRING(CAST(${qtr_dttm_date} AS string), 1, 7) ;;
  }


  dimension_group: qtr_dttm {
    type: time
    timeframes: [raw, date, week, month, quarter,fiscal_quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.QTR_DTTM ;;
  }


  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: primary_key {
    primary_key: yes
    hidden: yes
    type: string
    sql: CONCAT(${bu}, '-', ${qtr}, '-', ${region}) ;;

  }

  measure: gross_orders_sum {
    value_format_name: usd
    type: sum
    sql: ${gross_orders_manual} ;;
  }


  measure: count {
    type: count
  }
}
