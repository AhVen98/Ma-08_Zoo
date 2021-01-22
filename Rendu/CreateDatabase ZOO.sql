-- ----------------------------------------------------
-- CreateDatabase ZOO.sql
-- Date: January 2021
-- Author: V.Butty & P.Costa
-- Goal: Creates the Zoo DB
--       If the DB already exists, it is destroyed and recreated
--       The data directory C:\DATA\MSSQL is created if it doesn't exist
-- -----------------------------------------------------
USE master
GO

-- ----------------------------------------------------
-- Drop the database if it exists
-- ----------------------------------------------------
IF (EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = 'ZOO'))
BEGIN
	USE master
	ALTER DATABASE ZOO SET SINGLE_USER WITH ROLLBACK IMMEDIATE
	DROP DATABASE ZOO
END
GO

-- ----------------------------------------------------
-- Create the database and speficy file locations
-- ----------------------------------------------------
EXEC master.sys.xp_create_subdir 'C:\DATA\MSSQL'
GO
CREATE DATABASE ZOO
	ON (NAME = 'ZOO_data', FILENAME = 'C:\DATA\MSSQL\ZOO.mdf', SIZE = 2048 MB, MAXSIZE = 5120MB, FILEGROWTH = 1024MB)
	LOG ON (NAME = 'ZOO_log', FILENAME = 'C:\DATA\MSSQL\ZOO.ldf', SIZE = 1024MB, MAXSIZE = 2048MB, FILEGROWTH = 1024MB)
GO

-- ----------------------------------------------------
-- Specify the database to work on
-- ----------------------------------------------------
USE ZOO;
GO

-- ----------------------------------------------------
-- Create the tables
-- ----------------------------------------------------

CREATE TABLE diets (
  id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
  name VARCHAR(45) UNIQUE NOT NULL
);
GO


CREATE TABLE status (
  id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
  name VARCHAR(45) UNIQUE NOT NULL,
  code VARCHAR(8) UNIQUE NOT NULL
);
GO


CREATE TABLE species (
  id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
  name VARCHAR(45) UNIQUE NOT NULL,
  diets_id INT NOT NULL,
  status_id INT NOT NULL,
);
GO


CREATE TABLE sex (
  id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
  name VARCHAR(16) UNIQUE NOT NULL
);
GO


CREATE TABLE sectors (
  id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
  name VARCHAR(45) UNIQUE NOT NULL
);
GO


CREATE TABLE types (
  id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
  name VARCHAR(45) UNIQUE NOT NULL
);
GO


CREATE TABLE states (
  id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
  name VARCHAR(45) UNIQUE NOT NULL
);
GO


CREATE TABLE care (
  id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
  name VARCHAR(45) UNIQUE NOT NULL
);
GO


CREATE TABLE pens (
  id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
  name VARCHAR(45) UNIQUE NOT NULL,
  constructionDate DATE NOT NULL,
  lastwork DATE NOT NULL,
  livedIn BIT NOT NULL,
  size FLOAT NOT NULL,
  sectors_id INT NOT NULL,
  types_id INT NOT NULL,
);
GO


CREATE TABLE animals (
  id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
  name VARCHAR(45) NOT NULL,
  birthdate DATE NOT NULL,
  lastfeed DATETIME NOT NULL,
  remark VARCHAR(45) NULL,
  species_id INT NOT NULL,
  sex_id INT NOT NULL,
  pens_id INT NOT NULL,
  mother_id INT NULL,
  father_id INT NULL,
);
GO


CREATE TABLE employees (
  id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
  contractnumber VARCHAR(45) UNIQUE NOT NULL,
  acronym VARCHAR(4) UNIQUE NOT NULL CHECK (acronym LIKE '[A-Z][A-Z][A-Z]'),
  lastname VARCHAR(45) NOT NULL,
  firstname VARCHAR(45) NOT NULL,
  birthdate DATE NOT NULL,
  sex_id INT NOT NULL,
);
GO


CREATE TABLE stocks (
  id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
  reference VARCHAR(45) UNIQUE NOT NULL,
  name VARCHAR(45) NOT NULL,
  provider VARCHAR(45) NOT NULL,
  priceperunit FLOAT NOT NULL CHECK(priceperunit > 0),
  uses VARCHAR(45) NOT NULL,
  quantity FLOAT NOT NULL,
  sectors_id INT NOT NULL,
);
GO


CREATE TABLE animals_has_states (
  id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
  animals_id INT NOT NULL,
  states_id INT NOT NULL,
);
GO
 

CREATE TABLE animals_follows_care (
  id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
  animals_id INT NOT NULL,
  care_id INT NOT NULL,
  employees_id INT NULL,
  stocks_id INT NULL,
  stockQuantity FLOAT NULL,
  date DATE NOT NULL,
);
GO


CREATE TABLE employees_supplies_pens (
  id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
  employees_id INT NULL,
  pens_id INT NOT NULL,
  stocks_id INT NULL,
  stockQuantity FLOAT NULL,
  date DATE NOT NULL,
);
GO


-- ----------------------------------------------------
-- Specify the referential constraint
-- ----------------------------------------------------
ALTER TABLE species WITH CHECK ADD CONSTRAINT FK_species_diet FOREIGN KEY (diets_id) REFERENCES diets(id)
    ON DELETE CASCADE

ALTER TABLE species WITH CHECK ADD CONSTRAINT FK_species_status FOREIGN KEY (status_id) REFERENCES status(id)

ALTER TABLE pens WITH CHECK ADD CONSTRAINT FK_pens_sectors FOREIGN KEY (sectors_id) REFERENCES sectors(id)

ALTER TABLE pens WITH CHECK ADD CONSTRAINT FK_pens_types FOREIGN KEY (types_id) REFERENCES types(id)

ALTER TABLE animals WITH CHECK ADD CONSTRAINT FK_animals_species FOREIGN KEY (species_id) REFERENCES species(id)

ALTER TABLE animals WITH CHECK ADD CONSTRAINT FK_animals_pens FOREIGN KEY (pens_id) REFERENCES pens(id)

ALTER TABLE animals WITH CHECK ADD CONSTRAINT FK_animal_mother FOREIGN KEY (mother_id) REFERENCES animals(id)
    -- ON DELETE SET NULL =>

ALTER TABLE animals WITH CHECK ADD CONSTRAINT FK_animal_father FOREIGN KEY (father_id) REFERENCES animals(id)
    -- ON DELETE SET NULL =>

ALTER TABLE employees WITH CHECK ADD CONSTRAINT FK_employees_sex FOREIGN KEY (sex_id) REFERENCES sex(id)

ALTER TABLE stocks WITH CHECK ADD CONSTRAINT FK_stocks_sectors FOREIGN KEY (sectors_id) REFERENCES sectors(id)

ALTER TABLE animals_has_states WITH CHECK ADD CONSTRAINT FK_animals_has_states_animal FOREIGN KEY (animals_id) REFERENCES animals(id)
    ON DELETE CASCADE

ALTER TABLE animals_has_states WITH CHECK ADD CONSTRAINT FK_animals_has_states_states FOREIGN KEY (states_id) REFERENCES states(id)

ALTER TABLE animals_follows_care WITH CHECK ADD CONSTRAINT FK_animalsFollowsCare_animals FOREIGN KEY (animals_id) REFERENCES animals(id)
    ON DELETE CASCADE

ALTER TABLE animals_follows_care WITH CHECK ADD CONSTRAINT FK_animals_follows_care_care FOREIGN KEY (care_id) REFERENCES care(id)

ALTER TABLE animals_follows_care WITH CHECK ADD CONSTRAINT FK_animals_follows_care_stocks FOREIGN KEY (stocks_id) REFERENCES stocks(id)

ALTER TABLE animals_follows_care WITH CHECK ADD CONSTRAINT FK_animals_follows_care_employees FOREIGN KEY (employees_id) REFERENCES employees(id)
    ON DELETE SET NULL

ALTER TABLE employees_supplies_pens WITH CHECK ADD CONSTRAINT FK_employees_supplies_pens_employees FOREIGN KEY (employees_id) REFERENCES employees(id)
    ON DELETE SET NULL

ALTER TABLE employees_supplies_pens WITH CHECK ADD CONSTRAINT FK_employees_supplies_pens_pens FOREIGN KEY (pens_id) REFERENCES pens(id)

ALTER TABLE employees_supplies_pens WITH CHECK ADD CONSTRAINT FK_employees_supplies_pens_stocks FOREIGN KEY (stocks_id) REFERENCES stocks(id)

GO
-- ----------------------------------------------------
-- Specify the natural identifiers
-- ----------------------------------------------------
CREATE UNIQUE NONCLUSTERED INDEX UniqueEmployee ON employees (contractnumber, lastname, firstname)

CREATE UNIQUE NONCLUSTERED INDEX UniqueProduct ON stocks (reference, provider)

CREATE UNIQUE NONCLUSTERED INDEX UniqueAnimalState ON animals_has_states (animals_id, states_id)

CREATE UNIQUE NONCLUSTERED INDEX UniqueAnimalCare ON animals_follows_care (care_id, animals_id)

GO

-- ----------------------------------------------------
-- Information for dataedo
-- ----------------------------------------------------

-- Sur les tables
	EXECUTE sp_addextendedproperty 
	        @level0type = N'Schema', @level0name = 'dbo',  
	        @level1type = N'Table', @level1name = 'employees_supplies_pens',   
	        @name = 'MS_Description', @value='Cette table relie entre elles 3 tables, la table employés ("employees"), la table animaux ("animals") et la table stock ("stocks"). Elle permet de montrer les éléments suivants : un ou plusieurs employés ravitaille un ou plusieurs enclos. Pour ce faire, il(s) utilise(nt) aucun ou plusieurs éléments présents dans les stocks.';
	
	EXECUTE sp_addextendedproperty 
	        @level0type = N'Schema', @level0name = 'dbo',  
	        @level1type = N'Table', @level1name = 'animals_follows_care',   
	        @name = 'MS_Description', @value='Cette table permet de regrouper une action regroupant au maximum quatre éléments : un animal, un soigneur, un soin particulier et du stock.  Un animal peut suivre aucun ou plusieurs soins et un soin peut être suivi par aucun ou plusieurs animaux. Ce soin sera effectué par un ou plusieurs employé(s). Pour cela, ils vont utiliser aucun ou plusieurs éléments des stocks.';
	
-- Sur les colonnes	
	EXECUTE sp_addextendedproperty 
	        @level0type = N'Schema', @level0name = 'dbo',  
	        @level1type = N'Table', @level1name = 'animals',   
	        @level2type = N'Column',@level2name = 'mother_id',
	        @name = 'MS_Description', @value='il s''agit de référencer un autre animal présent dans le zoo, qui est la mère de la bête dont nous consultons les informations. Une absence de données ne signifie pas son inexistance, simplement que cet individu ne fait pas parti du zoo.';
		EXECUTE sp_addextendedproperty 
	        @level0type = N'Schema', @level0name = 'dbo',  
	        @level1type = N'Table', @level1name = 'animals',   
	        @level2type = N'Column',@level2name = 'father_id',
	        @name = 'MS_Description', @value='il s''agit de référencer un autre animal présent dans le zoo, qui est le père de la bête dont nous consultons les informations. Une absence de données ne signifie pas son inexistance, simplement que cet individu ne fait pas parti du zoo.';	
	EXECUTE sp_addextendedproperty 
	        @level0type = N'Schema', @level0name = 'dbo',  
	        @level1type = N'Table', @level1name = 'employees',   
	        @level2type = N'Column',@level2name = 'contractnumber',
	        @name = 'MS_Description', @value='on parle ici du numéro de contrat de l''employé. Celui-ci est unique et permet de retrouver la personne facilement lors de recherches spécifiques sur les employés.';
	EXECUTE sp_addextendedproperty 
	        @level0type = N'Schema', @level0name = 'dbo',  
	        @level1type = N'Table', @level1name = 'employees',   
	        @level2type = N'Column',@level2name = 'acronym',
	        @name = 'MS_Description', @value='Un acronyme sert aux employés pour signifier aux autres qui a accompli quoi. Il remplit globalement la même fonctionnalité que le numéro de contrat, mais est beaucoup plus compréhensible pour un être humain. Il est créé grâce à la première lettre du prénom, la première lettre du nom et la dernière lettre du nom.';
	EXECUTE sp_addextendedproperty 
	        @level0type = N'Schema', @level0name = 'dbo',  
	        @level1type = N'Table', @level1name = 'animals_follows_care',   
	        @level2type = N'Column',@level2name = 'stockQuantity',
	        @name = 'MS_Description', @value='La quantité de stock représente la quantité de stock qui est extraite de la base de données lors de manipulations avec un animal.';

