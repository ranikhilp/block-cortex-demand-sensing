view: ra_orders_all_bu_regions_plus_dmi_3monthslagged {
  sql_table_name: `sap-cortex-391114.SAP_CDC_PROCESSED_FP.ra_orders_all_bu_regions_plus_dmi_3monthslagged` ;;

  dimension: avg_dist_order_ra {
    type: number
    sql: ${TABLE}.avg_DistOrderRA ;;
  }
  dimension: avg_new_demand {
    type: number
    sql: ${TABLE}.avg_new_demand ;;
  }
  dimension: bu_rgn {
    type: string
    sql: ${TABLE}.BU_RGN ;;
  }
  dimension: dummy_var_c19 {
    type: number
    sql: ${TABLE}.dummy_var_c19 ;;
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
  measure: total_dist_order_ra {
    type: sum
    sql: ${TABLE}.total_DistOrderRA ;;
  }
  measure: total_new_demand {
    type: sum
    sql: ${TABLE}.total_new_demand ;;
  }
  measure: count {
    type: count
  }
}
