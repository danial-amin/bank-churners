view: prediction {
  parameter: Credit_Limit {type: number}
  parameter: Total_Transaction_Amount{type: number}
  parameter: Total_Transaction_Count {type: number}
  parameter: Customer_Age {type: number}

  derived_table: {
    sql:
    SELECT * FROM ML.PREDICT(MODEL `bank-churners-385705.churn.RFmodel`,
    (SELECT {% parameter Credit_Limit %} AS Credit_Limit,
        {% parameter Total_Transaction_Amount %} AS Total_Trans_Amt
        {% parameter Customer_Age %} AS Customer_Age,
        {% parameter Total_Transaction_Count %} AS Total_Trans_Ct));;
  }
  dimension: predict_prob {
    type: number
    sql: ${TABLE}.predicted_class_probs[1][1] ;;
  }

  dimension: other_prob {
    type: number
    sql: ${TABLE}.predicted_class_probs[0][1] ;;
  }

  dimension: credit_limit {
    type: number
    sql: ${TABLE}.Credit_Limit ;;
  }
  dimension: total_trans_amt {
    type: number
    sql: ${TABLE}.Total_Trans_Amt ;;
  }
  dimension: total_trans_ct {
    type: number
    sql: ${TABLE}.Total_Trans_Ct ;;
  }
  dimension: customer_age {
    type: number
    sql: ${TABLE}.Customer_Age ;;
  }
}
