connection: "bank_churners"

# include all the views
include: "/views/**/*.view"

datagroup: bank_churn1_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: bank_churn1_default_datagroup

explore: bank_churn {}
explore: feature_engineering {}
