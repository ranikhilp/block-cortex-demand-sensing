connection: "looker-cortex-sa"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
fiscal_month_offset: 9

explore: anl_costbkng {
  label: "Analytics Cost Booking"
  join: ra_gds_datamatl {
    relationship: many_to_one
    type: inner
    sql_on: ${anl_costbkng.matl_id} = ${ra_gds_datamatl.matl_id} ;;
  }
  join: anl_ra_gdsmatl_plant {
    relationship: many_to_one
    type: inner
    sql_on: ${anl_ra_gdsmatl_plant.matl_id} = ${anl_costbkng.matl_id} ;;
  }
}


# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }
