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
    phone int NOT NULL,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    homeStateID int NOT NULL,

    PRIMARY KEY(id),
    FOREIGN KEY (homeStateID) REFERENCES states(id)
);

CREATE TABLE IF NOT EXISTS countries(
    id INT UNIQUE NOT NULL,
    name VARCHAR(50) UNIQUE NOT NULL,
    area int,
    population int,
    happinessIndex DECIMAL(5, 1),
    railwayLength int,
    unemploymentRate DECIMAL(5, 1),
    bio MULTILINESTRING,
    tips MULTILINESTRING,

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
    phone int NOT NULL,
    bio MULTILINESTRING,
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
    bio MULTILINESTRING,
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
)

INSERT INTO states (id, stateName) VALUES
(1, 'California'),
(2, 'Texas'),
(3, 'New York'),
(4, 'Florida'),
(5, 'Illinois');

-- Insert data into users table
INSERT INTO users (email, id, age, phone, firstName, lastName, homeStateID) VALUES
('john.doe@example.com', 1, 28, 1234567890, 'John', 'Doe', 1),
('jane.smith@example.com', 2, 34, 2345678901, 'Jane', 'Smith', 2),
('mike.jones@example.com', 3, 45, 3456789012, 'Mike', 'Jones', 3),
('emily.johnson@example.com', 4, 22, 4567890123, 'Emily', 'Johnson', 4),
('chris.lee@example.com', 5, 39, 5678901234, 'Chris', 'Lee', 5);

-- Insert data into countries table
INSERT INTO countries (id, name, area, population, happinessIndex, railwayLength, unemploymentRate, bio, tips) VALUES
(1, 'United States', 9833520, 331002651, 7.2, 293564, 5.8, 'MULTILINESTRING((1 1, 2 2))', 'MULTILINESTRING((1 1, 2 2))'),
(2, 'Canada', 9984670, 37742154, 7.6, 48922, 6.5, 'MULTILINESTRING((1 1, 2 2))', 'MULTILINESTRING((1 1, 2 2))'),
(3, 'Mexico', 1964375, 128932753, 6.5, 26366, 4.7, 'MULTILINESTRING((1 1, 2 2))', 'MULTILINESTRING((1 1, 2 2))'),
(4, 'Brazil', 8515767, 212559417, 6.3, 30624, 13.2, 'MULTILINESTRING((1 1, 2 2))', 'MULTILINESTRING((1 1, 2 2))'),
(5, 'United Kingdom', 243610, 67886011, 7.8, 16632, 4.5, 'MULTILINESTRING((1 1, 2 2))', 'MULTILINESTRING((1 1, 2 2))');

-- Insert data into countryRankings table
INSERT INTO countryRankings (countryID, rankingNum, id) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5);

-- Insert data into rankings table
INSERT INTO rankings (userID, rankingID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- Insert data into movers table
INSERT INTO movers (id, email, phone, bio, stars, numReviews) VALUES
(1, 'mover1@example.com', 6789012345, 'MULTILINESTRING((1 1, 2 2))', 5, 100),
(2, 'mover2@example.com', 7890123456, 'MULTILINESTRING((1 1, 2 2))', 4, 50),
(3, 'mover3@example.com', 8901234567, 'MULTILINESTRING((1 1, 2 2))', 3, 30),
(4, 'mover4@example.com', 9012345678, 'MULTILINESTRING((1 1, 2 2))', 5, 200),
(5, 'mover5@example.com', 1234567890, 'MULTILINESTRING((1 1, 2 2))', 4, 70);

-- Insert data into moverContacts table
INSERT INTO moverContacts (userID, moverID, dateContacted) VALUES
(1, 1, '2023-01-01 10:00:00'),
(2, 2, '2023-02-01 11:00:00'),
(3, 3, '2023-03-01 12:00:00'),
(4, 4, '2023-04-01 13:00:00'),
(5, 5, '2023-05-01 14:00:00');

-- Insert data into countryAdmins table
INSERT INTO countryAdmins (id, firstName, lastName, bio, countryID) VALUES
(1, 'Alice', 'Brown', 'MULTILINESTRING((1 1, 2 2))', 1),
(2, 'Bob', 'White', 'MULTILINESTRING((1 1, 2 2))', 2),
(3, 'Charlie', 'Green', 'MULTILINESTRING((1 1, 2 2))', 3),
(4, 'David', 'Black', 'MULTILINESTRING((1 1, 2 2))', 4),
(5, 'Eva', 'Blue', 'MULTILINESTRING((1 1, 2 2))', 5);

-- Insert data into route table
INSERT INTO route (fromStateID, toCountryID, moverID, cost) VALUES
(1, 1, 1, 5000),
(2, 2, 2, 6000),
(3, 3, 3, 7000),
(4, 4, 4, 8000),
(5, 5, 5, 9000);

-- Insert data into dependants table
INSERT INTO dependants (age, dependeeID, id) VALUES
(10, 1, 1),
(12, 2, 2),
(15, 3, 3),
(8, 4, 4),
(9, 5, 5);

-- Insert data into languages table
INSERT INTO languages (id, name) VALUES
(1, 'English'),
(2, 'Spanish'),
(3, 'French'),
(4, 'Portuguese'),
(5, 'German');

-- Insert data into speaks table
INSERT INTO speaks (languageID, countryID, percentage) VALUES
(1, 1, 80),
(2, 3, 95),
(3, 5, 30),
(4, 4, 90),
(5, 2, 20);
