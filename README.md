# Iris Dataset Analysis 🌸

## 📌 Objective
This project demonstrates how to:
- Load and explore a dataset using **pandas**
- Perform basic data analysis
- Visualize results using **matplotlib** and **seaborn**

The dataset used is the classic **Iris dataset**, which contains measurements of sepal length, sepal width, petal length, and petal width for three species of iris flowers: *setosa*, *versicolor*, and *virginica*.

---

## 📊 Steps Performed

### 1. Data Loading & Exploration
- Loaded the Iris dataset from `sklearn.datasets`.
- Converted it into a pandas DataFrame.
- Checked structure with `.info()` and `.head()`.
- Confirmed there were **no missing values**.

### 2. Data Analysis
- Generated summary statistics using `.describe()`.
- Grouped by **species** to calculate the mean of each measurement.

---

## ✍️ Findings / Observations
1. The average sepal length is about **5.84 cm**, ranging from **4.3 cm to 7.9 cm**.
2. Petal length shows the **largest variation**, while sepal width shows the **smallest**.
3. **Setosa** has the smallest petals and sepals, **Virginica** has the largest, and **Versicolor** lies in between.
4. The **line chart** shows variation without major outliers.
5. The **bar chart** confirms Virginica has the longest sepals on average.
6. The **histogram** shows petal lengths cluster at small values (Setosa) and large values (Virginica).
7. The **scatter plot** shows Setosa is clearly distinct, while Versicolor and Virginica overlap.

---

## 3. Data Visualization
Four different plots were created:
1. **Line Chart** – Sepal length across samples
2. **Bar Chart** – Average sepal length per species
3. **Histogram** – Distribution of petal length
4. **Scatter Plot** – Sepal length vs. petal length, colored by species

---

## 🛠️ Technologies Used
- **Python 3**
- **pandas** for data handling
- **matplotlib** and **seaborn** for visualizations
- **scikit-learn** for dataset access

---

## 🚀 How to Run
1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/iris-analysis.git
