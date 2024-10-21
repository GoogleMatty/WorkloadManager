view: rules_md {
  sql_table_name: `WLM_AnalyticsDatasets.RulesMD` ;;

  dimension: category {
    type: string
    sql: ${TABLE}.Category ;;
  }
  dimension: category_detail {
    type: string
    sql: ${TABLE}.Category_Detail ;;
  }
  dimension: rule_name {
    primary_key: yes
    type: string
    sql: ${TABLE}.Rule_Name ;;
  }
  dimension: rule_no {
    type: string
    sql: ${TABLE}.Rule_No ;;
  }
  dimension: rule_requirement_description {
    type: string
    sql: ${TABLE}.Rule_Requirement_Description ;;
  }
  dimension: sub_category {
    type: string
    sql: ${TABLE}.Sub_Category ;;
  }
  measure: count {
    type: count
    drill_fields: [rule_name]
  }
}
