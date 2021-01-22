-- ----------------------------------------------------
-- SelectDatabase ZOO.sql
-- Date: January 2021
-- Author: V.Butty & P.Costa
-- Goal: show the good working of the database and the data's pertinence
-- -----------------------------------------------------


-- ----------------------------------------------------
-- Specify the database to work on
-- ----------------------------------------------------
USE ZOO;
GO

-- ----------------------------------------------------
-- Affiche la date de l'entretient, le secteur, l'enclos et l'acronyme de l'employé qui s'occupe de l'enclos
-- ----------------------------------------------------
SELECT date, sectors.name AS sector, pens.name AS pens, employees.acronym AS 'done by'
FROM employees_supplies_pens
JOIN employees ON employees_supplies_pens.employees_id = employees.id
JOIN pens ON employees_supplies_pens.pens_id = pens.id
JOIN sectors ON pens.sectors_id = sectors.id;

-- ----------------------------------------------------
-- Affiche la date du soin, son nom, le nom de l'animal soigné, l'acronyme de l'employé qui s'en est occupé, la référence du matériel utilisé et sa quantité
-- ----------------------------------------------------
SELECT date, care.name AS 'care name', animals.name, employees.acronym AS 'done by', stocks.reference AS 'material reference', stockQuantity AS quantity
FROM animals_follows_care
JOIN animals ON animals_follows_care.animals_id = animals.id
JOIN care ON animals_follows_care.care_id = care.id
JOIN employees ON animals_follows_care.employees_id = employees.id
RIGHT JOIN stocks ON animals_follows_care.stocks_id = stocks.id;

-- ----------------------------------------------------
-- Affiche le nom, le secteur et le type d'un enclos
-- ----------------------------------------------------
SELECT pens.name as 'nom de l''enclos', sectors.name as secteur, types.name AS type
FROM pens
JOIN sectors ON pens.sectors_id = sectors.id
JOIN types ON pens.types_id = types.id;

-- ----------------------------------------------------
-- Affiche le nom, le sexe et l'espèce d'un animal
-- ----------------------------------------------------
SELECT a.name, sex.name AS sex, species.name
FROM animals a
JOIN sex ON a.sex_id = sex.id
JOIN species ON a.species_id = species.id;

-- ----------------------------------------------------
-- Affiche l'état et le nom d'un animal
-- ----------------------------------------------------
SELECT states.name, animals.name FROM animals_has_states
JOIN states ON animals_has_states.states_id = states.id
JOIN animals ON animals_has_states.animals_id = animals.id;

-- ----------------------------------------------------
-- Affiche le statut de conservation, le régime alimentaire et le nom de l'espèce, trié par statut
-- ----------------------------------------------------
SELECT status.name, diets.name, species.name FROM species
JOIN status ON status.id = species.status_id
JOIN diets ON diets.id = species.diets_id
ORDER BY status.id;

-- ----------------------------------------------------
-- Affiche la référence, le nom, le prix unitaire, le fournisseur et l'utilisation des produits du stocks, le tout affiché par utilisation
-- ----------------------------------------------------
SELECT stocks.reference, stocks.name, stocks.priceperunit, stocks.provider, stocks.uses
FROM stocks
ORDER BY stocks.uses;