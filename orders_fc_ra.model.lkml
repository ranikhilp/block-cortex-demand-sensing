connection: "looker-cortex-sa"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
explore: amount_train  {
      label: "training orders data"

  # join: value_forecast {
  #   relationship: many_to_one
  #   sql_on: ${orders.id} = ${order_items.order_id} ;;
  # }



  # join: users {
  #   relationship: many_to_one
  #   sql_on: ${users.id} = ${orders.user_id} ;;
  # }
}

explore: union_forecast_train {}

explore: fc_ul {}

explore: eval {}

explore: dmi_corr_eval {}

explore: ra_ord_fc_201023_model_fc {}
explore: ra_order_na_actuals_prod_nonothers{}

explore: ra_orders_dmi_na {}

explore: actuals_fcst_multivariate {}

explore: ra_plot_univariate_all_bu_rgn {}

explore: dmi_xreg_all_bu_region_explainfcst {
  label: "Orders+DMI"
  join: ra_orders_all_bu_regions_plus_dmi_3monthslagged {
    relationship: one_to_one
    sql_on: ${dmi_xreg_all_bu_region_explainfcst.bu_rgn}=  ${ra_orders_all_bu_regions_plus_dmi_3monthslagged.bu_rgn}
        and ${dmi_xreg_all_bu_region_explainfcst.time_series_timestamp_month} = ${ra_orders_all_bu_regions_plus_dmi_3monthslagged.month_month};;
  }
}

explore: dmi_xreg_all_bu_region_explainfcsttst {
  label: "Orders+DMI+new"
  join: ra_orders_all_bu_regions_plus_dmi_3monthslagged {
    relationship: one_to_one
    sql_on: ${dmi_xreg_all_bu_region_explainfcsttst.bu_rgn}=  ${ra_orders_all_bu_regions_plus_dmi_3monthslagged.bu_rgn}
      and ${dmi_xreg_all_bu_region_explainfcsttst.time_series_timestamp_month} = ${ra_orders_all_bu_regions_plus_dmi_3monthslagged.month_month};;
  }
}

explore: actualsvs_forecast {}
explore: april_2024_actuals {}
explore: pmi_4m_xreg_all_bu_region_explainfcst {}
explore: act_vfcst_pmi_apac {}
explore: la_best_model_explainfcst {}
explore: actvsfc_la {}
explore: actvsfctemea {}
explore: emea_best_model_explainfcst {}
explore: actvsfcapac {}
explore: apac_best_model_explainfcst {}
