/*
=========================================================
Project : Formula 1 Driver Performance Intelligence
Author  : Jatin Sharma

File    : 04_Views.sql

Description:
This script creates reusable SQL views for frequently
used business analyses and reporting.
=========================================================
*/

USE f1;

CREATE OR REPLACE VIEW Champion_Drivers_View AS

SELECT
    Driver,
    Nationality,
    Championships,
    Race_Wins,
    Podiums,
    Points
FROM drivers
WHERE Champion = TRUE;

SELECT * FROM Champion_Drivers_View;

CREATE OR REPLACE VIEW Driver_Efficiency_View AS

SELECT
    Driver,
    Race_Entries,
    Race_Wins,
    Podiums,
    Win_Rate,
    Podium_Rate,
    Points_Per_Entry
FROM drivers
WHERE Race_Entries > 20;

SELECT *
FROM Driver_Efficiency_View
ORDER BY Win_Rate DESC;

CREATE OR REPLACE VIEW Nationality_Statistics_View AS

SELECT
    Nationality,
    COUNT(*) AS Total_Drivers,
    SUM(Race_Wins) AS Total_Wins,
    SUM(Championships) AS Total_Championships,
    ROUND(AVG(Points),2) AS Avg_Points
FROM drivers
GROUP BY Nationality;

SELECT *
FROM Nationality_Statistics_View
ORDER BY Total_Wins DESC;

CREATE OR REPLACE VIEW Active_Drivers_View AS

SELECT
    Driver,
    Nationality,
    Race_Wins,
    Podiums,
    Points
FROM drivers
WHERE Active = TRUE;

CREATE OR REPLACE VIEW Hall_of_Fame_View AS

SELECT
    Driver,
    Championships,
    Race_Wins,
    Podiums,
    Points
FROM drivers
WHERE Championships >= 3;

CREATE OR REPLACE VIEW Decade_Performance_View AS

SELECT
    Decade,
    COUNT(*) AS Drivers,
    SUM(Race_Wins) AS Total_Wins,
    ROUND(AVG(Points),2) AS Average_Points
FROM drivers
GROUP BY Decade;