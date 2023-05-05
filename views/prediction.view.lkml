view: prediction {
  parameter: CreditLimit{type: number}
  parameter: CustomerAge{type: number}
  parameter: TotalTransactionCount{type: number}
  parameter: TotalTransactionAmount{type: number}

  derived_table: {
    sql:
    SELECT * FROM ML.PREDICT(MODEL `bank-churners-385705.churn.RFmodel`,
    (SELECT {% parameter CreditLimit %} AS Credit_Limit,
            {% parameter CustomerAge %} AS Customer_Age,
            {% parameter TotalTransactionCount %} AS Total_Trans_Ct,
            {% parameter TotalTransactionAmount %} AS Total_Trans_Amt));;
  }
  dimension: predict_prob {
    type: number
    sql: ${TABLE}.predicted_Attrition_Flag_probs[1][1] ;;
  }

  dimension: other_prob {
    type: number
    sql: ${TABLE}.predicted_Attrition_Flag_probs[0][1] ;;
  }

  dimension: credit_limit {
    type: number
    sql: ${TABLE}.Credit_Limit ;;
  }
  dimension: total_trans_amt {
    type: number
    sql: ${TABLE}.Total_Trans_Amt ;;
  }
  dimension: totaltransct {
    type: number
    sql: ${TABLE}.Total_Trans_Ct ;;
  }
  dimension: customer_age {
    type: number
    sql: ${TABLE}.Customer_Age ;;
  }
}
