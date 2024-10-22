view: evaluations_vw {
  sql_table_name: `WLM_AnalyticsDatasets.EvaluationsVW` ;;

  dimension: create_new_results_table {
    type: yesno
    sql: ${TABLE}.createNewResultsTable ;;
  }
  dimension_group: create {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.createTime ;;
  }
  dimension: custom_rules_bucket {
    type: string
    sql: ${TABLE}.customRulesBucket ;;
  }
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }
  dimension: destination_dataset {
    type: string
    sql: ${TABLE}.destinationDataset ;;
  }
  dimension: evaluation_name {
    type: string
    sql: ${TABLE}.evaluation_name ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: project {
    type: string
    sql: ${TABLE}.project ;;
  }
  dimension: rule_names {
    hidden: yes
    sql: ${TABLE}.ruleNames ;;
  }
  dimension: schedule {
    type: string
    sql: ${TABLE}.schedule ;;
  }
  dimension: scopes {
    hidden: yes
    sql: ${TABLE}.scopes ;;
  }
  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }
  dimension_group: update {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updateTime ;;
  }
  measure: count {
    type: count
    drill_fields: [name, evaluation_name]
  }
}

view: evaluations_vw__scopes {

  dimension: evaluations_vw__scopes {
    type: string
    sql: evaluations_vw__scopes ;;
  }
}

view: evaluations_vw__rule_names {

  dimension: evaluations_vw__rule_names {
    type: string
    sql: evaluations_vw__rule_names ;;
  }
}
