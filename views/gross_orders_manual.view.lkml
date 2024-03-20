view: gross_orders_manual {
  sql_table_name: `sap-cortex-391114.SAP_CDC_PROCESSED_FP.Gross_Orders_manual` ;;

  dimension: _ {
    hidden: yes
    type: string
    sql: ${TABLE}._ ;;
  }
  dimension: ___ {
    hidden: yes
    type: string
    sql: ${TABLE}.___ ;;
  }
  dimension: _apr_ {
    type: number
    sql: ${TABLE}._apr_ ;;
  }
  dimension: _aug_ {
    type: number
    sql: ${TABLE}._aug_ ;;
  }
  dimension: _dec_ {
    type: number
    sql: ${TABLE}._dec_ ;;
  }
  dimension: _feb_ {
    type: number
    sql: ${TABLE}._feb_ ;;
  }
  dimension: _fy_ {
    type: number
    sql: ${TABLE}._FY_ ;;
  }
  dimension: _jan_ {
    type: number
    sql: ${TABLE}._jan_ ;;
  }
  dimension: _jul_ {
    type: number
    sql: ${TABLE}._jul_ ;;
  }
  dimension: _jun_ {
    type: number
    sql: ${TABLE}._jun_ ;;
  }
  dimension: _mar_ {
    type: number
    sql: ${TABLE}._mar_ ;;
  }
  dimension: _may_ {
    type: number
    sql: ${TABLE}._may_ ;;
  }
  dimension: _nb___gb_sfsac_ {
    type: string
    sql: ${TABLE}._nb___gb_sfsac_ ;;
  }
  dimension: _nov_ {
    type: number
    sql: ${TABLE}._nov_ ;;
  }
  dimension: _oct_ {
    type: number
    sql: ${TABLE}._oct_ ;;
  }
  dimension: _q1_ {
    type: number
    sql: ${TABLE}._Q1_ ;;
  }
  dimension: _q2_ {
    type: number
    sql: ${TABLE}._Q2_ ;;
  }
  dimension: _q3_ {
    type: number
    sql: ${TABLE}._Q3_ ;;
  }
  dimension: _q4_ {
    type: number
    sql: ${TABLE}._Q4_ ;;
  }
  dimension: _sep_ {
    type: number
    sql: ${TABLE}._sep_ ;;
  }
  dimension: account {
    type: string
    sql: ${TABLE}.Account ;;
  }
  dimension: bridge {
    type: string
    sql: ${TABLE}.Bridge ;;
  }
  dimension: bu {
    type: string
    sql: ${TABLE}.BU ;;
  }
  dimension: epm_bu {
    type: string
    sql: ${TABLE}.EPM_BU ;;
  }
  dimension: epm_region {
    type: string
    sql: ${TABLE}.EPM_region ;;
  }
  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }
  dimension: string_field_25 {
    type: string
    sql: ${TABLE}.string_field_25 ;;
  }
  measure: count {
    type: count
  }
}
