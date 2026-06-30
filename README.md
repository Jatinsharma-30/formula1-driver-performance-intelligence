# 🏎️ Formula 1 Driver Performance Intelligence

An end-to-end SQL and Python analytics project that explores Formula 1 driver performance across different eras. This project combines data cleaning, advanced SQL querying, exploratory data analysis, feature engineering, and machine learning to uncover insights into driver success and predict championship outcomes.

---

## 📌 Project Overview

Formula 1 is one of the world's most data-driven sports, where every race generates valuable performance statistics. This project analyzes historical driver data to identify trends, compare drivers across decades, evaluate career efficiency, and understand the key factors that contribute to becoming a World Champion.

The project demonstrates practical business analytics skills using SQL and Python while following an end-to-end analytics workflow.

---

## 🎯 Objectives

- Analyze historical Formula 1 driver performance
- Compare drivers across different eras and nationalities
- Identify factors influencing championship success
- Develop custom performance metrics
- Predict whether a driver becomes a World Champion using Machine Learning

---

## 🛠️ Tech Stack

- SQL
- Python
- Pandas
- NumPy
- Matplotlib
- Scikit-learn
- Jupyter Notebook
- Git & GitHub

---

## 📂 Project Structure

```
Formula1-Driver-Performance-Intelligence/
│
├── Data/
│   ├── F1DriversDataset.csv
│   └── README.md
│
├── Docs/
│   ├── Data Dictionary
│   ├── Methodology.md
│   ├── SQL_Query_Explanations.md
│   └── README.md
│
├── SQL/
│   ├── README.md
│   ├── 01_Data_Cleaning.sql
│   ├── 02_Exploratory_Analysis.sql
│   ├── 03_Advanced_SQL.sql
│   └── 04_Views.sql
│
├── Python/
│   ├── 01_Load_Data_To_SQL.ipynb
│   ├── 02_Data_Cleaning.ipynb
│   ├── 03_Exploratory_Data_Analysis.ipynb
│   ├── 04_Feature_Engineering.ipynb
│   ├── 05_Champion_Predictions.ipynb
│   ├── 06_Model_Evaluation.ipynb
│   ├── 07_Insights_and_Recommendations.ipynb
│   └── README.md
│
├── results/
│   ├── engineered_dataset.csv
│   ├── feature_importance.csv
│   ├── model_evaluation.csv
│   ├── model_metrics.csv
│   └── README.md
│
├── Images/
│   ├── Champion Distribution.jpeg
│   ├── Confusion Matrix.jpeg
│   ├── Correlation matrix.jpeg
│   ├── Feature Importance.jpeg
│   ├── README.md
│   ├── ROC Curve.jpeg
│   ├── Top 10 Drivers by Race Wins.jpeg
│   ├── Top 10 Nationalities by no. of Drivers.jpeg
│   └── README.md
│
├── README.md
├── .gitignore
└── requirements.txt
```

---

## 📊 Dataset Features

The dataset includes historical Formula 1 driver statistics such as:

- Driver
- Nationality
- Seasons
- Championships
- Race Entries
- Race Starts
- Pole Positions
- Race Wins
- Podiums
- Fastest Laps
- Points
- Active Status
- Championship Years
- Decade
- Win Rate
- Pole Rate
- Podium Rate
- Fast Lap Rate
- Points Per Entry
- Years Active
- Champion (Target Variable)

---

## 🔍 SQL Analysis

The SQL portion of the project focuses on:

- Data Cleaning
- Exploratory Data Analysis
- Aggregate Functions
- GROUP BY & HAVING
- CASE Statements
- Common Table Expressions (CTEs)
- Window Functions
- Ranking Functions
- Views

---

## 📈 Python Analysis

Python is used for:

- Data Cleaning
- Exploratory Data Analysis
- Statistical Analysis
- Feature Engineering
- Correlation Analysis
- Data Visualization
- Machine Learning

---

## 🤖 Machine Learning

Classification models will be built to predict whether a driver becomes a Formula 1 World Champion.

Models include:

- Logistic Regression
- Decision Tree
- Random Forest

Evaluation Metrics:

- Accuracy
- Precision
- Recall
- F1 Score
- ROC-AUC

---

## 📌 Key Business Questions

- Which drivers have the highest career efficiency?
- Which nationality has produced the most successful drivers?
- Does winning more pole positions increase championship probability?
- Which decade produced the strongest drivers?
- Which performance metrics contribute most to championship success?
- Can historical statistics predict future champions?

---

## 🚀 Future Improvements

- Integrate race-level data
- Include constructor performance
- Add qualifying statistics
- Build an interactive dashboard
- Compare active and retired drivers using advanced metrics

---

## 👤 Author

**Jatin Sharma**

MBA (Business Analytics)

Passionate about Data Analytics, SQL, Python, Machine Learning, and solving real-world business problems through data.
