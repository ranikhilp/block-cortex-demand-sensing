view: sfsac_manual {
  sql_table_name: `sap-cortex-391114.SAP_CDC_PROCESSED_FP.SFSAC_manual` ;;

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
    type: string
    sql: ${TABLE}._apr_ ;;
  }
  dimension: _aug_ {
    type: string
    sql: ${TABLE}._aug_ ;;
  }
  dimension: _dec_ {
    type: number
    sql: ${TABLE}._dec_ ;;
  }
  dimension: _feb_ {
    type: string
    sql: ${TABLE}._feb_ ;;
  }
  dimension: _fy_ {
    type: number
    sql: ${TABLE}._FY_ ;;
  }
  dimension: _jan_ {
    type: string
    sql: ${TABLE}._jan_ ;;
  }
  dimension: _jul_ {
    type: string
    sql: ${TABLE}._jul_ ;;
  }
  dimension: _jun_ {
    type: string
    sql: ${TABLE}._jun_ ;;
  }
  dimension: _mar_ {
    type: string
    sql: ${TABLE}._mar_ ;;
  }
  dimension: _may_ {
    type: string
    sql: ${TABLE}._may_ ;;
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
    type: string
    sql: ${TABLE}._Q2_ ;;
  }
  dimension: _q3_ {
    type: string
    sql: ${TABLE}._Q3_ ;;
  }
  dimension: _q4_ {
    type: string
    sql: ${TABLE}._Q4_ ;;
  }
  dimension: _sep_ {
    type: string
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
  dimension: string_field_26 {
    type: string
    sql: ${TABLE}.string_field_26 ;;
  }
  measure: count {
    type: count
  }
}
