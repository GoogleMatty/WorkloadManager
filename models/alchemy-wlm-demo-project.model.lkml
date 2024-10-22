connection: "alchemy-demo-bq"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: alchemy_wlm_demo_project_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: alchemy_wlm_demo_project_default_datagroup

explore: rules_vw {

}

explore: evaluations_vw {

}

explore: wlmviolation_results_vw {

}

explore: evaluation_executions_vw {

}

explore: evaluation_execution_summary_dt  {}

explore: evaluation_execution_summary_vw {}

explore: evaluation_rules_vw {}
