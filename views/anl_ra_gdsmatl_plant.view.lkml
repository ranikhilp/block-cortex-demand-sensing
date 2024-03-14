view: anl_ra_gdsmatl_plant {
  sql_table_name: `sap-cortex-391114.SAP_CDC_PROCESSED_FP.anl_ra_gds-matl_plant` ;;
  label: "Material Plants"
  dimension: assy_part_scrp_pct {
    type: number
    sql: ${TABLE}.assy_part_scrp_pct ;;
  }
  dimension: auto_po_ind {
    type: string
    sql: ${TABLE}.auto_po_ind ;;
  }
  dimension: avlbty_chk_cd {
    type: string
    sql: ${TABLE}.avlbty_chk_cd ;;
  }
  dimension: bkflsh_ind {
    type: string
    sql: ${TABLE}.bkflsh_ind ;;
  }
  dimension: bkwd_cnsmptn_period_days {
    type: number
    sql: ${TABLE}.bkwd_cnsmptn_period_days ;;
  }
  dimension: bulk_matl_ind {
    type: string
    sql: ${TABLE}.bulk_matl_ind ;;
  }
  dimension: cmpnt_matl_plt_cd {
    type: number
    sql: ${TABLE}.cmpnt_matl_plt_cd ;;
  }
  dimension: cmpnt_part_scrp_pct {
    type: number
    sql: ${TABLE}.cmpnt_part_scrp_pct ;;
  }
  dimension: cmsnptn_val_retntn_cd {
    type: string
    sql: ${TABLE}.cmsnptn_val_retntn_cd ;;
  }
  dimension: cnsmptn_mode_cd {
    type: string
    sql: ${TABLE}.cnsmptn_mode_cd ;;
  }
  dimension: cnty_cd {
    type: string
    sql: ${TABLE}.cnty_cd ;;
  }
  dimension: cycl_cnt_cd {
    type: string
    sql: ${TABLE}.cycl_cnt_cd ;;
  }
  dimension: depndnt_reqrmt_ind {
    type: string
    sql: ${TABLE}.depndnt_reqrmt_ind ;;
  }
  dimension: dscontd_ind {
    type: string
    sql: ${TABLE}.dscontd_ind ;;
  }
  dimension_group: eff_out_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.eff_out_dt ;;
  }
  dimension: fwd_cnsmptn_period_days {
    type: number
    sql: ${TABLE}.fwd_cnsmptn_period_days ;;
  }
  dimension: fxd_lot_sz_qty {
    type: number
    sql: ${TABLE}.fxd_lot_sz_qty ;;
  }
  dimension: goods_rcpt_prcsng_days {
    type: number
    sql: ${TABLE}.goods_rcpt_prcsng_days ;;
  }
  dimension: indep_fcst_allwd_ind {
    type: string
    sql: ${TABLE}.indep_fcst_allwd_ind ;;
  }
  dimension: inhse_prodn_tm_days {
    type: number
    sql: ${TABLE}.inhse_prodn_tm_days ;;
  }
  dimension: interopn_days {
    type: number
    sql: ${TABLE}.interopn_days ;;
  }
  dimension_group: last_updated_dl_ts {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.last_updated_dl_ts ;;
  }
  dimension: loadng_grp_cd {
    type: string
    sql: ${TABLE}.loadng_grp_cd ;;
  }
  dimension: long_term_plng_allwd_ind {
    type: string
    sql: ${TABLE}.long_term_plng_allwd_ind ;;
  }
  dimension: lot_sz_cd {
    type: string
    sql: ${TABLE}.lot_sz_cd ;;
  }
  dimension: matl_cls_cd {
    type: string
    sql: ${TABLE}.matl_cls_cd ;;
  }
  dimension: matl_ctry_origin_cd {
    type: string
    sql: ${TABLE}.matl_ctry_origin_cd ;;
  }
  dimension: matl_id {
    type: string
    sql: ${TABLE}.matl_id ;;
  }
  dimension: max_lot_sz_qty {
    type: number
    sql: ${TABLE}.max_lot_sz_qty ;;
  }
  dimension: min_lot_sz_qty {
    type: number
    sql: ${TABLE}.min_lot_sz_qty ;;
  }
  dimension: min_sfty_stk_qty {
    type: number
    sql: ${TABLE}.min_sfty_stk_qty ;;
  }
  dimension: mixed_mrp_cd {
    type: string
    sql: ${TABLE}.mixed_mrp_cd ;;
  }
  dimension: mrp_cntlr_cd {
    type: string
    sql: ${TABLE}.mrp_cntlr_cd ;;
  }
  dimension: mrp_cntlr_nm {
    type: number
    sql: ${TABLE}.mrp_cntlr_nm ;;
  }
  dimension: mrp_type_cd {
    type: string
    sql: ${TABLE}.mrp_type_cd ;;
  }
  dimension: multi_ctry_origin_ind {
    type: string
    sql: ${TABLE}.multi_ctry_origin_ind ;;
  }
  dimension: optml_lot_sz_qty {
    type: number
    sql: ${TABLE}.optml_lot_sz_qty ;;
  }
  dimension: plnd_ord_allwd_ind {
    type: string
    sql: ${TABLE}.plnd_ord_allwd_ind ;;
  }
  dimension: plng_cal_cd {
    type: string
    sql: ${TABLE}.plng_cal_cd ;;
  }
  dimension: plng_strtgy_grp_cd {
    type: string
    sql: ${TABLE}.plng_strtgy_grp_cd ;;
  }
  dimension: plt_cd {
    type: number
    sql: ${TABLE}.plt_cd ;;
  }
  dimension: plt_lvl_matl_dltn_ind {
    type: string
    sql: ${TABLE}.plt_lvl_matl_dltn_ind ;;
  }
  dimension: plt_spcfc_matl_stat_cd {
    type: string
    sql: ${TABLE}.plt_spcfc_matl_stat_cd ;;
  }
  dimension: plt_spcfc_matl_stat_desc {
    type: string
    sql: ${TABLE}.plt_spcfc_matl_stat_desc ;;
  }
  dimension: po_itm_lead_tm_days {
    type: number
    sql: ${TABLE}.po_itm_lead_tm_days ;;
  }
  dimension: prchsg_grp_id {
    type: number
    sql: ${TABLE}.prchsg_grp_id ;;
  }
  dimension: prchsg_org_cd {
    type: string
    sql: ${TABLE}.prchsg_org_cd ;;
  }
  dimension: prchsg_qty_rndg_val {
    type: number
    sql: ${TABLE}.prchsg_qty_rndg_val ;;
  }
  dimension: prcsng_days {
    type: number
    sql: ${TABLE}.prcsng_days ;;
  }
  dimension: prft_ctr_bu {
    type: string
    sql: ${TABLE}.prft_ctr_bu ;;
  }
  dimension: prnt_matl_cnfgrtn_id {
    type: string
    sql: ${TABLE}.prnt_matl_cnfgrtn_id ;;
  }
  dimension: prnt_matl_plt_cd {
    type: number
    sql: ${TABLE}.prnt_matl_plt_cd ;;
  }
  dimension: procrmt_type_cd {
    type: string
    sql: ${TABLE}.procrmt_type_cd ;;
  }
  dimension: prodn_prfl_grp_cd {
    type: string
    sql: ${TABLE}.prodn_prfl_grp_cd ;;
  }
  dimension: prodn_supvsr_grp_cd {
    type: string
    sql: ${TABLE}.prodn_supvsr_grp_cd ;;
  }
  dimension: prodn_supvsr_grp_nm {
    type: string
    sql: ${TABLE}.prodn_supvsr_grp_nm ;;
  }
  dimension: pur_req_allwd_ind {
    type: string
    sql: ${TABLE}.pur_req_allwd_ind ;;
  }
  dimension: qm_cntl_key_cd {
    type: string
    sql: ${TABLE}.qm_cntl_key_cd ;;
  }
  dimension: qta_arngmt_usg_cd {
    type: string
    sql: ${TABLE}.qta_arngmt_usg_cd ;;
  }
  dimension: reord_pt_qty {
    type: number
    sql: ${TABLE}.reord_pt_qty ;;
  }
  dimension: replmnt_lt_days {
    type: number
    sql: ${TABLE}.replmnt_lt_days ;;
  }
  dimension: schedg_marg_key_cd {
    type: string
    sql: ${TABLE}.schedg_marg_key_cd ;;
  }
  dimension: serl_num_prfl_cd {
    type: string
    sql: ${TABLE}.serl_num_prfl_cd ;;
  }
  dimension: sfty_stk_qty {
    type: number
    sql: ${TABLE}.sfty_stk_qty ;;
  }
  dimension: sls_org_cd {
    type: number
    sql: ${TABLE}.sls_org_cd ;;
  }
  dimension: spcl_procrmt_type {
    type: string
    sql: ${TABLE}.spcl_procrmt_type ;;
  }
  dimension: spcl_procrmt_type_cd_desc {
    type: string
    sql: ${TABLE}.spcl_procrmt_type_cd_desc ;;
  }
  dimension: stk_in_trnsfr_qty {
    type: number
    sql: ${TABLE}.stk_in_trnsfr_qty ;;
  }
  dimension: stk_in_trnst_qty {
    type: number
    sql: ${TABLE}.stk_in_trnst_qty ;;
  }
  dimension: strg_lctn_cd {
    type: string
    sql: ${TABLE}.strg_lctn_cd ;;
  }
  dimension: strg_lctn_extrnl_procrmt_cd {
    type: string
    sql: ${TABLE}.strg_lctn_extrnl_procrmt_cd ;;
  }
  dimension: tgt_qm_sys_cd {
    type: string
    sql: ${TABLE}.tgt_qm_sys_cd ;;
  }
  dimension: tot_lead_tm_in_wks {
    type: number
    sql: ${TABLE}.tot_lead_tm_in_wks ;;
  }
  dimension: vend_nm {
    type: number
    sql: ${TABLE}.vend_nm ;;
  }
  measure: count {
    type: count
  }
}
