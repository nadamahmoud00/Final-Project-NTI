🚖 Uber Ride Analysis – 2024


📖 Introduction

"Imagine booking a ride to an important meeting, only to have it canceled at the last minute. Or, waiting too long for a driver who never arrives. For Uber, cancellations and service quality directly impact revenue, efficiency, and customer satisfaction. In this project, we dive into Uber’s 2024 operational data to uncover insights about booking patterns, cancellation behaviors, vehicle performance, and customer experiences."

This dataset contains detailed ride-sharing data from Uber operations for 2024, including:

  Booking details (Booking ID, status, locations, times)

  Vehicle information (type, performance, distance, value)

  Customer & driver behavior (ratings, cancellations, reasons)

  Financial metrics (booking value, payment methods)



🔍 Exploratory Data Analysis (EDA)

We started with data cleaning & preprocessing:

  Handling missing values.

  Encoding categorical features.

  Normalizing numerical variables.

Then we performed EDA to explore patterns:

    Ride completion vs. cancellations.

    Reasons for cancellations (customer vs. driver).

    Time-of-day and weekend trends.

    Impact of vehicle type and payment method.

    Customer & driver satisfaction ratings.

    

📊 Visualizations highlighted when and why rides are most likely to be canceled, and how this affects overall revenue.


🧑‍💻 Modeling & Machine Learning

To predict ride cancellations & satisfaction outcomes, we tested two models:

   Logistic Regression → provided baseline classification results.

   Random Forest Classifier → improved accuracy with non-linear relationships.

Evaluation metrics included:

Accuracy, Precision, Recall, F1-score.

Confusion Matrix for classification performance.

📊 Dashboard (Power BI)

We developed an interactive Power BI dashboard to visualize insights:

Ride demand across hours/days/months.

Revenue breakdown by vehicle type & payment method.

Driver vs. customer performance metrics.

The dashboard allows stakeholders to quickly explore KPIs and make data-driven decisions.



📝 Key Insights & Recommendations

Cancellations → concentrated during peak hours and in specific zones.

Drivers cancel mainly due to long pickup distances.

Customers cancel mostly because of long wait times.

Payment Method: Cash rides had higher cancellation rates.

Revenue impact: Every 10% increase in cancellations leads to a measurable drop in booking revenue.


🔑 Recommendations:

Improve driver-passenger matching algorithms.

Incentivize drivers for low-cancellation performance.

Provide upfront ETA and transparent fare estimates.

Introduce penalties for repeated cancellations.


📌 Conclusion

Through EDA, predictive modeling, and dashboarding, we transformed raw Uber ride data into actionable insights. The project demonstrates how data analytics can improve operational efficiency, reduce cancellations, and enhance customer satisfaction in ride-sharing platforms
