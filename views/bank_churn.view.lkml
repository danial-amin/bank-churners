view: bank_churn {
  sql_table_name: `churn.BankChurn`
    ;;

  dimension: attrition_flag {
    type: number
    sql: ${TABLE}.Attrition_Flag ;;
  }

  dimension: avg_open_to_buy {
    type: number
    sql: ${TABLE}.Avg_Open_To_Buy ;;
  }

  dimension: avg_utilization_ratio {
    type: number
    sql: ${TABLE}.Avg_Utilization_Ratio ;;
  }

  dimension: credit_limit {
    type: number
    sql: ${TABLE}.Credit_Limit ;;
  }

  dimension: customer_age {
    type: number
    sql: ${TABLE}.Customer_Age ;;
  }

  dimension: total_amt_chng_q4_q1 {
    type: number
    sql: ${TABLE}.Total_Amt_Chng_Q4_Q1 ;;
  }

  dimension: total_ct_chng_q4_q1 {
    type: number
    sql: ${TABLE}.Total_Ct_Chng_Q4_Q1 ;;
  }

  dimension: total_relationship_count {
    type: number
    sql: ${TABLE}.Total_Relationship_Count ;;
  }

  dimension: total_revolving_bal {
    type: number
    sql: ${TABLE}.Total_Revolving_Bal ;;
  }

  dimension: total_trans_amt {
    type: number
    sql: ${TABLE}.Total_Trans_Amt ;;
  }

  dimension: total_trans_ct {
    type: number
    sql: ${TABLE}.Total_Trans_Ct ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
