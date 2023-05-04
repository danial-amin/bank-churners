view: feature_engineering_full {
  derived_table: {
    sql: SELECT * FROM `bank-churners-385705.churn.FeatureImportanceFull`
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: feature {
    type: string
    sql: ${TABLE}.feature ;;
  }

  dimension: importance_weight {
    type: number
    sql: ${TABLE}.importance_weight ;;
  }

  dimension: importance_gain {
    type: number
    sql: ${TABLE}.importance_gain ;;
  }

  dimension: importance_cover {
    type: number
    sql: ${TABLE}.importance_cover ;;
  }

  set: detail {
    fields: [feature, importance_weight, importance_gain, importance_cover]
  }
}
