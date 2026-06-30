/*
=========================================================
Project : Formula 1 Driver Performance Intelligence
Author  : Jatin Sharma

File    : 02_Exploratory_Analysis.sql

Description:
This script explores historical Formula 1 driver data to
identify trends, compare performance metrics, and generate
business insights.
=========================================================
*/

USE f1;

SELECT COUNT(*) AS Total_Drivers
FROM drivers;

SELECT
Champion,
COUNT(*) AS Total_Drivers
FROM drivers
GROUP BY Champion;

SELECT
Nationality,
COUNT(*) AS Total_Drivers
FROM drivers
GROUP BY Nationality
ORDER BY Total_Drivers DESC;

SELECT
Driver,
Race_Wins
FROM drivers
ORDER BY Race_Wins DESC
LIMIT 10;

SELECT
Driver,
Win_Rate
FROM drivers
WHERE Race_Entries > 20
ORDER BY Win_Rate DESC
LIMIT 10;

SELECT
Driver,
Podiums
FROM drivers
ORDER BY Podiums DESC
LIMIT 10;

SELECT
Driver,
Points
FROM drivers
ORDER BY Points DESC
LIMIT 10;

SELECT
Nationality,
ROUND(AVG(Points),2) AS Average_Points
FROM drivers
GROUP BY Nationality
ORDER BY Average_Points DESC;

SELECT
Decade,
COUNT(*) AS Champions
FROM drivers
WHERE Champion = TRUE
GROUP BY Decade
ORDER BY Decade;

SELECT
Active,
COUNT(*) AS Total_Drivers,
ROUND(AVG(Race_Wins),2) AS Avg_Wins,
ROUND(AVG(Points),2) AS Avg_Points
FROM drivers
GROUP BY Active;