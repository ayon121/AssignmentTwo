-- Creating rangers table
-- Fields : ranger_id , name , region
CREATE TABLE rangers (
    ranger_id SERIAL PRIMARY KEY,
    name VARCHAR(60) NOT NULL,
    region TEXT
);
-- inserting data in rangers
INSERT INTO rangers (name, region) VALUES 
('Alice Green', 'Northern Hills'),
('Bob White', 'River Delta'),
('Carol King', 'Mountain Range');





-- Creating species table
-- Fields : species_id , common_name , scientific_name , discovery_date , conservation_status
CREATE TABLE species (
    species_id SERIAL PRIMARY KEY,
    common_name  VARCHAR(60),
    scientific_name  VARCHAR(60),
    discovery_date DATE , 
    conservation_status TEXT 
);
-- Inserting data in species
INSERT INTO species (common_name, scientific_name, discovery_date, conservation_status) VALUES
('Snow Leopard', 'Panthera uncia', '1775-01-01', 'Endangered'),
('Bengal Tiger', 'Panthera tigris tigris', '1758-01-01', 'Endangered'),
('Red Panda', 'Ailurus fulgens', '1825-01-01', 'Vulnerable'),
('Asiatic Elephant', 'Elephas maximus indicus', '1758-01-01', 'Endangered');










--Creating sightings table
-- Fields : sighting_id , ranger_id , species_id , sighting_time , location , notes
CREATE TABLE sightings (
    sighting_id SERIAL PRIMARY KEY,
    ranger_id INT,
    species_id INT,
    sighting_time DATE,
    location TEXT ,
    notes TEXT,
    FOREIGN KEY (ranger_id) REFERENCES rangers(ranger_id),
    FOREIGN KEY (species_id) REFERENCES species(species_id)
);
-- inserting data for sightings
INSERT INTO sightings (species_id, ranger_id, location, sighting_time, notes) VALUES
(1, 1, 'Peak Ridge', '2024-05-10 07:45:00', 'Camera trap image captured'),
(2, 2, 'Bankwood Area', '2024-05-12 16:20:00', 'Juvenile seen'),
(3, 3, 'Bamboo Grove East', '2024-05-15 09:10:00', 'Feeding observed'),
(1, 2, 'Snowfall Pass', '2024-05-18 18:30:00', NULL);












-- selecting all from rangers table
SELECT * FROM rangers;
SELECT * FROM species;
SELECT * FROM sightings;






-- --------------- Problem 1 --------------- --
-- Register a new ranger with provided data with name = 'Derek Fox' and region = 'Coastal Plains'
INSERT INTO rangers (name , region) VALUES ('Derek Fox' , 'Coastal Plains');



-- --------------- Problem 2 --------------- --
-- Count unique species ever sighted
SELECT count(DISTINCT species_id) AS unique_species_count FROM sightings;


-- --------------- Problem 3 --------------- --
-- Find all sightings where the location includes "Pass".
SELECT * FROM sightings WHERE "location" LIKE '%Pass%';



-- --------------- Problem 4 --------------- --
-- List each ranger's name and their total number of sightings.
SELECT rangers.name , count(sightings.ranger_id) FROM rangers JOIN sightings ON sightings.ranger_id = rangers.ranger_id GROUP BY rangers.ranger_id ORDER BY rangers.name ASC;



-- --------------- Problem 5 --------------- --
-- List species that have never been sighted.
SELECT species.common_name FROM species LEFT JOIN sightings ON species.species_id = sightings.species_id WHERE sightings.species_id IS NULL; 