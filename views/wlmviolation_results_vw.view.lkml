view: wlmviolation_results_vw {
  sql_table_name: `WLM_AnalyticsDatasets.WLMViolationResults_VW` ;;

  dimension: asset_name {
    type: string
    sql: ${TABLE}.asset_name ;;
  }
  dimension: asset_type {
    type: string
    sql: ${TABLE}.asset_type ;;
  }
  dimension: constraint_kind {
    type: string
    sql: ${TABLE}.constraint_kind ;;
  }
  dimension: constraint_name {
    type: string
    sql: ${TABLE}.constraint_name ;;
  }
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }
  dimension: evaluation_name {
    type: string
    sql: ${TABLE}.evaluation_name ;;
  }
  dimension: other_info {
    type: string
    sql: ${TABLE}.other_info ;;
  }
  dimension: primary_category {
    type: string
    sql: ${TABLE}.primary_category ;;
  }
  dimension: project {
    type: string
    sql: ${TABLE}.project ;;
  }
  dimension: region_location {
    type: string
    sql: ${TABLE}.region_location ;;
  }
  dimension: remediation {
    type: string
    sql: ${TABLE}.remediation ;;
  }
  dimension_group: result_datetime {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.result_datetime ;;
  }
  dimension: rule_name {
    type: string
    sql: ${TABLE}.rule_name ;;
  }
  dimension: secondary_category {
    type: string
    sql: ${TABLE}.secondary_category ;;
  }
  dimension: severity {
    type: string
    sql: ${TABLE}.severity ;;
  }
  dimension: tags {
    type: string
    sql: ${TABLE}.tags ;;
  }
  dimension: task_id {
    type: string
    sql: ${TABLE}.task_id ;;
  }
  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
  dimension: violation_details {
    type: string
    sql: ${TABLE}.violation_details ;;
  }
  dimension: violation_message {
    type: string
    sql: ${TABLE}.violation_message ;;
  }
  measure: count {
    type: count
    drill_fields: [rule_name, constraint_name, asset_name, evaluation_name, violation_details,violation_message]
  }
}
