---- AI Assisted Prompt Development
# RCTCF Framework For  SQL Reporting
* ROLE: Expert Database developer and SQL Developer
* CONTEXT: Working for "big basket" retail about tracking products, targets, and orders
* TASK: Construct database reporting fields using calculations and text conditions
* CONSTRAINTS: Usng SQLite syntax and handle empty values safely
* FORMAT:A cleaned text file containing labeled queries and comments 

# Concrete Verification Step (SQL)
**Action Performed**: Ran the generated monthly-by-category query directly against our local 'bigbasket_capstone.db' database engine
**Validation** : Manually checked exactly 3 rows of output data from the resulting table against the raw values inside the 'orders' table
**Result** : Checked rows matched the raw spreadsheet row data perfectly. Order counts, monthly data tags, and calculated revenue aggregates match with zero mathematical error. Also manually calulated the Target Match & Drop percentage for every category. 



## RCTCF Framework For Pandas Data Cleaning
* ROLE: Expert Python Data Scientist and Pandas Automation Architect.
* CONTEXT: Normalizing a noisy retail transaction dataset inside a Jupyter/Google Colab notebook environment.
* TASK: Write clean, modular Python blocks to implement an Interquartile Range (IQR) outlier capping logic on the `amount_inr` field for Delivered orders.
* CONSTRAINTS: Calculate statistical quartile fences strictly using rows flagged as 'Delivered' to prevent pending data rows from skewing the limits.
* FORMAT: Step-by-step Pandas code snippets utilizing DataFrame masking and `.loc` positioning.

## Concrete Verification Step (Python)
**Action Performed**: Executed the IQR outlier management block inside our Google Colab notebook workspace.
**Validation Steps**: Re-ran the data matrix lines and manually checked 3 previously-outlier rows to confirm they were correctly capped at the upper fence value instead of their old extreme inputs.
**Result**: The code successfully modified the target data rows. All extreme fields match the statistical boundary line exactly without breaking the underlying DataFrame structures.
