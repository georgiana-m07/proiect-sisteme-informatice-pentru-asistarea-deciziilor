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
```

### 2. Data Warehouse
The data warehouse was built by centralizing information for faster access. This involved creating dimension and fact tables like `DimTimp`, `DimPlata`, and `FactContracte`.

**Key SQL analyses:**
- Contract Analytics based on payment type and supplier were performed using various SQL queries.

### 3. Power BI Integration
Data from SQL Server was imported into Power BI to facilitate advanced analytics:
- **Custom DAX Functions**: Used for calculating KPIs like `AngajatCuCelMaiMareSalariu` and `DurataMedieContracte`.
- **Interactive Dashboard**: Visualizing data trends and business metrics.

### 4. Python Integration
Python scripts were integrated into Power BI for advanced data clustering and classification. This was achieved using libraries like **pandas**, **scikit-learn**, and **joblib**.

*Python Script Example:*

```python
from sklearn.neighbors import KNeighborsClassifier
from sklearn.metrics import accuracy_score
```

### 5. Reporting with .Net Windows 
Report Viewer Control was used to create detailed and customizable reports, including SQL-based reports and KPI visualization.

### 6. PowerPivot Analytics
Additional data processing was performed in MS PowerPivot with a focus on defining and measuring key performance indicators (KPIs), such as:
- Average contract duration
- Total supplier payments

## Technologies Used:
- **SQL Server** for data storage and queries
- **MS Power BI** for data visualization and analytics
- **MS PowerPivot** for KPI analysis
- **Python** for advanced clustering and classification
- **.Net Windows Report Viewer** for report generation

## Screenshots
### 1. SQL Server Database
![image](https://github.com/user-attachments/assets/bbc16934-092e-40c2-a377-1ab5dd5ae763)
**Description:** Diagram showing the relationships between tables in SQL Server.


![image](https://github.com/user-attachments/assets/237d0c75-3b3b-4866-8f3f-0ed500b95788)

**Description:** Complete view of the DEPARTAMENTE_pr table showing department details.

### 2. Data Warehouse
![image](https://github.com/user-attachments/assets/e2152682-6e05-4305-a5ed-1a4e9483895a)

**Description:** View of the FactContracte table showing contract data for analysis.

### 3. Power BI Integration
![image](https://github.com/user-attachments/assets/63a917ee-e908-40f3-a278-9b9fb4bcadec)

![image](https://github.com/user-attachments/assets/bc0b0518-9896-4ca2-ac6d-67bc12253bfd)
**Description:** Interactive dashboard in Power BI displaying key business insights.

### 4. Python Integration
![image](https://github.com/user-attachments/assets/52fe81b1-9ab0-4d14-86c6-11c445755b0d)
**Description:** Python scrupt for showing data clustering results.

### 5. Reporting with .Net Windows 
![image](https://github.com/user-attachments/assets/576edb92-7f61-415b-97f4-05a7c8bc82b6)
**Description:** Report generated in Report Viewer Control showcasing key performance indicators.

![image](https://github.com/user-attachments/assets/b638ae41-8ef0-47d0-bcbc-5b4b05259782)
**Description:** SQL-based report generated in Report Viewer Control.

### 6. PowerPivot Analytics
![image](https://github.com/user-attachments/assets/f0ae62d2-5cfa-45de-91c7-2b983776a901)
**Description:** KPIs defined in PowerPivot showing performance metrics.
