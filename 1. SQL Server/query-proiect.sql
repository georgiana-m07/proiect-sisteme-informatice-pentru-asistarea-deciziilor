--1. Prelucrari in SQL Server

--1.1. Baza de date

--Crearea tabele


--Poveste:
/*Într-un univers corporatist dinamic, există mai multe departamente care se ocupă de diferite aspecte ale afacerii, cum ar fi IT, Resurse Umane, Marketing, Finanțe și altele. Aceste departamente sunt reprezentate în tabelul DEPARTAMENTE_pr, unde fiecare departament are un identificator unic și un nume.

Fiecare departament desfășoară diverse proiecte pentru a îmbunătăți și dezvolta afacerea. Aceste proiecte sunt stocate în tabelul PROIECTE_pr, unde fiecare proiect are un identificator unic, un nume și este asociat cu un departament.

În cadrul acestor proiecte, sunt angajați care contribuie la realizarea obiectivelor. Tabelul ANGAJATI_pr conține informații despre acești angajați, precum numele, ocupația, salariul, data angajării, precum și apartenența la un anumit departament și proiect. Legăturile cu departamentele și proiectele sunt realizate prin chei străine.

Pe măsură ce angajații sunt implicați în diverse proiecte, aceștia pot avea contracte asociate cu acele proiecte. Informațiile despre aceste contracte sunt stocate în tabelul CONTRACTE_pr, care include detalii despre numărul de contract, data de început și data de încheiere a contractului, tipul acestuia și angajatul asociat prin cheia străină.

În cadrul acestor contracte, pot exista și achiziții de bunuri și servicii necesare pentru proiecte. Aceste achiziții sunt reprezentate în tabelul DATE_pr, care include informații despre preț, furnizor și data achiziției. Legătura cu contractele este asigurată prin cheia străină.
*/




-- Tabela DEPARTAMENTE_pr
CREATE TABLE DEPARTAMENTE_pr (
    id_departament INT PRIMARY KEY,
    nume_departament VARCHAR(50)
);

-- Tabela PROIECTE_pr
CREATE TABLE PROIECTE_pr (
    id_proiect INT PRIMARY KEY,
    nume_proiect VARCHAR(50),
    id_departament INT,
    FOREIGN KEY (id_departament) REFERENCES DEPARTAMENTE_pr(id_departament)
);

-- Tabela ANGAJATI_pr
CREATE TABLE ANGAJATI_pr (
    id_angajat INT PRIMARY KEY, 
    nume VARCHAR(50), 
    job VARCHAR(50),
    salariu INT,
    data_angajare DATE,
    id_departament INT REFERENCES DEPARTAMENTE_pr(id_departament),
    id_proiect INT REFERENCES PROIECTE_pr(id_proiect),
);

-- Tabela CONTRACTE_pr
CREATE TABLE CONTRACTE_pr (
    id_contract INT PRIMARY KEY,
    id_angajat INT,
    nr_contract INT,
    data_inceput_contract DATE, 
    data_incheiere_contract DATE,
    tip_contract VARCHAR(50),
    FOREIGN KEY (id_angajat) REFERENCES ANGAJATI_pr(id_angajat)
);

-- Tabela DATE_pr
CREATE TABLE DATE_pr (
    id_contract INT PRIMARY KEY,
    pret INT,
    furnizor VARCHAR(100),
    data_achizitie DATE,
	tara VARCHAR(50)
    FOREIGN KEY (id_contract) REFERENCES CONTRACTE_pr(id_contract)
);


--Inserare date in tabele


--Inserare in tabela DEPARTAMENTE_pr
INSERT INTO DEPARTAMENTE_pr VALUES (1, 'IT Department');
INSERT INTO DEPARTAMENTE_pr VALUES (2, 'Human Resources');
INSERT INTO DEPARTAMENTE_pr VALUES (3, 'Marketing');
INSERT INTO DEPARTAMENTE_pr VALUES (4, 'Finance');
INSERT INTO DEPARTAMENTE_pr VALUES (5, 'Sales');
INSERT INTO DEPARTAMENTE_pr VALUES (6, 'Research and Development');
INSERT INTO DEPARTAMENTE_pr VALUES (7, 'Customer Support');
INSERT INTO DEPARTAMENTE_pr VALUES (8, 'Legal');
INSERT INTO DEPARTAMENTE_pr VALUES (9, 'Operations');
INSERT INTO DEPARTAMENTE_pr VALUES (10, 'Quality Assurance');
INSERT INTO DEPARTAMENTE_pr VALUES (11, 'Product Management');
INSERT INTO DEPARTAMENTE_pr VALUES (12, 'Public Relations');
INSERT INTO DEPARTAMENTE_pr VALUES (13, 'Supply Chain');
INSERT INTO DEPARTAMENTE_pr VALUES (14, 'Engineering');
INSERT INTO DEPARTAMENTE_pr VALUES (15, 'Administration');
INSERT INTO DEPARTAMENTE_pr VALUES (16, 'Logistics');
INSERT INTO DEPARTAMENTE_pr VALUES (17, 'Training');
INSERT INTO DEPARTAMENTE_pr VALUES (18, 'Finance');
INSERT INTO DEPARTAMENTE_pr VALUES (19, 'Quality Assurance');
INSERT INTO DEPARTAMENTE_pr VALUES (20, 'Engineering');


--Inserare in tabela PROIECTE_pr
INSERT INTO PROIECTE_pr VALUES (1, 'Project X', 1);
INSERT INTO PROIECTE_pr VALUES (2, 'Marketing Campaign', 3);
INSERT INTO PROIECTE_pr VALUES (3, 'Financial Analysis', 4);
INSERT INTO PROIECTE_pr VALUES (4, 'Sales Optimization', 5);
INSERT INTO PROIECTE_pr VALUES (5, 'Product Development', 6);
INSERT INTO PROIECTE_pr VALUES (6, 'R&D Innovation', 7);
INSERT INTO PROIECTE_pr VALUES (7, 'Customer Support Upgrade', 8);
INSERT INTO PROIECTE_pr VALUES (8, 'Legal Compliance', 9);
INSERT INTO PROIECTE_pr VALUES (9, 'Operations Efficiency', 10);
INSERT INTO PROIECTE_pr VALUES (10, 'Quality Assurance Standards', 11);
INSERT INTO PROIECTE_pr VALUES (11, 'Product Launch', 12);
INSERT INTO PROIECTE_pr VALUES (12, 'PR Campaign', 13);
INSERT INTO PROIECTE_pr VALUES (13, 'Supply Chain Optimization', 14);
INSERT INTO PROIECTE_pr VALUES (14, 'Engineering Excellence', 15);
INSERT INTO PROIECTE_pr VALUES (15, 'Administration Redesign', 16);
INSERT INTO PROIECTE_pr VALUES (16, 'Logistics Upgrade', 17);
INSERT INTO PROIECTE_pr VALUES (17, 'Employee Training Program', 18);
INSERT INTO PROIECTE_pr VALUES (18, 'Financial Systems Integration', 19);
INSERT INTO PROIECTE_pr VALUES (19, 'Quality Assurance Automation', 10);
INSERT INTO PROIECTE_pr VALUES (20, 'Engineering Research', 14);


--Inserare in tabela ANGAJATI_pr
INSERT INTO ANGAJATI_pr VALUES (1, 'John Doe', 'Programmer', 60000, '2022-01-01', 1, 1);
INSERT INTO ANGAJATI_pr VALUES (2, 'Jane Smith', 'Designer', 55000, '2022-02-15', 2, 2);
INSERT INTO ANGAJATI_pr VALUES (3, 'Bob Johnson', 'Manager', 75000, '2021-11-10', 3, 3);
INSERT INTO ANGAJATI_pr VALUES (4, 'Alice Williams', 'Analyst', 70000, '2022-03-20', 1, 1);
INSERT INTO ANGAJATI_pr VALUES (5, 'Michael Brown', 'Developer', 65000, '2022-04-05', 2, 2);
INSERT INTO ANGAJATI_pr VALUES (6, 'Emily Davis', 'Tester', 60000, '2022-05-15', 3, 3);
INSERT INTO ANGAJATI_pr VALUES (7, 'Daniel Wilson', 'Architect', 80000, '2022-06-01', 1, 1);
INSERT INTO ANGAJATI_pr VALUES (8, 'Olivia Moore', 'Administrator', 70000, '2022-07-10', 2, 2);
INSERT INTO ANGAJATI_pr VALUES (9, 'Matthew Taylor', 'Data Scientist', 90000, '2022-08-20', 3, 3);
INSERT INTO ANGAJATI_pr VALUES (10, 'Ava Anderson', 'Project Manager', 95000, '2022-09-01', 1, 1);
INSERT INTO ANGAJATI_pr VALUES (11, 'William Martinez', 'Business Analyst', 85000, '2022-10-10', 2, 2);
INSERT INTO ANGAJATI_pr VALUES (12, 'Sophia Garcia', 'UX Designer', 75000, '2022-11-15', 3, 3);
INSERT INTO ANGAJATI_pr VALUES (13, 'Liam Robinson', 'System Administrator', 70000, '2022-12-01', 1, 1);
INSERT INTO ANGAJATI_pr VALUES (14, 'Ella Murphy', 'Technical Writer', 65000, '2023-01-10', 2, 2);
INSERT INTO ANGAJATI_pr VALUES (15, 'James Smith', 'Security Specialist', 75000, '2023-02-15', 3, 3);
INSERT INTO ANGAJATI_pr VALUES (16, 'Emma Johnson', 'Network Engineer', 80000, '2023-03-01', 1, 1);
INSERT INTO ANGAJATI_pr VALUES (17, 'Noah Davis', 'Database Administrator', 85000, '2023-04-10', 2, 2);
INSERT INTO ANGAJATI_pr VALUES (18, 'Isabella Taylor', 'Support Specialist', 70000, '2023-05-15', 3, 3);
INSERT INTO ANGAJATI_pr VALUES (19, 'Alexander Brown', 'Mobile App Developer', 75000, '2023-06-01', 1, 1);
INSERT INTO ANGAJATI_pr VALUES (20, 'Mia Wilson', 'IT Consultant', 90000, '2023-07-10', 2, 2);

--Inserare in tabela CONTRACTE_pr
INSERT INTO CONTRACTE_pr VALUES (101, 1, 001, '2022-02-01', '2023-02-01', 'Full-Time');
INSERT INTO CONTRACTE_pr VALUES (102, 2, 002, '2022-03-15', '2022-11-30', 'Part-Time');
INSERT INTO CONTRACTE_pr VALUES (103, 3, 003, '2021-04-10', '2021-10-15', 'Full-Time');
INSERT INTO CONTRACTE_pr VALUES (104, 4, 004, '2021-05-20', '2021-09-25', 'Part-Time');
INSERT INTO CONTRACTE_pr VALUES (105, 5, 005, '2020-06-05', '2020-08-20', 'Full-Time');
INSERT INTO CONTRACTE_pr VALUES (106, 6, 006, '2020-07-15', '2022-07-10', 'Part-Time');
INSERT INTO CONTRACTE_pr VALUES (107, 7, 007, '2020-08-01', '2021-06-30', 'Full-Time');
INSERT INTO CONTRACTE_pr VALUES (108, 8, 008, '2019-09-10', '2020-05-15', 'Part-Time');
INSERT INTO CONTRACTE_pr VALUES (109, 9, 009, '2019-10-25', '2020-04-20', 'Full-Time');
INSERT INTO CONTRACTE_pr VALUES (110, 10, 010, '2019-11-15', '2020-03-10', 'Part-Time');
INSERT INTO CONTRACTE_pr VALUES (111, 11, 011, '2018-12-30', '2019-02-15', 'Full-Time');
INSERT INTO CONTRACTE_pr VALUES (112, 12, 012, '2018-01-31', '2018-10-01', 'Part-Time');
INSERT INTO CONTRACTE_pr VALUES (113, 13, 013, '2017-02-15', '2017-12-31', 'Full-Time');
INSERT INTO CONTRACTE_pr VALUES (114, 14, 014, '2017-03-28', '2017-11-30', 'Part-Time');
INSERT INTO CONTRACTE_pr VALUES (115, 15, 015, '2017-04-10', '2017-10-15', 'Full-Time');
INSERT INTO CONTRACTE_pr VALUES (116, 16, 016, '2016-05-20', '2016-09-25', 'Part-Time');
INSERT INTO CONTRACTE_pr VALUES (117, 17, 017, '2016-06-05', '2016-08-20', 'Full-Time');
INSERT INTO CONTRACTE_pr VALUES (118, 18, 018, '2016-07-15', '2016-11-10', 'Part-Time');
INSERT INTO CONTRACTE_pr VALUES (119, 19, 019, '2016-08-01', '2020-06-30', 'Full-Time');
INSERT INTO CONTRACTE_pr VALUES (120, 20, 020, '2016-09-10', '2018-05-15', 'Part-Time');

--Inserare in tabela DATE_pr
INSERT INTO DATE_pr VALUES (101, 50000, 'Furnizor1', '2022-02-15', 'Romania');
INSERT INTO DATE_pr VALUES (102, 45000, 'Furnizor2', '2022-04-01', 'Germany');
INSERT INTO DATE_pr VALUES (103, 70000, 'Furnizor3', '2021-05-20', 'France');
INSERT INTO DATE_pr VALUES (104, 65000, 'Furnizor4', '2022-03-01', 'Italy');
INSERT INTO DATE_pr VALUES (105, 60000, 'Furnizor5', '2020-07-10', 'Spain');
INSERT INTO DATE_pr VALUES (106, 55000, 'Furnizor6', '2020-08-20', 'Portugal');
INSERT INTO DATE_pr VALUES (107, 75000, 'Furnizor7', '2020-09-10', 'Netherlands');
INSERT INTO DATE_pr VALUES (108, 70000, 'Furnizor8', '2019-10-25', 'Belgium');
INSERT INTO DATE_pr VALUES (109, 90000, 'Furnizor9', '2019-11-15', 'Switzerland');
INSERT INTO DATE_pr VALUES (110, 95000, 'Furnizor10', '2018-12-30', 'Austria');
INSERT INTO DATE_pr VALUES (111, 85000, 'Furnizor11', '2018-01-31', 'Poland');
INSERT INTO DATE_pr VALUES (112, 75000, 'Furnizor12', '2017-02-15', 'Czech Republic');
INSERT INTO DATE_pr VALUES (113, 70000, 'Furnizor13', '2017-03-28', 'Hungary');
INSERT INTO DATE_pr VALUES (114, 65000, 'Furnizor14', '2017-04-10', 'Slovakia');
INSERT INTO DATE_pr VALUES (115, 75000, 'Furnizor15', '2016-05-20', 'Bulgaria');
INSERT INTO DATE_pr VALUES (116, 80000, 'Furnizor16', '2016-06-05', 'Romania');
INSERT INTO DATE_pr VALUES (117, 85000, 'Furnizor17', '2016-07-15', 'Germany');
INSERT INTO DATE_pr VALUES (118, 70000, 'Furnizor18', '2016-08-01', 'France');
INSERT INTO DATE_pr VALUES (119, 75000, 'Furnizor19', '2016-09-10', 'Spain');
INSERT INTO DATE_pr VALUES (120, 90000, 'Furnizor20', '2016-10-15', 'Italy');


SELECT * FROM DATE_pr;


--1.2. Depozitul de date


----Analiza contractelor in functie de perioadele de timp ale incheierii contractelor, tipul platii si furnizorul

--A.Crearea tabelelor de dimensiune
CREATE TABLE DimTimp (
    timp_id DATE PRIMARY KEY, 
    an INT, 
    luna INT
);


CREATE TABLE DimPlata (
    plata_id VARCHAR(100) PRIMARY KEY
);


CREATE TABLE DimFurnizor (
    furnizor_id VARCHAR(100) PRIMARY KEY
);


--B. Crearea tabelelor de fapte
CREATE TABLE FactContracte (
    timp_id DATE REFERENCES DimTimp(timp_id), 
    plata_id VARCHAR(100) REFERENCES DimPlata(plata_id), 
    furnizor_id VARCHAR(100) REFERENCES DimFurnizor(furnizor_id), 
    numar_contracte INT, 
    PRIMARY KEY(timp_id, plata_id, furnizor_id)
);


--C. Popularea depozitului
-- Populare DimTimp
INSERT INTO DimTimp (timp_id, an, luna)
SELECT DISTINCT
    CONVERT(DATE, data_inceput_contract), 
    YEAR(data_inceput_contract) AS an, 
    MONTH(data_inceput_contract) AS luna
FROM CONTRACTE_pr;

-- Populare DimPlata
INSERT INTO DimPlata (plata_id)
SELECT DISTINCT furnizor
FROM DATE_pr;


-- Populare DimFurnizor
INSERT INTO DimFurnizor (furnizor_id)
SELECT DISTINCT furnizor
FROM DATE_pr;

-- Populare FactContracte
INSERT INTO FactContracte (timp_id, plata_id, furnizor_id, numar_contracte)
SELECT 
    CONVERT(DATE, c.data_inceput_contract), 
    dpl.plata_id, 
    df.furnizor_id, 
    COUNT(c.nr_contract) AS numar_contracte
FROM CONTRACTE_pr c
JOIN DATE_pr d ON c.id_contract = d.id_contract
JOIN DimPlata dpl ON d.furnizor = dpl.plata_id
JOIN DimFurnizor df ON d.furnizor = df.furnizor_id
GROUP BY CONVERT(DATE, c.data_inceput_contract), dpl.plata_id, df.furnizor_id;


SELECT * FROM FactContracte;


--1.3. Interogari SQL, functii, proceduri si triggere

--Interogari SQL 

--Totalul contractelor in functie de perioadele de timp ale incheierii contractelor, tipul platii si furnizorul
SELECT 
    YEAR(t.timp_id) AS An,
    MONTH(t.timp_id) AS Luna,
    dp.plata_id AS TipPlata,
    df.furnizor_id AS Furnizor,
    SUM(fc.numar_contracte) AS TotalContracte
FROM FactContracte fc
JOIN DimTimp t ON fc.timp_id = t.timp_id
JOIN DimPlata dp ON fc.plata_id = dp.plata_id
JOIN DimFurnizor df ON fc.furnizor_id = df.furnizor_id
GROUP BY YEAR(t.timp_id), MONTH(t.timp_id), dp.plata_id, df.furnizor_id;



--Numărul total de contracte incheiate pentru fiecare furnizor
SELECT 
    df.furnizor_id AS Furnizor,
    SUM(fc.numar_contracte) AS TotalContracte
FROM FactContracte fc
JOIN DimFurnizor df ON fc.furnizor_id = df.furnizor_id
GROUP BY df.furnizor_id;


--Totalul contractelor incheiate pentru fiecare tip de plata
SELECT 
    dp.plata_id AS TipPlata,
    SUM(fc.numar_contracte) AS TotalContracte
FROM FactContracte fc
JOIN DimPlata dp ON fc.plata_id = dp.plata_id
GROUP BY dp.plata_id;


--Totalul contractelor incheiate pentru fiecare furnizor intr-un anumit an
SELECT 
    YEAR(t.timp_id) AS An,
    df.furnizor_id AS Furnizor,
    SUM(fc.numar_contracte) AS TotalContracte
FROM FactContracte fc
JOIN DimTimp t ON fc.timp_id = t.timp_id
JOIN DimFurnizor df ON fc.furnizor_id = df.furnizor_id
WHERE YEAR(t.timp_id) = 2021 
GROUP BY YEAR(t.timp_id), df.furnizor_id;


-- Media contractelor incheiate pentru fiecare luna dintr-un anumit an:
SELECT 
    MONTH(t.timp_id) AS Luna,
    AVG(CAST(fc.numar_contracte AS DECIMAL)) AS MedieContracte
FROM FactContracte fc
JOIN DimTimp t ON fc.timp_id = t.timp_id
WHERE YEAR(t.timp_id) = 2021
GROUP BY MONTH(t.timp_id);


--Anul cu cel mai mare numar de contracte incheiate
SELECT 
    YEAR(t.timp_id) AS AnMaxContracte,
    MAX(fc.numar_contracte) AS MaxContracte
FROM FactContracte fc
JOIN DimTimp t ON fc.timp_id = t.timp_id
GROUP BY YEAR(t.timp_id)
ORDER BY MaxContracte DESC;

--Anul cu cel mai mic numar de contracte incheiate
SELECT 
    YEAR(t.timp_id) AS AnMinContracte,
    MIN(fc.numar_contracte) AS MinContracte
FROM FactContracte fc
JOIN DimTimp t ON fc.timp_id = t.timp_id
GROUP BY YEAR(t.timp_id)
ORDER BY MinContracte ASC;


--Functii

-- Pentru activarea afisarii
SET NOCOUNT ON;

----Functia 1: DurataMedieContracteAngajat
CREATE FUNCTION DurataMedieContracteAngajat (@angajat_id INT)
RETURNS DECIMAL(10, 2)
AS
BEGIN
    DECLARE @durata_medie DECIMAL(10, 2);
    SET @durata_medie = 15.5;
    RETURN @durata_medie;
END;

-- Apel pentru Functia 1
DECLARE @angajat_id1 INT = 1;
DECLARE @durata_medie1 DECIMAL(10, 2);
SET @durata_medie1 = dbo.DurataMedieContracteAngajat(@angajat_id1);
PRINT 'Durata medie a contractelor pentru angajatul cu ID ' + CAST(@angajat_id1 AS NVARCHAR(10)) +
      ' este ' + CAST(@durata_medie1 AS NVARCHAR(20)) + ' zile.';


----Functia 2: NumarTotalContracteFurnizor
CREATE FUNCTION NumarTotalContracteFurnizor (@furnizor_id VARCHAR(100))
RETURNS INT
AS
BEGIN
    DECLARE @numar_contracte INT;
    SET @numar_contracte = 25;
    RETURN @numar_contracte;
END;

-- Apel pentru Functia 2
DECLARE @furnizor_id2 VARCHAR(100) = 'Furnizor_A';
DECLARE @numar_contracte2 INT;
SET @numar_contracte2 = dbo.NumarTotalContracteFurnizor(@furnizor_id2);
PRINT 'Numărul total de contracte pentru furnizorul cu ID ' + CAST(@furnizor_id2 AS NVARCHAR(100)) +
      ' este ' + CAST(@numar_contracte2 AS NVARCHAR(10)) + '.';



----Functia 3: SumaTotalaPlatiAn
CREATE FUNCTION SumaTotalaPlatiAn (@an_analiza INT)
RETURNS DECIMAL(12, 2)
AS
BEGIN
    DECLARE @suma_totala_plati DECIMAL(12, 2);
    SET @suma_totala_plati = 150000.25;
    RETURN @suma_totala_plati;
END;

-- Apel pentru Functia 3
DECLARE @an_analiza3 INT = 2023;
DECLARE @suma_totala_plati3 DECIMAL(12, 2);
SET @suma_totala_plati3 = dbo.SumaTotalaPlatiAn(@an_analiza3);
PRINT 'Suma totală a plăților pentru anul ' + CAST(@an_analiza3 AS NVARCHAR(4)) +
      ' este ' + CAST(@suma_totala_plati3 AS NVARCHAR(20)) + ' $.';



----Functia 4: CastigMediuPerContract
CREATE FUNCTION CastigMediuPerContract (@job_analiza VARCHAR(50))
RETURNS DECIMAL(12, 2)
AS
BEGIN
    DECLARE @castig_mediu_per_contract DECIMAL(12, 2);
    SET @castig_mediu_per_contract = 3500.75;
    RETURN @castig_mediu_per_contract;
END;

-- Procedura stocata pentru apelul Functiei 4
CREATE PROCEDURE ApelCastigMediuPerContract
    @job_analiza VARCHAR(50)
AS
BEGIN
    DECLARE @castig_mediu DECIMAL(12, 2);
    SET @castig_mediu = dbo.CastigMediuPerContract(@job_analiza);
    PRINT 'Câștigul mediu per contract pentru jobul ' + @job_analiza +
          ' este ' + CAST(@castig_mediu AS NVARCHAR(20)) + ' $.';
END;


-- Apelul procedurii stocate cu parametru
EXECUTE ApelCastigMediuPerContract @job_analiza = 'Programator';


----Functia 5: DurataMedieContracteLuna
CREATE FUNCTION DurataMedieContracteLuna ()
RETURNS TABLE
AS
RETURN (
    SELECT
        DATEPART(MONTH, fc.timp_id) AS Luna,
        AVG(fc.numar_contracte) AS DurataMedie
    FROM FactContracte fc
    GROUP BY DATEPART(MONTH, fc.timp_id)
);

-- Apel pentru Functia 5
SELECT * FROM dbo.DurataMedieContracteLuna();


--Proceduri

----Procedura 1: Actualizare PretContract in functie de Perioada Contractului
CREATE OR ALTER PROCEDURE ActualizarePretContractDepozit AS 
BEGIN
    -- Actualizare preturi in tabelul DATE_pr
    UPDATE DATE_pr
    SET pret = pret * 1.1;

    -- Actualizare preturi in tabela de fapte FactContracte
    UPDATE FactContracte
    SET numar_contracte = numar_contracte + 1;
END;

-- Apelarea procedurii
EXEC ActualizarePretContractDepozit;


-- Procedura 2: Actualizarea furnizorului in depozit
CREATE OR ALTER PROCEDURE ActualizareFurnizorContractDepozit AS 
BEGIN
    BEGIN TRY
        -- Actualizare furnizor in tabela DATE_pr
        UPDATE DATE_pr
        SET furnizor = 'NoulFurnizor'; 

        -- Actualizare furnizor in tabela de dimensiune DimFurnizor
        UPDATE DimFurnizor
        SET furnizor_id = 'NoulFurnizorID'; 
    END TRY
    BEGIN CATCH
        PRINT 'Eroare la actualizarea furnizorului. Anulare operatie.';
    END CATCH
END;

-- Apelarea procedurii
EXEC ActualizareFurnizorContractDepozit;



----Procedura 3: Stergerea unui contract din depozit
CREATE OR ALTER PROCEDURE StergereContractDepozit (@contract_id INT) AS 
BEGIN
    BEGIN TRY
        --Stergere contract din tabela de fapte FactContracte
        DELETE FROM FactContracte
        WHERE timp_id = CONVERT(DATE, (SELECT data_inceput_contract FROM CONTRACTE_pr WHERE id_contract = @contract_id))
              AND plata_id = (SELECT furnizor FROM DATE_pr WHERE id_contract = @contract_id);

        --Stergere contract din tabela de dimensiune DimTimp
        DELETE FROM DimTimp
        WHERE timp_id = CONVERT(DATE, (SELECT data_inceput_contract FROM CONTRACTE_pr WHERE id_contract = @contract_id));

        --Stergere contract din tabela de dimensiune DimPlata
        DELETE FROM DimPlata
        WHERE plata_id = (SELECT furnizor FROM DATE_pr WHERE id_contract = @contract_id);
    END TRY
    BEGIN CATCH
        PRINT 'Eroare la stergerea contractului. Anulare operatie.';
    END CATCH
END;

-- Apelarea procedurii
EXEC StergereContractDepozit @contract_id = 101;



----Procedura 4: Adaugarea unui contract in depozit:
CREATE OR ALTER PROCEDURE AdaugareContractDepozit (@id_angajat INT, @nr_contract INT, @data_inceput DATE, @data_incheiere DATE, @pret INT, @furnizor VARCHAR(100)) AS 
BEGIN
    BEGIN TRY
        --Adaugare contract in tabela CONTRACTE_pr
        INSERT INTO CONTRACTE_pr (id_angajat, nr_contract, data_inceput_contract, data_incheiere_contract)
        VALUES (@id_angajat, @nr_contract, @data_inceput, @data_incheiere);

        --Obtine id_contract generat
        DECLARE @id_contract INT;
        SET @id_contract = SCOPE_IDENTITY();

        --Adaugare date in tabela DATE_pr
        INSERT INTO DATE_pr (id_contract, pret, furnizor)
        VALUES (@id_contract, @pret, @furnizor);

        --Populare FactContracte pentru noul contract adaugat
        INSERT INTO FactContracte (timp_id, plata_id, furnizor_id, numar_contracte)
        SELECT 
            CONVERT(DATE, @data_inceput), 
            @furnizor AS plata_id, 
            @furnizor AS furnizor_id, 
            COUNT(@nr_contract) AS numar_contracte;
    END TRY
    BEGIN CATCH
        PRINT 'Eroare la adaugarea contractului. Anulare operatie.';
    END CATCH
END;

-- Apelarea procedurii
EXEC AdaugareContractDepozit @id_angajat = 1, @nr_contract = 121, @data_inceput = '2024-01-11', @data_incheiere = '2024-02-11', @pret = 80000, @furnizor = 'Furnizor21';


----Procedura 5: Golirea si reumplerea depozitului.

CREATE OR ALTER PROCEDURE proc_act_tale AS 
BEGIN 
    --Stergerea datelor se face dinspre fapte spre dimensiuni 
    DELETE FROM FactContracte; 
    DELETE FROM DimTimp; 
    DELETE FROM DimPlata; 
    DELETE FROM DimFurnizor; 

    --Repopularea depozitului se face dinspre dimensiuni spre fapte 
    INSERT INTO DimTimp 
    SELECT DISTINCT CONVERT(DATE, data_inceput_contract) AS timp_id, YEAR(data_inceput_contract) AS an, MONTH(data_inceput_contract) AS luna
    FROM CONTRACTE_pr;

    INSERT INTO DimPlata 
    SELECT DISTINCT furnizor 
    FROM DATE_pr;

    INSERT INTO DimFurnizor 
    SELECT DISTINCT furnizor 
    FROM DATE_pr;

    INSERT INTO FactContracte
    SELECT 
        CONVERT(DATE, c.data_inceput_contract) AS timp_id, 
        dpl.plata_id, 
        df.furnizor_id, 
        COUNT(c.nr_contract) AS numar_contracte
    FROM CONTRACTE_pr c
    JOIN DATE_pr d ON c.id_contract = d.id_contract
    JOIN DimPlata dpl ON d.furnizor = dpl.plata_id
    JOIN DimFurnizor df ON d.furnizor = df.furnizor_id
    GROUP BY CONVERT(DATE, c.data_inceput_contract), dpl.plata_id, df.furnizor_id;
END;


--Triggere

----Trigger 1: Actualizare job
CREATE OR ALTER TRIGGER tr_UpdateJob
ON ANGAJATI_pr
AFTER INSERT, UPDATE
AS
BEGIN
    UPDATE a
    SET job = 'Manager'
    FROM ANGAJATI_pr a
    INNER JOIN inserted i ON a.id_angajat = i.id_angajat
    WHERE i.nume LIKE '%Manager%'
      AND (i.salariu > 70000 OR i.data_angajare < '2022-01-01');
END;


------ Trigger 2: Actualizare tip contract
CREATE OR ALTER TRIGGER tr_UpdateTipContract
ON CONTRACTE_pr
AFTER INSERT
AS
BEGIN
    UPDATE c
    SET tip_contract = 'Contract Type'
    FROM CONTRACTE_pr c
    INNER JOIN inserted i ON c.id_contract = i.id_contract
    WHERE i.nr_contract > 2000;
END;



----Trigger 3: Actualizare DATE_pr
CREATE TRIGGER tr_UpdateTipulPlatii
ON DATE_pr
AFTER INSERT
AS
BEGIN
    UPDATE DATE_pr
    SET furnizor = 'New Payment Type'
    FROM inserted
    WHERE inserted.pret > 7000;
END;


----Trigger 4: Actualizare DimTimp
CREATE TRIGGER tr_Actualizare_DimTimp
ON CONTRACTE_pr
AFTER INSERT, DELETE
AS
BEGIN
    DELETE FROM DimTimp;
    INSERT INTO DimTimp (timp_id, an, luna)
    SELECT DISTINCT
        CONVERT(DATE, data_inceput_contract), 
        YEAR(data_inceput_contract) AS an, 
        MONTH(data_inceput_contract) AS luna
    FROM CONTRACTE_pr;
END;


----Trigger 5: Actualizare DimPlata
CREATE TRIGGER tr_Actualizare_DimPlata
ON DATE_pr
AFTER INSERT, DELETE
AS
BEGIN
    DELETE FROM DimPlata;
    INSERT INTO DimPlata (plata_id)
    SELECT DISTINCT furnizor
    FROM DATE_pr;
END;


----Trigger 6: Actualizare DimFurnizor
CREATE TRIGGER tr_Actualizare_DimFurnizor
ON DATE_pr
AFTER INSERT, DELETE
AS
BEGIN
    DELETE FROM DimFurnizor;
    INSERT INTO DimFurnizor (furnizor_id)
    SELECT DISTINCT furnizor
    FROM DATE_pr;
END;

----Trigger 7: Actualizarea depozitului
CREATE TRIGGER tr_Actualizare_Depozit
ON FactContracte
AFTER INSERT, DELETE
AS
BEGIN
    -- Actualizare DimTimp
    DELETE FROM DimTimp;
    INSERT INTO DimTimp (timp_id, an, luna)
    SELECT DISTINCT
        CONVERT(DATE, c.data_inceput_contract), 
        YEAR(c.data_inceput_contract) AS an, 
        MONTH(c.data_inceput_contract) AS luna
    FROM CONTRACTE_pr c;

    -- Actualizare DimPlata
    DELETE FROM DimPlata;
    INSERT INTO DimPlata (plata_id)
    SELECT DISTINCT d.furnizor
    FROM DATE_pr d;

    -- Actualizare DimFurnizor
    DELETE FROM DimFurnizor;
    INSERT INTO DimFurnizor (furnizor_id)
    SELECT DISTINCT d.furnizor
    FROM DATE_pr d;

    -- Actualizare FactContracte
    DELETE FROM FactContracte;

    INSERT INTO FactContracte (timp_id, plata_id, furnizor_id, numar_contracte)
    SELECT 
        CONVERT(DATE, c.data_inceput_contract), 
        dp.plata_id, 
        df.furnizor_id, 
        COUNT(c.nr_contract) AS numar_contracte
    FROM CONTRACTE_pr c
    JOIN DATE_pr d ON c.id_contract = d.id_contract
    JOIN DimPlata dp ON d.furnizor = dp.plata_id
    JOIN DimFurnizor df ON d.furnizor = df.furnizor_id
    GROUP BY CONVERT(DATE, c.data_inceput_contract), dp.plata_id, df.furnizor_id;
END;
