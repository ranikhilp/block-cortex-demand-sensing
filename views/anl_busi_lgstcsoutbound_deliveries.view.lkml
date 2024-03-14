view: anl_busi_lgstcsoutbound_deliveries {
  sql_table_name: `sap-cortex-391114.SAP_CDC_PROCESSED_FP.anl_busi_lgstcs-outbound_deliveries` ;;
  label: "Shipments"

  dimension_group: actl_post_goods_iss_dte {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.actl_post_goods_iss_dte ;;
  }
  dimension: bill_of_lading_id {
    type: string
    sql: ${TABLE}.bill_of_lading_id ;;
  }
  dimension: bllng_block_cd {
    type: string
    sql: ${TABLE}.bllng_block_cd ;;
  }
  dimension: cum_dlvrd_qty {
    type: number
    sql: ${TABLE}.cum_dlvrd_qty ;;
  }
  dimension: dlvrd_qty_base_uom {
    type: number
    sql: ${TABLE}.dlvrd_qty_base_uom ;;
  }
  dimension_group: dlvry_doc_creatd_dt {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.dlvry_doc_creatd_dt ;;
  }
  dimension: dlvry_doc_id {
    type: number
    sql: ${TABLE}.dlvry_doc_id ;;
  }
  dimension: dlvry_doc_itm_no {
    type: number
    sql: ${TABLE}.dlvry_doc_itm_no ;;
  }
  dimension_group: dlvry_doc_updtd_dte {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.dlvry_doc_updtd_dte ;;
  }
  dimension_group: dlvry_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.dlvry_dt ;;
  }
  dimension_group: dlvry_itm_creatd_dte {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.dlvry_itm_creatd_dte ;;
  }
  dimension: dlvry_ln_itm_vol {
    type: number
    sql: ${TABLE}.dlvry_ln_itm_vol ;;
  }
  dimension_group: dlvry_load_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.dlvry_load_dt ;;
  }
  dimension: dlvry_reltd_bllng_stat_cd {
    type: string
    sql: ${TABLE}.dlvry_reltd_bllng_stat_cd ;;
  }
  dimension: dlvry_type_cd {
    type: string
    sql: ${TABLE}.dlvry_type_cd ;;
  }
  dimension: frgn_trade_data_id {
    type: number
    sql: ${TABLE}.frgn_trade_data_id ;;
  }
  dimension: goods_mvmt_stat_cd {
    type: string
    sql: ${TABLE}.goods_mvmt_stat_cd ;;
  }
  dimension: hvy_wgt_carr_id {
    type: string
    sql: ${TABLE}.hvy_wgt_carr_id ;;
  }
  dimension: incoterms_cd {
    type: string
    sql: ${TABLE}.incoterms_cd ;;
  }
  dimension: incoterms_detl {
    type: string
    sql: ${TABLE}.incoterms_detl ;;
  }
  dimension_group: last_updated_dl_ts {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.last_updated_dl_ts ;;
  }
  dimension: light_wgt_carr_id {
    type: string
    sql: ${TABLE}.light_wgt_carr_id ;;
  }
  dimension: ln_itm_net_wgt {
    type: number
    sql: ${TABLE}.ln_itm_net_wgt ;;
  }
  dimension: ln_itm_pkng_stat_cd {
    type: string
    sql: ${TABLE}.ln_itm_pkng_stat_cd ;;
  }
  dimension: ln_itm_pod_cd {
    type: string
    sql: ${TABLE}.ln_itm_pod_cd ;;
  }
  dimension: matl_base_uom {
    type: string
    sql: ${TABLE}.matl_base_uom ;;
  }
  dimension: matl_ctry_origin_cd {
    type: string
    sql: ${TABLE}.matl_ctry_origin_cd ;;
  }
  dimension: matl_id {
    type: string
    sql: ${TABLE}.matl_id ;;
  }
  dimension: matl_ln_itm_gr_wgt {
    type: number
    sql: ${TABLE}.matl_ln_itm_gr_wgt ;;
  }
  dimension: matl_vol_uom {
    type: string
    sql: ${TABLE}.matl_vol_uom ;;
  }
  dimension: matl_wt_uom {
    type: string
    sql: ${TABLE}.matl_wt_uom ;;
  }
  dimension: ord_dlvry_blkd_cd {
    type: string
    sql: ${TABLE}.ord_dlvry_blkd_cd ;;
  }
  dimension: ord_dlvry_stat_cd {
    type: string
    sql: ${TABLE}.ord_dlvry_stat_cd ;;
  }
  dimension_group: ord_itm_plnd_goods_iss_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ord_itm_plnd_goods_iss_dt ;;
  }
  dimension: ovrll_dlvry_stat_cd {
    type: string
    sql: ${TABLE}.ovrll_dlvry_stat_cd ;;
  }
  dimension: ovrll_picking_stat_cd {
    type: string
    sql: ${TABLE}.ovrll_picking_stat_cd ;;
  }
  dimension: ovrll_pkng_stat_cd {
    type: string
    sql: ${TABLE}.ovrll_pkng_stat_cd ;;
  }
  dimension: ovrll_rjctn_stat_cd {
    type: string
    sql: ${TABLE}.ovrll_rjctn_stat_cd ;;
  }
  dimension: pick_put_cnfrmn_stat_cd {
    type: string
    sql: ${TABLE}.pick_put_cnfrmn_stat_cd ;;
  }
  dimension: pick_put_stat_cd {
    type: string
    sql: ${TABLE}.pick_put_stat_cd ;;
  }
  dimension_group: picking_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.picking_dt ;;
  }
  dimension: plnd_goods_mvmt_tm {
    type: string
    sql: ${TABLE}.plnd_goods_mvmt_tm ;;
  }
  dimension: plt_cd {
    type: number
    sql: ${TABLE}.plt_cd ;;
  }
  dimension: plt_strg_lctn_cd {
    type: string
    sql: ${TABLE}.plt_strg_lctn_cd ;;
  }
  dimension: ref_doc_id {
    type: string
    sql: ${TABLE}.ref_doc_id ;;
  }
  dimension: ref_doc_itm_no {
    type: number
    sql: ${TABLE}.ref_doc_itm_no ;;
  }
  dimension: ship_to_bp_addr_id {
    type: number
    sql: ${TABLE}.ship_to_bp_addr_id ;;
  }
  dimension: ship_to_bp_id {
    type: number
    sql: ${TABLE}.ship_to_bp_id ;;
  }
  dimension: shpng_cond_cd {
    type: string
    sql: ${TABLE}.shpng_cond_cd ;;
  }
  dimension: shpng_ctry_cd {
    type: string
    sql: ${TABLE}.shpng_ctry_cd ;;
  }
  dimension: shpng_pt_cd {
    type: string
    sql: ${TABLE}.shpng_pt_cd ;;
  }
  dimension: shpng_rte_cd {
    type: string
    sql: ${TABLE}.shpng_rte_cd ;;
  }
  dimension: sls_doc_cat_cd {
    type: string
    sql: ${TABLE}.sls_doc_cat_cd ;;
  }
  dimension: sls_doc_cnfrmn_stat_dlvry_cd {
    type: string
    sql: ${TABLE}.sls_doc_cnfrmn_stat_dlvry_cd ;;
  }
  dimension: sls_org {
    type: number
    sql: ${TABLE}.sls_org ;;
  }
  dimension: sls_uom {
    type: string
    sql: ${TABLE}.sls_uom ;;
  }
  dimension: sold_to_bp_id {
    type: number
    sql: ${TABLE}.sold_to_bp_id ;;
  }
  dimension: spcl_prcsng_cd {
    type: string
    sql: ${TABLE}.spcl_prcsng_cd ;;
  }
  dimension: tot_goods_iss_stat_cd {
    type: string
    sql: ${TABLE}.tot_goods_iss_stat_cd ;;
  }
  dimension: transp_grp_cd {
    type: string
    sql: ${TABLE}.transp_grp_cd ;;
  }
  dimension_group: transp_plng_dte {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.transp_plng_dte ;;
  }
  dimension: whse_mgmt_act_stat_cd {
    type: string
    sql: ${TABLE}.whse_mgmt_act_stat_cd ;;
  }
  measure: count {
    type: count
  }
}
