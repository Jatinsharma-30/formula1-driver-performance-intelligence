/*
=========================================================
Project : Formula 1 Driver Performance Intelligence
Author  : Jatin Sharma

File    : 01_Data_Cleaning.sql

Description:
This script performs initial data validation and cleaning
on the Formula 1 driver dataset before analysis.
=========================================================
*/

USE f1;

-- Total number of records

SELECT COUNT(*) AS Total_Records
FROM drivers;

-- Preview first 10 rows

SELECT *
FROM drivers
LIMIT 10;

-- Verify data types

DESCRIBE drivers;

-- Identify duplicate driver names

SELECT
    Driver,
    COUNT(*) AS Duplicate_Count
FROM drivers
GROUP BY Driver
HAVING COUNT(*) > 1;

SELECT
SUM(Driver IS NULL) AS Driver_Nulls,
SUM(Nationality IS NULL) AS Nationality_Nulls,
SUM(Seasons IS NULL) AS Seasons_Nulls,
SUM(Championships IS NULL) AS Championships_Nulls,
SUM(Race_Entries IS NULL) AS RaceEntries_Nulls,
SUM(Race_Starts IS NULL) AS RaceStarts_Nulls,
SUM(Pole_Positions IS NULL) AS PolePositions_Nulls,
SUM(Race_Wins IS NULL) AS RaceWins_Nulls,
SUM(Podiums IS NULL) AS Podiums_Nulls,
SUM(Fastest_Laps IS NULL) AS FastestLaps_Nulls,
SUM(Points IS NULL) AS Points_Nulls,
SUM(Active IS NULL) AS Active_Nulls,
SUM(Champion IS NULL) AS Champion_Nulls
FROM drivers;

SELECT
COUNT(*) AS Blank_Driver_Names
FROM drivers
WHERE TRIM(Driver) = '';

SELECT
Active,
COUNT(*) AS Total_Drivers
FROM drivers
GROUP BY Active;

SELECT
Champion,
COUNT(*) AS Total_Drivers
FROM drivers
GROUP BY Champion;

SELECT
COUNT(DISTINCT Nationality) AS Total_Nationalities
FROM drivers;

/*
Data Cleaning Summary

✔ Total records verified
✔ Duplicate records checked
✔ Missing values inspected
✔ Blank values checked
✔ Boolean columns validated
✔ Dataset ready for exploratory analysis
*/