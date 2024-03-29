view: ad_action_insights {
  sql_table_name: @{FACEBOOK_ADS_SCHEMA_NAME}.facebook_ads_insights_@{FACEBOOK_ADS_ACCOUNT_ID}__actions ;;

  dimension: ad_id {
    type: string
    sql: ${TABLE}._sdc_source_key_ad_id ;;
  }

  dimension: adset_id {
    type: string
    sql: ${TABLE}._sdc_source_key_adset_id ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}._sdc_source_key_campaign_id ;;
  }

  dimension_group: date_start {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}._sdc_source_key_date_start ;;
  }

  dimension: action_destination {
    type: string
    sql: ${TABLE}.action_destination ;;
  }

  dimension: action_type {
    type: string
    sql: ${TABLE}.action_type ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: post_likes {
    type: sum
    sql: ${TABLE}.value ;;

    filters: {
      field: action_type
      value: "post_like"
    }
  }

  measure: page_likes {
    type: sum
    sql: ${TABLE}.value ;;

    filters: {
      field: action_type
      value: "like"
    }
  }

  measure: post_comments {
    type: sum
    sql: ${TABLE}.value ;;

    filters: {
      field: action_type
      value: "comment"
    }
  }

  measure: post_shares {
    type: sum
    sql: ${TABLE}.value ;;

    filters: {
      field: action_type
      value: "post"
    }
  }

  measure: link_clicks {
    type: sum
    sql: ${TABLE}.value ;;

    filters: {
      field: action_type
      value: "link_click"
    }
  }

  measure: total_actions {
    type: sum
    sql: ${TABLE}.value ;;
  }

  dimension: campaign_objective {
    type: string
    sql: ${campaigns.objective} ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${campaigns.name} ;;
  }
}
