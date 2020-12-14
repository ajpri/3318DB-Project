-- Sample Queries

--
-- 1- Number of upcoming shoots for a specific model on a specific date
--

SELECT m.firstName, m.lastName, COUNT(u.id)
FROM models AS m
JOIN upcomingshoots as u ON m.ContactNumber = u.modelContactNumber
WHERE m.ContactNumber = '7707760811' AND DATE(u.dateTime) = '2021-01-01';

--
-- 2- List of locations in a specific state
--

SELECT * FROM locations
WHERE state IN ('TX', 'Texas');

--
-- 3- List models in a specific age range
--

SELECT * FROM models
WHERE age BETWEEN 20 AND 25;

--
-- 3- Photo shoot cancelled
--
DELETE FROM `UpcomingShoots` WHERE `UpcomingShoots`.`id` = 3"

--
-- 4- New Model
--

INSERT INTO `Models` (`firstName`, `lastName`, `age`, `address`, `ContactNumber`, `city`, `state`, `zipCode`) VALUES ('Bill', 'Gates', '53', '1 Infinite Loop', '3334445555', 'Cupertino', 'California', '90923');
