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
#  join: anl_ra_gdsmatl_plant {
#    relationship: many_to_one
#    type: inner
#    sql_on: ${anl_ra_gdsmatl_plant.matl_id} = ${anl_costbkng.matl_id} ;;
#  }
  join: anl_busi_lgstcsoutbound_deliveries {
    relationship: many_to_many
    type: inner
    sql_on: ${anl_busi_lgstcsoutbound_deliveries.ref_doc_id} = ${anl_costbkng.doc_id}
          and ${anl_costbkng.itm_nbr} = ${anl_busi_lgstcsoutbound_deliveries.ref_doc_itm_no};;
  }
  # join: anl_ra_gdsdate_dim {
  #   relationship: many_to_many
  #   type: inner
  #   sql_on: ${anl_ra_gdsdate_dim.date_dt_date} = ${anl_costbkng.sls_ord_ln_itm_reqstd_dlvry_dte_date};;
  # }


  join: gross_orders_manual {
    relationship: one_to_many
    type: inner
    sql_on: ${gross_orders_manual.bu} = ${ra_gds_datamatl.FBU}
    and ${gross_orders_manual.region} = ${anl_costbkng.sls_region}
    AND ${anl_costbkng.qtr_join} = ${gross_orders_manual.qtr_join};;

  }


  join: sfsac_manual {
    relationship: one_to_many
    type: full_outer
    sql_on: ${ra_gds_datamatl.FBU} = ${sfsac_manual.bu}
      AND ${anl_costbkng.sls_region} = ${sfsac_manual.region}
      AND  ${sfsac_manual.qtr_join} = ${anl_costbkng.qtr_join} ;;

    # sql:inner join ra_gds_datamatl on ${ra_gds_datamatl.FBU} = ${sfsac_manual.bu}
    # AND inner join anl_costbkng on ${anl_costbkng.sls_region} = ${sfsac_manual.region}
    # AND right outer join anl_costbkng on ${anl_costbkng.qtr_join} = ${sfsac_manual.qtr_join};;
  }

  join: sfsac_manual_month {
    relationship: one_to_many
    type: inner
    sql_on: ${ra_gds_datamatl.FBU} = ${sfsac_manual.bu}
      AND ${anl_costbkng.sls_region} = ${sfsac_manual.region}
      AND  ${sfsac_manual_month.date_month} = ${anl_costbkng.creatd_dttm_month} ;;
   }

  join: ra_dmi {
    relationship: one_to_many
    type: inner
    sql_on: ${ra_gds_datamatl.FBU} = ${ra_dmi.fbu}
      AND ${anl_costbkng.sls_region} = ${ra_dmi.region}
      AND  ${ra_dmi.week_start_week} = ${anl_costbkng.creatd_dttm_week} ;;
  }

  #INTERCOMPANY FILTER
  always_filter: {
    filters: [anl_costbkng.sls_doc_type: "-ZEOR,- ZPLS, -ZIPO",
      anl_costbkng.sched_line_cat: "CP , CN , ZN",anl_costbkng.plt_cd: "-8% , -9%",
      anl_costbkng.itm_rjctn_stat:"null , EMPTY , A , B"]

  }

  }

# and  ${anl_costbkng.creatd_dttm_month} = ${gross_orders_manual.qtr_dttm_month};;
# and  ${sfsac_manual.qtr_dttm_month} = ${anl_costbkng.creatd_dttm_month};;
