# Information systems for assisting decisions Project (SIAD)

This project was developed for the "Information systems for assisting decisions" (SIAD - Sisteme informatice pentru asistarea deciziilor) course and focuses on building an integrated decision support system using multiple technologies such as SQL Server, MS Power BI, MS PowerPivot, and .Net Windows Report Viewer Control. The objective was to demonstrate efficient data processing by providing robust tools for analysis and reporting in a business environment.

## Project Structure and Components:

### 1. SQL Server Database
The project began by designing and implementing a solid relational database in **SQL Server**. This included:
- **Table Creation**: Various tables like `DEPARTAMENTE_pr`, `PROIECTE_pr`, and `CONTRACTE_pr` were designed to represent business departments, projects, and contracts, ensuring efficient and consistent data storage.
- **Data Insertion**: Populating these tables with representative business data.
  
*Example:*
```sql
CREATE TABLE DEPARTAMENTE_pr (
  id_departament INT PRIMARY KEY,
  nume_departament VARCHAR(50)
);

### 2. Data Warehouse
The data warehouse was built by centralizing information for faster access. This involved creating dimension and fact tables like DimTimp, DimPlata, and FactContracte.
Key SQL analyses:
- **Contract Analytics** based on payment type and supplier were performed using various SQL queries.
