connection: "looker-cortex-sa"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
fiscal_month_offset: -3

explore: anl_costbkng {
  label: "Shipment Forecast "
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
  join: anl_busi_lgstcsoutbound_deliveries {
    relationship: many_to_many
    type: inner
    sql_on: ${anl_busi_lgstcsoutbound_deliveries.ref_doc_id} = ${anl_costbkng.doc_id}
           and ${anl_costbkng.itm_nbr} = ${anl_busi_lgstcsoutbound_deliveries.ref_doc_itm_no};;
  }
  join: anl_ra_gdsdate_dim {
    relationship: many_to_many
    type: inner
    sql_on: ${anl_ra_gdsdate_dim.date_dt_date} = ${anl_costbkng.sls_ord_ln_itm_reqstd_dlvry_dte_date};;
  }
}
