view: ra_orders_dmi_na {
  sql_table_name: `sap-cortex-391114.SAP_CDC_PROCESSED_FP.ra_orders_dmiNA` ;;

  dimension: avg_calc_op_1_5 {
    type: number
    sql: ${TABLE}.avg_calc_op_1_5 ;;
  }
  dimension: avg_distnet_qty_available {
    type: number
    sql: ${TABLE}.avg_distnet_qty_available ;;
  }
  dimension: avg_inventory {
    type: number
    sql: ${TABLE}.avg_inventory ;;
  }
  dimension: avg_new_demand {
    type: number
    sql: ${TABLE}.avg_new_demand ;;
  }
  dimension: avg_used_op {
    type: number
    sql: ${TABLE}.avg_used_op ;;
  }
  dimension: bu_rgn {
    type: string
    sql: ${TABLE}.BU_RGN ;;
  }
  measure: expect_ra_order {
    type: sum
    sql: ${TABLE}.expect_ra_order ;;
  }
  measure: gross_orders {
    type: sum
    sql: ${TABLE}.gross_orders ;;
  }
  dimension_group: month {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.month ;;
  }
  dimension: total_calc_op_1_5 {
    type: number
    sql: ${TABLE}.total_calc_op_1_5 ;;
  }
  measure: total_distnet_qty_available {
    type: sum
    sql: ${TABLE}.total_distnet_qty_available ;;
  }
  measure: total_inventory {
    type: sum
    sql: ${TABLE}.total_inventory ;;
  }
  measure: total_new_demand {
    type: sum
    sql: ${TABLE}.total_new_demand ;;
  }
  dimension: total_used_op {
    type: number
    sql: ${TABLE}.total_used_op ;;
  }
  measure: count {
    type: count
  }
}
