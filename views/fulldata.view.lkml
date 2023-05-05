view: fulldata {
  derived_table: {
    sql: SELECT * FROM `bank-churners-385705.churn.FullBankChurn`
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: attrition_flag {
    type: number
    sql: ${TABLE}.Attrition_Flag ;;
  }

  dimension: customer_age {
    type: number
    sql: ${TABLE}.Customer_Age ;;
  }

  dimension: gender {
    type: number
    sql: ${TABLE}.Gender ;;
  }

  dimension: dependent_count {
    type: number
    sql: ${TABLE}.Dependent_count ;;
  }

  dimension: education_level {
    type: number
    sql: ${TABLE}.Education_Level ;;
  }

  dimension: marital_status {
    type: number
    sql: ${TABLE}.Marital_Status ;;
  }

  dimension: income_category {
    type: number
    sql: ${TABLE}.Income_Category ;;
  }

  dimension: card_category {
    type: number
    sql: ${TABLE}.Card_Category ;;
  }

  dimension: months_on_book {
    type: number
    sql: ${TABLE}.Months_on_book ;;
  }

  dimension: total_relationship_count {
    type: number
    sql: ${TABLE}.Total_Relationship_Count ;;
  }

  dimension: months_inactive_12_mon {
    type: number
    sql: ${TABLE}.Months_Inactive_12_mon ;;
  }

  dimension: contacts_count_12_mon {
    type: number
    sql: ${TABLE}.Contacts_Count_12_mon ;;
  }

  dimension: credit_limit {
    type: number
    sql: ${TABLE}.Credit_Limit ;;
  }

  dimension: total_revolving_bal {
    type: number
    sql: ${TABLE}.Total_Revolving_Bal ;;
  }

  dimension: avg_open_to_buy {
    type: number
    sql: ${TABLE}.Avg_Open_To_Buy ;;
  }

  dimension: total_amt_chng_q4_q1 {
    type: number
    sql: ${TABLE}.Total_Amt_Chng_Q4_Q1 ;;
  }

  dimension: total_trans_amt {
    type: number
    sql: ${TABLE}.Total_Trans_Amt ;;
  }

  dimension: total_trans_ct {
    type: number
    sql: ${TABLE}.Total_Trans_Ct ;;
  }

  dimension: total_ct_chng_q4_q1 {
    type: number
    sql: ${TABLE}.Total_Ct_Chng_Q4_Q1 ;;
  }

  dimension: avg_utilization_ratio {
    type: number
    sql: ${TABLE}.Avg_Utilization_Ratio ;;
  }

  set: detail {
    fields: [
      attrition_flag,
      customer_age,
      gender,
      dependent_count,
      education_level,
      marital_status,
      income_category,
      card_category,
      months_on_book,
      total_relationship_count,
      months_inactive_12_mon,
      contacts_count_12_mon,
      credit_limit,
      total_revolving_bal,
      avg_open_to_buy,
      total_amt_chng_q4_q1,
      total_trans_amt,
      total_trans_ct,
      total_ct_chng_q4_q1,
      avg_utilization_ratio
    ]
  }
}
