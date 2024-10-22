view: evaluation_execution_summary_vw {
  sql_table_name: `WLM_AnalyticsDatasets.EvaluationExecutionSummaryVW` ;;

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
  dimension: message {
    type: string
    sql: ${TABLE}.message ;;
  }
  dimension: project {
    type: string
    sql: ${TABLE}.project ;;
  }
  dimension: result_count {
    type: number
    sql: ${TABLE}.resultCount ;;
  }
  dimension: rule {
    type: string
    sql: ${TABLE}.rule ;;
  }
  dimension: scanned_resource_count {
    type: number
    sql: ${TABLE}.scannedResourceCount ;;
  }
  dimension_group: start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.startTime ;;
  }
  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
    html:
    {% if value == 'STATE_SUCCESS' %}
    <p style="color: white; background-color: green;">{{ value }}</p>
    {% elsif value == 'STATE_FAILURE' %}
    <p style="color: black; background-color: orange;">{{ value }}</p>
    {% else %}
    <p style="color: black; background-color: grey;">{{ value }}</p>
    {% endif %}
    ;;
    description: "Severity"
  }
  measure: count {
    type: count
    drill_fields: [start_time, evaluation_name, execution_id, message, rule]
  }
}
