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
#  join: anl_ra_gdsdate_dim {
#    relationship: many_to_many
#    type: inner
#    sql_on: ${anl_ra_gdsdate_dim.date_dt_date} = ${anl_costbkng.sls_ord_ln_itm_reqstd_dlvry_dte_date};;
#  }
  join: gross_orders_manual {
    relationship: one_to_many
    type: inner
    sql_on: ${ra_gds_datamatl.FBU} = ${gross_orders_manual.bu}
    and ${anl_costbkng.sls_region} = ${gross_orders_manual.region}
    AND CAST((FORMAT_TIMESTAMP('%Y-%m', TIMESTAMP_TRUNC(TIMESTAMP(DATETIME_ADD(DATETIME(TIMESTAMP_TRUNC(anl_costbkng.creatd_dttm , MONTH)), INTERVAL 3 MONTH)), QUARTER))) AS STRING) = REGEXP_REPLACE(REGEXP_REPLACE(${gross_orders_manual.qtr}, 'Q', '0'), 'FY', '');;
  }

  join: sfsac_manual {
    relationship: one_to_many
    type: inner
    sql_on: ${ra_gds_datamatl.FBU} = ${sfsac_manual.bu}
      AND ${anl_costbkng.sls_region} = ${sfsac_manual.region}
      AND CAST((FORMAT_TIMESTAMP('%Y-%m', TIMESTAMP_TRUNC(TIMESTAMP(DATETIME_ADD(DATETIME(TIMESTAMP_TRUNC(anl_costbkng.creatd_dttm , MONTH)), INTERVAL 3 MONTH)), QUARTER))) AS STRING) = REGEXP_REPLACE(REGEXP_REPLACE(${sfsac_manual.qtr}, 'Q', '0'), 'FY', '');;
  }

  #INTERCOMPANY FILTER
  always_filter: {
    filters: [anl_costbkng.sls_doc_type: "-ZEOR,- ZPLS, -ZIPO",
      anl_costbkng.sched_line_cat: "CP , CN , ZN",anl_costbkng.plt_cd: "-8% , -9%",
      anl_costbkng.itm_rjctn_stat:"null , EMPTY , A , B"]
  }
  }
