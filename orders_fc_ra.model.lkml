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
