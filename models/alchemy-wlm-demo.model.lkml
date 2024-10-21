connection: "alchemy-demo-bq"

# include all the views
include: "/views/**/*.view.lkml"

# datagroup: alchemy-wlm-demo_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
#  max_cache_age: "1 hour"
#}

# persist_with: alchemy-wlm-demo_default_datagroup


# explore: rules_md {}


label: "Workload Manager Dashboard"


explore: wlmviolation_results {
  join: rules_md {
    type: left_outer
    sql_on: ${wlmviolation_results_vw.rule_name} = ${rules_md.rule_name} ;;
    relationship: many_to_one
  }
  label: "Violation Results"
  view_name: wlmviolation_results_vw

}
