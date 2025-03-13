# Ready, Shot, Goal!
## Champions League Project

## 📌 Project Overview
This project involves extracting football-related data, storing it in a MySQL database, retrieving it into Python, and creating insightful visualizations. The dataset includes player statistics, team performance, and goal attempts from the UEFA Champions League. Main goal was to calculate how many shots a team needs to score a goal.

## 📂 Data Sources
The project utilizes the following datasets:
- `players_data.csv`: Player details and statistics.
- `teams_data.csv`: Team performance data.
- `att+goals_data.csv`: Data on goal attempts and goals scored.

## 🏗 Project Workflow
1. **Data Import**: Load CSV files into Pandas DataFrames.
2. **Data Cleaning & Preprocessing**:
   - Handle missing values.
   - Remove unnecessary columns.
   - Check for duplicates.
3. **Store Data in MySQL**:
   - Establish a connection using `SQLAlchemy` and `pymysql`.
   - Upload cleaned data to MySQL.
4. **Retrieve Data from MySQL**:
   - Export tables back to CSV.
   - Read them into Pandas DataFrames.
5. **Data Analysis & Visualization**:
   - Calculate league-wide shot-to-goal averages.
   - Generate bar charts and scatter plots.
   - Annotate scatter plots with team and player names.

## 🔧 Setup & Installation
### Prerequisites
- Python 3.13+
- MySQL Database
- Required Python Libraries:
  ```bash
  pip install pandas sqlalchemy pymysql matplotlib numpy
  ```

### Database Configuration
Ensure MySQL is running and update the connection string in your script:
```python
engine = create_engine("mysql+pymysql://root:YOUR_PASSWORD@localhost/ucl")
```

## 📊 Visualizations
The project generates the following visualizations:
- **Bar Charts**:
  - Shot-to-goal ratio for teams.
  - Shot-to-goal ratio for players.
- **Scatter Plots**:
  - Total goals vs. total attempts for teams.
  - Goals vs. total attempts for players.

## 🚀 How to Run the Project
1. Load and clean data using `pandas`.
2. Store the cleaned data into MySQL.
3. Retrieve and analyze the data.
4. Generate visualizations.
5. Interpret insights and conclusions.

## 📌 Author
The project was developed by André Barros and Rafal Kolakowski as part of an Ironhack Data Analytics bootcamp.

## 🔗 License
This project is for educational purposes only.

