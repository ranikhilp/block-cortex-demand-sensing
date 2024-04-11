view: ra_dmi {
  sql_table_name: `sap-cortex-391114.SAP_CDC_PROCESSED_FP.ra_dmi` ;;

  dimension: dmi_val {
    type: number
    sql: ${TABLE}.DMI_Val ;;
  }
  dimension: fbu {
    type: string
    sql: ${TABLE}.FBU ;;
  }
  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }
  dimension_group: week_start {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.WEEK_START_DATE ;;
  }

  dimension: primary_key {
    primary_key: yes
    hidden: yes
    type: string
    sql: CONCAT(${fbu}, '-', ${week_start_date}, '-', ${region}) ;;
  }

  measure: dmi_sum{
    type: sum
    sql: ${dmi_val} ;;
    }

  measure: count {
    type: count
  }
}
