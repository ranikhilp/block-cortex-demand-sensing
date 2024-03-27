
view: sfsc_manual_primarykey {
  derived_table: {
    sql: SELECT
        ROW_NUMBER() OVER (ORDER BY bu, region) AS primary_key,
        bu,
        QTR,
        region,
        SFSAC_manual

      FROM `sap-cortex-391114.SAP_CDC_PROCESSED_FP.SFSAC_manual` ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: primary_key {
    primary_key: yes
    #hidden: yes
    type: number
    sql: ${TABLE}.primary_key ;;
  }

  dimension: bu {
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

  set: detail {
    fields: [
  bu,
  qtr,
  region,
  sfsac_manual
    ]
  }
}
