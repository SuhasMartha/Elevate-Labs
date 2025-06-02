# 🧹 Data Cleaning and Preprocessing Project

## 📌 Objective
The objective of this project is to clean and preprocess multiple raw datasets containing missing values, duplicates, inconsistent formats, and data type issues. This ensures the datasets are analysis-ready and standardized for future machine learning or visualization tasks.

---

## 📂 Datasets Processed
| Dataset Name              | File Name                         | Records | Columns |
|--------------------------|-----------------------------------|---------|---------|
| Medical Appointments      | `KaggleV2-May-2016.csv`           | 110,527 | 14      |
| Mall Customer Segmentation| `Mall_Customers.csv`              | 200     | 5       |
| Marketing Campaign        | `marketing_campaign.csv`          | 2,240   | 29      |
| Netflix Titles            | `netflix_titles.csv`              | 8,807   | 12      |

---

## 🧼 Cleaning Steps Applied
For all datasets, the following cleaning operations were performed:

- ✅ Removed duplicate rows.
- ✅ Handled missing values (either dropped or replaced with defaults).
- ✅ Standardized text fields (e.g., gender, marital status, education).
- ✅ Renamed column headers to lowercase, underscored, no special characters.
- ✅ Converted date fields to `datetime` format.
- ✅ Fixed data types (e.g., numeric fields, strings).

---

## 📁 Cleaned Output Files
All cleaned datasets are saved in CSV format:

- `kaggle_appointments_cleaned.csv`
- `mall_customers_cleaned.csv`
- `marketing_campaign_cleaned.csv`
- `netflix_titles_cleaned.csv`

---

## 🛠️ Tools Used
- Python 3.x
- Pandas
- Jupyter / VS Code
- (Optional) Excel for initial inspection

---

## 🧾 License
This project is for educational and analytical purposes.

---

## 🤝 Acknowledgments
- Datasets sourced from Kaggle and public repositories.
- Cleaned using open-source Python tools and best practices in data science.
