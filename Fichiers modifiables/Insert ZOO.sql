-- ----------------------------------------------------
--  ZOO.sql
-- Date: January 2021
-- Author: V.Butty & P.Costa
-- Goal: 
-- -----------------------------------------------------


-- ----------------------------------------------------
-- Specify the database to work on
-- ----------------------------------------------------
USE ZOO;
GO

-- ----------------------------------------------------
-- 
-- ----------------------------------------------------

BEGIN TRANSACTION 
  BEGIN TRY

    INSERT INTO diets values ('herbivore')
	INSERT INTO diets values ('folivore')
	INSERT INTO diets values ('granivore')
	INSERT INTO diets values ('frugivore')
	INSERT INTO diets values ('nectarivore')
	INSERT INTO diets values ('insectivore')
	INSERT INTO diets values ('piscivore')
	INSERT INTO diets values ('carnassier')
	INSERT INTO diets values ('charognard')
	INSERT INTO diets values ('omnivore')

	INSERT INTO status values ('�teint', 'EX')
	INSERT INTO status values ('�teint � l''�tat sauvage', 'EW')
	INSERT INTO status values ('en danger critique', 'CR')
	INSERT INTO status values ('en danger', 'EN')
	INSERT INTO status values ('vuln�rable', 'VU')
	INSERT INTO status values ('quasi menac�', 'NT')
	INSERT INTO status values ('pr�occupation mineure', 'LC')
	INSERT INTO status values ('donn�es insuffisantes', 'DD')
	INSERT INTO status values ('non �valu�', 'NE')

	-- INSERT INTO species values ('','','')

	INSERT INTO sex values ('m�le')
	INSERT INTO sex values ('femelle')
	INSERT INTO sex values ('ind�termin�')

	-- INSERT INTO sectors values ('')

	-- INSERT INTO types values ('')

	-- INSERT INTO states values ('')

	-- INSERT INTO care values ('')

    COMMIT TRANSACTION
  END TRY
  BEGIN CATCH
      ROLLBACK TRANSACTION
  END CATCH  