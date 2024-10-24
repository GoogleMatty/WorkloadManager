view: evaluation_rules_vw {


  label: "Evaluation Rules"

  sql_table_name: `WLM_AnalyticsDatasets.EvaluationRulesVW` ;;

  dimension: evaluation_name {
    type: string
    sql: ${TABLE}.evaluation_name ;;
  }
  dimension: project {
    type: string
    sql: ${TABLE}.project ;;
  }
  dimension: rule_names {
    type: string
    sql: ${TABLE}.ruleNames ;;
  }
  measure: count {
    type: count
    drill_fields: [project, rule_names]
  }
}
