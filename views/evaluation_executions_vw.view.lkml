view: evaluation_executions_vw {
  sql_table_name: `WLM_AnalyticsDatasets.EvaluationExecutionsVW` ;;

  dimension_group: end {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.endTime ;;
  }
  dimension: evaluation_name {
    type: string
    sql: ${TABLE}.evaluation_name ;;
  }
  dimension: execution_id {
    type: string
    sql: ${TABLE}.execution_id ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: project {
    type: string
    sql: ${TABLE}.project ;;
  }
  dimension: rule_results {
    hidden: yes
    sql: ${TABLE}.ruleResults ;;
  }
  dimension: run_type {
    type: string
    sql: ${TABLE}.runType ;;
  }
  dimension_group: start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.startTime ;;
  }
  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  measure: duration_minutes {
    type: average
    sql: ${TABLE}.duration ;;
  }

  measure: count {
    type: count
    drill_fields: [name, evaluation_name]
  }
}


view: evaluation_executions_vw__rule_results {

  dimension: evaluation_executions_vw__rule_results {
    type: string
    hidden: yes
    sql: evaluation_executions_vw__rule_results ;;
  }
  dimension: message {
    type: string
    sql: message ;;
  }
  dimension: result_count {
    type: number
    sql: resultCount ;;
  }
  dimension: rule {
    type: string
    sql: rule ;;
  }
  dimension: scanned_resource_count {
    type: number
    sql: scannedResourceCount ;;
  }
  dimension: state {
    type: string
    sql: state ;;
  }
}
