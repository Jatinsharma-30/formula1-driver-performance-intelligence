# 🐍 Python

This folder contains all Python notebooks developed for the **Formula 1 Driver Performance Intelligence** project. The notebooks demonstrate an end-to-end analytics workflow, covering data extraction, preprocessing, exploratory data analysis, feature engineering, machine learning, model evaluation, and business reporting.

The workflow is designed to simulate a real-world data analytics project where raw data is transformed into actionable insights using Python, MySQL, and machine learning techniques.

---

# 📁 Folder Structure

```
Python/
│
├── 01_Load_Data_To_SQL.ipynb
├── 02_Data_Cleaning.ipynb
├── 03_Exploratory_Data_Analysis.ipynb
├── 04_Feature_Engineering.ipynb
├── 05_Champion_Prediction.ipynb
├── 06_Model_Evaluation.ipynb
└── 07_Insights_and_Recommendations.ipynb
```

---

# 📒 Notebook Overview

## 01_Load_Data_To_SQL.ipynb

### Objective

Import the Formula 1 driver dataset into a MySQL database using Python.

### Tasks Performed

- Imported required libraries
- Connected Python with MySQL using SQLAlchemy
- Loaded CSV dataset
- Created SQL table automatically
- Imported data into MySQL
- Verified successful import

### Libraries Used

- Pandas
- SQLAlchemy
- PyMySQL

---

## 02_Data_Cleaning.ipynb

### Objective

Assess and validate the quality of the dataset before analysis.

### Tasks Performed

- Loaded data directly from MySQL
- Inspected dataset dimensions
- Checked data types
- Generated summary statistics
- Identified missing values
- Checked duplicate records
- Verified categorical variables
- Detected numerical outliers
- Documented observations

### Outcome

The dataset was confirmed to be clean, consistent, and ready for analysis.

---

## 03_Exploratory_Data_Analysis.ipynb

### Objective

Explore historical Formula 1 driver performance and identify important trends through statistical analysis and visualization.

### Analyses Performed

- Top Drivers by Race Wins
- Driver Nationality Analysis
- Championship Distribution
- Race Wins vs Podiums
- Pole Positions vs Race Wins
- Career Points Distribution
- Performance Across Decades
- Correlation Analysis
- Driver Performance Comparison

### Visualizations

- Bar Charts
- Pie Charts
- Scatter Plots
- Histograms
- Line Charts
- Correlation Heatmap

### Outcome

Generated meaningful insights into driver performance, consistency, and historical trends.

---

## 04_Feature_Engineering.ipynb

### Objective

Create new analytical features that improve machine learning performance and enhance predictive capability.

### Features Created

- Championship Experience
- Wins Per Season
- Podiums Per Season
- Points Per Season
- Win Efficiency
- Podium Efficiency
- Pole Conversion Rate
- Encoded Nationality
- Standardized Numerical Features

### Techniques Used

- Label Encoding
- Feature Scaling
- Mathematical Feature Creation
- Data Transformation

### Outcome

Prepared a machine-learning-ready dataset with enhanced predictive features.

---

## 05_Champion_Prediction.ipynb

### Objective

Develop classification models to predict Formula 1 championship success using historical driver statistics.

### Machine Learning Models

- Logistic Regression
- Decision Tree Classifier
- Random Forest Classifier

### Workflow

- Feature Selection
- Train-Test Split
- Model Training
- Prediction
- Performance Comparison

### Evaluation Metrics

- Accuracy
- Precision
- Recall
- F1 Score

### Outcome

Compared multiple classification algorithms and identified the best-performing model.

---

## 06_Model_Evaluation.ipynb

### Objective

Evaluate the performance of the selected machine learning model using industry-standard evaluation techniques.

### Evaluation Performed

- Model Performance Metrics
- Confusion Matrix
- ROC Curve
- Feature Importance
- Performance Visualization
- Final Model Selection

### Visualizations

- Confusion Matrix
- ROC Curve
- Feature Importance Chart
- Performance Comparison Chart

### Outcome

Identified the strongest predictive features and validated overall model performance.

---

## 07_Insights_and_Recommendations.ipynb

### Objective

Summarize the complete analytics workflow and present actionable business insights.

### Sections Included

- Executive Summary
- SQL Findings
- Python Findings
- Machine Learning Results
- Business Recommendations
- Future Improvements
- Project Conclusion

### Outcome

Provided a comprehensive summary of the project suitable for technical and business stakeholders.

---

## Workflow

```
Load Dataset
      │
      ▼
Import into MySQL
      │
      ▼
Data Cleaning
      │
      ▼
Exploratory Data Analysis
      │
      ▼
Feature Engineering
      │
      ▼
Machine Learning
      │
      ▼
Model Evaluation
      │
      ▼
Insights & Recommendations
```
---

# 🛠 Technologies Used

## Programming Language

- Python

## Database

- MySQL

## Data Manipulation

- Pandas
- NumPy

## Data Visualization

- Matplotlib

## Machine Learning

- Scikit-learn

## Database Connectivity

- SQLAlchemy
- PyMySQL

---

# 📊 Machine Learning Workflow

```
Load Data
      │
      ▼
Data Cleaning
      │
      ▼
Exploratory Data Analysis
      │
      ▼
Feature Engineering
      │
      ▼
Train-Test Split
      │
      ▼
Model Training
      │
      ▼
Model Evaluation
      │
      ▼
Business Recommendations
```

---

# 📈 Skills Demonstrated

This project demonstrates practical experience in:

### Data Analytics

- Data Cleaning
- Exploratory Data Analysis
- Data Validation
- Statistical Analysis
- Business Analytics
- Data Storytelling

### Python

- Pandas
- NumPy
- Matplotlib
- SQL Integration

### Machine Learning

- Classification
- Feature Engineering
- Model Training
- Model Evaluation
- Performance Comparison
- Feature Importance Analysis

### Database Integration

- MySQL Connectivity
- SQLAlchemy
- Data Import Automation

---

# 🎯 Learning Outcomes

By completing these notebooks, the project demonstrates the ability to:

- Build an end-to-end analytics workflow
- Integrate Python with relational databases
- Clean and preprocess real-world datasets
- Perform exploratory data analysis
- Engineer predictive features
- Develop and compare machine learning models
- Interpret model performance
- Present technical findings as business insights

---

# 🚀 Future Improvements

Potential enhancements include:

- Hyperparameter tuning using GridSearchCV
- Cross-validation for robust model evaluation
- Team-level performance analysis
- Race-level prediction models
- Interactive dashboards using Power BI
- Deployment of the trained model using Streamlit or Flask
- Automated data pipeline for future Formula 1 seasons

---

# 📌 Note

This notebook collection is intended for educational and portfolio purposes. It demonstrates the complete lifecycle of a data analytics project, from raw data ingestion to predictive modeling and business reporting, following industry-standard practices and reproducible workflows.
