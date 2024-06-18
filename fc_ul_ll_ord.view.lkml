
view: fc_ul_ll_ord {
  derived_table: {
    sql: -- raw sql results do not include filled-in values for 'ra_ord_fc_201023_model_fc.time_series_timestamp_month'
      
      
      SELECT
          (FORMAT_TIMESTAMP('%Y-%m', ra_ord_fc_201023_model_fc.time_series_timestamp )) AS ra_ord_fc_201023_model_fc_time_series_timestamp_month,
          SUM(if(coalesce( ra_ord_fc_201023_model_fc.time_series_data  ,0)=0,null, ra_ord_fc_201023_model_fc.time_series_data )) AS ra_ord_fc_201023_model_fc_time_series_data_v1,
          SUM(if(coalesce( ra_ord_fc_201023_model_fc.prediction_interval_upper_bound  ,0)=0,null, ra_ord_fc_201023_model_fc.prediction_interval_upper_bound ))AS ra_ord_fc_201023_model_fc_prediction_interval_upper_bound_v1,
          SUM(if( ra_ord_fc_201023_model_fc.prediction_interval_lower_bound  =0,null, ra_ord_fc_201023_model_fc.prediction_interval_lower_bound )) AS ra_ord_fc_201023_model_fc_prediction_interval_lower_bound_v1
      FROM `sap-cortex-391114.REPORTING_FP.ra_ord_fc_2010-23_model_FC`  AS ra_ord_fc_201023_model_fc
      GROUP BY
          1
      ORDER BY
          1 DESC
      LIMIT 500 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: ra_ord_fc_201023_model_fc_time_series_timestamp_month {
    type: string
    sql: ${TABLE}.ra_ord_fc_201023_model_fc_time_series_timestamp_month ;;
  }

  dimension: ra_ord_fc_201023_model_fc_time_series_data_v1 {
    type: number
    sql: ${TABLE}.ra_ord_fc_201023_model_fc_time_series_data_v1 ;;
  }

  dimension: ra_ord_fc_201023_model_fc_prediction_interval_upper_bound_v1 {
    type: number
    sql: ${TABLE}.ra_ord_fc_201023_model_fc_prediction_interval_upper_bound_v1 ;;
  }

  dimension: ra_ord_fc_201023_model_fc_prediction_interval_lower_bound_v1 {
    type: number
    sql: ${TABLE}.ra_ord_fc_201023_model_fc_prediction_interval_lower_bound_v1 ;;
  }

  set: detail {
    fields: [
        ra_ord_fc_201023_model_fc_time_series_timestamp_month,
	ra_ord_fc_201023_model_fc_time_series_data_v1,
	ra_ord_fc_201023_model_fc_prediction_interval_upper_bound_v1,
	ra_ord_fc_201023_model_fc_prediction_interval_lower_bound_v1
    ]
  }
}
