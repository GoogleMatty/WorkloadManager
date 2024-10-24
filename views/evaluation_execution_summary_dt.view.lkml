
view: evaluation_execution_summary_dt {
  derived_table: {
    sql: SELECT
          (FORMAT_TIMESTAMP('%F %T', evaluation_execution_summary_vw.startTime )) AS start_time,
              (FORMAT_TIMESTAMP('%F %T', evaluation_execution_summary_vw.endTime )) AS end_time,
          evaluation_execution_summary_vw.evaluation_name  AS _evaluation_name,
          evaluation_execution_summary_vw.execution_id  AS execution_id,
          evaluation_execution_summary_vw.project  AS project,
          TIMESTAMP_DIFF(endTime,startTime,MINUTE) duration_minutes,
          sum(evaluation_execution_summary_vw.scannedResourceCount)  AS scanned_resource_count,
          sum(evaluation_execution_summary_vw.resultCount)  AS result_count
      FROM `WLM_AnalyticsDatasets.EvaluationExecutionSummaryVW` AS evaluation_execution_summary_vw
      WHERE evaluation_execution_summary_vw.state = "STATE_SUCCESS"
      GROUP BY
          1,
          2,
          3,
          4,
          5
      ORDER BY
          1 DESC
      LIMIT 500 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: start_time {
    type: string
    sql: ${TABLE}.start_time ;;
  }

  dimension: end_time {
    type: string
    sql: ${TABLE}.end_time ;;
  }


  dimension: duration_minutes {
    type: string
    sql: ${TABLE}.duration_minutes ;;
  }

  dimension: _evaluation_name {
    type: string
    sql: ${TABLE}._evaluation_name ;;
  }

  dimension: execution_id {
    type: string
    sql: ${TABLE}.execution_id ;;
  }

  dimension: project {
    type: string
    sql: ${TABLE}.project ;;
  }

  dimension: scanned_resource_count {
    type: number
    sql: ${TABLE}.scanned_resource_count ;;
  }

  dimension: result_count {
    type: number
    sql: ${TABLE}.result_count ;;
  }

  set: detail {
    fields: [
      start_time,
      end_time,
      _evaluation_name,
      execution_id,
      project,
      scanned_resource_count,
      result_count
    ]
  }
}
