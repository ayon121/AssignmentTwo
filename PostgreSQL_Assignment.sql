-- Creating rangers table
-- Fields : ranger_id , name , region
CREATE TABLE rangers (
    ranger_id SERIAL PRIMARY KEY,
    name VARCHAR(60) NOT NULL,
    region TEXT
);









-- Creating species table
-- Fields : species_id , common_name , scientific_name , discovery_date , conservation_status
CREATE TABLE species (
    species_id SERIAL PRIMARY KEY,
    common_name  VARCHAR(60),
    scientific_name  VARCHAR(60),
    discovery_date DATE , 
    conservation_status TEXT 
);









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


