view: rules_vw {
  sql_table_name: `WLM_AnalyticsDatasets.RulesVW` ;;

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }
  dimension: display_name {
    type: string
    sql: ${TABLE}.displayName ;;
  }
  dimension: name {
    primary_key: yes
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: primary_category {
    type: string
    sql: ${TABLE}.primaryCategory ;;
  }
  dimension: revision_id {
    type: number
    sql: ${TABLE}.revisionId ;;
  }
  dimension: secondary_category {
    type: string
    sql: ${TABLE}.secondaryCategory ;;
  }
  dimension: severity {
    type: string
    sql: ${TABLE}.severity ;;
  }
  dimension: tags {
    hidden: yes
    sql: ${TABLE}.tags ;;
  }
  measure: count {
    type: count
    drill_fields: [display_name, name, description, severity, tags]
  }

}

view: rules_vw__tags {

  dimension: rules_vw__tags {
    type: string
    sql: rules_vw__tags ;;
  }
}
