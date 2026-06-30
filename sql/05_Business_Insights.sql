/*
=========================================================
Project : Formula 1 Driver Performance Intelligence
Author  : Jatin Sharma

File    : 05_Business_Insights.sql

Description:
This script answers key business questions and provides
actionable insights using SQL analysis.
=========================================================
*/

USE f1;

SELECT
    Nationality,
    COUNT(*) AS Total_Drivers,
    SUM(Championships) AS Total_Championships,
    SUM(Race_Wins) AS Total_Wins
FROM drivers
GROUP BY Nationality
ORDER BY Total_Championships DESC, Total_Wins DESC;

/*
Countries with a strong history of Formula 1 success
can be identified by comparing total championships
and race wins.
*/

SELECT
    Driver,
    Race_Entries,
    Race_Wins,
    ROUND((Race_Wins/Race_Entries)*100,2) AS Win_Percentage
FROM drivers
WHERE Race_Entries > 20
ORDER BY Win_Percentage DESC
LIMIT 10;

/*
Efficiency is measured by converting race entries
into victories rather than total wins alone.
*/

SELECT
Driver,
Race_Wins,
Podiums,
Podium_Rate,
Championships
FROM drivers
ORDER BY Podium_Rate DESC
LIMIT 15;

/*
Drivers with consistently high podium rates often
achieve greater championship success than drivers
with occasional race victories.
*/

SELECT
Decade,
COUNT(*) AS Drivers,
SUM(Championships) AS Championships,
SUM(Race_Wins) AS Wins
FROM drivers
GROUP BY Decade
ORDER BY Championships DESC;

SELECT
Active,
COUNT(*) AS Drivers,
ROUND(AVG(Race_Wins),2) AS Avg_Wins,
ROUND(AVG(Points),2) AS Avg_Points
FROM drivers
GROUP BY Active;

SELECT
Driver,
Championships,
Race_Wins,
Podiums,
Points
FROM drivers
WHERE Championships>=3
ORDER BY Championships DESC,
Race_Wins DESC;

SELECT
Driver,
Pole_Positions,
Race_Wins,
ROUND((Race_Wins/Pole_Positions)*100,2) AS Conversion_Rate
FROM drivers
WHERE Pole_Positions>10
ORDER BY Conversion_Rate DESC;

SELECT
Driver,
Points_Per_Entry
FROM drivers
ORDER BY Points_Per_Entry DESC
LIMIT 10;

/*
=========================================================

Project Summary

• Dataset successfully validated and cleaned

• Driver performance analysed using SQL

• Advanced SQL concepts including CTEs,
Window Functions and Views implemented

• Business insights generated to support
performance evaluation and comparison

=========================================================
*/

