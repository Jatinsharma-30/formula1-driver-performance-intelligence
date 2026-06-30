/*
=========================================================
Project : Formula 1 Driver Performance Intelligence
Author  : Jatin Sharma

File    : 03_Advanced_SQL.sql

Description:
This script applies advanced SQL techniques to analyze
driver performance using window functions, CTEs,
ranking functions, and business-oriented queries.
=========================================================
*/

USE f1;

SELECT
    Driver,
    Race_Wins,
    RANK() OVER(ORDER BY Race_Wins DESC) AS Driver_Rank
FROM drivers;

SELECT
    Driver,
    Points_Per_Entry,
    DENSE_RANK() OVER(ORDER BY Points_Per_Entry DESC) AS Rank_No
FROM drivers
WHERE Race_Entries > 20
LIMIT 5;

SELECT
    Nationality,
    Driver,
    Race_Wins,

    RANK() OVER(
        PARTITION BY Nationality
        ORDER BY Race_Wins DESC
    ) AS Nationality_Rank

FROM drivers;

WITH ChampionDrivers AS (

SELECT
Driver,
Race_Wins,
Points

FROM drivers

WHERE Champion = TRUE

)

SELECT *

FROM ChampionDrivers

ORDER BY Race_Wins DESC;

SELECT
Driver,
Points

FROM drivers

WHERE Points >

(
SELECT AVG(Points)

FROM drivers

);

SELECT

Driver,

Race_Wins,

CASE

WHEN Race_Wins >= 50 THEN 'Legend'

WHEN Race_Wins >=20 THEN 'Elite'

WHEN Race_Wins >=5 THEN 'Professional'

ELSE 'Developing'

END AS Driver_Category

FROM drivers;

WITH DriverEfficiency AS (

SELECT

Driver,

Race_Wins,

Race_Entries,

ROUND(
Race_Wins/Race_Entries*100,
2

) AS Win_Percentage

FROM drivers

)

SELECT *

FROM DriverEfficiency

ORDER BY Win_Percentage DESC;

SELECT *

FROM (

SELECT

Driver,

Decade,

Points,

ROW_NUMBER() OVER(

PARTITION BY Decade

ORDER BY Points DESC

) AS rn

FROM drivers

)t

WHERE rn=1;