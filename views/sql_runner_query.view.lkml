
view: sql_runner_query {
  derived_table: {
    sql: SELECT
          CASE
      WHEN ra_gds_datamatl.busi_unit_cd in ('DIO','SCB')  THEN 'DCB'
      WHEN ra_gds_datamatl.busi_unit_cd in ('CDS', 'IDB', 'SDB')  THEN 'DST'
      WHEN ra_gds_datamatl.busi_unit_cd in ('EOI','ICB','PVC')  THEN 'IPB'
      WHEN ra_gds_datamatl.busi_unit_cd in ('CLX', 'CMX','NET','SFS')  THEN 'LGX'
      WHEN ra_gds_datamatl.busi_unit_cd in ('CLX', 'CMX','NET','SFS')  THEN 'LGX'
      WHEN ra_gds_datamatl.busi_unit_cd in ('KNX','PMC')  THEN 'MTC'
      WHEN ra_gds_datamatl.busi_unit_cd in ('CPB','GIA','MCP','PBS','SEN','SFC','SOP')  THEN 'SIC'
      WHEN ra_gds_datamatl.busi_unit_cd in ('SLC')  THEN 'SLC'
      ELSE 'other'
      END AS ra_gds_datamatl_fbu_1,
          sum(anl_costbkng.open_qty_glbl_m_net_val + sfsac_manual.SFSAC_manual)  AS anl_costbkng_test_dim,

      FROM `sap-cortex-391114.SAP_CDC_PROCESSED_FP.anl_cost-bkng`  AS anl_costbkng
      INNER JOIN `sap-cortex-391114.SAP_CDC_PROCESSED_FP.ra_gds_data-matl`  AS ra_gds_datamatl ON anl_costbkng.matl_id = ra_gds_datamatl.matl_id
      INNER JOIN `sap-cortex-391114.SAP_CDC_PROCESSED_FP.SFSAC_manual`  AS sfsac_manual ON (CASE
      WHEN ra_gds_datamatl.busi_unit_cd in ('DIO','SCB')  THEN 'DCB'
      WHEN ra_gds_datamatl.busi_unit_cd in ('CDS', 'IDB', 'SDB')  THEN 'DST'
      WHEN ra_gds_datamatl.busi_unit_cd in ('EOI','ICB','PVC')  THEN 'IPB'
      WHEN ra_gds_datamatl.busi_unit_cd in ('CLX', 'CMX','NET','SFS')  THEN 'LGX'
      WHEN ra_gds_datamatl.busi_unit_cd in ('CLX', 'CMX','NET','SFS')  THEN 'LGX'
      WHEN ra_gds_datamatl.busi_unit_cd in ('KNX','PMC')  THEN 'MTC'
      WHEN ra_gds_datamatl.busi_unit_cd in ('CPB','GIA','MCP','PBS','SEN','SFC','SOP')  THEN 'SIC'
      WHEN ra_gds_datamatl.busi_unit_cd in ('SLC')  THEN 'SLC'
      ELSE 'other'
      END) = sfsac_manual.bu
            and (CASE
      WHEN substring(sls_org,1,1) in ('1','2')  THEN 'NA'
      WHEN substring(sls_org,1,1) in ('3')  THEN 'LA'
      WHEN substring(sls_org,1,1) in ('4')  THEN 'EMEA'
      WHEN substring(sls_org,1,1) in ('5')  THEN 'APAC'
      WHEN substring(sls_org,1,2) in ('71','72')  THEN 'SENS_NA'
      WHEN substring(sls_org,1,2) in ('73')  THEN 'SENS_LA'
      WHEN substring(sls_org,1,2) in ('74')  THEN 'SENS_EMEA'
      WHEN substring(sls_org,1,2) in ('75')  THEN 'SENS_APAC'
      ELSE 'other'
      END) = sfsac_manual.region
      WHERE (((( anl_costbkng.itm_rjctn_stat  ) IS NULL) OR (( anl_costbkng.itm_rjctn_stat  ) IS NULL OR LENGTH(( anl_costbkng.itm_rjctn_stat  )) = 0 ) OR ( anl_costbkng.itm_rjctn_stat  ) IN ('A', 'B'))) AND ((anl_costbkng.plt_cd ) NOT LIKE '8%' AND (anl_costbkng.plt_cd ) NOT LIKE '9%' OR (anl_costbkng.plt_cd ) IS NULL) AND (anl_costbkng.sched_line_cat ) IN ('CN', 'CP', 'ZN') AND ((anl_costbkng.sls_doc_type ) <> 'ZEOR' AND (anl_costbkng.sls_doc_type ) <> ' ZPLS' AND (anl_costbkng.sls_doc_type ) <> 'ZIPO' OR (anl_costbkng.sls_doc_type ) IS NULL)
      GROUP BY
          1
      ORDER BY
          1
      LIMIT 500 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: ra_gds_datamatl_fbu_1 {
    type: string
    sql: ${TABLE}.ra_gds_datamatl_fbu_1 ;;
  }

  dimension: anl_costbkng_test_dim {
    label: "Net Backlog"
    type: number
    sql: ${TABLE}.anl_costbkng_test_dim ;;
  }

  set: detail {
    fields: [
        ra_gds_datamatl_fbu_1,
  anl_costbkng_test_dim
    ]
  }
}
