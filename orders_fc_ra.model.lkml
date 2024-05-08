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

explore: ra_orders_dmi_na {}

explore: actuals_fcst_multivariate {}
