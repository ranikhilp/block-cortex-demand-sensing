connection: "looker-cortex-sa"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
fiscal_month_offset: -3

explore: anl_costbkng_700 {
  label: "Shipment Forecast Prod "

  join: ra_gds_datamatl_700 {
    relationship: many_to_one
    type: inner
    sql_on: ${anl_costbkng_700.matl_id} = ${ra_gds_datamatl_700.matl_id} ;;
  }

  join: anl_busi_lgstcsoutbound_deliveries_700 {
    relationship: many_to_many
    type: inner
    sql_on: ${anl_busi_lgstcsoutbound_deliveries_700.ref_doc_id} = ${anl_costbkng_700.doc_id}
      and ${anl_costbkng_700.itm_nbr} = ${anl_busi_lgstcsoutbound_deliveries_700.ref_doc_itm_no};;
  }


  # join: gross_orders_manual {
  #   relationship: one_to_many
  #   type: inner
  #   sql_on: ${gross_orders_manual.bu} = ${ra_gds_datamatl_700.FBU}
  #         and ${gross_orders_manual.region} = ${anl_costbkng_700.sls_region}
  #         AND ${anl_costbkng_700.qtr_join} = ${gross_orders_manual.qtr_join};;

  # }


  # join: sfsac_manual {
  #   relationship: one_to_many
  #   type: full_outer
  #   sql_on: ${ra_gds_datamatl_700.FBU} = ${sfsac_manual.bu}
  #     AND ${anl_costbkng_700.sls_region} = ${sfsac_manual.region}
  #     AND  ${sfsac_manual.qtr_join} = ${anl_costbkng_700.qtr_join} ;;
  # }

  # join: sfsac_manual_month {
  #   relationship: one_to_many
  #   type: inner
  #   sql_on: ${ra_gds_datamatl_700.FBU} = ${sfsac_manual.bu}
  #     AND ${anl_costbkng_700.sls_region} = ${sfsac_manual.region}
  #     AND  ${sfsac_manual_month.date_month} = ${anl_costbkng_700.creatd_dttm_month} ;;
  # }

  # join: ra_dmi {
  #   relationship: one_to_many
  #   type: inner
  #   sql_on: ${ra_gds_datamatl_700.FBU} = ${ra_dmi.fbu}
  #     AND ${anl_costbkng_700.sls_region} = ${ra_dmi.region}
  #     AND  ${ra_dmi.week_start_week} = ${anl_costbkng_700.creatd_dttm_week} ;;
  # }

  #INTERCOMPANY FILTER
  always_filter: {
    filters: [anl_costbkng_700.sls_doc_type: "-ZEOR,- ZPLS, -ZIPO",
      anl_costbkng_700.sched_line_cat: "CP , CN , ZN",anl_costbkng_700.plt_cd: "-8% , -9%",
      anl_costbkng_700.itm_rjctn_stat:"null , EMPTY , A , B"]

  }
}
