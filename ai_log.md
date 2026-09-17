---- AI Assisted Prompt Development
# RCTCF Framework
ROLE: Expert Database developer and SQL Developer
CONTEXT: Working for "big basket" retail about tracking products, targets, and orders
TASK: Construct database reporting fields using calculations and text conditions
CONSTRAINTS: Usng SQLite syntax and handle empty values safely
FORMAT:A cleaned text file containing labeled queries and comments 

# Concrete Verification Step
**Action Performed**: Ran the generated monthly-by-category query directly against our local 'bigbasket_capstone.db' database engine
**Validation** : Manually checked exactly 3 rows of output data from the resulting table against the raw values inside the 'orders' table
**Result** : Checked rows matched the raw spreadsheet row data perfectly. Order counts, monthly data tags, and calculated revenue aggregates match with zero mathematical error. Also manually calulated the Target Match & Drop percentage for every category. 
