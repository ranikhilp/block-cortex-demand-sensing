view: ra_gds_datamatl {
  sql_table_name: `sap-cortex-391114.SAP_CDC_PROCESSED_FP.ra_gds_data-matl` ;;

  dimension: base_uom {
    type: string
    sql: ${TABLE}.base_uom ;;
  }
  dimension: base_uom_mltplr_dnmntr {
    type: number
    sql: ${TABLE}.base_uom_mltplr_dnmntr ;;
  }
  dimension: base_uom_mltplr_nmrtr {
    type: number
    sql: ${TABLE}.base_uom_mltplr_nmrtr ;;
  }
  dimension: bull_no {
    type: string
    sql: ${TABLE}.bull_no ;;
  }
  dimension: busi_unit_cd {
    type: string
    sql: ${TABLE}.busi_unit_cd ;;
  }
  dimension: catlg_id {
    type: string
    sql: ${TABLE}.catlg_id ;;
  }
  dimension: clt_lvl_matl_dltn_ind {
    type: string
    sql: ${TABLE}.clt_lvl_matl_dltn_ind ;;
  }
  dimension: cnfgbl_matl_ind {
    type: string
    sql: ${TABLE}.cnfgbl_matl_ind ;;
  }
  dimension: corp_cmmdty_cd {
    type: number
    sql: ${TABLE}.corp_cmmdty_cd ;;
  }
  dimension: corp_cmmdty_desc {
    type: string
    sql: ${TABLE}.corp_cmmdty_desc ;;
  }
  dimension: cross_dstbn_chn_matl_stat_cd {
    type: string
    sql: ${TABLE}.cross_dstbn_chn_matl_stat_cd ;;
  }
  dimension: cross_plt_cnfgbl_matl_id {
    type: string
    sql: ${TABLE}.cross_plt_cnfgbl_matl_id ;;
  }
  dimension: cross_plt_matl_stat_cd {
    type: string
    sql: ${TABLE}.cross_plt_matl_stat_cd ;;
  }
  dimension: dim_uom {
    type: string
    sql: ${TABLE}.dim_uom ;;
  }
  dimension: doc_id {
    type: string
    sql: ${TABLE}.doc_id ;;
  }
  dimension: doc_type_cd {
    type: string
    sql: ${TABLE}.doc_type_cd ;;
  }
  dimension: doc_ver_no {
    type: string
    sql: ${TABLE}.doc_ver_no ;;
  }
  dimension: gtin_14 {
    type: string
    sql: ${TABLE}.gtin_14 ;;
  }
  dimension: gwt {
    type: number
    sql: ${TABLE}.gwt ;;
  }
  dimension: hgt_dim {
    type: number
    sql: ${TABLE}.hgt_dim ;;
  }
  dimension_group: last_updated_dl_ts {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.last_updated_dl_ts ;;
  }
  dimension: len_dim {
    type: number
    sql: ${TABLE}.len_dim ;;
  }
  dimension: matl_desc {
    type: string
    sql: ${TABLE}.matl_desc ;;
  }
  dimension: matl_genl_itm_cat_grp {
    type: string
    sql: ${TABLE}.matl_genl_itm_cat_grp ;;
  }
  dimension: matl_gr_wgt_in_kg {
    type: number
    sql: ${TABLE}.matl_gr_wgt_in_kg ;;
  }
  dimension: matl_grp_id {
    type: string
    sql: ${TABLE}.matl_grp_id ;;
  }
  dimension: matl_id {
    type: string
    sql: ${TABLE}.matl_id ;;
  }
  dimension_group: matl_mstr_creatd_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.matl_mstr_creatd_dt ;;
  }
  dimension: matl_net_wgt_in_kg {
    type: number
    sql: ${TABLE}.matl_net_wgt_in_kg ;;
  }
  dimension: matl_type_cd {
    type: string
    sql: ${TABLE}.matl_type_cd ;;
  }
  dimension: matl_vol_in_ccm {
    type: number
    sql: ${TABLE}.matl_vol_in_ccm ;;
  }
  dimension: ntwt {
    type: number
    sql: ${TABLE}.ntwt ;;
  }
  dimension: po_qty_uom {
    type: string
    sql: ${TABLE}.po_qty_uom ;;
  }
  dimension: prnt_corp_cmmdty_cd {
    type: number
    sql: ${TABLE}.prnt_corp_cmmdty_cd ;;
  }
  dimension: prnt_corp_cmmdty_desc {
    type: string
    sql: ${TABLE}.prnt_corp_cmmdty_desc ;;
  }
  dimension: prod_cat {
    type: string
    sql: ${TABLE}.prod_cat ;;
  }
  dimension: prod_grp {
    type: string
    sql: ${TABLE}.prod_grp ;;
  }
  dimension: prod_hier_cd_desc {
    type: string
    sql: ${TABLE}.prod_hier_cd_desc ;;
  }
  dimension: prod_hrchy_cd {
    type: string
    sql: ${TABLE}.prod_hrchy_cd ;;
  }
  dimension: prod_life_cycl_stat {
    type: string
    sql: ${TABLE}.prod_life_cycl_stat ;;
  }
  dimension: prod_lifecyc_stat {
    type: string
    sql: ${TABLE}.prod_lifecyc_stat ;;
  }
  dimension: prod_line {
    type: string
    sql: ${TABLE}.prod_line ;;
  }
  dimension: rpr_lifecycle_desc {
    type: string
    sql: ${TABLE}.rpr_lifecycle_desc ;;
  }
  dimension: serial_no {
    type: string
    sql: ${TABLE}.serial_no ;;
  }
  dimension: series {
    type: string
    sql: ${TABLE}.series ;;
  }
  dimension: transp_grp_cd {
    type: string
    sql: ${TABLE}.transp_grp_cd ;;
  }
  dimension: vol {
    type: number
    sql: ${TABLE}.vol ;;
  }
  dimension: vol_uom {
    type: string
    sql: ${TABLE}.vol_uom ;;
  }
  dimension: wdth_dim {
    type: number
    sql: ${TABLE}.wdth_dim ;;
  }
  dimension: wt_uom {
    type: string
    sql: ${TABLE}.wt_uom ;;
  }
  measure: count {
    type: count
  }
}
