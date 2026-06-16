SHARK ATTACK DATA PROJECT
=========================

Project Overview
----------------
This project analyzes historical shark attack records from the Global Shark Attack File (GSAF).
The primary objective is to investigate whether shark attack fatalities are more likely to occur
when sharks are provoked, while also exploring geographic and contextual patterns in shark attacks
across the United States.

Business Case
-------------
Popular culture has contributed to a widespread fear of sharks. This project uses data analysis to
examine shark attack incidents and provide evidence-based insights into the circumstances surrounding
fatal and non-fatal encounters.

Research Questions
------------------
1. What are the most common activities during shark attacks?
2. Which U.S. states report the highest number of shark attacks?
3. Are fatal attacks more likely when sharks are provoked?
4. What additional factors may influence attack outcomes?

Dataset
-------
Source: Global Shark Attack File (GSAF)

Expected input file:
- GSAF5.xls

Main Workflow
-------------
1. Load and inspect the shark attack dataset.
2. Clean and standardize column names and values.
3. Remove unused columns and duplicate records.
4. Standardize country and state information.
5. Filter the dataset to focus on the United States.
6. Analyze attack frequency by state.
7. Explore attack circumstances, activities, and outcomes.
8. Perform additional analyses to support findings.

Key Data Cleaning Steps
-----------------------
- Convert column names to lowercase.
- Remove extra whitespace from column names.
- Drop irrelevant columns.
- Handle duplicate records.
- Standardize country names.
- Standardize state names and locations.
- Filter records to U.S.-based incidents.

Dependencies
------------
Python libraries used in the notebook:
- pandas
- numpy

How to Run
----------
1. Place the dataset file (GSAF5.xls) in the same directory as the notebook.
2. Open the notebook:
   shark_data_project_final.ipynb
3. Run all cells sequentially.

Project Structure
-----------------
- shark_data_project_final.ipynb : Main analysis notebook
- GSAF5.xls                      : Source dataset (required)

Notes
-----
The notebook focuses primarily on shark attack incidents in the United States and includes both
core analysis and additional exploratory analysis to support the project's conclusions.
