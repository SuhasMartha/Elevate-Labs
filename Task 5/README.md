# 🚢 Exploratory Data Analysis (EDA) - Titanic Dataset

## 📌 Objective
Perform exploratory data analysis on the Titanic dataset to extract meaningful patterns, relationships, and insights using both visual and statistical methods.

---

## 🛠 Tools & Technologies
- **Language**: Python  
- **Libraries**: `pandas`, `matplotlib`, `seaborn`, `numpy`  
- **Environment**: Jupyter Notebook

---

## 📂 Dataset
- **Source**: Titanic dataset (`train.csv`)
- **Key Features**:
  - `Survived`: Target variable (0 = No, 1 = Yes)
  - `Pclass`, `Sex`, `Age`, `SibSp`, `Parch`, `Fare`, `Embarked`, etc.

---

## 🔍 EDA Techniques Used

### 🧪 Statistical Exploration
- `.info()` and `.describe()` for understanding structure and statistics
- `.value_counts()` for categorical distributions
- Checking for missing values and types

### 📊 Visual Analysis
- **Pairplot**: Relationship between `Survived`, `Pclass`, `Fare`, and `Age`
- **Heatmap**: Correlation matrix of numerical features
- **Histograms**: Distribution of `Age` and `Fare`
- **Boxplot**: Age distribution comparison across survival groups
- **Countplot**: Passenger class vs survival

---

## 📈 Key Insights
- **Pclass** and **Fare** strongly influence survival chances.
- **Younger passengers** and **1st class** passengers had higher survival rates.
- **Fare** distribution is right-skewed.
- **Gender and age** are crucial factors in survival.

---

## 🧾 Deliverables
- ✔️ `Titanic_EDA.ipynb`: Jupyter Notebook with all analysis
- ✔️ `Titanic_EDA_Report.pdf`: Summary report of visual observations and findings

---

## 🧠 Outcome
This task demonstrates the ability to:
- Clean and inspect real-world data
- Use data visualization effectively
- Derive actionable business or analytical insights from raw data

---

## 📎 Optional Next Steps
- Apply ML classification models to predict survival
- Perform feature engineering to improve model accuracy
