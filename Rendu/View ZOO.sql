-- ----------------------------------------------------
-- View ZOO.sql
-- Date: January 2021
-- Author: V.Butty & P.Costa
-- Goal: Create a view, to show the number of entries in each table
-- -----------------------------------------------------


-- ----------------------------------------------------
-- Specify the database to work on
-- ----------------------------------------------------
USE ZOO;
GO


-- ----------------------------------------------------
-- Select each table one by one and count the entries' number in it
-- ----------------------------------------------------
CREATE VIEW [ViewEntryCountByTable] AS
Select COUNT(animals.id) AS Animals,
(Select COUNT(id) FROM animals_follows_care) AS 'Animals follow care', 
(Select COUNT(id) FROM animals_has_states) AS 'Animals have state',
(Select COUNT(id) FROM care) AS Care,
(Select COUNT(id) FROM diets) AS Diets,
(Select COUNT(id) FROM employees) AS Employees,
(Select COUNT(id) FROM employees_supplies_pens) AS 'Employees Supplies Pens',
(Select COUNT(id) FROM pens) AS Pens,
(Select COUNT(id) FROM sectors) AS Sectors,
(Select COUNT(id) FROM sex) AS Sex,
(Select COUNT(id) FROM states) AS States,
(Select COUNT(id) FROM status) AS Status,
(Select COUNT(id) FROM stocks) AS Stocks,
(Select COUNT(id) FROM types) AS Types
FROM animals

GO