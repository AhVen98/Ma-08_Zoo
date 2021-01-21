-- ----------------------------------------------------
-- xxxxxx ZOO.sql
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

	INSERT INTO status values ('éteint', 'EX')
	INSERT INTO status values ('éteint à l''état sauvage', 'EW')
	INSERT INTO status values ('en danger critique', 'CR')
	INSERT INTO status values ('en danger', 'EN')
	INSERT INTO status values ('vulnérable', 'VU')
	INSERT INTO status values ('quasi menacé', 'NT')
	INSERT INTO status values ('préoccupation mineure', 'LC')
	INSERT INTO status values ('données insuffisantes', 'DD')
	INSERT INTO status values ('non évalué', 'NE')


	SET IDENTITY_INSERT [dbo].[species] ON

	INSERT [dbo].[species] ([id], [name], [diets_id], [status_id]) VALUES (1, N'Alligator du Mississippi', 8, 7)
	INSERT [dbo].[species] ([id], [name], [diets_id], [status_id]) VALUES (2, N'Calao rhinocéros de java', 10, 5)
	INSERT [dbo].[species] ([id], [name], [diets_id], [status_id]) VALUES (3, N'Chauve-souris de Rodrigues', 4, 4)
	INSERT [dbo].[species] ([id], [name], [diets_id], [status_id]) VALUES (4, N'Chimpanzé', 10, 4)
	INSERT [dbo].[species] ([id], [name], [diets_id], [status_id]) VALUES (5, N'Dendrolague de Goodfellow', 1, 4)
	INSERT [dbo].[species] ([id], [name], [diets_id], [status_id]) VALUES (6, N'Coati roux', 10, 7)
	INSERT [dbo].[species] ([id], [name], [diets_id], [status_id]) VALUES (7, N'Dragon de Komodo', 8, 5)
	INSERT [dbo].[species] ([id], [name], [diets_id], [status_id]) VALUES (8, N'Diable de Tasmanie', 8, 4)
	INSERT [dbo].[species] ([id], [name], [diets_id], [status_id]) VALUES (9, N'Girafe réticulée', 1, 4)
	INSERT [dbo].[species] ([id], [name], [diets_id], [status_id]) VALUES (10, N'Éléphant de savane d''Afrique', 1, 5)
	INSERT [dbo].[species] ([id], [name], [diets_id], [status_id]) VALUES (11, N'Guépard', 8, 5)
	INSERT [dbo].[species] ([id], [name], [diets_id], [status_id]) VALUES (12, N'Gorille des plaines de l''Ouest', 10, 3)
	INSERT [dbo].[species] ([id], [name], [diets_id], [status_id]) VALUES (13, N'Hippopotame amphibie', 1, 5)
	INSERT [dbo].[species] ([id], [name], [diets_id], [status_id]) VALUES (14, N'Gypaète barbu', 9, 6)
	INSERT [dbo].[species] ([id], [name], [diets_id], [status_id]) VALUES (15, N'Koala du Queensland', 1, 5)
	INSERT [dbo].[species] ([id], [name], [diets_id], [status_id]) VALUES (16, N'Hippopotame nain', 1, 4)
	INSERT [dbo].[species] ([id], [name], [diets_id], [status_id]) VALUES (17, N'Lamantin des Caraïbes', 1, 5)
	INSERT [dbo].[species] ([id], [name], [diets_id], [status_id]) VALUES (18, N'Lion du Sud', 8, 5)
	INSERT [dbo].[species] ([id], [name], [diets_id], [status_id]) VALUES (19, N'Tigre de Sumatra', 8, 3)
	INSERT [dbo].[species] ([id], [name], [diets_id], [status_id]) VALUES (20, N'Tigre blanc', 8, 9)
	INSERT [dbo].[species] ([id], [name], [diets_id], [status_id]) VALUES (21, N'Tapir terrestre', 1, 5)
	INSERT [dbo].[species] ([id], [name], [diets_id], [status_id]) VALUES (22, N'Suricate', 8, 7)
	INSERT [dbo].[species] ([id], [name], [diets_id], [status_id]) VALUES (23, N'Rhinocéros indien', 1, 5)
	INSERT [dbo].[species] ([id], [name], [diets_id], [status_id]) VALUES (24, N'Rhinocéros blanc du Sud', 1, 6)
	INSERT [dbo].[species] ([id], [name], [diets_id], [status_id]) VALUES (25, N'Raton laveur', 10, 7)
	INSERT [dbo].[species] ([id], [name], [diets_id], [status_id]) VALUES (26, N'Paresseux à deux doigts', 10, 7)
	INSERT [dbo].[species] ([id], [name], [diets_id], [status_id]) VALUES (27, N'Panthère des neiges', 8, 5)
	INSERT [dbo].[species] ([id], [name], [diets_id], [status_id]) VALUES (28, N'Panda géant', 10, 5)
	INSERT [dbo].[species] ([id], [name], [diets_id], [status_id]) VALUES (29, N'Panda roux', 10, 4)
	INSERT [dbo].[species] ([id], [name], [diets_id], [status_id]) VALUES (30, N'Otaries de Californie', 8, 7)
	INSERT [dbo].[species] ([id], [name], [diets_id], [status_id]) VALUES (31, N'Orang-outan de Bornéo', 10, 3)
	INSERT [dbo].[species] ([id], [name], [diets_id], [status_id]) VALUES (32, N'Okapi', 2, 4)
	INSERT [dbo].[species] ([id], [name], [diets_id], [status_id]) VALUES (33, N'Manchot de Humboldt', 7, 5)
	INSERT [dbo].[species] ([id], [name], [diets_id], [status_id]) VALUES (34, N'Maki catta', 10, 4)
	INSERT [dbo].[species] ([id], [name], [diets_id], [status_id]) VALUES (35, N'Magot', 10, 3)
	INSERT [dbo].[species] ([id], [name], [diets_id], [status_id]) VALUES (36, N'Loutre géante', 8, 4)
	INSERT [dbo].[species] ([id], [name], [diets_id], [status_id]) VALUES (37, N'Loutre naine d''Asie', 8, 5)
	INSERT [dbo].[species] ([id], [name], [diets_id], [status_id]) VALUES (38, N'Loup arctique', 8, 7)
	INSERT [dbo].[species] ([id], [name], [diets_id], [status_id]) VALUES (39, N'Pika de pallas', 1, 7)
	INSERT [dbo].[species] ([id], [name], [diets_id], [status_id]) VALUES (40, N'Python royal', 8, 7)
	INSERT [dbo].[species] ([id], [name], [diets_id], [status_id]) VALUES (41, N'Dragon barbu de l''Est', 6, 7)
	INSERT [dbo].[species] ([id], [name], [diets_id], [status_id]) VALUES (42, N'Dragon de Komodo', 8, 5)
	INSERT [dbo].[species] ([id], [name], [diets_id], [status_id]) VALUES (43, N'Caméléon panthère', 6, 7)
	INSERT [dbo].[species] ([id], [name], [diets_id], [status_id]) VALUES (44, N'Tortue léopard', 8, 7)
	INSERT [dbo].[species] ([id], [name], [diets_id], [status_id]) VALUES (45, N'Rainette arboricole', 6, 7)
	INSERT [dbo].[species] ([id], [name], [diets_id], [status_id]) VALUES (46, N'Sonneur oritental', 6, 7)
	INSERT [dbo].[species] ([id], [name], [diets_id], [status_id]) VALUES (47, N'Tarentule vraie', 6, 7)
	INSERT [dbo].[species] ([id], [name], [diets_id], [status_id]) VALUES (48, N'Scorpion', 8, 7)
	INSERT [dbo].[species] ([id], [name], [diets_id], [status_id]) VALUES (49, N'Mante religieuse', 6, 7)


	SET IDENTITY_INSERT [dbo].[species] OFF


	INSERT INTO sex values ('mâle')
	INSERT INTO sex values ('femelle')
	INSERT INTO sex values ('indéterminé')

	-- INSERT INTO sectors values ('')

	-- INSERT INTO types values ('')

	INSERT INTO states values ('gravide')
	INSERT INTO states values ('blessé')
	INSERT INTO states values ('malade')
	INSERT INTO states values ('sous surveillance')
	INSERT INTO states values ('en acclimatation')
	INSERT INTO states values ('prêté')
	INSERT INTO states values ('estropié')

	INSERT INTO care values ('changement bandages')
	INSERT INTO care values ('prise antibiotiques')
	INSERT INTO care values ('prise médicaments')
	INSERT INTO care values ('prise vitamines')
	INSERT INTO care values ('prise minéraux')
	INSERT INTO care values ('prise compléments alimentaires')
	INSERT INTO care values ('échographie')
	INSERT INTO care values ('pesée')
	INSERT INTO care values ('biberonnée')
	INSERT INTO care values ('régime riche en vitamines')
	INSERT INTO care values ('régime riche en protéines')
	INSERT INTO care values ('régime riche en minéraux')



    COMMIT TRANSACTION
  END TRY
  BEGIN CATCH
      ROLLBACK TRANSACTION
  END CATCH
GO


BEGIN TRANSACTION 
  BEGIN TRY

	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16971217-1421', N'TGT', N'Terry', N'Grant', CAST(N'1977-04-19T00:00:00.000' AS DateTime), 1)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16150808-7739', N'PLN', N'Porter', N'Lillian', CAST(N'1979-01-08T00:00:00.000' AS DateTime), 2)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16510607-1169', N'KDE', N'Kline', N'Dane', CAST(N'1963-12-12T00:00:00.000' AS DateTime), 1)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16591218-0584', N'CJE', N'Chang', N'Jade', CAST(N'1990-07-08T00:00:00.000' AS DateTime), 2)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16170617-9064', N'AHS', N'Anthony', N'Hayes', CAST(N'1959-08-08T00:00:00.000' AS DateTime), 1)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16080727-9641', N'LLO', N'Lara', N'Leo', CAST(N'2000-01-21T00:00:00.000' AS DateTime), 1)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16080121-6664', N'FIL', N'Fulton', N'Ishmael', CAST(N'1945-09-10T00:00:00.000' AS DateTime), 1)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16490304-8801', N'HAN', N'Hood', N'Alvin', CAST(N'1943-11-29T00:00:00.000' AS DateTime), 1)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16810718-1342', N'GJN', N'Glenn', N'Jillian', CAST(N'1956-04-04T00:00:00.000' AS DateTime), 2)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16060714-6677', N'FWR', N'Fowler', N'Winter', CAST(N'2003-05-08T00:00:00.000' AS DateTime), 2)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16170206-4039', N'CMY', N'Carey', N'Mallory', CAST(N'1985-06-22T00:00:00.000' AS DateTime), 2)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16151102-8985', N'HZA', N'Holt', N'Zia', CAST(N'1955-02-09T00:00:00.000' AS DateTime), 2)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16880229-2170', N'ETM', N'Emerson', N'Tatum', CAST(N'2005-05-17T00:00:00.000' AS DateTime), 2)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16660229-3521', N'WON', N'Witt', N'Owen', CAST(N'1999-02-13T00:00:00.000' AS DateTime), 1)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16300214-4271', N'HSN', N'Herman', N'Stephen', CAST(N'1946-01-02T00:00:00.000' AS DateTime), 1)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16561223-7395', N'JJS', N'Joyce', N'Jonas', CAST(N'1966-07-07T00:00:00.000' AS DateTime), 1)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16521122-5759', N'GBE', N'Garza', N'Brynne', CAST(N'1979-07-12T00:00:00.000' AS DateTime), 2)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16530423-0245', N'WJE', N'Walsh', N'Julie', CAST(N'1971-02-08T00:00:00.000' AS DateTime), 2)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16320126-4490', N'HHH', N'Hodges', N'Hannah', CAST(N'1986-10-07T00:00:00.000' AS DateTime), 2)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16791110-6271', N'FDA', N'Flowers', N'Dora', CAST(N'1964-03-01T00:00:00.000' AS DateTime), 2)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16991029-3795', N'MML', N'Melton', N'Marshall', CAST(N'2000-06-07T00:00:00.000' AS DateTime), 1)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16550923-1691', N'RJR', N'Riddle', N'Jasper', CAST(N'2004-03-09T00:00:00.000' AS DateTime), 1)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16530421-7713', N'RSA', N'Reeves', N'Stella', CAST(N'1993-06-02T00:00:00.000' AS DateTime), 2)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16310227-6205', N'PCA', N'Patterson', N'Cora', CAST(N'2003-08-07T00:00:00.000' AS DateTime), 2)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16291216-4718', N'FYY', N'Farrell', N'Yardley', CAST(N'1951-02-13T00:00:00.000' AS DateTime), 1)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16511205-7715', N'LDR', N'Lane', N'Dieter', CAST(N'1945-08-08T00:00:00.000' AS DateTime), 1)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16631007-2209', N'HFH', N'Humphrey', N'Farrah', CAST(N'1991-05-04T00:00:00.000' AS DateTime), 2)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16811208-9381', N'FCA', N'Frazier', N'Cynthia', CAST(N'1956-02-09T00:00:00.000' AS DateTime), 2)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16080720-4912', N'BTR', N'Bass', N'Thor', CAST(N'1975-03-01T00:00:00.000' AS DateTime), 1)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16320914-3233', N'MGE', N'Mendez', N'Guinevere', CAST(N'1991-03-21T00:00:00.000' AS DateTime), 2)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16411204-1100', N'SJE', N'Stone', N'Jessamine', CAST(N'1950-10-16T00:00:00.000' AS DateTime), 2)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16971104-9719', N'HXA', N'Howard', N'Xandra', CAST(N'1940-06-16T00:00:00.000' AS DateTime), 2)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16280918-9315', N'HSA', N'Harrison', N'Sara', CAST(N'1993-01-13T00:00:00.000' AS DateTime), 2)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16041021-5156', N'DUA', N'Duffy', N'Ulla', CAST(N'1986-12-09T00:00:00.000' AS DateTime), 2)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16980311-8471', N'SAO', N'Salinas', N'Armando', CAST(N'1963-11-04T00:00:00.000' AS DateTime), 1)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16170214-5663', N'LAT', N'Larsen', N'Amethyst', CAST(N'1995-01-24T00:00:00.000' AS DateTime), 2)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16051015-6730', N'MBY', N'Mckee', N'Brittany', CAST(N'1952-07-10T00:00:00.000' AS DateTime), 2)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16800704-1703', N'BIA1', N'Barron', N'Iola', CAST(N'1941-12-27T00:00:00.000' AS DateTime), 2)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16290425-2133', N'BRN', N'Beach', N'Rosalyn', CAST(N'1989-04-19T00:00:00.000' AS DateTime), 2)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16230405-3008', N'NIA', N'Navarro', N'Ila', CAST(N'1946-08-31T00:00:00.000' AS DateTime), 2)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16840617-8932', N'FRL', N'Fleming', N'Rafael', CAST(N'1955-01-23T00:00:00.000' AS DateTime), 1)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16450201-0327', N'MIA', N'Mckenzie', N'Iliana', CAST(N'1977-09-30T00:00:00.000' AS DateTime), 2)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16240914-3290', N'WME', N'Woodward', N'Maxine', CAST(N'1994-05-20T00:00:00.000' AS DateTime), 2)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16040605-6358', N'AGN', N'Alvarado', N'Gavin', CAST(N'2005-01-19T00:00:00.000' AS DateTime), 1)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16850115-9977', N'SSA', N'Shaw', N'Selma', CAST(N'1998-12-03T00:00:00.000' AS DateTime), 2)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16510126-0064', N'LNE', N'Lott', N'Nichole', CAST(N'1993-07-12T00:00:00.000' AS DateTime), 2)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16321114-6034', N'BOA', N'Bright', N'Olivia', CAST(N'1967-12-02T00:00:00.000' AS DateTime), 2)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16100326-2639', N'HBR', N'Harrington', N'Briar', CAST(N'1943-04-12T00:00:00.000' AS DateTime), 2)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16870119-7454', N'PUE', N'Potter', N'Urielle', CAST(N'1960-12-31T00:00:00.000' AS DateTime), 2)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16600101-7323', N'MJE', N'Morin', N'Jayme', CAST(N'1996-08-08T00:00:00.000' AS DateTime), 2)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16300712-2090', N'FKY', N'French', N'Kerry', CAST(N'1965-09-22T00:00:00.000' AS DateTime), 2)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16950201-6455', N'GJH', N'Gilmore', N'Judith', CAST(N'1968-05-21T00:00:00.000' AS DateTime), 2)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16520614-9691', N'HML', N'Hubbard', N'Marshall', CAST(N'1940-03-05T00:00:00.000' AS DateTime), 1)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16151215-0044', N'SNO', N'Swanson', N'Nero', CAST(N'1981-07-28T00:00:00.000' AS DateTime), 1)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16950620-6987', N'RJN', N'Ruiz', N'Jin', CAST(N'1976-01-12T00:00:00.000' AS DateTime), 1)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16670509-3539', N'RJA', N'Rosa', N'Jena', CAST(N'1995-06-08T00:00:00.000' AS DateTime), 2)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16770929-9932', N'DUA', N'Daugherty', N'Uma', CAST(N'1982-06-02T00:00:00.000' AS DateTime), 2)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16700608-1694', N'LKY', N'Lamb', N'Karly', CAST(N'2002-04-26T00:00:00.000' AS DateTime), 2)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16730801-2553', N'AHN', N'Ashley', N'Hayden', CAST(N'1995-07-27T00:00:00.000' AS DateTime), 1)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16220303-6773', N'BJR', N'Blanchard', N'Jennifer', CAST(N'1940-08-22T00:00:00.000' AS DateTime), 2)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16440403-9622', N'MRH', N'Meyer', N'Ruth', CAST(N'1992-02-24T00:00:00.000' AS DateTime), 2)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16760826-6321', N'BUC', N'Brewer', N'Ulric', CAST(N'2002-12-10T00:00:00.000' AS DateTime), 1)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16131115-9782', N'FVA', N'Fitzgerald', N'Veda', CAST(N'2002-04-02T00:00:00.000' AS DateTime), 2)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16670104-7935', N'SGE', N'Snyder', N'Geraldine', CAST(N'1975-03-14T00:00:00.000' AS DateTime), 2)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16201201-7915', N'CIR', N'Cooper', N'Ivor', CAST(N'1977-11-08T00:00:00.000' AS DateTime), 1)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16600607-4808', N'PAN', N'Perry', N'Ashton', CAST(N'1970-03-26T00:00:00.000' AS DateTime), 1)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16880106-2699', N'WWY', N'Ware', N'Wendy', CAST(N'1989-11-22T00:00:00.000' AS DateTime), 2)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16021022-8755', N'WDI', N'Woods', N'Dai', CAST(N'1951-10-09T00:00:00.000' AS DateTime), 2)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16940914-5662', N'MNA', N'Madden', N'Nyssa', CAST(N'1952-02-24T00:00:00.000' AS DateTime), 2)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16891203-3951', N'BLY', N'Booker', N'Lesley', CAST(N'1961-01-01T00:00:00.000' AS DateTime), 2)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16251226-4413', N'DHM', N'Dyer', N'Hiram', CAST(N'1951-01-27T00:00:00.000' AS DateTime), 1)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16031130-7037', N'CAO', N'Conway', N'Arsenio', CAST(N'1990-11-25T00:00:00.000' AS DateTime), 1)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16401224-4168', N'FCN', N'Figueroa', N'Cameron', CAST(N'1997-09-30T00:00:00.000' AS DateTime), 1)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16210611-6425', N'HNL', N'Haynes', N'Nigel', CAST(N'2000-07-07T00:00:00.000' AS DateTime), 1)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16691105-5801', N'MGL', N'Morris', N'Gabriel', CAST(N'1953-10-29T00:00:00.000' AS DateTime), 1)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16450629-3192', N'HCS', N'Hutchinson', N'Carlos', CAST(N'1986-12-31T00:00:00.000' AS DateTime), 1)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16470314-3422', N'ADE', N'Arnold', N'Denise', CAST(N'1984-05-27T00:00:00.000' AS DateTime), 2)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16720207-7207', N'RRN', N'Rosa', N'Reagan', CAST(N'1990-09-11T00:00:00.000' AS DateTime), 2)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16080319-5726', N'CNM', N'Cochran', N'Nissim', CAST(N'1978-12-01T00:00:00.000' AS DateTime), 1)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16750426-3182', N'HKR', N'Hinton', N'Kasper', CAST(N'1980-12-18T00:00:00.000' AS DateTime), 1)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16180102-1658', N'WLL', N'White', N'Laurel', CAST(N'1958-05-23T00:00:00.000' AS DateTime), 2)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16210918-5021', N'MCY', N'Mcclain', N'Casey', CAST(N'1959-08-19T00:00:00.000' AS DateTime), 2)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16160428-2424', N'FML', N'Fitzgerald', N'Michael', CAST(N'1952-09-24T00:00:00.000' AS DateTime), 1)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16661218-4843', N'BGH', N'Bullock', N'Griffith', CAST(N'1987-12-27T00:00:00.000' AS DateTime), 1)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16360809-1173', N'MTD', N'Manning', N'Todd', CAST(N'2000-07-16T00:00:00.000' AS DateTime), 1)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16670605-4019', N'CSE', N'Cooke', N'Shellie', CAST(N'1991-10-04T00:00:00.000' AS DateTime), 2)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16071107-9756', N'CKN', N'Carver', N'Kirsten', CAST(N'1972-02-03T00:00:00.000' AS DateTime), 2)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16091219-3059', N'GTA', N'rdon', N'Tara', CAST(N'1973-01-04T00:00:00.000' AS DateTime), 2)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16750526-8412', N'HNA', N'Hunt', N'Nita', CAST(N'1949-02-07T00:00:00.000' AS DateTime), 2)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16540312-0362', N'SHR', N'Sanford', N'Harper', CAST(N'1969-01-17T00:00:00.000' AS DateTime), 1)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16071212-7174', N'GAA', N'Guerra', N'Adena', CAST(N'2002-01-17T00:00:00.000' AS DateTime), 2)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16101112-0126', N'LCA', N'Leblanc', N'Ciara', CAST(N'1964-06-10T00:00:00.000' AS DateTime), 2)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16151010-9091', N'TAE', N'Trujillo', N'Aristotle', CAST(N'1985-06-24T00:00:00.000' AS DateTime), 1)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16380530-9196', N'WSY', N'Wheeler', N'Shelby', CAST(N'1970-03-02T00:00:00.000' AS DateTime), 2)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16391206-5913', N'CCY', N'Castaneda', N'Chaney', CAST(N'1991-06-09T00:00:00.000' AS DateTime), 1)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16180828-1024', N'BIA2', N'Brooks', N'Iona', CAST(N'1976-08-26T00:00:00.000' AS DateTime), 2)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16350121-5747', N'CGN', N'Clements', N'Gwendolyn', CAST(N'1962-09-17T00:00:00.000' AS DateTime), 2)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16591007-1934', N'DOR', N'Drake', N'Oscar', CAST(N'1941-02-12T00:00:00.000' AS DateTime), 1)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16800110-4523', N'RCE', N'Roberts', N'Cole', CAST(N'1969-08-16T00:00:00.000' AS DateTime), 1)
	INSERT [dbo].[employees] ([contractnumber], [acronym], [lastname], [firstname], [birthdate], [sex_id]) VALUES (N'16461120-7715', N'WAA', N'Williamson', N'Amena', CAST(N'1985-01-03T00:00:00.000' AS DateTime), 2)

    COMMIT TRANSACTION
  END TRY
  BEGIN CATCH
      ROLLBACK TRANSACTION
  END CATCH
GO