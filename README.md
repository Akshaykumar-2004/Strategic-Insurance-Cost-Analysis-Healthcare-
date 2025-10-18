# 🏥 Strategic Insurance Cost Analysis (Healthcare)

## 📖 Overview
This project analyzes a **health insurance customer dataset** to uncover the **key factors driving medical costs**.  
The objective is to provide **actionable insights** for the insurance company to inform **pricing strategies**, **develop targeted wellness programs**, and **improve financial risk prediction**.

---

## 📦 Dataset
The analysis uses the **"Medical Cost Personal Datasets"** from [Kaggle](https://www.kaggle.com/datasets/mirichoi0218/insurance), containing data on **1,338 insurance customers**, including:
- Age  
- Sex  
- BMI  
- Number of Children  
- Smoking Status  
- Region  
- Yearly Medical Charges  

---

## ⚙️ Methodology

### 1. **Database Setup & SQL Analysis**
- Set up a **local MySQL database** using **MySQL Server** and **MySQL Workbench**.  
- Created a database named **`insurance_project`** and imported `insurance.csv` into a table named **`costs`** via the Table Data Import Wizard.  
- Performed key **SQL analyses**:
  - Calculated **average medical charges for smokers vs. non-smokers** using `AVG` and `GROUP BY`.  
  - Determined **average charges per region**, ordered by descending cost (`ORDER BY DESC`).  
- Exported processed data as **`insurance_processed.csv`** for Python analysis.

---

### 2. **Python EDA & Feature Engineering (Google Colab)**
- Loaded the processed dataset into a **Pandas DataFrame**.  
- Performed **data cleaning**, including removal of duplicate rows.  
- Conducted **outlier detection** using **Seaborn box plots** for `bmi`, `age`, and `charges`. Outliers were retained since they represent real high-cost events.  
- Created a **correlation matrix** using a Seaborn heatmap to analyze numerical relationships (e.g., *Age vs. Charges*, *BMI vs. Charges*).  
- Engineered a new categorical feature:  
  - `bmi_category` → (‘Underweight’, ‘Normal’, ‘Overweight’, ‘Obese’)  
- Built a **scatter plot** to visualize relationships between `age`, `charges`, `smoker`, and `bmi`.  
- Exported the final enriched dataset as **`insurance_final_for_dashboard.csv`**.

---

### 3. **Power BI Dashboarding**
- Loaded **`insurance_final_for_dashboard.csv`** into **Power BI Desktop**.  
- Created **DAX measures**:
  - `Smoker Avg Charge`  
  - `Non-Smoker Avg Charge`  
  - `Smoking Penalty` (difference between the two)  
- Designed a **3-page interactive dashboard**:

#### 📊 Page 1: Executive Summary
- KPI Cards (Total Customers, Avg Charge, Smoking Penalty)  
- Donut Chart (Smoker Breakdown)  
- Map Visualization (Regional Costs)

#### ⚠️ Page 2: High-Risk Factor Analysis
- Slicers for `smoker`, `bmi_category`, and `region`  
- Dynamic KPI Cards showing filtered averages  
- Scatter Plot (Age vs. Charges, colored by smoker, sized by BMI)

#### 👥 Page 3: Demographic Deep Dive
- Matrix: Avg Charges by Region and BMI Category  
- Stacked Column Chart: Avg Charges by Number of Children  
- Treemap: Total Charges by BMI Category  

---

## 💡 Key Questions Answered & Insights

| Question | Insight |
|-----------|----------|
| **Smoking Penalty** | Smokers have significantly higher average medical costs, quantified precisely via DAX calculations. |
| **Regional Differences** | Certain regions consistently exhibit higher costs, identified via SQL and Power BI Map. |
| **Age & BMI Effect** | Both Age and BMI have strong positive correlations with Charges, especially among smokers. |
| **Family Factors** | Higher number of children slightly increases average costs, as shown in bar charts. |
| **High-Risk Profiles** | Older, obese smokers represent the costliest customer segment, confirmed across dashboards. |

---

## 🧰 Technologies Used
- **SQL (MySQL Server, MySQL Workbench)**
- **Python**
- **Pandas**
- **Matplotlib**, **Seaborn**
- **Power BI Desktop**
- **DAX**
- **Google Colab**

---

## 📊 Reporting & Dashboard
The final cleaned and enriched dataset (`insurance_final_for_dashboard.csv`) was integrated into a **Power BI dashboard** to enable **interactive exploration** and **data-driven decision-making** by business stakeholders.

---


---

## 🚀 Future Work
- Apply **machine learning models** to predict medical charges based on demographic and lifestyle factors.  
- Integrate **risk scoring models** for underwriting optimization.  
- Add **automated refresh** and **real-time data streaming** for Power BI dashboards.

---

## 🧾 Citation
Dataset Source: [Medical Cost Personal Datasets – Kaggle](https://www.kaggle.com/datasets/mirichoi0218/insurance)  
(cite: 1005–1115)

