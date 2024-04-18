view: anl_costbkng_700 {
  sql_table_name: `sap-cortex-391114.SAP_CDC_PROCESSED_FP.anl_cost-bkng_700` ;;

  dimension: agrmnt_num {
    type: string
    sql: ${TABLE}.agrmnt_num ;;
  }
  dimension: bllng_blk_cd {
    type: string
    sql: ${TABLE}.bllng_blk_cd ;;
  }
  dimension: busi_segm {
    type: string
    sql: ${TABLE}.busi_segm ;;
  }
  dimension: busi_unit {
    type: string
    sql: ${TABLE}.busi_unit ;;
  }
  dimension: busi_unit_desc {
    type: string
    sql: ${TABLE}.busi_unit_desc ;;
  }
  dimension_group: cmtd_dlvry_dt {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.cmtd_dlvry_dt ;;
  }
  dimension_group: cnfrmd_dlvry_dt {
    type: time
    timeframes: [raw, time, date, week, month, fiscal_month_num,quarter,fiscal_quarter, year]
    sql: ${TABLE}.cnfrmd_dlvry_dt ;;
  }
  dimension: co_cd {
    type: string
    sql: ${TABLE}.co_cd ;;
  }
  dimension: cr_hold_stat_cd {
    type: string
    sql: ${TABLE}.cr_hold_stat_cd ;;
  }
  dimension_group: creatd_dttm {
    type: time
    timeframes: [raw, time, date, week, month,fiscal_month_num, quarter,fiscal_quarter, year]
    sql: ${TABLE}.creatd_dttm ;;
  }
  dimension: cum_cnfrmd_qty {
    type: number
    sql: ${TABLE}.cum_cnfrmd_qty ;;
  }
  dimension: cum_dlvrd_qty {
    type: number
    sql: ${TABLE}.cum_dlvrd_qty ;;
  }
  dimension: cum_reqrd_dlvry_qty {
    type: number
    sql: ${TABLE}.cum_reqrd_dlvry_qty ;;
  }
  dimension: cust_acct_asgnmt_grp {
    type: string
    sql: ${TABLE}.cust_acct_asgnmt_grp ;;
  }
  dimension: cust_cllctv_num {
    type: string
    sql: ${TABLE}.cust_cllctv_num ;;
  }
  dimension: cust_matl_no {
    type: string
    sql: ${TABLE}.cust_matl_no ;;
  }
  dimension: cust_ord_clsfn_type {
    type: string
    sql: ${TABLE}.cust_ord_clsfn_type ;;
  }
  dimension: cust_po_line_no {
    type: string
    sql: ${TABLE}.cust_po_line_no ;;
  }
  dimension: cust_po_num {
    type: string
    sql: ${TABLE}.cust_po_num ;;
  }
  dimension: dlvry_grp {
    type: string
    sql: ${TABLE}.dlvry_grp ;;
  }
  dimension: dlvry_reltd_bllng_stat_cd {
    type: string
    sql: ${TABLE}.dlvry_reltd_bllng_stat_cd ;;
  }
  dimension: doc_id {
    type: string
    sql: ${TABLE}.doc_id ;;
  }
  dimension: frt_chrg_in_usd_at_p_rate {
    type: number
    sql: ${TABLE}.frt_chrg_in_usd_at_p_rate ;;
  }
  dimension: fxd_dt_qty {
    type: string
    sql: ${TABLE}.fxd_dt_qty ;;
  }
  dimension: glbl_m_net_val {
    type: number
    sql: ${TABLE}.glbl_m_net_val ;;
  }
  dimension: glbl_p_net_val {
    type: number
    sql: ${TABLE}.glbl_p_net_val ;;
  }
  dimension: goods_iss_cost {
    type: number
    sql: ${TABLE}.goods_iss_cost ;;
  }
  dimension: hdr_usr_sts {
    type: string
    sql: ${TABLE}.hdr_usr_sts ;;
  }
  dimension: incoterms_cd {
    type: string
    sql: ${TABLE}.incoterms_cd ;;
  }
  dimension: itm_base_uom_open_qty {
    type: number
    sql: ${TABLE}.itm_base_uom_open_qty ;;
  }
  dimension: itm_bkd_qty {
    type: number
    sql: ${TABLE}.itm_bkd_qty ;;
  }
  dimension: itm_cum_bkd_qty {
    type: number
    sql: ${TABLE}.itm_cum_bkd_qty ;;
  }
  dimension: itm_nbr {
    type: number
    sql: ${TABLE}.itm_nbr ;;
  }
  dimension: itm_open_qty {
    type: number
    sql: ${TABLE}.itm_open_qty ;;
  }
  dimension: itm_rjctn_stat {
    type: string
    sql: ${TABLE}.itm_rjctn_stat ;;
  }
  dimension_group: last_updated_dl_ts {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.last_updated_dl_ts ;;
  }
  dimension: ln_itm_ovrll_sts {
    type: string
    sql: ${TABLE}.ln_itm_ovrll_sts ;;
  }
  dimension_group: lst_dlvry_ln_creatd_dt {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.lst_dlvry_ln_creatd_dt ;;
  }
  dimension_group: matl_avail_cmt_dt {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.matl_avail_cmt_dt ;;
  }
  dimension_group: matl_avail_req_dt {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.matl_avail_req_dt ;;
  }
  dimension: matl_base_uom {
    type: string
    sql: ${TABLE}.matl_base_uom ;;
  }
  dimension: matl_id {
    type: string
    sql: ${TABLE}.matl_id ;;
  }
  dimension: open_qty_glbl_m_net_val {
    type: number
    sql: ${TABLE}.open_qty_glbl_m_net_val ;;
  }

  #Added a dimension for open orders p_net value
  dimension: open_qty_glbl_p_net_val {
    type: number
    sql: (${anl_busi_lgstcscurr_p_conv_adj_700.exch_rate} * ${glbl_p_net_val})/${itm_cum_bkd_qty} ;;
  }


  dimension: open_qty_net_val_in_trans_crncy {
    type: number
    sql: ${TABLE}.open_qty_net_val_in_trans_crncy ;;
  }
  dimension: ord_complt_dlvry_ind {
    type: string
    sql: ${TABLE}.ord_complt_dlvry_ind ;;
  }
  dimension: ord_dlvry_blkd_cd {
    type: string
    sql: ${TABLE}.ord_dlvry_blkd_cd ;;
  }
  dimension: ord_dlvry_stat_cd {
    type: string
    sql: ${TABLE}.ord_dlvry_stat_cd ;;
  }
  dimension: ord_itm_cmtd_dt_prfrmnc_ind {
    type: string
    sql: ${TABLE}.ord_itm_cmtd_dt_prfrmnc_ind ;;
  }
  dimension_group: ord_itm_creatd_dt {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.ord_itm_creatd_dt ;;
  }
  dimension: ord_itm_dlvry_blkd_cd {
    type: string
    sql: ${TABLE}.ord_itm_dlvry_blkd_cd ;;
  }
  dimension: ord_itm_dlvry_prfrmnc_ind {
    type: string
    sql: ${TABLE}.ord_itm_dlvry_prfrmnc_ind ;;
  }
  dimension: ord_itm_dlvry_prty_cd {
    type: string
    sql: ${TABLE}.ord_itm_dlvry_prty_cd ;;
  }
  dimension: ord_itm_dlvry_stat_cd {
    type: string
    sql: ${TABLE}.ord_itm_dlvry_stat_cd ;;
  }
  dimension_group: ord_itm_lst_goods_iss_dt {
    type: time
    timeframes: [raw, time, date, week, month,fiscal_month_num, quarter,fiscal_quarter, year]
    sql: ${TABLE}.ord_itm_lst_goods_iss_dt ;;
  }
  dimension_group: ord_itm_matl_avail_dt {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.ord_itm_matl_avail_dt ;;
  }
  dimension: ord_itm_ovrll_dlvry_stat_cd {
    type: string
    sql: ${TABLE}.ord_itm_ovrll_dlvry_stat_cd ;;
  }
  dimension: ord_itm_physcl_dlvry_ind {
    type: string
    sql: ${TABLE}.ord_itm_physcl_dlvry_ind ;;
  }
  dimension_group: ord_itm_plnd_goods_iss_dt {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.ord_itm_plnd_goods_iss_dt ;;
  }
  dimension: ord_itm_rjctn_rsn_cd {
    type: string
    sql: ${TABLE}.ord_itm_rjctn_rsn_cd ;;
  }
  dimension: ord_itm_sftwr_shpmnt_ind {
    type: string
    sql: ${TABLE}.ord_itm_sftwr_shpmnt_ind ;;
  }
  dimension: ord_ovrll_dlvry_stat_cd {
    type: string
    sql: ${TABLE}.ord_ovrll_dlvry_stat_cd ;;
  }
  dimension: ord_reltd_bllng_stat_cd {
    type: string
    sql: ${TABLE}.ord_reltd_bllng_stat_cd ;;
  }
  dimension: ovrll_blkd_sts {
    type: string
    sql: ${TABLE}.ovrll_blkd_sts ;;
  }
  dimension: partl_dlvry_grp_ind {
    type: string
    sql: ${TABLE}.partl_dlvry_grp_ind ;;
  }

  # dimension: qtr_join {
  #   hidden: yes
  #   sql:SUBSTRING(CAST(${creatd_dttm_date} AS string), 1, 7) ;;
  # }

  dimension: plt_cd {
    type: string
    sql: ${TABLE}.plt_cd ;;
  }
  dimension: prft_ctr {
    type: string
    sql: ${TABLE}.prft_ctr ;;
  }
  dimension: prod_cat {
    type: string
    sql: ${TABLE}.prod_cat ;;
  }
  dimension: prod_cat_desc {
    type: string
    sql: ${TABLE}.prod_cat_desc ;;
  }
  dimension: prod_grp {
    type: string
    sql: ${TABLE}.prod_grp ;;
  }
  dimension: prod_grp_desc {
    type: string
    sql: ${TABLE}.prod_grp_desc ;;
  }
  dimension: prod_hrchy_cd {
    type: string
    sql: ${TABLE}.prod_hrchy_cd ;;
  }
  dimension: prod_hrchy_desc {
    type: string
    sql: ${TABLE}.prod_hrchy_desc ;;
  }
  dimension: prod_line {
    type: string
    sql: ${TABLE}.prod_line ;;
  }
  dimension: prod_line_desc {
    type: string
    sql: ${TABLE}.prod_line_desc ;;
  }
  dimension: reqrmt_type_cd {
    type: string
    sql: ${TABLE}.reqrmt_type_cd ;;
  }
  dimension_group: reqstd_dlvry_dt {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.reqstd_dlvry_dt ;;
  }
  dimension: sap_svc_contr_no {
    type: string
    sql: ${TABLE}.sap_svc_contr_no ;;
  }
  dimension: sched_line_cat {
    type: string
    sql: ${TABLE}.sched_line_cat ;;
  }
  dimension: ship_to_bp_addr_id {
    type: number
    sql: ${TABLE}.ship_to_bp_addr_id ;;
  }
  dimension: ship_to_bp_addr_nm {
    type: number
    sql: ${TABLE}.ship_to_bp_addr_nm ;;
  }
  dimension: ship_to_bp_id {
    type: number
    sql: ${TABLE}.ship_to_bp_id ;;
  }
  dimension: ship_to_bp_nm {
    type: number
    sql: ${TABLE}.ship_to_bp_nm ;;
  }
  dimension: shpng_cond_cd {
    type: string
    sql: ${TABLE}.shpng_cond_cd ;;
  }
  dimension: shpng_pt_cd {
    type: string
    sql: ${TABLE}.shpng_pt_cd ;;
  }
  dimension: shpng_rte_cd {
    type: string
    sql: ${TABLE}.shpng_rte_cd ;;
  }
  dimension: sls_doc_bllng_blk_cd {
    type: string
    sql: ${TABLE}.sls_doc_bllng_blk_cd ;;
  }
  dimension: sls_doc_cat_cd {
    type: string
    sql: ${TABLE}.sls_doc_cat_cd ;;
  }
  dimension: sls_doc_itm_cat {
    type: string
    sql: ${TABLE}.sls_doc_itm_cat ;;
  }
  dimension: sls_doc_type {
    type: string
    sql: ${TABLE}.sls_doc_type ;;
  }
  dimension: sls_ofce_cd {
    type: string
    sql: ${TABLE}.sls_ofce_cd ;;
  }
  dimension: sls_ord_hdr_stat_desc {
    type: string
    sql: ${TABLE}.sls_ord_hdr_stat_desc ;;
  }
  dimension_group: sls_ord_ln_itm_reqstd_dlvry_dte {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.sls_ord_ln_itm_reqstd_dlvry_dte ;;
  }
  dimension: sls_org {
    type: string
    sql: ${TABLE}.sls_org ;;
  }
  dimension: sls_uom {
    type: string
    sql: ${TABLE}.sls_uom ;;
  }

  dimension: primary_key {
    primary_key: yes
    hidden: yes
    type: string
    sql: CONCAT(${doc_id}, '-' ,${itm_nbr}) ;;
  }

  dimension: sold_to_bp_addr_id {
    type: number
    sql: ${TABLE}.sold_to_bp_addr_id ;;
  }
  dimension: sold_to_bp_addr_nm {
    type: number
    sql: ${TABLE}.sold_to_bp_addr_nm ;;
  }
  dimension: sold_to_bp_id {
    type: number
    sql: ${TABLE}.sold_to_bp_id ;;
  }
  dimension: sold_to_bp_nm {
    type: number
    sql: ${TABLE}.sold_to_bp_nm ;;
  }
  dimension: spcl_prcss_ind {
    type: string
    sql: ${TABLE}.spcl_prcss_ind ;;
  }
  dimension: stk_stat_cd {
    type: string
    sql: ${TABLE}.stk_stat_cd ;;
  }
  dimension: strg_loc_cd {
    type: string
    sql: ${TABLE}.strg_loc_cd ;;
  }
  dimension: tel_num {
    type: string
    sql: ${TABLE}.tel_num ;;
  }
  dimension: trans_crncy_cd {
    type: string
    sql: ${TABLE}.trans_crncy_cd ;;
  }
  dimension: trans_net_val {
    type: number
    sql: ${TABLE}.trans_net_val ;;
  }
  dimension: uom_mltplr_dnmntr {
    type: number
    sql: ${TABLE}.uom_mltplr_dnmntr ;;
  }
  dimension: uom_mltplr_nmrtr {
    type: number
    sql: ${TABLE}.uom_mltplr_nmrtr ;;
  }

  dimension: sls_region {
    case: {
      when: {
        sql: substring(sls_org,1,1) in ('1','2') ;;
        label: "NA"
      }
      when: {
        sql: substring(sls_org,1,1) in ('3') ;;
        label: "LA"
      }
      when: {
        sql: substring(sls_org,1,1) in ('4') ;;
        label: "EMEA"
      }
      when: {
        sql: substring(sls_org,1,1) in ('5') ;;
        label: "APAC"
      }
      when: {
        sql: substring(sls_org,1,2) in ('71','72') ;;
        label: "SENS_NA"
      }
      when: {
        sql: substring(sls_org,1,2) in ('73') ;;
        label: "SENS_LA"
      }
      when: {
        sql: substring(sls_org,1,2) in ('74') ;;
        label: "SENS_EMEA"
      }
      when: {
        sql: substring(sls_org,1,2) in ('75') ;;
        label: "SENS_APAC"
      }
      else: "other"
    }
    alpha_sort:  yes
  }



  # dimension: CurrentQTR {
  #   description: "current quarter reference"
  #   type:date_fiscal_quarter
  #   sql: (SELECT CURRENT_TIMESTAMP) ;;
  # }

  # Define Current Month
  dimension: currentMonth {
    description: "current quarter reference"
    type:date_fiscal_month_num
    sql: (SELECT CURRENT_TIMESTAMP) ;;
  }

# calculate gross orders m_rate and p_rate
  dimension: is_m_val_country {
    description: "Is Country Turkey or Argentina?"
    type: yesno
    sql: ${trans_crncy_cd} IN ('TRY', 'ARS', 'VES', 'VEB', 'VEF') ;; #validate V series
  }

  dimension: gross_orders {
    type: number
    sql: CASE WHEN ${is_m_val_country} THEN ${glbl_m_net_val} ELSE ${glbl_p_net_val} END ;;
  }

  # calculate gross orders sum
  measure: gross_orders_sum{
    type: sum
    sql: ${gross_orders} ;;
  }

# calculate gross backlog m_rate and p_rate

  dimension: gross_backlog {
    type: number
    sql: CASE WHEN ${is_m_val_country} THEN ${open_qty_glbl_m_net_val} ELSE ${open_qty_glbl_p_net_val} END ;;
  }

  # calculate gross orders sum
  measure: gross_backlog_sum{
    type: sum
    sql: ${gross_backlog} ;;
  }
  # dimension: Conversion1 {
  #   description: "Orders Conversion logic"
  #   type: number
  #   sql: (SELECT
  #         CASE
  #             WHEN ${CurrentQTR} >= ${creatd_dttm_fiscal_quarter} AND ${ord_itm_lst_goods_iss_dt_fiscal_quarter} = ${creatd_dttm_fiscal_quarter}
  #             THEN ${gross_orders} - ${open_qty_glbl_m_net_val}
  #             ELSE 0 END) ;;
  # }

  # dimension: Conversion2 {
  #   description: "Orders Conversion logic"
  #   type: number
  #   sql: (SELECT
  #         CASE
  #             WHEN ${CurrentQTR} = ${creatd_dttm_fiscal_quarter} AND ${itm_open_qty} > 0 AND ${cnfrmd_dlvry_dt_fiscal_quarter} <= ${creatd_dttm_fiscal_quarter}
  #             THEN ${open_qty_glbl_m_net_val}
  #             ELSE 0 END) ;;
  # }

  # Needs revalidation by Justice on Conversion rate
  dimension: Conversion1 {
    description: "Orders Conversion logic1"
    type: number
    sql: (SELECT
          CASE
              WHEN ${currentMonth} >= ${creatd_dttm_fiscal_month_num} AND ${ord_itm_lst_goods_iss_dt_fiscal_month_num} = ${creatd_dttm_fiscal_month_num}
              THEN ${gross_orders} - ${open_qty_glbl_m_net_val}
              ELSE 0 END) ;;
  }

  dimension: Conversion2 {
    description: "Orders Conversion logic2"
    type: number
    sql: (SELECT
          CASE
              WHEN ${currentMonth} = ${creatd_dttm_fiscal_month_num} AND ${itm_open_qty} > 0
              THEN ${open_qty_glbl_m_net_val}
              ELSE 0 END) ;;
  }
  # AND ${cnfrmd_dlvry_dt_fiscal_month_num} <= ${creatd_dttm_fiscal_month_num} --from line 584

  dimension: Conversion {
    description: "Orders Conversion logic"
    type: number
    sql: ${Conversion1}+${Conversion2} ;;
  }

  #My changes for current quarter assumptions
# calculate conversion sum
  measure: Conversion_sum{
    type: sum
    sql: ${Conversion} ;;
  }



  # measure: conversion_rate{
  #   type: percent_of_total
  #   sql: ${Conversion_sum}/${gross_orders_sum}  ;;
  # }
  measure: conversion_rate{
    type: number
    value_format_name: percent_2
    sql: ${Conversion_sum}/nullif(${gross_orders_sum}, 0);;
  }

# dimension: net_backlog_test {
#   type: number
#   value_format_name: usd
#   sql: ${open_qty_glbl_m_net_val} - ${sfsac_manual.sfsac_manual} ;;
# }


# measure: net_backlog_test_sum {
#   type: sum
#   sql: ${net_backlog_test} ;;
# }


# #Net Backlog
#   dimension: net_backlog{
#     type: number
#     value_format_name: usd
#     sql: ${open_qty_glbl_m_net_val} + ${sfsac_manual.sfsac_manual} ;;
#   }

# #Net Backlog Sum
#   measure: net_backlog_sum{
#     type: sum
#     value_format_name: usd
#     sql: ${net_backlog} ;;
#   }

  #Gross Sales
  dimension: gross_sales {
    type: number
    sql: ${open_qty_glbl_m_net_val} + ${Conversion} ;;
  }
  #Gross Sales sum
  measure: gross_sales_sum {
    type: sum
    sql: ${gross_sales} ;;
  }
  # #Net Sales
  # measure: Net_sales {
  #   type: sum
  #   sql: ${gross_sales} + ${sfsac_manual.sfsac_manual} ;;
  # }

#   ###################################1 Quarter out###################################################################
#   # dimension: ReferencePeriod {
#   #   type: date_fiscal_quarter
#   #   sql: (SELECT
#   #   ${creatd_dttm_raw}
#   #   );;
#   # }


#   dimension: OC_1Qtr {
#     description: "1 quarter out"
#     type: number
#     sql: (SELECT
#           CASE
#               WHEN ${CurrentQTR} > ${creatd_dttm_fiscal_quarter} AND ${ord_itm_lst_goods_iss_dt_fiscal_quarter} =
#     FORMAT_TIMESTAMP('%Y-%m', TIMESTAMP_TRUNC(
#         TIMESTAMP(
#             DATE_ADD(
#                 ${creatd_dttm_date},
#                 INTERVAL 6 MONTH
#             )
#         ),
#         QUARTER
#     ))
#               THEN ${gross_orders} - ${open_qty_glbl_m_net_val}
#               ELSE 0 END) ;;
#   }

# # calculate conversion sum
#   measure: OC_1Qtr_sum{
#     description: "1 quarter out sum"
#     type: sum
#     sql: ${OC_1Qtr} ;;
#   }

#   measure: OC_1Qtr_rate{
#     description: "1 quarter out rate"
#     type: number
#     value_format_name: percent_2
#     sql: ${OC_1Qtr_sum}/nullif(${gross_orders_actuals_sum}, 0);;
#   }

#   ############### 2 Quarters out####################
#   dimension: OC_2Qtr {
#     description: "2 quarter out"
#     type: number
#     sql: (SELECT
#           CASE
#               WHEN ${CurrentQTR} > ${creatd_dttm_fiscal_quarter} AND ${ord_itm_lst_goods_iss_dt_fiscal_quarter} =
#     FORMAT_TIMESTAMP('%Y-%m', TIMESTAMP_TRUNC(
#         TIMESTAMP(
#             DATE_ADD(
#                 ${creatd_dttm_date},
#                 INTERVAL 9 MONTH
#             )
#         ),
#         QUARTER
#     ))
#               THEN ${gross_orders} - ${open_qty_glbl_m_net_val}
#               ELSE 0 END) ;;
#   }

# # calculate conversion sum
#   measure: OC_2Qtr_sum{
#     description: "2 quarters out sum"
#     type: sum
#     sql: ${OC_2Qtr} ;;
#   }

#   measure: OC_2Qtr_rate{
#     description: "2 quarters out rate"
#     type: number
#     value_format_name: percent_2
#     sql: ${OC_2Qtr_sum}/nullif(${gross_orders_actuals_sum}, 0);;
#   }

#   ############### 3 Quarters out####################
#   dimension: OC_3Qtr {
#     description: "3 quarters out"
#     type: number
#     sql: (SELECT
#           CASE
#               WHEN ${CurrentQTR} > ${creatd_dttm_fiscal_quarter} AND ${ord_itm_lst_goods_iss_dt_fiscal_quarter} =
#     FORMAT_TIMESTAMP('%Y-%m', TIMESTAMP_TRUNC(
#         TIMESTAMP(
#             DATE_ADD(
#                 ${creatd_dttm_date},
#                 INTERVAL 12 MONTH
#             )
#         ),
#         QUARTER
#     ))
#               THEN ${gross_orders} - ${open_qty_glbl_m_net_val}
#               ELSE 0 END) ;;
#   }

# # calculate conversion sum
#   measure: OC_3Qtr_sum{
#     description: "3 quarters out sum"
#     type: sum
#     sql: ${OC_3Qtr} ;;
#   }

#   measure: OC_3Qtr_rate{
#     description: "3 quarters out rate"
#     type: number
#     value_format_name: percent_2
#     sql: ${OC_3Qtr_sum}/nullif(${gross_orders_actuals_sum}, 0);;
#   }
  measure: count {
    type: count
  }
}
