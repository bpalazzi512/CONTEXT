SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

DROP SCHEMA IF EXISTS context ;
CREATE SCHEMA IF NOT EXISTS context DEFAULT CHARACTER SET latin1 ;
USE context ;

-- DROP DATABASE IF EXISTS context;
-- CREATE DATABASE IF NOT EXISTS context;
-- USE context;

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

    PRIMARY KEY(id),
    FOREIGN KEY (homeStateID) REFERENCES states(id)
);

CREATE TABLE IF NOT EXISTS countries(
    id INT UNIQUE NOT NULL,
    name VARCHAR(50) UNIQUE NOT NULL,
    -- area int,
    -- population int,
    happinessIndex DECIMAL(5, 1),
    railwayLength int,
    unemploymentRate DECIMAL(5, 1),
    avg_temp DECIMAL(5, 2),
    cost_of_life DECIMAL(5, 1),
    healthcare_index DECIMAL(5, 2),
    pop_density INT,
    official_lang VARCHAR(1024),
    minority_lang VARCHAR(1024),
    widely_spoken_lang VARCHAR(1024),
    bio VARCHAR(1024),
    tips VARCHAR(1024),
    img_link VARCHAR(1024),

    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS countryRankings (
    countryID int NOT NULL,
    rankingNum int,
    id INT UNIQUE NOT NULL,

    PRIMARY KEY(id),
    FOREIGN KEY (countryID) REFERENCES countries(id)
);


CREATE TABLE IF NOT EXISTS rankings (
    userID INT NOT NULL,
    rankingID INT UNIQUE NOT NULL,

    PRIMARY KEY(rankingID, userID),
    FOREIGN KEY (userID) REFERENCES users(id),
    FOREIGN KEY (rankingID) REFERENCES countryRankings(id)
);

CREATE TABLE IF NOT EXISTS movers (
    id INT UNIQUE NOT NULL,
    email VARCHAR(50) NOT NULL,
    phone VARCHAR(50) NOT NULL,
    bio VARCHAR(500),
    stars int,
    numReviews int,

    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS moverContacts (
    userID int NOT NULL,
    moverID int NOT NULL,
    dateContacted datetime NOT NULL,

    PRIMARY KEY (userID, moverID),
    FOREIGN KEY (userID) REFERENCES users(id),
    FOREIGN KEY (moverID) REFERENCES movers(id)
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

CREATE TABLE IF NOT EXISTS route (
    fromStateID int NOT NULL,
    toCountryID int NOT NULL,
    moverID int NOT NULL,
    cost int,

    PRIMARY KEY (fromStateID, toCountryID, moverID),
    FOREIGN KEY (fromStateID) REFERENCES states(id),
    FOREIGN KEY (toCountryID) REFERENCES countries(id),
    FOREIGN KEY (moverID) REFERENCES movers(id)

);

CREATE TABLE IF NOT EXISTS dependants (
    age int NOT NULL,
    dependeeID int NOT NULL,
    id int UNIQUE NOT NULL,

    PRIMARY KEY(id),
    FOREIGN KEY (dependeeID) REFERENCES users(id)
);

CREATE TABLE IF NOT EXISTS languages (
    id int UNIQUE NOT NULL,
    name VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS speaks (
    languageID int NOT NULL,
    countryID int NOT NULL,
    percentage int,

    PRIMARY KEY(languageID, countryID),
    FOREIGN KEY (languageID) REFERENCES languages(id),
    FOREIGN KEY (countryID) REFERENCES countries(id)
);




