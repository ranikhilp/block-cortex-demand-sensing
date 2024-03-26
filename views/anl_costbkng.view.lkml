view: anl_costbkng {
  sql_table_name: `sap-cortex-391114.SAP_CDC_PROCESSED_FP.anl_cost-bkng` ;;
  label: "Booking"

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
    # primary_key: yes
    sql: ${TABLE}.busi_unit ;;
  }
  dimension: busi_unit_desc {
    type: string
    sql: ${TABLE}.busi_unit_desc ;;
  }
  dimension_group: cmtd_dlvry_dt {
    type: time
    timeframes: [raw, time, date, week, month, quarter,  year]
    sql: ${TABLE}.cmtd_dlvry_dt ;;
  }
  dimension_group: cnfrmd_dlvry_dt {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year,fiscal_year, fiscal_quarter, fiscal_month_num, month_name]
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
    timeframes: [raw, time, date, week, month, quarter,fiscal_quarter,month_name, year]
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
    primary_key: yes
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
    timeframes: [raw, time, date, week, month, quarter,fiscal_quarter,month_name, year]
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
    timeframes: [raw, time, date, week, month, quarter,fiscal_quarter,month_name, year]
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
    timeframes: [raw, time, date, week, month, quarter,fiscal_quarter, month_name, year]
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
    timeframes: [raw, time, date, week, month, quarter,fiscal_quarter, month_name, year]
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
    timeframes: [raw, time, date, week, month, quarter,fiscal_quarter, month_name, year]
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
    timeframes: [raw, time, date, week, month, quarter,fiscal_quarter,month_name, year]
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

  dimension: CurrentQTR {
    description: "current quarter reference"
    type:date_fiscal_quarter
    sql: (SELECT CURRENT_TIMESTAMP) ;;
  }


#calculate gross orders
  dimension: is_m_val_country {
    description: "Is Country Turkey or Argentina?"
    type: yesno
    sql: ${trans_crncy_cd} IN ('TRY', 'ARS') ;;
  }

  #original
  # dimension: gross_orders {
  #   type: number
  #   sql: CASE WHEN ${is_m_val_country} THEN ${glbl_m_net_val} ELSE ${glbl_p_net_val} END ;;
  # }

  #for testing
  dimension: gross_orders {
    type: number
    sql: CASE WHEN ${is_m_val_country} THEN ${glbl_m_net_val} ELSE ${glbl_m_net_val} END ;;
  }

  # calculate gross orders sum
  measure: gross_orders_sum{
    type: sum
    sql: ${gross_orders} ;;
  }

  dimension: ord_conv_diff {
    type: number
    sql: ${gross_orders} - ${open_qty_glbl_m_net_val} ;;
  }


  measure: ord_conv_diff_sum{
    type: sum
    sql: ${ord_conv_diff} ;;
  }



  dimension: Conversion1 {
    description: "Orders Conversion logic"
    type: number
    sql: (SELECT
    CASE
        WHEN ${CurrentQTR} >= ${creatd_dttm_fiscal_quarter} AND ${ord_itm_lst_goods_iss_dt_fiscal_quarter} = ${creatd_dttm_fiscal_quarter}
        THEN ${gross_orders} - ${open_qty_glbl_m_net_val}
        ELSE 0 END) ;;
  }

  dimension: Conversion2 {
    description: "Orders Conversion logic"
    type: number
    sql: (SELECT
          CASE
              WHEN ${CurrentQTR} = ${creatd_dttm_fiscal_quarter} AND ${itm_open_qty} > 0 AND ${cnfrmd_dlvry_dt_fiscal_quarter} <= ${creatd_dttm_fiscal_quarter}
              THEN ${open_qty_glbl_m_net_val}
              ELSE 0 END) ;;
  }

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

  measure: count {
    type: count
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

dimension: net_backlog_test {
  type: number
  sql: ${open_qty_glbl_m_net_val} - ${sfsac_manual.sfsac_manual} ;;
}

#measure: test_measure {
#  type: sum
 # sql: ${test_dim} ;;
#}


#Gross Backlog
  measure: gross_backlog{
    type: sum
    sql: ${open_qty_glbl_m_net_val} ;;
  }



  ############################################################
#############   Implementing Marks logic as is #############




#############   Implementing Marks logic as is ##############
#############################################################


}
