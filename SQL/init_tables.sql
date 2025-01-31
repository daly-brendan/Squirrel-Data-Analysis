CREATE DATABASE nyc_squirrel;


CREATE TABLE squirrels (
    area_name VARCHAR(255),
    area_id VARCHAR(50),
    park_name VARCHAR(255),
    park_id INT,
    squirrel_id VARCHAR(50) PRIMARY KEY,
    fur_color VARCHAR(50),
    fur_color_highlights VARCHAR(50),
    color_notes VARCHAR(255),
    location VARCHAR(255),
    height VARCHAR(50),
    spec_location VARCHAR(255),
    activities VARCHAR(255),
    human_interaction VARCHAR(255),
    observations VARCHAR(255),
    squ_lat FLOAT, -- Squirrel Latitude (DD.DDDDDD)
    squ_long FLOAT -- Squirrel Longitude (DD.DDDDDD)
    --FOREIGN KEY (park_id) REFERENCES public.parks(park_id)
);

CREATE TABLE parks (
    area_name VARCHAR(255),
    area_id VARCHAR(50),
    park_name VARCHAR(255),
    park_id FLOAT PRIMARY KEY,
    date DATE,
    start_time TIME,
    end_time TIME,
    time_watched INT,
    park_conditions VARCHAR(255),
    other_animals VARCHAR(255),
    litter VARCHAR(255),
    temp_weather VARCHAR(255),
    num_squirrels INT,
    sighters VARCHAR(255),
    num_sighters INT
  
);

DROP TABLE squirrels
DROP TABLE parks;


COPY parks
FROM 'C:\Users\dalys\OneDrive\Desktop\Squirrel Data Analysis\CSVs\park-data-1.txt'
WITH (FORMAT csv, HEADER true, DELIMITER ',');

COPY squirrels
FROM 'C:\Users\dalys\OneDrive\Desktop\Squirrel Data Analysis\CSVs\squirrel-data_final_2.txt'
WITH (FORMAT csv, HEADER true, DELIMITER ',');