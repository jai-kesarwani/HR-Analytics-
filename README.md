# 📊 HR Analytics: Employee Attrition & Workforce Analysis

An end-to-end **HR Analytics project** focused on analyzing employee attrition, workforce demographics, compensation patterns, promotion impact, overtime trends, and retention risks. This project combines **SQL, Python, Excel, and Power BI** to transform raw HR data into actionable business insights and interactive dashboards.

---

## 🎯 Project Objective

Employee attrition impacts productivity, recruitment costs, and organizational performance. The objective of this project is to:

- Analyze workforce demographics and employee distribution
- Identify factors influencing employee attrition
- Study compensation, promotion, and overtime impact on retention
- Detect high-risk employee groups
- Provide actionable HR recommendations to improve retention

---

## 🛠️ Tools & Technologies Used

| Tool | Purpose |
|------|----------|
| Excel | Initial data cleaning & exploration |
| PostgreSQL | Business queries & workforce analysis |
| Python (Pandas, NumPy, Matplotlib, Seaborn) | Data cleaning & exploratory data analysis |
| Power BI | Interactive dashboard & business storytelling |
| GitHub | Project documentation & version control |

---

## 📂 Project Workflow

```txt
Raw Dataset
    ↓
Excel Cleaning
    ↓
PostgreSQL Business Analysis
    ↓
Python EDA & Feature Engineering
    ↓
Power BI Dashboard
    ↓
Insights & Recommendations
```

---

## 📌 Dataset

Dataset Used:

**IBM HR Analytics Employee Attrition Dataset**

Features include:

- Employee demographics
- Department
- Job role
- Salary
- Overtime
- Promotion history
- Job satisfaction
- Attrition status
- Work experience
- Performance indicators

---

## 🧹 Data Cleaning & Feature Engineering

Performed:

✔ Checked missing values  
✔ Removed duplicate records  
✔ Removed irrelevant columns  
✔ Created new features:

- `PromotionGap`
- `AnnualIncome`
- `AgeGroup`
- `Risk Category`

✔ Prepared cleaned dataset for SQL & Power BI

---

## 🗄️ SQL Business Questions Answered

Examples:

- What is the employee attrition rate?
- Which departments experience highest attrition?
- Does overtime contribute to attrition?
- Which job roles have highest turnover?
- Does delayed promotion affect retention?
- Which employees are high retention risk?
- Which departments contain most high-risk employees?
- Rank departments by attrition
- Compare overtime impact on attrition

---

## 📈 Python Analysis (EDA)

Performed exploratory analysis on:

- Employee distribution
- Attrition trends
- Salary distribution
- Promotion gap analysis
- Overtime impact
- Job satisfaction analysis
- Workforce segmentation

Libraries:

```python
Pandas
NumPy
Matplotlib
Seaborn
```

---

# 📊 Power BI Dashboard

The dashboard is divided into **3 analytical sections**:

### 1️⃣ Workforce Overview
- Total Employees
- Attrition Rate
- Average Salary
- Average Age
- Department Distribution
- Gender Distribution
- Age Group Analysis

### 2️⃣ Attrition Analysis
- Department-wise Attrition
- Job Role Attrition
- Overtime vs Attrition
- Salary vs Attrition
- Promotion Gap Analysis
- Satisfaction Impact

### 3️⃣ Risk Analysis & Recommendations
- Risk Category Distribution
- Retention Drivers
- Department Risk Analysis
- High Risk Employee Monitoring
- Strategic Recommendations

---

## 📷 Dashboard Screenshots

### Workforce Overview Dashboard

![Workforce Overview](Screenshots/dashboard/Workforce%20Overview.png)

---

### Employee Attrition Analysis Dashboard

![Employee Attrition Analysis](Screenshots/dashboard/Employee%20Attrition.png)

---

### Workforce Risk Analysis Dashboard

![Risk Analysis](Screenshots/dashboard/Risk%20Analysis%20&%20Recommendation.png)

---

## 🗄️ SQL Insights Screenshots

### Attrition Rate

![Attrition Rate](Screenshots/sql%20insights/Attrition%20Rate.png)

---

### Department-wise Attrition

![Department-wise Attrition](Screenshots/sql%20insights/Dept-wise%20attrition.png)

---

### Rank of JobRole over Average Salry

![JobRole Rank](Screenshots/sql%20insights/job%20role%20rank.png)

---

### High Risk Employees Analysis

![High Risk Employees Analysis](Screenshots/sql%20insights/high%20risk%20employees.png)

---

# 🔍 Key Insights

1. Employees working overtime exhibit significantly higher attrition trends.

2. Delayed promotions and lower job satisfaction are strongly associated with increased retention risk.

3. Sales and Research & Development departments show comparatively higher workforce risk.

4. Lower salary bands indicate higher employee turnover tendencies.

5. Young Adult employees demonstrate increased attrition rates.

---

# 💡 Recommendations

- Implement structured promotion cycles and career growth opportunities.
- Improve work-life balance by reducing excessive overtime.
- Strengthen employee engagement and satisfaction initiatives.
- Develop targeted retention strategies for high-risk departments.
- Review compensation policies to improve workforce retention.

---

## 📁 Project Structure

```txt
HR_ANALYTICS/

│
├── Dataset/
│      ├── HR_Analytics.csv
│      └── HR_Cleaned.csv
│
├── Screenshots/
│      │
│      ├── dashboard/
│      │
│      └── sql insights/
│
├── HR_Analytics Dashboard.pbix
│
├── HR_Analytics_SQL_Queries.sql
│
├── HR_Analytics.ipynb
│
└── README.md
```

## 🚀 Future Improvements

- Employee attrition prediction model
- Streamlit dashboard deployment
- Advanced workforce segmentation
- Real-time HR monitoring dashboard

---

## 👤 Author

**Jai Kesarwani**

Aspiring Data Analyst | Python | SQL | Power BI | Data Visualization
