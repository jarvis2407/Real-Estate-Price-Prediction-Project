Real Estate Price Prediction 🏠
A machine learning project that predicts property prices based on location, square footage, number of bedrooms, and other features.
The dataset is cleaned, preprocessed, and modeled using regression algorithms, with a focus on removing outliers, handling missing values, and engineering meaningful features like price per square foot.

Features
🧹 Data Cleaning:

Converted ranges (e.g., "1000-1200") to numerical values

Extracted BHK count from size column

Converted total area to numeric format from mixed units

Handled missing values using mean/median imputation

📊 Feature Engineering:

Created price_per_sqft metric

Grouped rare locations into "other"

Removed extreme outliers based on domain rules

🤖 Modeling:

Built baseline Linear Regression model

Compared with Random Forest and XGBoost

Tuned hyperparameters for best performance

📈 Evaluation:

Metrics: RMSE, R² Score, MAE

Cross-validation to avoid overfitting

🚀 Deployment Ready:

Code structured for easy integration with Flask/FastAPI

Dataset preprocessing pipeline reusable for predictions

Tech Stack
Languages: Python

Libraries: pandas, NumPy, scikit-learn, Matplotlib, Seaborn, XGBoost

Tools: Jupyter Notebook, Git, GitHub

How to Run
Clone the repo

Install dependencies:

bash
Copy
Edit
pip install -r requirements.txt
Run the notebook or Python script:

bash
Copy
Edit
jupyter notebook real_estate_price_prediction.ipynb