SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

DROP SCHEMA IF EXISTS context ;
CREATE SCHEMA IF NOT EXISTS context DEFAULT CHARACTER SET latin1 ;
USE context ;

-- DROP DATABASE IF EXISTS context;
-- CREATE DATABASE IF NOT EXISTS context;
-- USE context!;

CREATE TABLE IF NOT EXISTS states (
    id INT PRIMARY KEY,
    stateName VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS users (
    email VARCHAR(255) NOT NULL,
    id INT UNIQUE NOT NULL,
    age INT NOT NULL,
    phone VARCHAR(50) NOT NULL,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    homeStateID int NOT NULL,
    moveLoad ENUM('Full Household', 'Part Household', 'Personal Effects Only', 'Excess Baggage', 'Vehicle Only') NOT NULL,

    PRIMARY KEY(id),
    FOREIGN KEY (homeStateID) REFERENCES states(id)
);

CREATE TABLE IF NOT EXISTS countries (
    id INT UNIQUE NOT NULL,
    name VARCHAR(50) UNIQUE NOT NULL,
    happinessIndex DOUBLE,
    crime_safety DOUBLE,
    railwayLength INT,
    unemploymentRate DECIMAL(5, 1),
    avg_temp DECIMAL(5, 2),
    cost_of_life DECIMAL(5, 1),
    healthcare DECIMAL(5, 2),
    pop_density INT,
    official_lang VARCHAR(1024),
    minority_lang VARCHAR(1024),
    widely_spoken_lang VARCHAR(1024),
    education DOUBLE,
    square_kilos INT,
    leisure DOUBLE,
    bio VARCHAR(1024),
    tips VARCHAR(1024),
    img_link VARCHAR(1024),
    rail_density DOUBLE GENERATED ALWAYS AS (railwayLength / square_kilos) VIRTUAL,
    PRIMARY KEY (id)
);


CREATE TABLE IF NOT EXISTS countryRankings (
    countryID int NOT NULL,
    rankingNum int,
    userID int NOT NULL,
    id INT UNIQUE NOT NULL,

    PRIMARY KEY(id),
    FOREIGN KEY (countryID) REFERENCES countries(id),
    FOREIGN KEY (userID) REFERENCES users(id)
);

CREATE TABLE IF NOT EXISTS movers (
    id INT UNIQUE NOT NULL,
    email VARCHAR(50) NOT NULL,
    moverName VARCHAR(50) NOT NULL,
    phone VARCHAR(50) NOT NULL,
    bio VARCHAR(500),
    stars int,
    numReviews int,

    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS moverContacts (
    userID int NOT NULL,
    moverID int NOT NULL,
    routeID int NOT NULL,
    dateContacted datetime default CURRENT_TIMESTAMP,

    PRIMARY KEY (userID, moverID, routeID),
    FOREIGN KEY (userID) REFERENCES users(id),
    FOREIGN KEY (moverID) REFERENCES movers(id),
    FOREIGN KEY (routeID) REFERENCES routes(id)
);

CREATE TABLE IF NOT EXISTS countryAdmins (
    id INT UNIQUE NOT NULL,
    firstName VARCHAR(50),
    lastName VARCHAR(50),
    bio VARCHAR(500),
    countryID int UNIQUE,

    PRIMARY KEY(id),
    FOREIGN KEY (countryID) REFERENCES countries(id)
);

CREATE TABLE IF NOT EXISTS routes (
    id INT NOT NULL AUTO_INCREMENT,
    fromStateID INT NOT NULL,
    toCountryID INT NOT NULL,
    moverID INT NOT NULL,
    moveLoad ENUM('Full Household', 'Part Household', 'Personal Effects Only', 'Excess Baggage', 'Vehicle Only') NOT NULL,
    cost INT,
    
    PRIMARY KEY (id),
    UNIQUE KEY unique_route (cost, fromStateID, toCountryID, moverID, moveLoad),
    FOREIGN KEY (fromStateID) REFERENCES states(id),
    FOREIGN KEY (toCountryID) REFERENCES countries(id),
    FOREIGN KEY (moverID) REFERENCES movers(id)
);

create table if not exists sliders (
    weather int,
    rail_density int,
    education int,
    crime_safety int,
    pop_density int,
    healthcare int,
    leisure int,
    cost_of_life int,
    userID int unique not null,
    check (weather between 0 and 100),
    check (rail_density between 0 and 100),
    check (education between 0 and 100),
    check (crime_safety between 0 and 100),
    check (pop_density between 0 and 100),
    check (healthcare between 0 and 100),
    check (leisure between 0 and 100),
    check (cost_of_life between 0 and 100),
    foreign key (userID) references users(id)
);
